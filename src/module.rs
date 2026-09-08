use std::cmp::Ordering;
use std::collections::HashMap;
use std::fmt::{Debug, Formatter};

/// This represents one module like 'Parallel Storage Systems'.
/// Each module has a titel and a list.
/// In this list each entry has a name like 'Verwendbarkeit Bachelor INF'
/// and an associated list of module types this module can be used for.
/// For example, WPF-INF, WPF-TI, etc...
#[derive(PartialEq, Eq)]
pub struct Module {
    pub title: String,
    pub usabilities: Vec<(String, Vec<String>)>,
    pub module_type: String,
    pub module_source: ModuleSource
}

impl PartialOrd<Self> for Module {
    fn partial_cmp(&self, other: &Self) -> Option<Ordering> {
        self.title.partial_cmp(&other.title)
    }
}

impl Ord for Module {
    fn cmp(&self, other: &Self) -> Ordering {
        self.title.cmp(&other.title)
    }
}

#[derive(PartialEq, Eq, Ord, PartialOrd, Debug)]
pub enum ModuleSource {
    NextCloud,
    Lsf,
}

// Used to print the results for some sanity checking :)
impl Debug for Module {
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
        let mut string = format!("{:?}\n {} {}", self.module_source, self.title, self.module_type);

        for usability in &self.usabilities {
            string.push_str(format!("\n{} [", usability.0).as_str());

            for module_type in &usability.1 {
                string.push_str(format!("{module_type}, ").as_str());
            }
            string.push(']');
        }

        writeln!(f, "{string}")
    }
}

impl Module {
    pub fn canonicalize(&mut self) {
        for entry in &mut self.usabilities {
            entry.1.retain(|x| !x.is_empty());
        }

        self.usabilities.retain(|x| !x.1.is_empty());

        for (field_of_study, options) in &mut self.usabilities {
            match self.module_source {
                ModuleSource::NextCloud => Self::canonicalize_next_cloud(field_of_study, options),
                ModuleSource::Lsf => Self::canonicalize_lsf(field_of_study, options),
            }
        }

        self.usabilities.sort();
    }

    fn canonicalize_next_cloud(field_of_study: &mut String, options: &mut Vec<String>) {
        let index = field_of_study.find(".Sc.").unwrap();
        let degree = &field_of_study[index-1..index];

        let field = &field_of_study[index+4..field_of_study.len()];

        *field_of_study = format!("{:<10} {:<15}", degree.trim(), field.trim());
    }

    fn canonicalize_lsf(field_of_study: &mut String, options: &mut Vec<String>) {
        // Turn this: Wirtschaftsinformatik - Bachelor (WIF; B):
        // Into this: B | WIF
        let start = field_of_study.find('(').unwrap();
        let end = field_of_study.find(')').unwrap();
        let bracketed = &field_of_study[start + 1 .. end];

        let (bracketed_field_of_study, degree) = bracketed.split_once(';').unwrap();

        *field_of_study = format!("{:<10} {:<15}", degree.trim(), bracketed_field_of_study.trim());
    }
}