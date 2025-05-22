# Integration Node - Automate Third-party Integrations

The **Integration node** allows you to connect to a third-party service provider within the Tool Flow using the configured connection and auth method from the **Settings** console. [Learn more](../../../../settings/integrations/about-integrations.md){:target="_blank"}.

<div class="admonition note">
<p class="admonition-title">Note</p>
<p><ul><li>You must add at least one connection to configure the node. <a href="https://docs.kore.ai/agent-platform/settings/integrations/about-integrations/#add-connection" target="_blank">Learn more</a>.</li>
<li>Make sure the selected connection is tested under <b>Settings</b> > <b>Integrations</b> before using it in the node. <a href="https://docs.kore.ai/agent-platform/settings/integrations/about-integrations/#test-connection" target="_blank">Learn more</a>.</li></ul></p>
</div>

When you select a connection, the node allows you to add specific actions provided by the third-party service, such as exporting data from a site or fetching broken backlinks into your tool automation flow.

You can configure the required action parameters directly in the UI, or view and copy the **JSON code** generated for the configured node.

**Benefits**

* **Prebuilt services or actions** can be embedded into your automation flow without any coding. 

* These services are secured through the **authentication mechanism** of the configured and tested connection. 

* You can easily **customize the node** in the Tool Flow canvas and integrate it with other nodes to suit your specific needs.


## Steps to Add and Configure the Node

<div class="admonition note">
<p class="admonition-title">Prerequisite</p>
<p>A service provider account and connection to it must exist before you configure a node. If no connection is available, the system will prompt you to add one.</p>
</div>

<img src="../images/no-connection.png" alt="no connection" title="no connection" style="border: 1px solid gray; zoom:75%;">


To add a connection, click **+ Add Connection**. The system redirects to **Settings** > **Integrations** page. Follow the steps [here](../../../../settings/integrations/about-integrations.md/#add-a-connection-to-set-up-integration){:target="_blank"} to complete the process.


To add and configure the Integration node, follow the steps below:

1. On the **Tools** tab, click the name of the tool to which you want to add the node. The **Tool Flow** page is displayed. 
<img src="../images/select-tools-tab.png" alt="click settings" title="click settings" style="border: 1px solid gray; zoom:75%;">

2. Click **Go to flow** to edit the in-development version of the flow.
3. In the flow builder, click **Integration** > **+ New Integration** in the **Assets** panel. Alternatively, drag the node from the panel onto the canvas. You can also click **Integration** in the pop-up menu.
<img src="../images/add-int-node.png" alt="add node" title="add node" style="border: 1px solid gray; zoom:75%;">

4. In the **Integration** window, either search for the required service or select from the listed options. [See](../../../../settings/integrations/about-integrations.md/#supported-integrations){:target="_blank"} the list of supported pre-built integrations.
<img src="../images/integrations-list.png" alt="integrations list" title="integrations list" style="border: 1px solid gray; zoom:75%;">

5. Click the added node to open its properties dialog box. The **General Settings** for the node are displayed.

    <div class="admonition note">
    <p class="admonition-title">Note</p>
    <p>The node uses the service provider’s name by default. You can rename the node if needed.</p>
</div>

<ol start="6"><li>Enter or select inputs for the following fields:</li>
<ul><li><b>Node Name</b>: Enter an appropriate name for the node. For example, “<i>Ahrefslinkbuilder</i>” (Only letters and numbers are allowed).</li>
<li><b>Connection Name</b>: Select a connection from the listed options. The list includes all the active connections you have added and configured under <b>Settings</b> > <b>Integrations</b>.</li>
<img src="../images/select-connection-name.png" alt="select connection" title="select connection" style="border: 1px solid gray; zoom:75%;"></ul>
<li>Click <b>Add Action</b> to add and configure the required actions or tasks from the service provider.
<div class="admonition note">
<p class="admonition-title">Note</p>
<p>Only one action can be added and configured at a time.</p>
</div>

<img src="../images/add-action-click.png" alt="click add action" title="click add action" style="border: 1px solid gray; zoom:75%;"></li>    
<li>In the <b>Add Action</b> window, select the required action to be linked to the node.
<img src="../images/add-action.png" alt="add action" title="add action" style="border: 1px solid gray; zoom:75%;"></li>
<li>In the action settings window, add inputs for the action fields and click <b>Save</b>. These parameters define how the action is executed for the connection.

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>The action parameters vary depending on the specific action and provider. See the tooltip for more information. </p>
</div>
<img src="../images/action-parameters.png" alt="action parameters" title="action parameters" style="border: 1px solid gray; zoom:75%;"></li>
<li>The added action is listed in the <b>General Properties</b> window of the node. This action is applied to all the connections available for the provider.
<img src="../images/integration-gen-properties.png" alt="gen properties" title="gen properties" style="border: 1px solid gray; zoom:75%;">
</li>
<li>Click the <b>Connections</b> icon and select <b>Go to Node</b> for success and failure conditions.</li>
<ul><li><b>On Success</b> > <b>Go to Node</b>: After the current node is successfully executed, go to a selected node in the flow to execute next, such as an AI node, Function node, Condition node, API node, or End node.</li>
<li><b>On Failure</b> > <b>Go to Node</b>: If the execution of the current node fails, go to the End node to display any custom error message from the AI node.
<img src="../images/success-failure-flow.png" alt="node flow" title="node flow" style="border: 1px solid gray; zoom:75%;"></li>
</ul></ol>

The node connects to the service using the selected connection and performs the configured action when the flow is run.

The **next step** is to configure and test the flow for the node. [Learn more](../types-of-nodes/integration-node.md/#configure-and-test-the-flow-for-the-node){:target="_blank"}.

## Manage Actions

You can either **change** or **edit** an action for an integration. However, you **cannot delete** a configured action directly. To remove an action, you must add a **new node** and configure it with a different action.

### Change Action

To configure a different action, click the **Change Action** button.
<img src="../images/change-action.png" alt="change action" title="change action" style="border: 1px solid gray; zoom:75%;">

Then, select another action in the **Change Action** window.     

<img src="../images/select-action-change.png" alt="select action" title="select action" style="border: 1px solid gray; zoom:75%;">

<div class="admonition warning">
<p class="admonition-title">Caution</p>
<p>If you change or replace the existing action, any configuration changes made to the previous action will be lost.</p>
</div>

The new action replaces the existing one for the connection. Please configure the action parameters for this action to work properly.

### Edit Action

To modify the parameters for an action, follow the steps below:

<ol><li>Click the <b>Edit</b> icon.</li>
<img src="../images/edit-action.png" alt="edit action" title="edit action" style="border: 1px solid gray; zoom:75%;"></ol>
<ol start="2"><li>Modify the required values and click <b>Save</b>.</li></ol>

### View the JSON Code

In addition to defining action parameters in the configuration window, you can view the related JSON code.

To access the code, enable the **JSON switch** at the top right of the action configuration window. 

<img src="../images/enable-json.png" alt="enable json" title="enable json" style="border: 1px solid gray; zoom:75%;">

This opens a **code viewer** where you can view the JSON that defines the current action and copy the code. The Integration node executes this action code for the connection when you run the flow. 

<img src="../images/json-code-viewer.png" alt="json code viewer" title="json code viewer"  style="border: 1px solid gray; zoom:75%;">

## Configure and Test the Flow for the Node

After adding and configuring the node as mentioned [here](../types-of-nodes/integration-node.md/#steps-to-add-and-configure-the-node){:target="_blank"}, follow the steps below to test the flow.


### Step 1: (Optional) Add Input Variable(s)

<ol><li>Click the <b>Input</b> tab of the <b>Start</b> node, and click <b>Add Input Variable</b> to configure the input for the flow’s test run. <a href="https://docs.kore.ai/agent-platform/ai-agents/tools/tool-flows/perform-other-actions-on-the-flow-builder/manage-input-and-output/#adding-input-variables" target="_blank">Learn more</a></li>
<img src="../images/start-node-io.png" alt="start node io" title="start node io" style="border: 1px solid gray; zoom:75%;"></ol>
<ol start="2"><li>In the <b>Enter input variable</b> window, select the appropriate data type for the <b>Type</b> field to define the input variable.</li>
<li>Click <b>Save</b>.</li></ol>

Add all the required input variables to run the flow in the **Input** section of the **Start** node. 

<img src="../images/add-input-var-integration.png" alt="add input variable" title="add input variable" style="border: 1px solid gray; zoom:75%;">

### Step 2: Add Output Variable(s)

This step is required because the **Start node** must have at least one **output parameter** linked to the node.

<ol><li>Click the <b>Start</b> node and select the <b>Output</b> tab.</li>
<li>Click <b>Add Output Variable</b>.</li>
<img src="../images/add-op-var.png" alt="add output variable" title="add output variable" style="border: 1px solid gray; zoom:75%;"></ol>
<ol start="3"><li>Enter the value for <b>Name (key)</b> and select <i>String</i> for <b>Type</b>.</li>
<li>Click <b>Save</b>. <a href="https://docs.kore.ai/agent-platform/ai-agents/tools/tool-flows/types-of-nodes/integration-node/" target="_blank">Learn more</a> about accessing the node’s output.
<img src="../images/output-variable.png" alt="op variable" title="op variable" style="border: 1px solid gray; zoom:75%;"></li></ol>

### Step 3: Run the Flow

<div class="admonition note">
<p class="admonition-title">Important</p>
<p>Before running the flow, resolve the tool flow errors that appear when you click the <b>Warning</b> icon.</p>
</div>

<img src="../images/check-errors.png" alt="errors" title="errors" style="border: 1px solid gray; zoom:75%;">

To run and test the flow, follow the steps below:

1. Click the **Run Flow** button at the top-right corner of the flow builder. 
<img src="../images/click-run-flow.png" alt="click run flow" title="click run flow" style="border: 1px solid gray; zoom:75%;">

2. (Optional) Add the value for the **Input Variable** if you have configured it to test the flow. Otherwise, go directly to the next step.
3. Click **Generate Output**.
   
   <img src="../images/click-generate-op.png" alt="click settings" title="click settings" style="border: 1px solid gray; zoom:75%;">
 

The **Debug** window generates the flow log and output from the inputs provided. [Learn more](../perform-other-actions-on-the-flow-builder/run-the-flow.md){:target="_blank"} about running the tool flow.


## Access the Node’s Output

The node’s output is stored in a context variable. You can access the variable using the following syntax: `{{context.steps.IntegrationNodeName.output}}`

<div class="admonition note">
<p class="admonition-title">Important</p>
<p>Agent Platform can automatically recognize variables and outputs. To do so, type "<code>context.steps.</code>" and you will see available variables and nodes, including the nodes' outputs.</p>
</div>

