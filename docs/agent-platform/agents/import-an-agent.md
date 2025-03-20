# Import a Tool 

Using import functionality, you can create a new tool or add it as a version to an existing tool in your account. The import process preserves tool configuration while handling environment variables, errors, and role permissions.

Creating a new tool involves importing a *.zip* package from your local system with the flow definition, app definition, and environment variables JSON files from another environment. During the creation journey, assign the imported tool a unique name to avoid conflicts with existing tool. [Learn more](./import-an-agent.md/#import-to-create-a-new-agent){:target="_blank"}.

When importing a tool version to a parent tool, the imported flow definition becomes the new in-dev version, overriding the flow, app definition, and environment variable files. The previous version is renamed and saved in the list, with optional backup of the current version available.

Once the import is complete, the tool flow canvas is updated with the latest configuration changes.

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>Users with only <b>Viewer</b> permissions cannot import a tool.</p></div>

## Import to Create a New Tool 

To initiate a tool creation journey through the import functionality, follow the steps below:

1. [Sign in](../getting-started/sign-up-sign-in.md){:target="_blank"} to your Agent Platform account.
2. Click **Tools** on the top menu.
3. Do one of the following based on your requirements:

<ul><li>If you don't have any existing tools and want to create one by importing from another environment, click <b>Import Tool</b>.
<img src="../images/agent_platform/tools_landing.png" alt="import tool" title="import tool" style="border: 1px solid gray; zoom:75%;"></li>
<li>If you already have tools deployed, the following page is displayed. To import a tool, select the relevant tab on the <b>Tools</b> dashboard and click the <b>Import tool</b> icon.
<img src="../images/agent_platform/import_tool.png" alt="click import tool" title="click import tool" style="border: 1px solid gray; zoom:75%;"></li></ul>

<ol start="4"><li>In the <b>Import tool</b> window, providing the following information is mandatory.</li>
<ul><li><b>Tool Name</b>: Provide a unique tool name.</li>
<li><b>Flow definition file</b>: Upload the required <b>flow_definition.json</b> file from your local directory. The file includes the tool's canvas definitions (node definitions) and GenAI node configurations, including prompts, hyperparameters, and timeout information.</li></ul></ol>

Providing the following information is optional:

* **App definition file**: Upload the required **app_definition.json** file, which includes general information about the tool version and guardrails
* **Environment variable file**: Upload the required **env_variables.json** file, which includes the environment variables set for the tool. 

<div class="admonition note">
<p class="admonition-title">Note</p>
<p><ul><li>The <b>Import</b> button is enabled when the required information is provided.</li>
<li>GenAI node models and guardrail configurations may not be available in the current account. Reconfigure them before running the tool.</li>
<li>The model name from the original tool is imported as a placeholder into the GenAI node's <b>Select Model</b> field. Later, you can assign a value from the available options.</li>
<li>The values for <b>System Prompt</b>, <b>Prompt</b>, <b>Timeout</b>, and <b>Hyperparameters</b> are imported for the GenAI node.</li></ul></p></div>

<ol start="5"><li>Click <b>Import</b>.</li>
<img src="../images/agent_platform/click-import-new.png" alt="click import" title="click import" style="border: 1px solid gray; zoom:75%;"></ol>

Once the import is complete, the system will redirect you to the **Tool Flow** page, where you can access the new tool’s flow canvas by clicking **Go to flow**.
<img src="../images/agent_platform/tool_flow.png" alt="agent flow page" title="agent flow page" style="border: 1px solid gray; zoom:75%;">

The imported tool is listed under **All tools** and **My tools** on the **Tools** dashboard.


<div class="admonition warning">
<p class="admonition-title">Important</p>
<p><ul><li>The status of the imported tool is set to <b>In Development</b>.</li>
<li>The node types, tool descriptions, input and output variables, scanners, and sync/async setup are kept intact during the import.</li>
<li>If the GenAI node's model doesn't match any available models in the current account, the model field is kept empty, but all prompt definitions are imported.</li>
<li>API keys are not transferred during the import process.</li>
<li>The imported tool cannot be shared with other users.</li></p></div>

**Failure Scenarios**

The import may fail due to an incompatible tool version, a corrupt file, an internal error, or missing guardrails in the current account, triggering an error notification.

## Import Tool as a Version

Use the **Import** functionality under **Tools** > **Configurations** to add a tool as a version of a parent tool, replacing the existing one. You should back up the current in-development version to preserve its configuration definitions. The export file is saved as '<code>Exported_<i>ToolName</i>.zip</code>.’

When you import an tool as a version, you must upload all the following files:

* **Flow definition file**: Upload the required **flow_definition.json** file from your local directory. The file includes the tool's canvas definitions (node definitions) and GenAI node configurations, including prompts, hyperparameters, and timeout information.
* **App definition file**: Upload the required **app_definition.json** file, which includes general information about the tool version and guardrails.
* **Environment variable file**: Upload the required **env_variables.json** file, which includes the environment variables set for the tool. Any conflicts between environment variables in the parent tool and the imported version must be resolved. [Learn more](../tools/configure-a-tool.md/#manage-environment-variables){:target="_blank"}.

### Steps to Import a Tool

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>To import a tool as a version, the parent tools must be deployed in your account.</p></div>

To import a tool as a version, follow the steps below:

1. [Sign in](../getting-started/sign-up-sign-in.md/#sign-in-to-gale){:target="_blank"} to your Agent Platform account.
2. Click **Tools** on the top menu.
3. Click the tool in the listing to proceed further.
4. Click **Configurations** on the left menu.
5. Scroll down to the **Import tool** section and click **Import**.
    <img src="../images/agent_platform/import_tool_config.png" alt="import agent configuration" title="import agent configuration" style="border: 1px solid gray; zoom:75%;">

6. (Optional) In the following dialog, select the **Back up your current tool** option to preserve the data of the version being replaced.

    <img src="../images/agent_platform/backup_tool.png" alt="import confirmation" title="import confirmation" style="border: 1px solid gray; zoom:75%;">

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>Backing up automatically exports and saves the .zip package of the tool definition files to the designated location when the import is initiated. <a href="https://docs.kore.ai/agent-platform/tools/export-a-tool/" target="_blank">Learn more</a></p></div>

If you choose not to back up/export the tool configurations, unselect the back-up option and proceed to the next step.

<ol start="7"><li>Click <b>Import</b> in the confirmation dialog.</li>
<li>In the <b>Import Tool</b> window, upload the required JSON files and click <b>Import</b>.</li></ol>

<div class="admonition note">
<p class="admonition-title">Note</p>
<p><i>Tool Name</i> is not required since the current version’s name is assigned.</p></div>

The imported tool is validated, and if no errors exist, the tool is imported successfully.

The imported version is added under the parent tool.

<div class="admonition warning">
<p class="admonition-title">Important</p>
<p><ul><li>The status of the parent tool is set to "<b>In Development</b>.”</li>
<li><b>Updated on</b> reflects the date the version was imported.</li></ul></p></div>

### Conflicting Environment Variables

When importing environment variables during tool version import, conflicts may arise between those of the parent tool and the imported version. If neither tool has environment variables, no conflicts occur.

<div class="admonition warning">
<p class="admonition-title">Important</p>
<p>Verify the environment variables before importing. For conflicting values, the existing ones are retained if not changed.</p></div>

You must resolve conflicting variables by either keeping the existing value (of the version being replaced) or replacing them (with values from the imported tool) to ensure a smooth import process.

When conflicting environment variables are detected, it displays the following window. To resolve conflicts, follow the steps below:

1. Select the **Conflicting variables** tab.
2. Select either **Overwrite** to replace the existing variable with the imported one or select **Keep existing**.
3. Click **Proceed** to continue importing.

**Editing Existing and Imported Variables**

To resolve conflicts by editing either the existing or imported environment variables, select the relevant tab in the **Edit Environment Variable** window and follow the steps provided.

1. Click the **Three-dots (Ellipsis)** icon of the required variable.
2. Select **Edit**.
3. Change the required values in the **Edit Variable** window.
4. Click **Save**.


To cancel the import process during the conflicting environment variables resolution, click **Cancel** in the **Edit Environment Variable** window, and then click **Confirm**.

## Related Links

* [Create a Tool](../tools/create-a-new-tool.md){:target="_blank"}- Create a new tool and configure its flow.
* [Export a Tool](../tools/export-a-tool.md){:target="_blank"}- Export the set configurations of a tool for data sharing and preservation.
* [Deploy a Tool](../tools/deploy-a-tool.md){:target="_blank"}- Explore synchronous and asynchronous deployment methods for tool integration.
* [Configure a Tool](../tools/configure-a-tool.md){:target="_blank"}- Modify the tool's details, configure settings, or undeploy and delete it if unused.