use std::cmp::Ordering;
use std::collections::HashMap;

/// This represents one module like 'Parallel Storage Systems'.
/// Each module has a titel and a list.
/// In this list each entry has a name like 'Verwendbarkeit Bachelor INF'
/// and an associated list of module types this module can be used for.
/// For example, WPF-INF, WPF-TI, etc...
#[derive(PartialEq, Eq, Clone)]
pub struct Module {
    /// The name of the module, eg: Einführung in die Informatik.
    pub title: String,
    /// Maps a course-of-study to a list of applicabilites
    /// Could be something like: Verwendbarkeit Bachelor Inf -> Pflicht 1.
    pub verwendbarkeiten_map: HashMap<String, Verwendbarkeiten>,
    /// Only applicable in case of LSF modules, eg: Vorlesung, Übung etc
    pub module_type: Option<String>,
}

#[derive(PartialEq, Eq, Clone)]
pub struct Verwendbarkeiten {
    /// Could be something like FIN-SMK, WPF-INF, ...
    pub verwendbarkeiten: Vec<String>,
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

/*
impl Module {
    pub fn canonicalize(&mut self) {
        for entry in &mut self.usabilities {
            entry.1.retain(|x| !x.is_empty());
        }

        self.usabilities.retain(|x| !x.1.is_empty());

        for (field_of_study, options) in &mut self.usabilities {
            let index = field_of_study.find(".Sc.").unwrap();
            let degree = &field_of_study[index - 1..index];

            let field = &field_of_study[index + 4..field_of_study.len()];

            *field_of_study = format!("{:<10} {:<15}", degree.trim(), field.trim());
        }

        self.usabilities.sort();
    }

    fn canonicalize_lsf(field_of_study: &mut String) {
        // Turn this: Wirtschaftsinformatik - Bachelor (WIF; B):
        // Into this: B | WIF
        let start = field_of_study.find('(').unwrap();
        let end = field_of_study.find(')').unwrap();
        let bracketed = &field_of_study[start + 1..end];

        let (bracketed_field_of_study, degree) = bracketed.split_once(';').unwrap();

        *field_of_study = format!(
            "{:<10} {:<15}",
            degree.trim(),
            bracketed_field_of_study.trim()
        );
    }
}
 */