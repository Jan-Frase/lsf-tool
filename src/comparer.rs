use crate::lsf_module::LsfModule;
use crate::next_cloud_module::Module;
use difference::{Changeset, Difference};
use itertools::Itertools;
use std::collections::HashMap;
use std::fs::File;
use std::io::Write;
use std::iter::zip;

extern crate difference;

pub struct Comparer {
    ground_truth: Vec<Module>,
    lsf_lies: Vec<LsfModule>,
}

struct MergedModule {
    lsf_module: Vec<LsfModule>,
    next_cloud_module: Vec<Module>,
}

impl Comparer {
    pub fn new(ground_truth: Vec<Module>, lsf_lies: Vec<LsfModule>) -> Self {
        Self {
            ground_truth,
            lsf_lies,
        }
    }

    pub fn compare(&mut self) {
        /*
        println!("1. Merge different LSF pages for the same module.");
        println!(
            "Any modules that are already inconsistent in the LSF will be ignored going forward."
        );
        println!(
            "Ie. they wont be compared to their next cloud entry for now. This is because it is unclear how to merge the differing lsf entries."
        );
        self.lsf_lies = self.merge_lsf_lecture_and_exercise();
         */

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
    // 1. LSF Stuff
    // =========================================================

    fn merge_lsf_lecture_and_exercise(&self) -> Vec<LsfModule> {
        let mut result: Vec<LsfModule> = vec![];

        let by_title: HashMap<&str, Vec<&LsfModule>> =
            self.lsf_lies.iter().into_group_map_by(|m| m.title.as_str());

        for (title, module_list) in by_title {
            let example = &module_list[0].verwendbarkeiten_pro_studiengang;
            let all_equal = module_list
                .iter()
                .all(|f| &f.verwendbarkeiten_pro_studiengang == example);

            if all_equal {
                result.push(module_list[0].clone());
                continue;
            }

            continue;

            println!("{title}");

            let mut strings = vec![];
            for module in &module_list {
                strings.push(module.print_verwendbarkeiten());
            }

            let example_module = &module_list[0];
            let example_string = &strings[0];

            println!("{}\n{}", example_module.module_type, example_string);

            for (string, module) in zip(strings.iter().skip(1), module_list.iter().skip(1)) {
                if !string.eq(example_string) {
                    println!(
                        "Diff between {} and {}",
                        example_module.module_type, module.module_type
                    );
                    Self::print_text_diff(example_string, string);
                }
            }

            println!();
        }

        result
    }

    fn print_text_diff(a: &str, b: &str) {
        let Changeset { diffs, .. } = Changeset::new(a, b, "\n");

        let mut t = term::stdout().unwrap();

        for i in 0..diffs.len() {
            match diffs[i] {
                Difference::Same(ref x) => {
                    t.reset().unwrap();
                    writeln!(t, " {}", x);
                }
                Difference::Add(ref x) => {
                    t.fg(term::color::GREEN).unwrap();
                    writeln!(t, "{}", x);
                }
                Difference::Rem(ref x) => {
                    t.fg(term::color::RED).unwrap();
                    writeln!(t, "{}", x);
                }
            }
        }
        t.reset().unwrap();
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
            for next in &merged_module.next_cloud_module {
                typst.push_str(
                    "#table(\n
                columns: (30%, 70%),\t
                table.header([Studiengang], [Verwendbarkeiten]),",
                );
                for usability in next
                    .usabilities
                    .iter()
                    .sorted_by_key(|k| k.course_name.clone())
                {
                    if usability.applicabilites.is_empty() {
                        continue;
                    }
                    typst.push_str(&format!("[{}], [", usability.course_name));
                    for applicability in &usability.applicabilites {
                        typst.push_str(&format!("{}, ", applicability.replace("@", r"\@")))
                    }
                    typst.push_str("],\n");
                }
                typst.push_str(")\n");
            }

            if !merged_module.lsf_module.is_empty() {
                typst.push_str("=== LSF\n");
            }
            for next in &merged_module.lsf_module {
                typst.push_str(
                    "#table(\n
                columns: (30%, 70%),\t
                table.header([Studiengang], [Verwendbarkeiten]),",
                );
                for (course_name, verwendbarkeiten) in next
                    .verwendbarkeiten_pro_studiengang
                    .iter()
                    .sorted_by_key(|(k, _)| *k)
                {
                    if verwendbarkeiten.is_empty() {
                        continue;
                    }

                    typst.push_str(&format!("[{}], [", course_name));
                    for verwendbarkeit in verwendbarkeiten {
                        let joined = verwendbarkeit.join(" -> ");
                        let joined = joined.replace("@", r"\@");
                        typst.push_str(&format!("{}, ", joined))
                    }
                    typst.push_str("],\n");
                }
                typst.push_str(")\n");
            }

            typst.push_str("#pagebreak()\n");
        }
    }
}
