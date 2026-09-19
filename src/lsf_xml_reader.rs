use crate::lsf_module::LsfModule;
use anyhow::bail;
use serde::Deserialize;
use std::collections::HashMap;
use std::fmt::Write;
use std::fmt::{Debug, Formatter};
use std::fs;

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
        let mut str: String = String::new();

        for node in &self.tree_nodes {
            let _ = write!(str, "{node:?}\n\n");
        }

        f.write_str(&str)
    }
}

#[derive(Deserialize)]
#[serde(rename = "Vorlesung")]
struct TreeNode {
    #[serde(rename = "Vorlesung")]
    #[serde(default)]
    children: Vec<Self>,

    #[serde(rename = "@ueebene")]
    depths: u8,

    #[serde(rename = "Ueberschrift")]
    content: NodeContent,
}

impl Debug for TreeNode {
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
        let mut str: String = String::new();

        for _ in 2..self.depths {
            str.push('\t');
        }

        let _ = write!(str, "{:?} - {:?}\n", self.depths, self.content);

        for child in &self.children {
            let _ = write!(str, "{child:?}");
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
            let _ = write!(str, "{class:?}");
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

    pub fn get_lsf_lies(&self) -> anyhow::Result<Vec<LsfModule>> {
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

        let mut hash_map: HashMap<Class, LsfModule> = HashMap::new();

        // Loop over all "tree_nodes" where each "tree_node" is a "Vorlesung" like this:
        for node in &root_node.children {
            Self::traverse_study_course_tree(&mut hash_map, &node.content.title, node, &mut vec![]);
        }

        let mut modules: Vec<LsfModule> = hash_map.into_iter().map(|tuple| tuple.1).collect();
        modules.sort();

        Ok(modules)
    }
}

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //
// Private Functions
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //
impl LsfXmlReader {
    fn traverse_study_course_tree(
        class_to_module: &mut HashMap<Class, LsfModule>,
        course_of_study: &str,
        current_node: &TreeNode,
        verwendbarkeit_stack: &mut Vec<String>,
    ) {
        // First, step depth-first through the tree.
        // The current applicability has to be updated at each step.
        for node in &current_node.children {
            verwendbarkeit_stack.push(node.content.title.clone());
            // println!("{course_of_study} {next_applicability}");
            Self::traverse_study_course_tree(
                class_to_module,
                course_of_study,
                &node,
                verwendbarkeit_stack,
            );
            let _ = verwendbarkeit_stack.pop();
        }

        // Then, go over the list of classes applicable for the current node.
        for class in &current_node.content.classes {
            // Either get or create the module.
            let module = class_to_module.entry(class.clone()).or_insert(LsfModule {
                title: class.title.clone(),
                verwendbarkeiten_pro_studiengang: HashMap::new(),
                module_type: class.class_type.clone(),
            });

            // If this is the first time we are encountering this course of study for this class, create it.
            let verwendbarkeiten = module
                .verwendbarkeiten_pro_studiengang
                .entry(course_of_study.to_string())
                .or_insert(vec![]);
            verwendbarkeiten.push(verwendbarkeit_stack.clone());
        }
    }
}
