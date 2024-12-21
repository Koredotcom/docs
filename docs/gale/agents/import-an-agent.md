# Import an Agent 

Using import functionality, GALE enables you to create a new agent or add it as a version to an existing agent in your account. The import process preserves agent configuration while handling environment variables, errors, and role permissions.

Creating a new agent involves importing a *.zip* package from your local system with the flow definition, app definition, and environment variables JSON files from another environment. During the creation journey, assign the imported agent a unique name to avoid conflicts with existing agents. [Learn more](./import-an-agent.md/#import-to-create-a-new-agent){:target="_blank"}.

When importing an agent version to a parent agent, the imported flow definition becomes the new in-dev version, overriding the flow, app definition, and environment variable files. The previous version is renamed and saved in the list, with optional backup of the current version available.

Once the import is complete, the agent flow canvas is updated with the latest configuration changes.

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>Users with only <b>Viewer</b> permissions cannot import an agent.</p></div>

## Import to Create a New Agent 

To initiate an agent creation journey through the import functionality, follow the steps below:

1. [Sign in](../getting-started/sign-up-sign-in.md/#sign-in-to-gale){:target="_blank"} to your GALE account.
2. Click **Agents** on the top menu.
3. Do one of the following based on your requirements:

<ul><li>If you don't have any existing agents and want to create one by importing from another environment, click <b>Import Agent</b>.
<img src="../images/import-new-agent.png" alt="import new agent" title="import new agent" style="border: 1px solid gray; zoom:75%;"></li>
<li>If you already have agents deployed, the following page is displayed. To import an agent, select the relevant tab on the <b>Agents</b> dashboard and click the <b>Import Agent</b> icon.
<img src="../images/click-import-agent.png" alt="click import agent" title="click import agent" style="border: 1px solid gray; zoom:75%;"></li></ul>

<ol start="4"><li>In the <b>Import Agent</b> window, providing the following information is mandatory.</li>
<ul><li><b>Agent Name</b>: Provide a unique agent name to avoid the following error.
<img src="../images/app-name-exists.png" alt="app name exists" title="app name exists" style="border: 1px solid gray; zoom:75%;"></li>
<li><b>Flow definition file</b>: Upload the required <b>flow_definition.json</b> file from your local directory. The file includes the agent's canvas definitions (node definitions) and GenAI node configurations, including prompts, hyperparameters, and timeout information.</li></ul></ol>

Providing the following information is optional:

* **App definition file**: Upload the required **app_definition.json** file, which includes general information about the agent version and guardrails
* **Environment variable file**: Upload the required **env_variables.json** file, which includes the environment variables set for the agent. 

<div class="admonition note">
<p class="admonition-title">Note</p>
<p><ul><li>The <b>Import</b> button is enabled when the required information is provided.</li>
<li>GenAI node models and guardrail configurations may not be available in the current account. Reconfigure them before running the agent.</li>
<li>The model name from the original agent is imported as a placeholder into the GenAI node's <b>Select Model</b> field. Later, you can assign a value from the available options.</li>
<li>The values for <b>System Prompt</b>, <b>Prompt</b>, <b>Timeout</b>, and <b>Hyperparameters</b> are imported for the GenAI node.</li></ul></p></div>

<ol start="5"><li>Click <b>Import</b>.</li>
<img src="../images/click-import.png" alt="click import" title="click import" style="border: 1px solid gray; zoom:75%;"></ol>

When import is in progress, the following message is displayed.
<img src="../images/import-initiated.png" alt="import initiated" title="import initiated" style="border: 1px solid gray; zoom:75%;">

When the agent is imported successfully, the following messages are displayed.
<img src="../images/agent-import-success.png" alt="agent import success" title="agent import success" style="border: 1px solid gray; zoom:75%;">

Once the import is complete, the system will redirect you to the **Agent Flow** page, where you can access the new agent’s flow canvas by clicking **Go to Flow**.
<img src="../images/go-to-flow.png" alt="agent flow page" title="agent flow page" style="border: 1px solid gray; zoom:75%;">

The imported agent is listed under **All Agents** and **My Agents** on the **Agents** dashboard.
<img src="../images/imported-agent-listing.png" alt="imported agent listing" title="imported agent listing" style="border: 1px solid gray; zoom:75%;">

<div class="admonition warning">
<p class="admonition-title">Important</p>
<p><ul><li>The status of the imported agent is set to "<b>In Development</b>.”</li>
<li>The node types, agent descriptions, input and output variables, scanners, and sync/async setup are kept intact during the import.</li>
<li>If the GenAI node's model doesn't match any available models in the current account, the model field is kept empty, but all prompt definitions are imported.</li>
<li>API keys are not transferred during the import process.</li>
<li>The imported agent cannot be shared with other users.</li></p></div>

**Failure Scenarios**

The import may fail due to an incompatible agent version, a corrupt file, an internal error, or missing guardrails in the current account, triggering an error notification.

## Import Agent as a Version

Use the **Import** functionality under **Agents** > **Configurations** to add an agent as a version of a parent agent, replacing the existing one. You should back up the current in-development version to preserve its configuration definitions. The export file is saved as '<code>Exported_<i>AgentName</i>.zip</code>.’

When you import an agent as a version, you must upload all the following files:

* **Flow definition file**: Upload the required **flow_definition.json** file from your local directory. The file includes the agent's canvas definitions (node definitions) and GenAI node configurations, including prompts, hyperparameters, and timeout information.
* **App definition file**: Upload the required **app_definition.json** file, which includes general information about the agent version and guardrails.
* **Environment variable file**: Upload the required **env_variables.json** file, which includes the environment variables set for the agent. Any conflicts between environment variables in the parent agent and the imported version must be resolved. [Learn more](../agents/configure-an-agent.md/#manage-environment-variables){:target="_blank"}.

### Steps to Import an Agent

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>To import an agent as a version, the parent agents must be deployed in your account.</p></div>

To import an agent as a version, follow the steps below:

1. [Sign in](../getting-started/sign-up-sign-in.md/#sign-in-to-gale){:target="_blank"} to your GALE account.
2. Click **Agents** on the top menu.
<img src="../images/agents-select.png" alt="select agents" title="select agents" style="border: 1px solid gray; zoom:75%;">

3. Click the agent in the listing to proceed further.
4. Click **Configurations** on the left menu.
5. Scroll down to the **Import Agent** section and click **Import**.
<img src="../images/import-agent-configuration.png" alt="import agent configuration" title="import agent configuration" style="border: 1px solid gray; zoom:75%;">

6. (Optional) In the following dialog, select the **Back up your current agent** option to preserve the data of the version being replaced.

<img src="../images/import-confirmation.png" alt="import confirmation" title="import confirmation" style="border: 1px solid gray; zoom:75%;">

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>Backing up automatically exports and saves the .zip package of the agent definition files to the designated location when the import is initiated. <a href="https://docs.kore.ai/gale/agents/export-an-agent/" target="_blank">Learn more</a></p></div>

<img src="../images/back-up-completed.png" alt="back up success" title="back up success" style="border: 1px solid gray; zoom:75%;">

If you choose not to back up/export the agent configurations, unselect the back-up option and proceed to the next step.

<ol start="7"><li>Click <b>Import</b> in the confirmation dialog.</li>
<li>In the <b>Import Agent</b> window, upload the required JSON files and click <b>Import</b>.</li></ol>

<div class="admonition note">
<p class="admonition-title">Note</p>
<p><i>Agent Name</i> is not required since the current version’s name is assigned.</p></div>

<img src="../images/import-agent-form.png" alt="import agent window" title="import agent window" style="border: 1px solid gray; zoom:75%;">

The imported agent is validated, and if no errors exist, the following message is displayed.

<img src="../images/import-agent-success.png" alt="import agent success" title="import agent success" style="border: 1px solid gray; zoom:75%;">

The imported version is added under the parent agent.

<img src="../images/imported-version-listing-2.png" alt="imported version all agents" title="imported version all agents" style="border: 1px solid gray; zoom:75%;">

<img src="../images/imported-version-listing-1.png" alt="imported version my agents" title="imported version my agents" style="border: 1px solid gray; zoom:75%;">

<div class="admonition warning">
<p class="admonition-title">Important</p>
<p><ul><li>The status of the parent agent is set to "<b>In Development</b>.”</li>
<li><b>Updated on</b> reflects the date the version was imported.</li></ul></p></div>

### Conflicting Environment Variables

When importing environment variables during agent version import, conflicts may arise between those of the parent agent and the imported version. If neither agent has environment variables, no conflicts occur.

<div class="admonition warning">
<p class="admonition-title">Important</p>
<p>Verify the environment variables before importing. For conflicting values, the existing ones are retained if not changed.</p></div>

You must resolve conflicting variables by either keeping the existing value (of the version being replaced) or replacing them (with values from the imported agent) to ensure a smooth import process.

When GALE detects conflicting environment variables, it displays the following window. To resolve conflicts, follow the steps below:

1. Select the **Conflicting variables** tab.
2. Select either **Overwrite** to replace the existing variable with the imported one or select **Keep existing**.
<img src="../images/overwrite-or-keep.png" alt="overwrite or keep" title="overwrite or keep" style="border: 1px solid gray; zoom:75%;">

3. Click **Proceed** to continue importing.

**Editing Existing and Imported Variables**

To resolve conflicts by editing either the existing or imported environment variables, select the relevant tab in the **Edit Environment Variable** window and follow the steps provided.

1. Click the **Three-dots (Ellipsis)** icon of the required variable.
2. Select **Edit**.
<img src="../images/edit-env-variable.png" alt="edit env variable" title="edit env variable" style="border: 1px solid gray; zoom:75%;">

3. Change the required values in the **Edit Variable** window.
4. Click **Save**.
<img src="../images/save-edit-variable.png" alt="save edited variable" title="save edited variable" style="border: 1px solid gray; zoom:75%;">

To cancel the import process during the conflicting environment variables resolution, click **Cancel** in the **Edit Environment Variable** window, then click **Confirm** in the following window.
<img src="../images/cancel-import-progress.png" alt="cancel import progress" title="cancel import progress" style="border: 1px solid gray; zoom:75%;">

## Related Links

* [Create an Agent](../agents/create-a-new-agent.md){:target="_blank"}- Create a new agent and configure its flow.
* [Export an Agent](../agents/export-an-agent.md){:target="_blank"}- Export the set configurations of an agent for data sharing and preservation.
* [Deploy an Agent](../agents/deploy-an-agent.md){:target="_blank"}- Explore synchronous and asynchronous deployment methods for agent integration.
* [Configure an Agent](../agents/configure-an-agent.md){:target="_blank"}- Modify the agent's details, configure settings, or undeploy and delete it if unused.