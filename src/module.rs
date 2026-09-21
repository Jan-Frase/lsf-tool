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
    pub verwendbarkeiten_map: HashMap<Studiengang, Verwendbarkeiten>,
    /// Only applicable in case of LSF modules, eg: Vorlesung, Übung etc
    pub mtype: Option<String>,
}

#[derive(PartialEq, Eq, Clone, Hash)]
pub struct Studiengang {
    pub name: String,
    pub shortened: String,
}

impl Studiengang {
    pub fn new(name: String, module_source: &ModuleSource) -> Self {
        let shortened = Self::canonicalize_field_of_study(&name, module_source);
        Self { name, shortened }
    }
}

#[derive(PartialEq, Eq, Clone)]
pub struct Verwendbarkeiten {
    /// Could be something like FIN-SMK, WPF-INF, ...
    pub list: Vec<String>,
}

pub enum ModuleSource {
    Lsf,
    Bs,
}

impl PartialOrd<Self> for Module {
    fn partial_cmp(&self, other: &Self) -> Option<Ordering> {
        Some(self.cmp(other))
    }
}

impl Ord for Module {
    fn cmp(&self, other: &Self) -> Ordering {
        self.title.cmp(&other.title)
    }
}

impl Studiengang {
    fn canonicalize_field_of_study(
        field_of_study: &str,
        module_source: &ModuleSource,
    ) -> String {
        match module_source {
            ModuleSource::Lsf => Self::canonicalize_lsf_field_of_study(field_of_study),
            ModuleSource::Bs => Self::canonicalize_bs_field_of_study(field_of_study),
        }
    }

    fn canonicalize_bs_field_of_study(field_of_study: &str) -> String {
        // Turns this: Verwendbarkeit B.Sc. WIF
        // Into this: B | WIF
        let index = field_of_study.find(".Sc.").unwrap();
        let degree = &field_of_study[index - 1..index];

        let field = &field_of_study[index + 4..field_of_study.len()];

        format!("{:<10} | {:<15}", degree.trim(), field.trim()).to_uppercase()
    }

    fn canonicalize_lsf_field_of_study(field_of_study: &str) -> String {
        // Turn this: Wirtschaftsinformatik - Bachelor (WIF; B):
        // Into this: B | WIF
        let start = field_of_study.find('(').unwrap();
        let end = field_of_study.find(')').unwrap();
        let bracketed = &field_of_study[start + 1..end];

        let (bracketed_field_of_study, degree) = bracketed.split_once(';').unwrap();

        format!(
            "{:<10} | {:<15}",
            degree.trim(),
            bracketed_field_of_study.trim()
        ).to_uppercase()
    }
}
