use itertools::Itertools;
use std::cmp::Ordering;
use std::collections::HashMap;
use std::fmt::{Debug, Formatter};

#[derive(PartialEq, Eq, Clone)]
pub struct LsfModule {
    /// Example: Einführung in die Informatik
    pub title: String,
    /// I have decided to let some variables untranslated as i found it confusing.
    /// Verwendbarkeit Bsc Inf -> Kern und Pflichtfächer > 1. Semester
    pub verwendbarkeiten_pro_studiengang: HashMap<String, Vec<Vec<String>>>,
    pub module_type: String,
}

impl LsfModule {
    pub fn print_verwendbarkeiten(&self) -> String {
        let mut result = String::new();
        for (title, verwendbarkeiten) in self.verwendbarkeiten_pro_studiengang.iter().sorted() {
            result.push_str(&format!("{title:<70}"));
            for verwendbarkeit in verwendbarkeiten {
                result.push_str(&format!("{verwendbarkeit:?}"));
            }
            result.push_str("\n");
        }
        result
    }
}

impl PartialOrd<Self> for LsfModule {
    fn partial_cmp(&self, other: &Self) -> Option<Ordering> {
        self.title.partial_cmp(&other.title)
    }
}

impl Ord for LsfModule {
    fn cmp(&self, other: &Self) -> Ordering {
        self.title.cmp(&other.title)
    }
}

// Used to print the results for some sanity checking :)
impl Debug for LsfModule {
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
        let mut string = self.title.clone();

        for (course_of_study, applicabilites) in &self.verwendbarkeiten_pro_studiengang {
            string.push_str(format!("\n{} [", course_of_study).as_str());

            for module_type in applicabilites {
                for step in module_type {
                    string.push_str(format!("> {step}").as_str());
                }
                string.push_str(", ");
            }
            string.push(']');
        }

        writeln!(f, "{string}")
    }
}
