# Start Node - Automate Workflow Initiation

Every new workflow begins with a Start node, which is automatically placed on the canvas by default. This node acts as the entry point and must be connected to at least one other node to form a valid flow.

To ensure the workflow functions properly, all nodes must be connected, directly or indirectly, to the Start node. If any initial nodes are not linked to the Start node, the flow may malfunction or fail to execute as expected. You can drag and drop the Start node (as well as any other nodes) anywhere on the canvas.

The Start node supports event and time-based workflows to address diverse use cases and enhance results with the following configurable features. You can enable one or both features based on the use case.

* **Trigger**: To run workflows when a specific event occurs. For example, if a customer fails to maintain the required quarterly balance, an email can be triggered to their registered email ID through a configured third-party service such as Gmail. Learn more about the feature.
* **Scheduler**: To run workflows at fixed intervals and times. For example, run a scheduled check on the 5th of every month to shortlist the customers who do not maintain the average quarterly balance in their accounts, and trigger an SMS to them. Here, the start date and start time can be set for a specific time zone.  Learn more about the feature.

You can add other nodes to the Start node or the other nodes in the canvas in three ways:

* **Drag from the bottom panel**: Scroll through available node types and drag them onto the canvas.
* **Use the left panel (Assets)**: Select and place pre-configured nodes directly onto the canvas from the left panel.
* **Use the blue plus icon (+) on the node**: Hover over the grey dot on any node (including Start) to reveal a blue plus icon (+). Click to see options:
    * **Add new** – Instantly places a new node on the canvas and connects it.
    * **Add existing** – Allows you to select a previously added node.

For more information on managing nodes in a workflow from a Start node, refer to this link.
