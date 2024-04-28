# Configure the End Node

**To configure the End node, follow these steps**:

1. Add an **End** node to the canvas as shown in the preceding procedure.
2. Click the **End** node and the general properties dialog for the node is displayed on the right side of the page as shown in the following image.

    <img src="../images/configure-end-node.png" alt="Configure End Node" title="Configure End Node" style="border: 1px solid gray; zoom:80%;">

1. Enter a **Custom Name** to the end node.
2. Select a **Name (key)** from the drop-down list. The list of all the keys that are defined in the Manage Output section are displayed here. You can select a required variable and map a value to it. For more information about Adding a new key, see [Manage Input and Output variable](../../perform-other-actions-on-the-flow-builder/manage-input-and-output.md).
3. Enter any **Value** to the selected key. You can provide any context object value or context related to any node or the input variable value. 

    Enter the value in this format:
    
    {{context.steps.xxxx.xxxx}} On Success or display an error message on Failure.
4. Click the **+ADD A KEY** option to add multiple outputs at once. 
The details are autosaved.