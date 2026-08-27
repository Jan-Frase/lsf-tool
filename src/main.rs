use crate::next_cloud::NextCloud;
use anyhow::Context;

mod lsf_scraper;
mod module;
mod next_cloud;

fn main() -> anyhow::Result<()> {
    // 1. Parse the env arguments.
    let username = std::env::var("username").context(
        "Make sure that your username is set as an environment variable called `username`!",
    )?;
    let password = std::env::var("password").context(
        "Make sure that your password is set as an environment variable called `password`!",
    )?;

    // 2. Get the ground truths from the NextCloud.
    let next_cloud = NextCloud::new(username, password).context(
        "Failed to create the next cloud accessing object. Is something wrong with your network?",
    )?;
    let ground_truth = next_cloud.get_ground_truth()?;
    for module in ground_truth {
        println!("{module:?}");
    }
    
    // 3. ???

    // 4. Profit
    Ok(())
}
