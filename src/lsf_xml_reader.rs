use crate::module::Module;
use anyhow::bail;
use quick_xml::Reader;
use serde::Deserialize;
use std::collections::HashMap;
use std::fmt::{Debug, Formatter, Write, format};
use std::fs;
use std::fs::File;
use std::io::BufReader;
use std::ptr::hash;
use crate::module::ModuleSource::Lsf;

pub struct LsfXmlReader {
    xml: String,
}

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //
// The following section defines a bunch of structs that mirror the structure of the XML export.
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //

#[derive(Deserialize)]
#[serde(rename = "publishDetail")]
struct Document {
    #[serde(rename = "Vorlesungsverzeichnis")]
    document_core: DocumentCore,
}

impl Debug for Document {
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
        let str = format!("{:?}", self.document_core);
        f.write_str(&str)
    }
}

#[derive(Deserialize)]
#[serde(rename = "Vorlesungsverzeichnis")]
struct DocumentCore {
    #[serde(rename = "Tree")]
    tree_root: TreeRoot,
}

impl Debug for DocumentCore {
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
        let str = format!("{:?}", self.tree_root);
        f.write_str(&str)
    }
}

#[derive(Deserialize)]
#[serde(rename = "Tree")]
struct TreeRoot {
    #[serde(rename = "Vorlesung")]
    tree_nodes: Vec<TreeNode>,
}

impl Debug for TreeRoot {
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
        let mut str: String = "".into();

        for node in &self.tree_nodes {
            str.push_str(&format!("{:?}\n\n", node))
        }

        f.write_str(&str)
    }
}

#[derive(Deserialize)]
#[serde(rename = "Vorlesung")]
struct TreeNode {
    #[serde(rename = "Vorlesung")]
    #[serde(default)]
    children: Vec<TreeNode>,

    #[serde(rename = "@ueebene")]
    depths: u8,

    #[serde(rename = "Ueberschrift")]
    content: NodeContent,
}

impl Debug for TreeNode {
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
        let mut str: String = "".into();

        for _ in 2..self.depths {
            str.push('\t');
        }

        str.push_str(&format!("{:?} - {:?}\n", self.depths, self.content));

        for child in &self.children {
            str.push_str(&format!("{:?}", child));
        }

        f.write_str(&str)
    }
}

#[derive(Deserialize)]
#[serde(rename = "Ueberschrift")]
struct NodeContent {
    #[serde(rename = "UeBez")]
    title: String,

    #[serde(rename = "Veranstaltung")]
    #[serde(default)]
    classes: Vec<Class>,
}

impl Debug for NodeContent {
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
        let mut str = self.title.clone();

        if !self.classes.is_empty() {
            str.push_str(" -> [ ");
        }

        for class in &self.classes {
            str.push_str(&format!("{class:?}, "));
        }

        if !self.classes.is_empty() {
            str.push_str(" ]");
        }

        f.write_str(&str)
    }
}

#[derive(Deserialize, Hash, Eq, PartialEq, Clone)]
#[serde(rename = "Veranstaltung")]
struct Class {
    #[serde(rename = "VName")]
    title: String,
    #[serde(rename = "VTyp")]
    class_type: String,
}

impl Debug for Class {
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
        f.write_str(&format!("{} - {}", &self.title, &self.class_type))
    }
}

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //
// Public Functions
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //
impl LsfXmlReader {
    pub fn new(path_to_xml_export: &str) -> anyhow::Result<Self> {
        let xml = fs::read_to_string(path_to_xml_export)?;

        Ok(Self { xml })
    }

    pub fn get_lsf_lies(&self) -> anyhow::Result<Vec<Module>> {
        let mut xml: Document = quick_xml::de::from_str(self.xml.as_str())?;

        // Remove irrelevant sections of the xml file.
        xml.document_core.tree_root.tree_nodes.retain(|tree_node| {
            tree_node.content.title == "Lehrveranstaltungen nach Studiengängen"
        });

        if xml.document_core.tree_root.tree_nodes.len() != 1 {
            bail!("There is not exactly one node called `Lehrveranstaltungen nach Studiengängen`!")
        }

        // Unwrapping is safe here due to the previous check.
        let root_node = xml.document_core.tree_root.tree_nodes.pop().unwrap();

        // Useful for debugging the xml parsing.
        // println!("{root_node:?}");

        let mut hash_map: HashMap<Class, Module> = HashMap::new();

        // Loop over all "tree_nodes" where each "tree_node" is a "Vorlesung" like this:
        for node in &root_node.children {
            self.traverse_study_course_tree(&mut hash_map, &node.content.title, node, "".into());
        }

        let mut modules: Vec<Module> = hash_map.into_iter().map(|tuple| tuple.1).collect();
        modules.sort();

        for module in &mut modules {
            module.canonicalize();
        }

        Ok(modules)
    }
}

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //
// Private Functions
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //
impl LsfXmlReader {
    fn traverse_study_course_tree(
        &self,
        hash_map: &mut HashMap<Class, Module>,
        course_of_study: &str,
        current_node: &TreeNode,
        applicability: String,
    ) {
        // First, step depth-first through the tree.
        // The current applicability has to be updated at each step.
        for node in &current_node.children {
            let mut next_applicability = applicability.clone();
            next_applicability.push_str(&format!(" {}", node.content.title.as_str()));
            // println!("{course_of_study} {next_applicability}");
            self.traverse_study_course_tree(hash_map, course_of_study, &node, next_applicability);
        }

        // Then, go over the list of classes applicable for the current node.
        for class in &current_node.content.classes {
            // If this is the first time we are encountering this class, create it.
            if !hash_map.contains_key(class) {
                let module = Module {
                    title: class.title.clone(),
                    usabilities: vec![],
                    module_type: class.class_type.clone(),
                    module_source: Lsf,
                };
                hash_map.insert(class.clone(), module);
            }
            // Then get it.
            let module = hash_map.get_mut(class).unwrap();

            // If this is the first time we are encountering this course of study for this class, create it.
            let matching_index = Self::get_matching_usability_entry(&mut module.usabilities, course_of_study);
            module.usabilities[matching_index].1.push(applicability.clone());
        }
    }

    fn get_matching_usability_entry(usabilities: &mut Vec<(String, Vec<String>)>, course_of_study: &str) -> usize {
        for index in 0..usabilities.len() {
            if usabilities[index].0 == course_of_study {
                return index;
            }
        }

        usabilities.push((course_of_study.to_string(), vec![]));

        usabilities.len() - 1
    }
}
