# Queues

**Queues** are virtual, temporary waiting rooms that hold and process incoming requests for conversations between agents and customers. These are the holding areas for digital and audio conversations waiting for an agent to be assigned.

All conversations get assigned to queues based on the agent selection logic and skill proficiency match. A conversation can only be in one queue at any given time. Once conversations get assigned to a queue, Contact Center AI assigns them to agents. The agent assignment works based on pre-established rules and criteria.
Once a conversation comes in, it gets assigned to a queue, the next step is to check the routing mode.

## Queue Routing Modes

All conversations will get assigned to queues as they come in. This process is based on three Routing modes, as described below.

**Standard Routing**

* Queue routing is primarily based on the highest average skill and proficiency match for a given conversation. This routing mode only considers proficiency after a skill match has occurred.
* If multiple agents match a skill and have the same proficiency level, routing is determined based on currently utilized slots, with agents having fewer utilized slots given priority. Additionally, agents who have been idle longer since their last conversation are further prioritized.

**Advanced Routing**

* In this case, the conversation first routes to a preferred agent, or a set of preferred agents.
* For each new conversation, Contact Center AI checks preferred agents (if any) for availability. During a preferred agent check, skills are ignored. If a preferred agent is not assigned and the preferred agent timeout expires, the check is expanded to the full agent list, and skills are matched to select the best available agent (according to the Simple Routing Mode).
* When preferred agents are busy and the consideration pool expands to include all available agents with matching skills, configurable timers for skill expiry allow progressive relaxation of skill match criteria, thereby gradually expanding the agent pool.

**Conditional Group Routing (CGR)**

Conditional Group Routing is a dynamic routing feature in a Contact Center as a Service (CCaaS) environment designed to reduce customer wait times by intelligently expanding the pool of eligible agents beyond a single queue without affecting other queues. Unlike traditional routing, which assigns conversations based on skill match and proficiency, Conditional Group Routing uses rule-based eligibility expansion to include agents from similar queues when conversations wait too long, helping maintain service levels.

CGR is configured at the queue level for queues containing a single channel type.

Administrators can configure CGR rules in the routing settings of a queue by turning on the toggle.  
<img src="../images/cgr-toggle.png" alt="Enable CGR" title="Enable CGR" style="border: 1px solid gray; zoom:80%;">

**How it works**

**Initial Routing Attempt**: The system first attempts to route the conversation within the originating queue (for example, Queue A) using standard skill and proficiency matching. This attempt occurs for a configurable duration, such as 30 seconds.

**Conditional Expansion**: If no eligible agent is available in the originating queue within the configured wait period, the system expands the search to other similar queues (for example, Queue B, Queue C). This expansion is conditional and based on predefined KPIs, such as Average Handle Time (AHT) and Estimated Wait Time (EWT).  
<img src="../images/options.png" alt="Options" title="Options" style="border: 1px solid gray; zoom:80%;">

**Eligibility Rules**

* Only queues meeting the configured conditions are considered.  
* For example, if Queue B’s EWT is less than 1 minute, its agents are pulled into the consideration pool.  
* Agents must still satisfy the skill and proficiency requirements for the conversation.  

**Routing Decision**

* The conversation is then routed to the most suitable agent within this expanded pool.  
* If a queue does not meet the conditions (for example, EWT is too high), it is skipped to avoid service-level impact.

**Example Scenario**

* **Queue A (QA)**: A new conversation arrives. QA’s Estimated Wait Time (EWT) = 5 minutes.  
* **Configurable Wait Period**: The system attempts to find an agent in QA for 30 seconds.  
* **Expansion Check**: After 30 seconds, the system checks Queue B (QB).  
    * If QB’s EWT < 1 minute → Agents from QB are added to the routing pool.  
    * If QB’s EWT ≥ 1 minute → QB is skipped, and the system evaluates Queue C (QC).  
* **Result**: By pulling in eligible agents from QB (or QC if QB fails), the system can route the conversation faster, reducing customer wait time while ensuring no negative impact on other queues’ service metrics.  

**Key Benefits**

* Reduces long wait times in queues with high load.  
* Maintains queue-level service levels by applying KPI-based conditions.  
* Provides flexibility through configurable wait periods and rules.  
* Ensures only skilled and proficient agents are considered, preserving service quality.  

## The Queues Live Board

To access _Queues_, go to **Contact Center AI** > **ROUTING** > **Queues**.
<img src="../images/queues-page.png" alt="Queues Page" title="Queues Page" style="border: 1px solid gray; zoom:80%;">

This section displays the following:

* **Search**: Enter keywords to find queues by name;
* **Queue**: The name and description of available queues;
* **Actions**: Lists the **Edit Queue** option;
* **Agents**: Shows the agents available for a particular queue;
* **Mode**: Specifies whether the queue is set to the **Simple** or **Advanced** routing mode;
* **ACW**:  Displays the After Call Work (ACW) configuration;
* **Status**: Displays the status of the conversation, **Active** or **Inactive**.

### Add a Queue

1. At the top-right corner of the Configuration page, Click **New Queue**.
2. In the **New Queue** window, you can set up the queue as follows:  
    <img src="../images/new-queue-button.png" alt="New Queue Button" title="New Queue Button" style="border: 1px solid gray; zoom:80%;">
    1. With **Simple Routing**, you can configure the Queue Settings and Assignments;  
    2. With **Advanced Routings**, you can configure the Queue Settings, Assignments, Preferred Agents, and Skills.

### Settings

This section is available in _Simple_ and _Advanced Routing_ modes and allows you to configure the following:

1. The **Name** by which to identify the queue;
2. A short **Description** of the queue (optional);
3. **Hours of Operation**: Select from the available [Hours of Operation](../../configurations/hours-of-operation/manage-hours-of-operation.md).
    <img src="../images/queue-settings.png" alt="Queue Settings" title="Queue Settings" style="border: 1px solid gray; zoom:70%;">

4. **Transfer Rules:** This feature lets you limit the agents’ ability to transfer from one queue to another. If this feature is enabled, you can select the specific queues to which agents can transfer customers. If disabled, agents can transfer to any queue from the current one. Turn on the Transfer Rules toggle, select a Queue and click **Done**.  
    <img src="../images/transfer-rules.png" alt="Transfer Rules" title="Transfer Rules" style="border: 1px solid gray; zoom:70%;">

    !!! Note

        If the customer ends the chat before the completion of a transfer, then the transfer will be dropped, and the interaction will not be assigned to any queue or agent. This feature only applies to chat conversations and is available if you are using Kore WebSdk v1.0.

5. **Maximum Wait Time**: Specify the maximum time a conversation should wait in the queue before the default _No available agent_ flow handles it.
    <img src="../images/maximum-wait-time.png" alt="Maximum Wait Time" title="Maximum Wait Time" style="border: 1px solid gray; zoom:70%;">

6. **After Call Work (ACW)** You can enable or disable ACW.

    **ACW Enabled**

    1. **Immediate Slot Release**: The slot becomes available immediately when the conversation ends. Agents can finalize the disposition at their convenience.
        <img src="../images/immediate-slot-release.png" alt="Maximum Wait Time" title="Maximum Wait Time" style="border: 1px solid gray; zoom:70%;">

    2. **Timed Slot Release**: Agents are required to complete the disposition within a pre-set time duration, during which the slot will remain occupied. A default 30-second timer appears by default, which administrators can modify. The configurable time duration ranges between a minimum of 10 seconds and a maximum of 15 minutes. If the timer field is blank, an alert message is displayed to enter a timeout value ranging between 10 seconds and 15 minutes for the timed slot release.

        You can edit the ‘Is Required?’ and ‘Assignment’ fields for disposition sets, including the default [disposition sets](../../agent-and-supervisors/dispositions/manage-dispositions.md#disposition-sets). This allows existing users to switch any configured disposition set to an optional mode.  
        <img src="../images/timed-slot-release.png" alt="Maximum Wait Time" title="Maximum Wait Time" style="border: 1px solid gray; zoom:70%;">

    3. **Indefinite Slot Release**: If selected, the slot remains occupied until the agent submits the disposition.  
        <img src="../images/indefinite-slot-release.png" alt="Maximum Wait Time" title="Maximum Wait Time" style="border: 1px solid gray; zoom:70%;">

7. **Advanced Routing**: If enabled, preferred agents and skill dropoffs will be available if you enable this option.  
    <img src="../images/advanced-routing.png" alt="Advanced Routing" title="Advanced Routing" style="border: 1px solid gray; zoom:100%;">

8. Click **Save**.

### Assignments

This section is available in _Simple_ and _Advanced Routing_ modes and allows you to assign agents, agent groups, or both to the queue.

#### Assign Agents

Follow these steps to assign agents to a queue:

1. Click **Add Agent**;  
    <img src="../images/add-agent-button.png" alt="Add Agent Button" title="Add Agent Button" style="border: 1px solid gray; zoom:70%;">

2. Click the checkbox next to an agent’s name to select it and click **Done**. You can use the _Search_ field at the top of the list to find a specific person.  
    <img src="../images/agent-name-select.png" alt="Assign Agents" title="Assign Agents" style="border: 1px solid gray; zoom:70%;">

#### Assign Agent Groups

1. Click **Add Agent Group**;  
    <img src="../images/add-agent-group-button.png" alt="Add Agent Group Button" title="Assign Agent Group Button" style="border: 1px solid gray; zoom:70%;">

2. Click the checkbox next to the name of a group to select it and click **Done**. You can use the _Search_ field at the top of the list to find a specific group.
    <img src="../images/assign-agent-groups.png" alt="Assign Agent Group" title="Add Agent Group" style="border: 1px solid gray; zoom:70%;">

    !!! Note

        Agents from the agent group are not displayed in the agent’s list. The list of agents added to the queue is displayed, along with the agent groups that are part of the queue.

#### Preferred Agents

In the **Preferred** tab, you can assign preferred agents to the queue.

1. Under **Preferred Agents**, find the agent you need in the list. You can use the _Search_ field for this purpose. Select the corresponding **Preferred** checkbox to set the agent as preferred.  
    <img src="../images/preferred-agents.png" alt="Preferred Agents Tab" title="Preferred Agents Tab" style="border: 1px solid gray; zoom:70%;">

2. Under **Advanced Settings**, configure the preferred agent timeout. During a preferred agent check, skills are ignored. If a preferred agent is not assigned and the preferred agent timeout expires, the check expands to the full agent list, and skills match to select the best available agent for the conversation.  
    <img src="../images/advanced-settings.png" alt="Advanced Settings" title="Advanced Settings" style="border: 1px solid gray; zoom:70%;">

#### Skills

1. In the **Skills** tab, search for a specific skill to assign to the Queue.
    <img src="../images/skill-requirement-expiration.png" alt="Assign Skill" title="Assign Skill" style="border: 1px solid gray; zoom:70%;">

2. Choose whether you want the skill to expire and set the time for this. Once a skill assignment expires, the conversation routes to other assigned skills.
    <img src="../images/skill-expire-duration.png" alt="Skill Requirement Expiration" title="Skill Requirement Expiration" style="border: 1px solid gray; zoom:70%;">

    When you are ready to save the Queue, click **Create**. The new Queue is then listed among your available queues. You must configure at least the _Settings_ and _Assignment_ tabs to save a queue.
    <img src="../images/create-queue.png" alt="Create Queue" title="Create Queue" style="border: 1px solid gray; zoom:70%;">

## Edit a Queue

1. Click the **Edit** icon corresponding to the queue you want to edit.
    <img src="../images/edit-queue-button.png" alt="Edit Queue Button" title="Edit Queue Button" style="border: 1px solid gray; zoom:70%;">

2. Make the required changes and click **Save**.

## Delete a Queue

To delete a queue, follow these steps:

1. Click the **Edit** icon corresponding to the queue you want to edit.
2. Click the **Delete (bin)** button on the bottom left side.
    <img src="../images/delete-queue-button.png" alt="Delete Queue Button" title="Delete Queue Button" style="border: 1px solid gray; zoom:70%;">

3. Click **Delete** to confirm your choice.  
    <img src="../images/confirm-delete.png" alt="Delete Queue Button" title="Delete Queue Button" style="border: 1px solid gray; zoom:70%;">

    !!! Note

        * Deleting a queue means that all corresponding routing rules are removed.
        * The queue cannot be deleted if an active campaign associated with it is running. Please ensure that all campaigns are inactive before attempting to delete them.

## Assign a Conversation to a Queue

There are two ways to assign a conversation to a queue:

1. Using the [Set Queue](../../../flows/node-types/set-queue.md) node within an experience flow.
2. Using the [agentUtils.setQueue()](../../../flows/node-types/utils.md#set-queue) method.

## When the Contact Center Permission is Disabled

Users with full user management access can restrict selected users from participating in contact center interactions until they complete mandatory tasks or meet other requirements. Once disabled, the user cannot access contact center functionalities or appear in agent status lists. However, users can still access Automation AI, Agent AI, or Search AI, based on their assigned roles and permissions. Disabled users are identified by a “Disabled” tag in user management and agent selection lists, but they do not populate active analytics dashboards. This supports seamless permission control while preserving user visibility and data integrity.

A pop-up message appears upon clicking queues.  
<img src="../images/ccai-disabled-message-queue.png" alt="Disabled Message" title="Disabled Message" style="border: 1px solid gray; zoom:70%;">  
A disabled tag is displayed beside the user.  

!!!Note

    Agent permissions cannot be disabled if the agent is the only member of the queue or is currently engaged in an active conversation.

<img src="../images/ccai-user-diabled-new-queue.png" alt="User Disabled New Queue" title="User Disabled New Queue" style="border: 1px solid gray; zoom:70%;"> 