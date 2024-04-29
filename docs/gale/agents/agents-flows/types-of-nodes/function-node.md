# Function Node

This node empowers you to create a script for handling context variables or other variables essential in constructing the experience flow. Utilizing a JavaScript or Python editor, you can develop and customize the script according to your requirements.

## Add a New Functions Node

**To add a Function node, follow these steps**:

1. Open the required agent from the list of agents to create the flow.
2. Click **Agent flow** from the left navigation bar. The **Agent flow** page is displayed.
3. Click **Go to flow** to open the flow builder page.

    <img src="../images/go-to-flow-canvas.png" alt="Go to Flow Canvas" title="Go to Flow Canvas" style="border: 1px solid gray; zoom:80%;">

    The Agents Flow canvas is displayed, and you can start creating a new flow.
    
1. You can add a new node in 2 ways:

    * Click the down arrow corresponding to the node from the **Assets** section from the left navigation bar of the **Agents** page and then click **+New Function**.

    Or

    * Click **Function** from the bottom bar of the **Agents** page.

        <img src="../images/add-a-new-function-node.png" alt="Add a New Function Node" title="Add a New Function Node" style="border: 1px solid gray; zoom:80%;">

        The Function node is created on the canvas and you can now define the properties of the node by clicking on the node. You can drag and move a node to any location on the canvas.

!!! note

    The start node is displayed by default on the flow builder.


## Configure the Function Node

**To configure the Function node, follow these steps**:

1. Add a **Function** node to the canvas.
2. Click the **Function** node and the general properties dialog for the node is displayed on the right side of the page as shown in the following image.

    <img src="../images/configure-the-function-node.png" alt="Configure the Function Node" title="Configure the Function Node" style="border: 1px solid gray; zoom:80%;">

1. Enter a **Custom Name** by which you will identify the node later.
2. Click the **Define a Script** box, and the **Edit script** dialog is displayed. Script node is used to process/parse the given input or the output of the previous node in a python or JavaScript.

    <img src="../images/edit-script-box.png" alt="Edit Script Box" title="Edit Script Box" style="border: 1px solid gray; zoom:80%;">

1. Select **Java** or **Python** from the drop-down list of the **Edit script** dialog.

    <img src="../images/select-javascript.png" alt="Select Javascript" title="Select Javascript" style="border: 1px solid gray; zoom:80%;">

1. Enter a **script** in the script box. Context variables are available for you to use while writing the script.

    **Syntax for Java**:

    context.js_fact20 = 1

    for(var i=1;i&lt;21;i++)

    **Syntax for Python**:

    {

    context.js_fact20 = context.js_fact20*i    #context[“js_fact20”] in python

    }

    <img src="../images/enter-a-script.png" alt="Enter a Script" title="Enter a Script" style="border: 1px solid gray; zoom:80%;">

1. Click the **Copy** icon if you want to copy the code.
2. Click the **Run** button to test the script. Once the script is resolved successfully, you will be able to see the results in the **Log** section of the **Edit Script** page. 

    * **Context input**: You can provide some input for the script node to execute in the Context input section.
    * **Context output**: To find the results of the function from the given input. The output of the script execution along with the variable generated is displayed in the Context output section. You can debug the issues based on the log report and re-run the script.
    * **Log**: Status of the function can be monitored and you can view the values.

    <img src="../images/context-input-context-output.png" alt="Context Input Context Output" title="Context Input Context Output" style="border: 1px solid gray; zoom:80%;">

3. Click the **Actions** icon and select the actions that you want the node to trigger when the Functions node is successful or when it fails.

    <img src="../images/actions-for-function-node.png" alt="Actions for Function Node" title="Actions for Function Node" style="border: 1px solid gray; zoom:80%;">

## Status Codes

**Errors**:

* Compilation and runtime errors.

**Connection**:

* **On Success**: On successful execution of the current node this connection can be linked with another node such as Gen AI node, Function node, Condition node, API node, or an End node.
* **On Failure**: On failure in execution of the current node this connection should be linked with an End node to display the custom error message from the Function node. 

