# Queue-level Settings

Queue-level settings define how outbound options, conversation routing, and queue prioritization work across the platform. These settings determine which outbound contact options users can access, how queued conversations behave during non-business hours, and how the system prioritizes queues when assigning conversations to agents.

To enable the Queue-level Settings:

Navigate to Contact Center AI > Configurations > Settings > System Settings > Queue-level Settings.  
    <img src="../images/queue-level-settings.png" alt="Queue Level Settings" title="Queue Level Settings" style="border: 1px solid gray; zoom:70%;">

* **Queue-level Outbound Numbers/Emails**: When the toggle is on, agents can see only the outbound phone numbers and email addresses configured for their respective queues.
* **Redirect Queued Conversations to Out of Business Hours Flow**: When the toggle is on, any conversation waiting in the queue is automatically redirected to the Out of Business Hours flow when the system enters Out of Business Hours.
* **Dynamic Queue Reprioritization**: When the toggle is on, administrators can dynamically adjust queue priorities in real time so that agents are assigned conversations from the most critical queues first, especially during conversation surpluses.

Administrators can configure additional settings from [Queues](../../routing/queues/queue-management.md#additional-configuration).