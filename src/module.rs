use std::fmt::{Debug, Formatter};

/// This represents one module like 'Parallel Storage Systems'.
/// Each module has a titel and a list.
/// In this list each entry has a name like 'Verwendbarkeit Bachelor INF'
/// and an associated list of module types this module can be used for.
/// For example, WPF-INF, WPF-TI, etc...
#[derive(Default)]
pub struct Module {
    pub title: String,
    pub usabilities: Vec<(String, Vec<String>)>,
}

// Used to print the results for some sanity checking :)
impl Debug for Module {
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
        let mut string = self.title.clone();

        for usability in &self.usabilities {
            string.push_str(format!("\n{}: [", usability.0).as_str());

            for module_type in &usability.1 {
                string.push_str(format!("{module_type}, ").as_str());
            }
            string.push(']');
        }

        writeln!(f, "{string}")
    }
}
