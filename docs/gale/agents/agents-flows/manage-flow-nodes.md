# Manage Nodes in Agent Flow

A flow consists of a sequence of nodes connected on the flow builder canvas. You can easily add nodes on the canvas, connect, rename, rearrange, and delete them as required.

### Add Nodes

The Start node is the starting point of any flow and is available by default. You can drag and drop the Start node (as well as any other nodes) anywhere on the canvas.

To add a node, click the “+” icon, and select a node from the pop-up menu.
You can also drag a node from the Assets panel onto the canvas.
  <img src="../images/add-a-new-node.png" alt="Add a new Node" title="Add a new Node" style="border: 1px solid gray; zoom:80%;">

### Rename Nodes

To rename a node, right-click the node, and select **Rename** from the list of options.  
<img src="../images/rename-a-node.png" alt="Rename a Node" title="Rename a Node" style="border: 1px solid gray; zoom:80%;">

### Rearrange Nodes

Steps to rearrange the nodes on the canvas:

1. Drag and drop the nodes to the desired location on the canvas, as shown in the demo below.

    Only the node that you are dragging will change position. Any connecting nodes will remain in place, regardless of the direction of their connection.
  
    <img src="../images/rearrange-a-node.gif" alt="Rearrange a Node" title="Rearrange a Node" style="border: 1px solid gray; zoom:80%;">

2. (Optional) You can right-click anywhere on the canvas and select **Auto arrange** to automatically arrange the nodes on the canvas.

    You can also perform other actions on the canvas, such as Show/Hide UI and Show/Hide Grid.

### Manage Node Connections

Node connections are either made from within each node's configuration or by dragging and dropping the nodes on the canvas. You can also automatically connect nodes from the property panel of the node while defining the settings for success and failure.

Steps to manage connections between the nodes:

1. Go to the node you want to connect, and hover over the grey dot on the node. Click the blue plus sign, and drag your cursor to point towards the destination node. 
A line is drawn between the nodes, with an arrow indicating the direction of the node connection.
<img src="../images/connect-nodes.gif" alt="Connect Nodes" title="Connect Nodes" style="border: 1px solid gray; zoom:80%;">

2. To delete the connection between the nodes, click the line connecting the two nodes, and click the **Delete** icon.
The nodes remain on the canvas but are not connected anymore. To ensure a working flow, you must create another connection between the nodes. 

### Delete Nodes

To delete a node on the canvas, right-click the node and select **Delete** from the list of options.
