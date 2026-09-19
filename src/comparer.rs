use crate::module::Module;
use itertools::Itertools;
use std::collections::HashMap;
use std::fs::File;
use std::io::Write;

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
    pub fn new(ground_truth: Vec<Module>, lsf_lies: Vec<Module>) -> Self {
        Self {
            ground_truth,
            lsf_lies,
        }
    }

    pub fn compare(&mut self) {
        println!("1. Merge LSF and NextCloud ");
        let merged_modules = self.match_lsf_to_nextcloud();
        let next_cloud_only: Vec<_> = merged_modules
            .iter()
            .filter(|(_, module)| module.lsf_module.is_empty())
            .map(|(_, module)| module)
            .collect();
        let lsf_only: Vec<_> = merged_modules
            .iter()
            .filter(|(_, module)| module.next_cloud_module.is_empty())
            .map(|(_, module)| module)
            .collect();
        let pairs: Vec<_> = merged_modules
            .iter()
            .filter(|(_, module)| {
                !module.next_cloud_module.is_empty() && !module.lsf_module.is_empty()
            })
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
        self.output_as_typst_pdf(&mut typst, pairs);

        typst.push_str("= LSF only\n#pagebreak()\n");
        self.output_as_typst_pdf(&mut typst, lsf_only);

        typst.push_str("= NextCloud only\n#pagebreak()\n");
        self.output_as_typst_pdf(&mut typst, next_cloud_only);

        let mut output = File::create("./lsf_vs_bookstack.typ").unwrap();
        write!(output, "{}", typst).unwrap();
    }

    // =========================================================
    // 2. Find LSF - NextCloud Pairs
    // =========================================================
    fn match_lsf_to_nextcloud(&self) -> HashMap<String, MergedModule> {
        let mut map = HashMap::new();

        for lsf_module in &self.lsf_lies {
            let entry = map
                .entry(lsf_module.title.to_owned())
                .or_insert(MergedModule {
                    lsf_module: vec![],
                    next_cloud_module: vec![],
                });
            entry.lsf_module.push(lsf_module.clone());
        }

        for module in &self.ground_truth {
            let entry = map.entry(module.title.to_owned()).or_insert(MergedModule {
                lsf_module: vec![],
                next_cloud_module: vec![],
            });
            entry.next_cloud_module.push(module.clone());
        }

        map
    }

    // =========================================================
    // 3. Output to Typst
    // TODO: Add canonical course of study and sort by that?
    // TODO: Add output for non-pairs, for lsf-mistakes and maybe an overview to catch non-matched errors?
    // =========================================================
    fn output_as_typst_pdf(&self, typst: &mut String, merged_modules: Vec<&MergedModule>) {
        for merged_module in merged_modules {
            let title = match merged_module.lsf_module.get(0) {
                None => merged_module.next_cloud_module[0].title.clone(),
                Some(lsf_module) => lsf_module.title.clone(),
            };
            let title = title.replace('@', "\\@");

            typst.push_str(&format!("== {}\n", title));

            if !merged_module.next_cloud_module.is_empty() {
                typst.push_str("=== NextCloud\n");
            }
            for module in &merged_module.next_cloud_module {
                Self::module_to_table(typst, module);
            }

            if !merged_module.lsf_module.is_empty() {
                typst.push_str("=== LSF\n");
            }
            for module in &merged_module.lsf_module {
                Self::module_to_table(typst, module);
            }

            typst.push_str("#pagebreak()\n");
        }
    }
    
    fn module_to_table(typst: &mut String, module: &Module) {
        typst.push_str(
            "#table(\n
                columns: (30%, 70%),\t
                table.header([Studiengang], [Verwendbarkeiten]),",
        );
        for (course_name, verwendbarkeiten) in module
            .verwendbarkeiten_map
            .iter()
            .sorted_by_key(|(k, _)| *k)
        {
            if verwendbarkeiten.verwendbarkeiten.is_empty() {
                continue;
            }

            typst.push_str(&format!("[{}], [", course_name));
            for verwendbarkeit in &verwendbarkeiten.verwendbarkeiten {
                let verwendbarkeit = verwendbarkeit.replace("@", r"\@");
                typst.push_str(&format!("{}, ", verwendbarkeit))
            }
            typst.push_str("],\n");
        }
        typst.push_str(")\n");       
    }
}
