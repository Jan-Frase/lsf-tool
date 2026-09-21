use std::io::Write as IoWrite;
use std::fmt::Write as FmtWrite;
use crate::module::{Module, ModuleSource, Verwendbarkeiten};
use itertools::{chain, enumerate, Itertools};
use std::collections::{HashMap, HashSet};
use std::fs::File;
use std::iter::zip;

extern crate difference;

pub struct Comparer {
    ground_truth: Vec<Module>,
    lsf_lies: Vec<Module>,
}

struct MergedModule {
    lsf_module: Vec<Module>,
    next_cloud_module: Vec<Module>,
}

struct ModuleComparison {
    studiengang_to_verwendbarkeiten: HashMap<String, HashSet<String>>,
}

impl Comparer {
    pub const fn new(ground_truth: Vec<Module>, lsf_lies: Vec<Module>) -> Self {
        Self {
            ground_truth,
            lsf_lies,
        }
    }

    pub fn compare(&self) {
        println!("1. Merge LSF and NextCloud ");
        let merged_modules = self.match_lsf_to_nextcloud();
        let next_cloud_only: Vec<_> = merged_modules
            .iter()
            .filter(|(_, module)| module.lsf_module.is_empty())
            .sorted_by_key(|(title, _)| *title)
            .map(|(_, module)| module)
            .collect();
        let lsf_only: Vec<_> = merged_modules
            .iter()
            .filter(|(_, module)| module.next_cloud_module.is_empty())
            .sorted_by_key(|(title, _)| *title)
            .map(|(_, module)| module)
            .collect();
        let pairs: Vec<_> = merged_modules
            .iter()
            .filter(|(_, module)| {
                !module.next_cloud_module.is_empty() && !module.lsf_module.is_empty()
            })
            .sorted_by_key(|(title, _)| *title)
            .map(|(_, module)| module)
            .collect();

        println!("2. Create Typst Output");
        let mut typst = String::from(
            "#set page(height: auto, margin: 2em, width: 40cm)
            #outline(depth: 2)
            #show table.cell.where(y: 0): strong
            #set table(
              stroke: (x, y) => if y == 0 {
                (top: 1pt, bottom: 0.7pt)
              } else if y > 1 {
                (top: 0pt, bottom: 1pt)
              },
              align: (x, y) => (
                if x > 0 { left }
                else { left }
              ),
              fill: (_, y) => if calc.odd(y) { rgb(\"#B0CED9\") },
            )

            #let status(ok) = box(
              fill: if ok { rgb(\"#d4edda\") } else { rgb(\"#f8d7da\") },
              inset: 4pt,
              radius: 3pt,
              text(fill: if ok { rgb(\"#155724\") } else { rgb(\"#721c24\") }, weight: \"bold\")[
                #if ok { text(fill: green, size: 1em)[✔] } else { text(fill: red,   size: 1.2em)[✘] }
              ],
            )
            #pagebreak()
            \n",
        );

        typst.push_str("= Pairs\n#pagebreak()\n");
        Self::output_as_typst_pdf(&mut typst, pairs);

        typst.push_str("= LSF only\n#pagebreak()\n");
        Self::output_as_typst_pdf(&mut typst, lsf_only);

        typst.push_str("= NextCloud only\n#pagebreak()\n");
        Self::output_as_typst_pdf(&mut typst, next_cloud_only);

        let mut output = File::create("./lsf_vs_bookstack.typ").unwrap();
        write!(output, "{typst}").unwrap();
    }

    // =========================================================
    // 2. Find LSF - NextCloud Pairs
    // =========================================================
    fn match_lsf_to_nextcloud(&self) -> HashMap<String, MergedModule> {
        let mut map = HashMap::new();

        for lsf_module in &self.lsf_lies {
            let entry = map.entry(lsf_module.title.clone()).or_insert(MergedModule {
                lsf_module: vec![],
                next_cloud_module: vec![],
            });
            entry.lsf_module.push(lsf_module.clone());
        }

        for module in &self.ground_truth {
            let entry = map.entry(module.title.clone()).or_insert(MergedModule {
                lsf_module: vec![],
                next_cloud_module: vec![],
            });
            entry.next_cloud_module.push(module.clone());
        }

        map
    }

    // =========================================================
    // 3. Output to Typst
    // TODO: Add Lukases comparisions
    // TODO: Add table comparing lsf vs next cloud singles
    // =========================================================
    fn output_as_typst_pdf(typst: &mut String, merged_modules: Vec<&MergedModule>) {
        for merged_module in merged_modules {
            let title = merged_module.lsf_module.first().map_or_else(
                || merged_module.next_cloud_module[0].title.clone(),
                |lsf_module| lsf_module.title.clone(),
            );

            let title = title.replace('@', "\\@");

            let _ = writeln!(typst, "== {title}");

            if !merged_module.next_cloud_module.is_empty() {
                typst.push_str("=== NextCloud\n");
            }
            for module in &merged_module.next_cloud_module {
                Self::module_to_table(typst, module, &ModuleSource::Bs);
            }

            if !merged_module.lsf_module.is_empty() {
                typst.push_str("=== LSF\n");
            }
            for module in &merged_module.lsf_module {
                Self::module_to_table(typst, module, &ModuleSource::Lsf);
            }

            if !merged_module.next_cloud_module.is_empty() && !merged_module.lsf_module.is_empty() {
                typst.push_str("=== Comparision\n");
                Self::output_comparision_table(typst, merged_module);
            }

            typst.push_str("#pagebreak()\n");
        }
    }

    fn module_to_table(typst: &mut String, module: &Module, module_source: &ModuleSource) {
        typst.push_str("#table(columns: (10%, 30%, 60%), table.header([\\#], [Studiengang], [Verwendbarkeiten]),\n");
        for (studiengang, verwendbarkeiten) in
            module
                .verwendbarkeiten_map
                .iter()
                .sorted_by_key(|(studiengang, _)| {
                    studiengang.shortened.clone()
                })
        {
            if verwendbarkeiten.list.is_empty() {
                continue;
            }

            let _ = write!(typst, "[{}], ", studiengang.shortened);
            let _ = write!(typst, "[{}], [", studiengang.name);
            for verwendbarkeit in &verwendbarkeiten.list {
                let verwendbarkeit = verwendbarkeit.replace('@', r"\@");
                let _ = write!(typst, "{verwendbarkeit}, ");
            }
            typst.push_str("],\n");
        }
        typst.push_str(")\n");
    }

    fn output_comparision_table(typst: &mut String, merged_module: &MergedModule) {
        let mut comparison = ModuleComparison {
            studiengang_to_verwendbarkeiten: HashMap::new(),
        };

        // Fill map with all "studiengänge" and its matching "verwendbarkeiten"
        for module in chain(merged_module.lsf_module.clone(), merged_module.next_cloud_module.clone()) {
            for (studiengang, verwendbarkeit) in &module.verwendbarkeiten_map {
                let _ = comparison
                    .studiengang_to_verwendbarkeiten
                    .entry(studiengang.shortened.clone())
                    .or_insert_with(HashSet::new)
                    .extend(verwendbarkeit.list.clone());
            }
        }

        // write header
        let total_modules = merged_module.lsf_module.len() + merged_module.next_cloud_module.len();
        let _ = writeln!(typst, "#table(columns: {}, table.header([\\#], [Verwendbarkeit],", 2 + total_modules);
        // TODO: Update to include module type?
        for (index, next_cloud_module) in enumerate(merged_module.next_cloud_module.iter()) {
            let _ = write!(typst, "[NextCloud-{}], ", index);
        }
        for (index, lsf_module) in enumerate(merged_module.lsf_module.iter()) {
            let _ = write!(typst, "[LSF-{}], ", index);
        }
        let _ = writeln!(typst, "),");

        // write rows
        for (studiengang, verwendbarkeiten) in comparison.studiengang_to_verwendbarkeiten.iter() {
            if verwendbarkeiten.is_empty() {
                continue;
            }
            let _ = write!(typst, "[{}], ", studiengang);
            for (index, verwendbarkeit) in verwendbarkeiten.iter().enumerate() {
                let _ = write!(typst, "[{}], ", verwendbarkeit.replace('@', r"\@"));
                /*
                for _ in 0..total_modules {
                    let _ = write!(typst, "[X],");
                }
                 */
                Self::check_for_match(typst, studiengang, verwendbarkeit, merged_module);
                // only print this if there are more verwendbarkeiten
                if index < verwendbarkeiten.len() - 1 {
                    let _ = write!(typst, "\n[],");
                }
            }
        }
        let _ = writeln!(typst, ")\n");
    }

    fn check_for_match(typst: &mut String, shortened: &String, verwendbarkeit: &String, merged_module: &MergedModule) {
        for next_cloud_module in &merged_module.next_cloud_module {
            Self::check_per_module(typst, shortened, verwendbarkeit, next_cloud_module);
        }
        for lsf_module in &merged_module.lsf_module {
            Self::check_per_module(typst, shortened, verwendbarkeit, lsf_module);
        }
    }

    fn check_per_module(typst: &mut String, shortened: &String, verwendbarkeit: &String, module: &Module) {
        let module_verwend = module.verwendbarkeiten_map.iter().find(|(stud, _)| stud.shortened.eq(shortened)).map(|(_, v)| { v });
        let matches = match module_verwend {
            None => false,
            Some(list) => list.list.contains(verwendbarkeit),
        };
        if matches {
            let _ = write!(typst, "[#status(true)],");
        } else {
            let _ = write!(typst, "[#status(false)],");
        }
    }
}
