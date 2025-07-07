# Import Agentic Apps

The agentic app import feature enables users to transfer complete application configurations between environments. This feature facilitates reuse, sharing, and [version management](deployment/app-deployment.md#version-management){:target="_blank"} of agentic applications.

## Prerequisites

* You can import the apps and agents from the JSON files. 
* The user must have import permissions. 
* To import an app, create a new app. Then, use the import option to overwrite its configuration. Imports are only supported for existing apps. 

## Import Apps and Agents

To import apps or agents into an agentic app, follow these steps. 

1. Go to the **Export / Import** page in the **Deploy** section of the app. 
1. Go to the **Import Logs** tab.
1. Select the **Import** option.

    <img src="../images/import-agent.png" alt="Import Agent" title="Import Agent" style="border: 1px solid gray; zoom:80%;">

1. Upload the JSON config file and select **Proceed**.

    <img src="../images/config-files.png" alt="Config file for importing" title="Config file for importing" style="border: 0px solid gray; zoom:65%;">

* If the file format is correct and no errors are found, the application is configured using the JSON file.

!!! note

    Importing a configuration overwrites all existing settings in the target application.

* You can view the import status in the Import Logs. 
* Review and validate the imported apps or agents. 

### Key Considerations for Import

* The target application must already exist.
* Any existing app configurations will be **overwritten during import**.
* The system attempts to import components in the following order: **tools**, **agents**, and then **application configuration**.
* The config file cannot exceed 5MB in size.
* If valid, the platform creates the application with all components.
* If invalid, the platform displays an appropriate error message and aborts the import.

### Rollback of Failed Imports

* If an import fails, appropriate error messages are shown and the platform rolls back all changes. Any components, tools, or agents created in the process are removed. The application either completely imports the app or fails to import.