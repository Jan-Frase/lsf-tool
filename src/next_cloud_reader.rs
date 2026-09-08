use crate::module::Module;
use reqwest::blocking::Client;
use serde::Deserialize;
use serde_json::Value;
use crate::module::ModuleSource::NextCloud;

/// Deals with the NextCloud API, gathers data, and filters out the relevant parts.
pub struct NextCloudReader {
    client: Client,
    username: String,
    password: String,
}

/// Used to parse a JSON Column to a struct.
/// A JSON Column looks like this:
/// `
/// {
///     "id": 3444,
/// 	"uuid": "019fd353-b849-704e-9b62-31be9e1b466b",
/// 	"tableId": 720,
/// 	"title": "Verwendbarkeit B.Sc. INF",
/// 	"technicalName": "column_3444",
/// 	"createdBy": "aebac1d2-55b0-4f5c-a5fd-c6aa8fa05bd9",
/// 	"createdByDisplayName": "Jana Görs",
/// 	"createdAt": "2025-06-23 10:36:36",
/// 	"lastEditBy": "aebac1d2-55b0-4f5c-a5fd-c6aa8fa05bd9",
/// 	"lastEditByDisplayName": "Jana Görs",
/// 	"lastEditAt": "2026-07-03 09:12:50",
/// 	"viewColumnInformation": {
/// 		"columnId": 3444,
/// 		"order": 39,
/// 		"readonly": false,
/// 		"mandatory": false
/// 	},
/// 	"type": "selection",
/// 	"subtype": "multi",
/// 	"mandatory": false,
/// 	"description": "",
/// 	"numberDefault": null,
/// 	"numberMin": null,
/// 	"numberMax": null,
/// 	"numberDecimals": null,
/// 	"numberPrefix": "",
/// 	"numberSuffix": "",
/// 	"textDefault": null,
/// 	"textAllowedPattern": null,
/// 	"textMaxLength": null,
/// 	"textUnique": null,
/// 	"selectionOptions": [
/// 		{
/// 			"id": 0,
/// 			"label": "Informatik I - Pflicht",
/// 			"uuid": "019fd353-b84a-7902-aece-075f0b999686"
/// 		},
/// 		{
/// 			"id": 1,
/// 			"label": "Informatik II - Pflicht",
/// 			"uuid": "019fd353-b84a-7902-aece-075f0c869eb2"
/// 		},
/// 		{
/// 			"id": 2,
/// 			"label": "Informatik - Wahlpflicht",
/// 			"uuid": "019fd353-b84a-7902-aece-075f0cc79862"
/// 		},
/// ... shortened ...
/// 		{
/// 			"id": 24,
/// 			"label": "Mathematik (SPO 2027)",
/// 			"uuid": "019fd353-b84a-7902-aece-075f140b5f4e"
/// 		}
/// 	],
/// 	"selectionDefault": "[]",
/// 	"datetimeDefault": null,
/// 	"usergroupDefault": [],
/// 	"usergroupMultipleItems": null,
/// 	"usergroupSelectUsers": null,
/// 	"usergroupSelectGroups": null,
/// 	"usergroupSelectTeams": null,
/// 	"showUserStatus": null,
/// 	"customSettings": {}
/// }
///`
#[derive(Deserialize, Debug)]
struct Column {
    id: i32,
    title: String,
    #[serde(rename = "selectionOptions")]
    selection_options: Vec<ColumnSelectionOption>,
}

/// Also used for parsing a JSON Column to a struct.
/// Responsible for one SelectionOption, for example,
///
/// 			```{
/// 				"id": 24,
/// 				"label": "Mathematik (SPO 2027)",
/// 				"uuid": "019fd353-b84a-7902-aece-075f140b5f4e"
/// 			}```
#[derive(Deserialize, Debug)]
struct ColumnSelectionOption {
    id: i32,
    label: String,
}

/// Used for parsing a JSON Row to a struct.
/// A JSON Row might look like this:
///
/// ```
/// {
/// 		"id": 198921,
/// 		"tableId": 720,
/// 		"createdBy": "aebac1d2-55b0-4f5c-a5fd-c6aa8fa05bd9",
/// 		"createdAt": "2026-05-18 12:08:53",
/// 		"lastEditBy": "aebac1d2-55b0-4f5c-a5fd-c6aa8fa05bd9",
/// 		"lastEditAt": "2026-07-08 11:35:55",
/// 		"data": [
/// 			{
/// 				"columnId": 3369,
/// 				"value": "Propädeutikum Informatik"
/// 			},
///             ... shortened...
/// 			{
/// 				"columnId": 3411,
/// 				"value": "56h Präsenz und 94h Selbststudium"
/// 			},
/// 			{
/// 				"columnId": 3414,
/// 				"value": "Anwesenheitspflicht"
/// 			},
///             ... shortened ...
/// 			{
/// 				"columnId": 3444,
/// 				"value": [
/// 					14
/// 				]
/// 			},
/// 			{
/// 				"columnId": 3447,
/// 				"value": [
/// 					18
/// 				]
/// 			},
/// 			{
/// 				"columnId": 3450,
/// 				"value": [
/// 					10
/// 				]
/// 			},
/// 			{
/// 				"columnId": 3453,
/// 				"value": []
/// 			},
///             ... shortened ...
/// 		],
/// 		"dataByAlias": []
/// 	},
/// ```
#[derive(Deserialize, Debug)]
struct Row {
    #[serde(rename = "data")]
    tiles: Vec<Tile>,
}

/// Represents a single "tile" of the table.
/// The column_id tells us which column this value belongs to.
/// The value can either be a string, e.g. "Anwesendheitspflicht", a number, e.g. "5", or an array of numbers, e.g. [10, 13].
/// This array can be zero. What these numbers mean can then be looked up in the related column.
/// A JSON tile might look like this:
///
/// ```
/// {
///     "columnId": 3447,
///     "value": [ 18 ]
/// },
/// ```
#[derive(Deserialize, Debug, Clone)]
struct Tile {
    #[serde(rename = "columnId")]
    column_id: i32,
    value: Value,
}

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //
// Public Functions
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //
impl NextCloudReader {
    /// Creates a new NextCloud connection.
    pub fn new(username: String, password: String) -> anyhow::Result<Self> {
        let client = Client::builder().cookie_store(true).build()?;

        let result = Self {
            client,
            username,
            password,
        };

        Ok(result)
    }

    /// Gathers all the required information from the NextCloud and returns a list of modules.
    /// These represent the ground truth, i.e., what the LSF is supposed to mirror.
    pub fn get_ground_truth(&self) -> anyhow::Result<Vec<Module>> {
        let columns = self.get_columns()?;
        let rows = self.get_rows(&columns)?;

        let mut modules = Self::combine_columns_and_rows(&columns, &rows)?;
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
impl NextCloudReader {
    /// This gets all columns from the NextCloud API and then filters them.
    /// It only returns the columns that start with "Verwendbarkeit".
    fn get_columns(&self) -> anyhow::Result<Vec<Column>> {
        let url = "https://cloud.ovgu.de/apps/tables/api/1/views/4703/columns";

        // Get the columns from the API.
        let mut columns: Vec<Column> = self
            .client
            .get(url)
            .basic_auth(&self.username, (&self.password).into())
            .send()?
            .error_for_status()?
            .json()?;

        // Filter them.
        columns.retain(|column| {
            column.title.starts_with("Verwendbarkeit") || column.title.eq("Modultitel")
        });

        Ok(columns)
    }

    /// This gets all the rows from the NextCloud API and filters them based on the columns.
    /// It only returns the columns that are in the given vector.
    fn get_rows(&self, relevant_column: &[Column]) -> anyhow::Result<Vec<Row>> {
        let url = "https://cloud.ovgu.de/apps/tables/api/1/views/4703/rows";

        // Get the rows from the API.
        let mut rows: Vec<Row> = self
            .client
            .get(url)
            .basic_auth(&self.username, (&self.password).into())
            .send()?
            .error_for_status()?
            .json()?;

        // Extract all column id's.
        let relevant_column_ids: Vec<i32> =
            relevant_column.iter().map(|column| column.id).collect();

        // Remove all the irrelevant tiles, i.e., those that do not belong to a relevant column.
        for row in &mut rows {
            row.tiles
                .retain(|row_data| relevant_column_ids.contains(&row_data.column_id));
        }

        Ok(rows)
    }

    /// Takes all columns and all rows and returns a list of fully formed modules.
    fn combine_columns_and_rows(columns: &[Column], rows: &[Row]) -> anyhow::Result<Vec<Module>> {
        let mut modules = vec![];

        // Loop over all rows, where each row is one module like `EinfInf`.
        for row in rows {
            // Create the module which we will fill with correct data during the next loop.
            let mut module = Module {
                title: "".into(),
                usabilities: vec![],
                module_type: "".into(),
                module_source: NextCloud,
            };

            // Loop over each tile in the row.
            for tile in &row.tiles {
                // Select the correct column for the current tile based on its id.
                let column = columns
                    .iter()
                    .find(|column| column.id == tile.column_id)
                    .ok_or_else(|| anyhow::anyhow!("No column found for id {}", tile.column_id))?;

                // Now that we have the row and the fitting column combine the data.
                Self::combine_column_and_tile(column, &mut module, tile)?;
            }

            // Push the finished module.
            modules.push(module);
        }

        Ok(modules)
    }

    /// Takes a single column and a single tile and adds the combined information to the module.
    fn combine_column_and_tile(
        column: &Column,
        module: &mut Module,
        tile: &Tile,
    ) -> anyhow::Result<()> {
        // Special case: We are currently concerned with the `Modultitel`.
        if column.title == "Modultitel" {
            tile.value
                .as_str()
                .ok_or_else(|| anyhow::anyhow!("Expected Modultitel to be a string"))?
                .clone_into(&mut module.title);

            return Ok(());
        }

        // In all other cases we expect the tile to contain an array of indices.
        // Each index represents one type of module this module can be used for.
        // I.e., you can use `Parallel Storage Systems` as a `Master Inf. WPF`.
        let module_type_ids = tile
            .value
            .as_array()
            .ok_or_else(|| anyhow::anyhow!("Expected {} to be an array", column.title))?
            .iter()
            .map(|id| {
                id.as_i64()
                    .ok_or_else(|| anyhow::anyhow!("Expected module_type_id to be an integer."))
            })
            .collect::<anyhow::Result<Vec<i64>>>()?;

        // We then loop over all entries in the list of applicable module ids
        // and try to find the matching selection option in the column.
        // For example, if we have this tile:
        // `{ "columnId": 3447, "value": [ 18 ] },`
        //
        // and this column which we have already selected based on it id previously.:
        // {
        // "id": 3447,
        // "title": "Verwendbarkeit B.Sc. INF",
        // "selectionOptions": [
        // {
        // "id": 0,
        // "label": "Informatik I - Pflicht",
        // "uuid": "019fd353-b84a-7902-aece-075f0b999686"
        // },
        // {
        // "id": 1,
        // "label": "Informatik II - Pflicht",
        // "uuid": "019fd353-b84a-7902-aece-075f0c869eb2"
        // },
        // {
        // "id": 2,
        // "label": "Informatik - Wahlpflicht",
        // "uuid": "019fd353-b84a-7902-aece-075f0cc79862"
        // },
        // ... shortened ...
        // {
        // "id": 24,
        // "label": "Mathematik (SPO 2027)",
        // "uuid": "019fd353-b84a-7902-aece-075f140b5f4e"
        // }
        // ],
        // }```
        // We would try look for the selection option with the id 18.
        let mut applicable_module_type_names = Vec::new();
        for module_type_id in module_type_ids {
            let option = column
                .selection_options
                .iter()
                .find(|module_type| i64::from(module_type.id) == module_type_id);

            if let Some(option) = option {
                applicable_module_type_names.push(option.label.clone());
            }
            // else {
            // This case happens very rarely.
            // Specifically, the `Propädeutikum Informatik` is currently not applicable as any module type.
            // However, instead of returning an empty list of applicable module types,
            // it returns an array with one id that is not listed as an option in the column.
            /*
            println!(
                "\n \n Unknown selection option id {} for column {}. \n\n Column: {:?}, \n\n RowData: {:?} \n\n Module: {:?}",
                applic,
                column.title,
                column,
                row_data,
                module,
            )
             */
            // }
        }

        module
            .usabilities
            .push((column.title.clone(), applicable_module_type_names));

        Ok(())
    }
}
