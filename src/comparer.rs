use std::io::Write as IoWrite;
use std::fmt::Write as FmtWrite;
use crate::module::{Module, ModuleSource};
use itertools::Itertools;
use std::collections::HashMap;
use std::fs::File;

extern crate difference;

pub struct Comparer {
    ground_truth: Vec<Module>,
    lsf_lies: Vec<Module>,
}

struct MergedModule {
    lsf_module: Vec<Module>,
    next_cloud_module: Vec<Module>,
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
              fill: (_, y) => if calc.odd(y) { rgb(\"EAF2F5\") },
            )
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
                    Module::canonicalize_field_of_study(studiengang, module_source)
                })
        {
            if verwendbarkeiten.list.is_empty() {
                continue;
            }


            let _ = write!(typst, "[{}], ", Module::canonicalize_field_of_study(studiengang, module_source));
            let _ = write!(typst, "[{studiengang}], [");
            for verwendbarkeit in &verwendbarkeiten.list {
                let verwendbarkeit = verwendbarkeit.replace('@', r"\@");
                let _ = write!(typst, "{verwendbarkeit}, ");
            }
            typst.push_str("],\n");
        }
        typst.push_str(")\n");
    }
}
