# End Node

This node allows you to define the message displayed to the user when the experience flow ends. This node allows you to map the outputs to be sent out of the flow or the agent.

## Add a New End Node

**To add an End node, follow these steps**:

1. Open the required agents from the list of agents to create the flow.
2. Click **Agent flow** from the left navigation bar. The **Agent flow** page is displayed.
3. Click **Go to flow** to open the flow builder page.

    <img src="../images/go-to-flow-canvas.png" alt="Go to Flow Canvas" title="Go to Flow Canvas" style="border: 1px solid gray; zoom:80%;">

    The Agents Flow canvas is displayed, and you can create a new flow.

1. You can add a new node in 2 ways:

    * Click the down arrow corresponding to the node from the **Assets** section from the left navigation bar of the **Agents** page and then click **+New End**.

    Or

    * Click **End** from the bottom bar of the **Agents** page.

    <img src="../images/add-a-new-end-node.png" alt="Add a New End Node" title="Add a New End Node" style="border: 1px solid gray; zoom:80%;">

    The End node is created on the canvas and you can now define the properties of the node by clicking on the node. You can drag and move a node to any location on the canvas.

    !!! note

        The start node is displayed by default on the flow builder.

## Configure the End Node

**To configure the End node, follow these steps**:

1. Add an **End** node to the canvas as shown in the preceding procedure.
2. Click the **End** node and the general properties dialog for the node is displayed on the right side of the page as shown in the following image.

    <img src="../images/configure-end-node.png" alt="Configure End Node" title="Configure End Node" style="border: 1px solid gray; zoom:80%;">

1. Enter a **Custom Name** to the end node.
2. Select a **Name (key)** from the drop-down list. The list of all the keys that are defined in the Manage Output section are displayed here. You can select a required variable and map a value to it. For more information about Adding a new key, see [Manage Input and Output variable](../../agents-flows/perform-other-actions-on-the-flow-builder/manage-input-and-output.md).
3. Enter any **Value** to the selected key. You can provide any context object value or context related to any node or the input variable value. 

    Enter the value in this format:
    
    ```
    {{context.steps.<startNode-Name>.<inputVariable-name>}}
    ```

4. Click the **+ADD A KEY** option to add multiple outputs at once. 
The details are autosaved.

## Status Codes

**Errors**

* When the value for the o/p variable is not defined then list of unresolved outputs are displayed.
