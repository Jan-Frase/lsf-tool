use crate::lsf_xml_reader::LsfXmlReader;
use crate::next_cloud_reader::NextCloudReader;
use anyhow::Context;
use crate::module::Module;

mod lsf_xml_reader;
mod module;
mod next_cloud_reader;
mod comparer;

const PATH_TO_LSF_EXPORT: &str = "/home/jan/Downloads/Vorlesungsverzeichnis_WiSe2025.xml";

fn main() -> anyhow::Result<()> {
    // 1. Parse the env arguments.
    let username = std::env::var("username").context(
        "Make sure that your username is set as an environment variable called `username`!",
    )?;
    let password = std::env::var("password").context(
        "Make sure that your password is set as an environment variable called `password`!",
    )?;

    // 2. Get the ground truths from the NextCloud.
    let next_cloud_reader = NextCloudReader::new(username, password)
        .context("Failed to create the next cloud reader. Is something wrong with your network?")?;
    let mut ground_truth = next_cloud_reader.get_ground_truth()?;


    // TODO: Figure out a way to get the lsf export automatically.
    // 3. Get the lies from the LSF export.
    let lsf_export_reader = LsfXmlReader::new(PATH_TO_LSF_EXPORT)
        .context("Failed to create the lsf export reader. Does the export exist?")?;
    let mut lsf_lies = lsf_export_reader.get_lsf_lies()?;

    // 4. Profit
    ground_truth.append(&mut lsf_lies);
    ground_truth.sort();

    for entry in ground_truth {
        println!("{entry:?}")
    }

    Ok(())
}
