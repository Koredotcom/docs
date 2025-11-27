# About Triggers

Triggers are an advanced automation feature in AI for Process that allows workflows to start automatically when specific events occur in connected applications. This enables true event-driven automation—workflows can run instantly without any manual action.

Triggers are configured in the Start node. You can use triggers alone or together with the Scheduler.

Examples of Event Triggers

* A customer’s balance drops below the required minimum → the workflow sends an automated email via Gmail.
* A new document is uploaded → the workflow launches a review process.
* A support ticket is updated to a *critical* status → the workflow notifies or routes it to the appropriate team.

## How Triggers Work

* A trigger listens for real-time events from an integrated third-party app.
* When the event occurs (for example, a record is created, a status changes, or a threshold is reached), the workflow starts immediately.
* Event data, including metadata and attachments, is passed into the workflow for downstream processing.

## Prerequisites for Adding a Trigger

To use triggers in a workflow:

* Add the integration app to your workspace.
* Set up the required connection and authentication profile.
* Open your workflow in Flow Builder and access the **Start node**, where all triggers are configured.

For detailed configuration steps, see: [Start Node – Automate Workflow Initiation](../workflow-builder/types-of-nodes/start-node.md).

<img src="../images/triggers.png" alt="Triggers" title="Add a trigger" style="border: 1px solid gray; zoom:80%;">

## Trigger Payload and Attachments

* Triggers can pass contextual data, metadata, and event-specific IDs.
* Attachments are provided as temporary URLs (valid for 24 hours).
* Downstream nodes can reference trigger values as workflow variables.

## Best Practices

* Use clearly defined events to avoid unnecessary workflow runs.
* Regularly validate integration connections to keep triggers active.
* Confirm payload fields before referencing them in conditions or expressions.
* Avoid creating duplicate triggers for the same scenario.

## Related Topics

* [Start Node – Automate Workflow Initiation](https://aiforprocess-kore.github.io/docs/ai-for-process/workflows/workflow-builder/types-of-nodes/start-node/)
* [Managing Nodes in a Workflow](https://aiforprocess-kore.github.io/docs/ai-for-process/workflows/workflow-builder/manage-flow-nodes/)