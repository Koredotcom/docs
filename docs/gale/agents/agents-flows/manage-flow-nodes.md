# Manage Agent's Flow Nodes

### Add a new node

The Start node is the starting point of any flow and is available by default. You can drag and drop the Start node (as well as any other nodes) anywhere on the canvas.

**Steps to add a node to the flow builder canvas**:

* Do one of the following:
    * Click the “+” icon and select a node from the pop-up menu.

        <img src="../images/add-a-new-node.png" alt="Add a new Node" title="Add a new Node" style="border: 1px solid gray; zoom:80%;">

    * Drag nodes from within the **Assets** panel on the left navigation bar onto the canvas.

### Rename a node

You can rename and set a desired name of your preference.

**Steps to rename a node**:

* Right-click on the required node. A pop-up with a list of options is displayed.

    <img src="../images/rename-a-node.png" alt="Rename a Node" title="Rename a Node" style="border: 1px solid gray; zoom:80%;">

* Click the **Rename** option from the list of options to modify the name.


### Rearrange nodes

To rearrange nodes on your canvas, drag and drop them to the desired location as shown in the following demo:

!!! note

    Only the node that you are dragging will change position. Any connecting nodes will remain in place, regardless of the direction of their connection.

<img src="../images/rearrange-a-node.gif" alt="Rearrange a Node" title="Rearrange a Node" style="border: 1px solid gray; zoom:80%;">

!!! note

    You can right-click anywhere on the canvas and perform some other actions on the canvas such as Changing the background color of the canvas, Show/Hide UI, and Show/Hide Grid by.


### Connect nodes

Node connections are either made within the configuration of each node or by dragging and dropping the nodes on the canvas You can also connect nodes from the property panel of the node while defining the settings for success and failure. That will also automatically connect the nodes.

**The steps are the following**:

1. Click the grey dot that displays next to the node.
2. Drag your cursor over the grey dot displayed on top of the connecting node and release.
3. A line is drawn between the nodes, with an arrow indicating the direction of the node connection.
4. You can change the destination node by clicking the grey dot on top of the initial destination node and then dragging the connection line to the grey dot on top of the new destination node.

    <img src="../images/connect-nodes.gif" alt="Connect Nodes" title="Connect Nodes" style="border: 1px solid gray; zoom:80%;">


### Delete a node connections

**Steps to delete a node connection**:

1. To delete node connections, click the line connecting two nodes and a **Delete** icon is displayed.
2. Click the **Delete** icon to delete the connection.

    The nodes remain on the canvas but will not be connected anymore. To ensure a working flow, you must create another connection between the nodes.


### Delete a node

You can delete a node if you no longer require it.

**Steps to delete a node**:

* Right-click on the required node. A pop-up with a list of options is displayed.
* Click **Delete** from the list of options and the node is deleted.