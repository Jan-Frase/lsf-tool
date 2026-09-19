use std::cmp::Ordering;
use std::fmt::{Debug, Formatter};

/// This represents one module like 'Parallel Storage Systems'.
/// Each module has a titel and a list.
/// In this list each entry has a name like 'Verwendbarkeit Bachelor INF'
/// and an associated list of module types this module can be used for.
/// For example, WPF-INF, WPF-TI, etc...
#[derive(PartialEq, Eq, Clone)]
pub struct Module {
    pub title: String,
    pub usabilities: Vec<ApplicabilityPerCourseOfStudy>,
}

#[derive(PartialEq, Eq, Clone)]
pub struct ApplicabilityPerCourseOfStudy {
    /// Could be something like Verwendbarkeit Bachelor Inf
    pub course_name: String,
    /// Could be something like FIN-SMK, WPF-INF, ...
    pub applicabilites: Vec<String>,
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

// Used to print the results for some sanity checking :)
impl Debug for Module {
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
        let mut string = self.title.clone();

        for usability in &self.usabilities {
            string.push_str(format!("\n{} [", usability.course_name).as_str());

            for module_type in &usability.applicabilites {
                string.push_str(format!("{module_type}, ").as_str());
            }
            string.push(']');
        }

        writeln!(f, "{string}")
    }
}

/*
impl NextCloudModule {
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
