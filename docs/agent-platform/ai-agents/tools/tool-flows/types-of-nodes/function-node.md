# Function Node - Automate Script Executions

Function nodes let you write custom scripts using JavaScript or Python to process context variables or other variables used in the tool flow.

## Add and Configure a Function Node

Setting up a Function node in a tool flow involves adding the node at the appropriate location in the flow and configuring various node properties.

Steps to add and configure the node:

1. On the **Tools** tab, click the name of the tool to which you want to add the node. The Tool flow page is displayed. 

2. Click **Go to flow** to edit the in-development version of the flow.

3. In the flow builder, click the “**+**” icon on any existing node on the canvas and select **Function** from the pop-up menu. (Alternatively, drag the **Function** node from the Assets panel onto the canvas.)

4. Click the added node to open its properties dialog box. The General Settings for the node are displayed.  
<img src="./../images/configure-function-node.png" alt="Configure Function Node" title="Configure Function Node" style="border: 1px solid gray; zoom:80%;">

5. Enter or select the following information:

    * **Custom Name**: Enter an appropriate name for the node.

    * **Define a Script**: You can define a script using Javascript or Python to process/parse the given input or the output of the previous node. Click anywhere in the **Define a Script** field to open the **Script Editor** dialog box.  
    <img src="./../images/function-node-script-editor.png" alt="Configure Function Node" title="Configure Function Node" style="border: 1px solid gray; zoom:80%;">

        1. In the top-left corner, choose the appropriate scripting language - **Javascript** or **Python**. Enter the script in the box. You can use variables or context variables in the Script Editor. For example, to read an input variable, use the following syntax:
            ~~~
            context.<variable-name> = context.steps.<startNode-Name>.<inputVariable-name>
            ~~~
            To call a function, use the following syntax:
            ~~~
            context.<UserDefined-Variable-Name>= UserDefined-Function-Name(context.steps.<startNode-Name>.<inputVariable-name>)
            ~~~

            !!! note
                You cannot import packages in the Function node. However, you can use pre-existing libraries such as pandas or numpy. [Learn more](./script-libraries.md).

        2. You can use the Context input or output feature to use a variable from the previous node or when testing a function.
            * **Context Input**: Add the required variable; dummy input values can be given to test the defined function.
            * **Context Output**: Shows the results of the function from the given input.
            * **Log**: Monitor the state of the function and view the values.

        3. Click **Run** to test the script. Once the script is resolved successfully, the results are displayed in the Log section.
        4. Close the Script Editor.

6. Click the **Connections** icon in the left navigation and select **Go to Node** for success and failure conditions.  
<img src="./../images/function-node-connections.png" alt="Configure Connection Settings" title="Configure Connection Settings" style="border: 1px solid gray; zoom:80%;">
    1. **On Success** > **Go to Node**: After the current node is successfully executed, go to a selected node in the flow to execute next. For example, you can go to an AI node to use the processed data from the Function node.
    2. **On Failure** > **Go to Node**: If the execution of the current node fails, go to an appropriate node having a custom error message configured for this node.

7. Finally, test the flow and fix any issues found. 
!!! failure "Standard Errors"

    You can see compilation and runtime errors, if any, during the execution of the script/node.

## Test the Flow

After adding and configuring the node as mentioned [here](https://docs.kore.ai/agent-platform/ai-agents/tools/tool-flows/types-of-nodes/function-node/){:target="_blank"}, follow the steps below to test the flow:

### Step 1: Define and Test the Function Code

To define the logic and flow of the script, follow the steps below:

1. In the **Define a Script** window, click the **Expand** icon to view and edit your code in the script editor.
<img src="../images/define-a-script-window.png" alt="define a script window" title="define a script window" style="border: 1px solid gray; zoom:80%;">

2. Select the required coding format.
<img src="../images/select-coding-format.png" alt="coding format" title="coding format" style="border: 1px solid gray; zoom:80%;">

3. Use [these](../types-of-nodes/function-node.md/#syntaxes-for-the-context-input){:target="_blank"} syntaxes to define the code in JavaScript or Python. You can add [static](../types-of-nodes/function-node.md/#define-static-input-variables){:target="_blank"} or [dynamic](../types-of-nodes/function-node.md/#define-dynamic-input-variables){:target="_blank"} input variables in the code to generate the output.
<img src="../images/dynamic-context.png" alt="dynamic context" title="dynamic context" style="border: 1px solid gray; zoom:80%;">

<ol start="4"><li>Click <b>Run</b> in the script editor to test the code.</li>
<img src="../images/run-script.png" alt="run script" title="run script" style="border: 1px solid gray; zoom:80%;"></ol>
    
The script editor has the following tabs representing the code components:

* **Context Input**: Displays the context input(s) fetched from the **Start** node or the static inputs in the code.
<img src="../images/context-ip.png" alt="context input" title="context input" style="border: 1px solid gray; zoom:80%;">

* **Context Output**: Displays the output generated by the script.
<img src="../images/context-output.png" alt="context output" title="context output" style="border: 1px solid gray; zoom:80%;">

* **Log**: Displays the code execution log, including the output or error(s).
<img src="../images/logs.png" alt="logs" title="logs" style="border: 1px solid gray; zoom:80%;">

### Using Static or Dynamic Values in the Script

#### Define Static Input Variables

1. In the script editor, select the coding format from the dropdown.
2. Define the input variables and their values as shown below.
<img src="../images/static-code.png" alt="static code" title="static code" style="border: 1px solid gray; zoom:75%;">

#### Define Dynamic Input Variables

1. In the script editor, select the coding format from the dropdown.
2. Define the input variables and define dynamic values using context variables in the [defined format](../types-of-nodes/function-node.md/#context-variables-for-dynamic-inputs){:target="_blank"}, as shown below.

**JavaScript**

<img src="../images/dynamic-inputs-js.png" alt="dynamic inputs js" title="dynamic inputs js" style="border: 1px solid gray; zoom:75%;">

**Python**

<img src="../images/dynamic-inputs-python.png" alt="dynamic inputs py" title="dynamic inputs py" style="border: 1px solid gray; zoom:75%;">

### Step 2: Test the Flow using Static or Dynamic Inputs

### Static Inputs

To run the flow for static inputs, follow the steps below:

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>In this case, you do not need to add input variables using the <b>Start</b> node.</p>
</div>

1. [Add/edit your script](../types-of-nodes/function-node.md/#step-1-define-and-test-the-function-code){:target="_blank"} in the editor by defining static variables. [Learn more](../types-of-nodes/function-node.md/#define-static-input-variables){:target="_blank"}.
2. Click the **Run Flow** button at the top-right corner of the flow builder.

### Dynamic Inputs

To run the flow for dynamic inputs, follow the steps below:

1. Click the **Input** tab of the **Start** node, and click **Add Input Variable** to configure the input for the flow’s test run. [Learn more](https://docs.kore.ai/agent-platform/ai-agents/tools/tool-flows/perform-other-actions-on-the-flow-builder/manage-input-and-output/#adding-input-variables){:target="_blank"}.

<img src="../images/add-input-variable-button.png" alt="add input variable" title="add input variable" style="border: 1px solid gray; zoom:75%;">

2. Add the **Name(key)** value, select the data type for **Type**, and provide a description in the **Enter input variable** window. For example, in the banking flow, to get the sum of two balances, one in Q3 and the other in Q4, you must define two input variables, “*Q3balance*” and “*Q4balance*,” as shown below.
<img src="../images/add-input-vars-function-node.png" alt="add input var" title="add input var" style="border: 1px solid gray; zoom:75%;">

3. Click **Save**.

Once you define the input variables, you must [add the output variable(s)](../types-of-nodes/function-node.md/#add-the-output-variable){:target="_blank"} and [run the flow](../types-of-nodes/function-node.md/#run-the-flow){:target="_blank"}.

<div class="admonition note">
<p class="admonition-title">Important</p>
<p><ul><li>You can use the <b>Start</b> node’s input variables as context variables in the script editor to accept dynamic values and generate the output. To refer to the input variable, follow the syntax mentioned <a href="https://docs.kore.ai/agent-platform/ai-agents/tools/tool-flows/types-of-nodes/function-node/#syntaxes-for-the-context-input" target="_blank">here</a>.</li>
<li>Once you run the node’s flow, the result gets stored in the output variable of the <b>Start</b> node. Additionally, this key is mapped to the <b>End</b> node, where you can define its value.</li>
<img src="../images/output-variable-start-node.png" alt="end node key" title="end node key" style="border: 1px solid gray; zoom:75%;"></ul></p></div>

### Add the Output Variable

To define the output variable, follow the steps below:

1. Select the **Start** node and click the **Output** tab.

<img src="../images/output-tab.png" alt="output tab" title="output tab" style="border: 1px solid gray; zoom:75%;">

2. Click **Add Output Variable**.
3. Enter the value for **Name (key)** and select the data type for **Type**.
4. Click **Save**.

<img src="../images/save-output-variable-window.png" alt="save output variable" title="save output variable" style="border: 1px solid gray; zoom:75%;">  

### Run the Flow

To run and test the flow, follow the steps below:

1. Click the **Run Flow** button at the top-right corner of the flow builder.
<img src="../images/run-flow-function-node.png" alt="run flow" title="run flow" style="border: 1px solid gray; zoom:75%;">  

2. (Optional) Provide input to test the flow if you have configured it in the **Start** node. Otherwise, go directly to the next step.
3. Click **Generate Output**.

<img src="../images/generate-output-function-node.png" alt="generate output" title="generate output" style="border: 1px solid gray; zoom:75%;">  


The **Debug** window generates the flow log and results for the given input(s), as shown below. [Learn more](https://docs.kore.ai/agent-platform/ai-agents/tools/tool-flows/perform-other-actions-on-the-flow-builder/run-the-flow/){:target="_blank"} about running the tool flow. 

<img src="../images/debug-log-function-node.png" alt="debug log" title="debug log" style="border: 1px solid gray; zoom:75%;">  

## Access the AI Node’s Output

The node’s output is stored in a context variable. You can access the variable using the syntax: `{{context.steps.&lt;<Functionnodename>>.output}`

For example, <code><em>context.steps.Bankingnode.output</em></code>

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>Agent Platform can automatically recognize variables and outputs. To do so, type "<code>context.steps.</code>" and you will see the available variables, nodes, and node outputs.</p>
</div>

## Context Variables for Dynamic Inputs

Before you [run the flow](../types-of-nodes/function-node.md/#run-the-flow){:target="_blank"}, provide clear instructions for the model to follow by [adding the input variable(s)](../types-of-nodes/function-node.md/#dynamic-inputs){:target="_blank"} using **context variables**. Context variables allow you to include dynamic values in the script that a node executes to generate its output. The JSON code editor supports both **JavaScript** and **Python** formats.


## Syntaxes for the Context Input

**JavaScript**

The recommended syntax to fetch dynamic variables using JS in the context input is: `{{context.steps.Start.variable-name}}` 

For example, `context.steps.Start.Q3balance`

**Python**

The recommended syntax to fetch dynamic variables using Python in the context input is: `{{context["steps"]["Start"]["variable-name"]}}` 

For example, `context["steps"]["Start"]["Q3balance"]`

The above syntaxes fetch the variable “*Q3balance*” that you define in the **Start** node. [Learn more](../types-of-nodes/function-node.md/#dynamic-inputs){:target="_blank"}.
