# Manage Input and Output

Agent flows in GALE allow you to define input and output variables, which become accessible as context objects throughout the execution of the flow.

* Input Variables: The input variables provide initial data to the agent flow. 
* Output Variables: The output variables store and make accessible the derived values from the flow. You must define output variables to capture the results you want to return from the agent.

## Using Variables in the Agent Flow

Once the input and output variables are defined, you can access these variables using the context object syntax and use them throughout the flow:

* Input variables are available immediately after the Start node. These variables can be accessed using the following syntax: `context.steps.Start.inputVariable`
* Output variables can be set in any node. For example, in the End node, you can select a defined output variable and assign it the result/output of a GenAI node using the following syntax: `{{context.steps.GenAInode.output}}`

## Adding Input/Output Variables 

**Steps to add input variables**:

1. On the top of the Agents flow canvas, click the **Manage I/O** button. 
Alternatively, you can click the **Start** node. The **Manage Input & Output** dialog is displayed.  
<img src="../images/manage-input-output-variables.png" alt="Manage Input Output Variables" title="Manage Input Output Variables" style="border: 1px solid gray; zoom:80%;">

2. On the **Input** tab, click the **+ Add input variable** button.

    The **Enter input variable** dialog is displayed.

    <img src="../images/enter-input-variable.png" alt="Enter Input Variable" title="Enter Input Variable" style="border: 1px solid gray; zoom:50%;">

3. In the **Name (key)** field, provide a name for the input variable. For example, Product_ID.

4. In the **Type** field, select a data type from the drop-down list - Text, Number, Boolean, JSON or Remote file.
If you want to make the data type mandatory, then enable the **Mandatory** toggle.

<ul><li>If you select the <b>Text</b>, <b>Number</b>, or <b>Boolean</b> data types, the <b>Default value</b> field appears. You can enable the <b>Default value</b> field to set a default value for the input variable.</li>
<li>If you select the <b>JSON</b> data type and enable <b>Default</b> Value, a code editor appears. You can define a JSON schema or format for the input parameter. This option allows you to set a default value for the specified field, and validate it against the designated data type. If the JSON is invalid, the system will display the relevant error message and execution will fail.
   <img src="../images/json-code-screen.png" alt="json Input Variable" title="json Input Variable" style="border: 1px solid gray; zoom:50%;"></li>
<li>If you select the <b>List of values (Enum)</b> data type, you can set predefined values that are allowed for agent input variables by clicking <b>Add Values +</b>.
<img src="../images/enter-input-variable-window.png" alt="Enter Input Variable window" title="Enter Input Variable window" style="border: 1px solid gray; zoom:50%;"></li>
<li>When you enable <b>Default value</b>, the defined values get listed in the dropdown for selection.
<img src="../images/add-default-key-value.png" alt="add default key value" title="add default key value" style="border: 1px solid gray; zoom:50%;"></li>

The system validates the input against the defined enum values and provides an error message if an invalid value is provided.</ul> 
    
<ul><li>If you select the <b>Remote file</b> data type, the <b>File url timeout</b> field appears. Enter the File URL timeout duration in minutes. The default File URL timeout is 5 minutes. You can set it to anywhere between 5 minutes and 7 days (10080 minutes).</li>
                          
<img src="../images/url-timeout.png" alt="File URL timeout" title="File URL timeout" style="border: 1px solid gray; zoom:50%;"></ul>
 
5. Click **Save**. The input variable is displayed on the Input tab of the **Manage Input & Output** dialog.

**Steps to add output variables**:

1. On the top of the canvas of the Agents page, click the **Manage I/O** button. The **Manage Input & Output** dialog is displayed.

2. On the **Output** tab, click the **+ Add output variable** button. The **Enter output variable** dialog is displayed.

<img src="../images/enter-output-variable.png" alt="Enter Output Variable" title="Enter Output Variable" style="border: 1px solid gray; zoom:50%;">

3. In the **Name (key)** field, provide a name for the output variable.

4. In the **Type** field, select a data type from the drop-down list - String, Number, JSON or Boolean. This allows you to generate data in the defined type as the output parameter from an agent/tool, making it compatible with downstream systems.

<div class="admonition note">
<p class="admonition-title">Note</p>
<p><ul><li>The <b>Import</b> button is enabled when the required information is provided.</li>
<li>GenAI node models and guardrail configurations may not be available in the current account. Reconfigure them before running the agent.</li>
<li>If a type mismatch occurs, the endpoint still succeeds but includes a warning in the response along with the key name and the nature of the mismatch.</li>
<li>If one or more keys fail validation, the response includes warnings for the failed keys and outputs for the valid ones.</li></ul></p></div>

<ol start="5"><li>Click <b>Save</b>.</li>

The output variable is displayed on the Output tab of the <b>Manage Input & Output</b> dialog.</ol>

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>You can also add an output variable in the End node using the <b>Add a Key</b> option on the node's interface.</p></div>



