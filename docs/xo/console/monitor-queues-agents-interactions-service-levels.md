# Monitor Queues, Agents, Interactions, and Service Levels

To access the **Monitor** section, you must be an _App Owner, App developer, App Tester,_ or _Supervisor_; or have the _Monitor Console –_ permission set to _Yes_. See [Role Management](../user-management/role-management.md#permissions) for more.

The **Monitor** tab lets you monitor live conversations between agents and customers and displays four views: **Queues**, **Agents**, **Interactions**, and **Service Levels**.

1. The **Queues** section displays the conversation summary between agents and customers per queue. You only have access to the queues you are assigned to; and to the agents assigned to the same queues as you.
2. The **Agents** section lets you view agent performance metrics and monitor agent-specific live conversations. Listed agents belong to the same queues you are also assigned to.
3. The **Interactions** section displays all interactions currently live in Contact Center AI and assigned to agents on the console.
4. The **Service Levels** section displays all service levels configured for voice and chat channels.

    !!! Note

        Your Monitor access is restricted to the Queues that you are assigned to.

## Queues

In this section, you can see all the queues to which you are assigned. The number of conversations waiting to be picked up, the number of already engaged conversations, and a summary of agents assigned to a particular queue along with their current status. In addition to the above details, the manager can see the average wait time, max wait time (an indicator of peak load handling capacity), and drop-off rate.

To monitor the agents:

* On the **Monitor** tab, click the **Queue** tab.  
<img src="../images/queues-page.png" alt="Queues Tab" title="Queues Tab" style="border: 1px solid gray; zoom:80%;">

* On the left menu, click a queue that you want to view.  
<img src="../images/queue-column.png" alt="Queue Column" title="Queue Column" style="border: 1px solid gray; zoom:80%;">

* The queue screen appears as shown below:  
<img src="../images/queue-details.png" alt="Queue Details" title="Queue Details" style="border: 1px solid gray; zoom:80%;">

* Click the agent name. The detailed screen of the agent conversation opens up on the right.  

    **Chat**:  
    <img src="../images/agent-details.png" alt="Agent Conversation Details" title="Agent Conversation Details" style="border: 1px solid gray; zoom:70%;">  

    **Email**:  
    <img src="../images/email-details.png" alt="Email Details" title="Email Details" style="border: 1px solid gray; zoom:80%;"> 

### Filter

#### Create Filter

1. Click the **Filter** button.  
<img src="../images/filter-button.png" alt="Filter Button" title="Filter Button" style="border: 1px solid gray; zoom:80%;"> 

2. Click **New Filter**.  
<img src="../images/new-filter.png" alt="New Filter" title="New Filter" style="border: 1px solid gray; zoom:80%;"> 

3. Select the **Queues**, **Channels**, and **Language**.

    !!! Note

        You can select from agent groups (list of agents), search for agents, and select from dynamic sub-filters.    
    <img src="../images/filter-by.png" alt="Filter By" title="Filter By" style="border: 1px solid gray; zoom:80%;">  

    Select from the below available options:  
        1. **Clear** – Clears the selection.  
        2. **Save & Apply** – Saves the filter, and it appears when selected.  
        3. **Apply** – Applied for one instance and not saved.
4. Click **Save & Apply**.

5. On the pop-up window, enter a name for the filter and click **Save & Apply**.  
<img src="../images/save-and-apply.png" alt="Save & Apply" title="Save & Apply" style="border: 1px solid gray; zoom:80%;">  

    A confirmation message is displayed and the filter is saved.

#### Edit Filter

Steps to edit a filter:

1. Click the **Filters** tab. The Saved Filter name appears.  
<img src="../images/saved-filters.png" alt="Saved Filters" title="Saved Filters" style="border: 1px solid gray; zoom:80%;"> 

2. Click the **Edit** button.  
<img src="../images/edit-button.png" alt="Edit Button" title="Edit Button" style="border: 1px solid gray; zoom:80%;"> 

3. Make the necessary changes and click **Save & Apply**.  
<img src="../images/save-edited-filter.png" alt="Save and Apply" title="Save and Apply" style="border: 1px solid gray; zoom:80%;">  

    A confirmation message is displayed and the filter is updated.

#### Copy Filter

1. Click the **Duplicate** button.  
<img src="../images/duplicate-button.png" alt="Duplicate Button" title="Duplicate Button" style="border: 1px solid gray; zoom:80%;"> 

2. On the Rename Filter window, enter a name for the filter and click **Save**.  
<img src="../images/save-copy.png" alt="Save Button" title="Save Button" style="border: 1px solid gray; zoom:80%;">

    A confirmation is displayed and a copy of the filter is created.

#### Mark as Default

1. Click the **Mark as Default** button.  
<img src="../images/mark-as-default.png" alt="Mark as Default Button" title="Mark as Default Button" style="border: 1px solid gray; zoom:80%;">

2. A confirmation message is displayed and the filter is marked as default.

#### Delete Filter

1. Click the **Delete** button.  
<img src="../images/delete-saved-filter.png" alt="Delete Button" title="Delete Button" style="border: 1px solid gray; zoom:80%;">

2. A Delete Filter message appears. Click **Delete**.  
<img src="../images/delete-filter-confirmation.png" alt="Delete Confirmation" title="Delete Confirmation" style="border: 1px solid gray; zoom:80%;">  

    A confirmation message is displayed and the filter is deleted.

### Join a Conversation

Managers can monitor live conversations between agents and customers. The manager can view the agent engagement metrics of the agent. At any point, the manager can view details of the agent-customer conversation, or the manager can manually assign the agent to another available agent.

### Manually Assign Conversations from the Queue to an Agent

Steps to assign a conversation from the queue to an agent (including themselves):

1. Select the conversation from the Queue on the right pane and click **Assign**.  
<img src="../images/assign-button.png" alt="Assign Button" title="Assign Button" style="border: 1px solid gray; zoom:80%;"> 

2. A pop-up appears. Select the agent and assign the conversation to that agent.  
<img src="../images/manual-assignment.png" alt="Manual Assignment" title="Manual Assignment" style="border: 1px solid gray; zoom:60%;">

3. Select Mark as priority (optional) and click **Assign**.  
<img src="../images/assign-to-agent.png" alt="Assign to Agent" title="Assign to Agent" style="border: 1px solid gray; zoom:60%;">

    !!! Note

        Manual assignments ignore skill-based routing and restrictions related to the maximum number of slots.

### Change Queue for a Conversation

Supervisors can change the queue for a conversation. They can move a conversation to a different queue and prioritize it by placing it at the top.

Steps to change the queue for a conversation:

1. Go to **MONITOR** > **QUEUES**.  
<img src="../images/queues-page.png" alt="Queues Tab" title="Queues Tab" style="border: 1px solid gray; zoom:80%;">

2. Select a queue and then select the conversation.  
<img src="../images/select-conversation.png" alt="Select Conversation" title="Select Conversation" style="border: 1px solid gray; zoom:80%;">

3. Click **Change Queue**.  
<img src="../images/change-queue-button.png" alt="Change Queue" title="Change Queue" style="border: 1px solid gray; zoom:80%;">

4. On the Change Queue pop-up window, click the **Change Queue from** drop-down, select a queue, and then click Change Queue. Select Mark as priority to place the conversation at the top of the list in the destination queue.  
<img src="../images/change-queue-from.png" alt="Change Queue Window" title="Change Queue Window" style="border: 1px solid gray; zoom:70%;">

    !!! Notes

        * On transferring a conversation, the count of waiting conversations decreases in the original queue and increases in the destination queue.
        * By default, the position of the conversation in the queue is determined based on the conversation’s arrival time in the original queue.
        * Transferring a conversation from the current queue to a different queue is recorded for reporting purposes.

### View Voicemails

When a call is converted to a voicemail, it can be viewed in the Monitor tab. Supervisors can view voicemails in waiting status and “Assign” to an agent or “Change Queue”.  
<img src="../images/queues-page.png" alt="Queues Tab" title="Queues Tab" style="border: 1px solid gray; zoom:80%;">

## Agents

You can check agent details and monitor and intervene in ongoing conversations. The agents in this section are restricted to those assigned to the same queues as you. A list of conversations currently being handled by the agents is displayed with parameters such as state, load, first response, average response, AHT, etc.

The following metrics and their total counts are displayed:

* **Completed**: Count of interactions completed and closed by the agent.
* **Transferred**: Count of interactions an agent has transferred to a queue or another agent.
* **Rejected**: Count of interactions explicitly rejected by an agent using the reject button.
* **Unanswered**: Count of interactions assigned to an agent where the agent did not pick up the interaction within the acceptance timeout.  
<img src="../images/agents-tab.png" alt="Agents Tab" title="Agents Tab" style="border: 1px solid gray; zoom:80%;">

* The load capacity indicator displays the agent’s overall load capacity. Hovering over the load shows the channel-wise load capacity—for example, Live Chat ⅔ (2 slots out of 3 defined slots are engaged).
<img src="../images/load-capacity-indicator.png" alt="Load Capacity Indicator" title="Load Capacity Indicator" style="border: 1px solid gray; zoom:80%;">

* On the monitor tab, select an agent on the left side. The manager can view the agent’s ongoing conversation on the right and check the engagement metrics.  
<img src="../images/engagement-metrics.png" alt="Engagement Metrics" title="Engagement Metrics" style="border: 1px solid gray; zoom:80%;">

* On the right window, click the agent’s name.  Another window opens to the right as shown below. To check the agent engagement metrics, on the right window, click the down arrow as shown below:  

    **Chat**, **Messaging**, and **Voice**:

    <img src="../images/agent-engagement-metrics.png" alt="Agent Engagemnt Metrics" title="Agent Engagement Metrics" style="border: 1px solid gray; zoom:80%;">  

    **Email**:  

    <img src="../images/email-metrics.png" alt="Email Metrics" title="Email Metrics" style="border: 1px solid gray; zoom:70%;">

* For a selected agent, the manager can check the agent profile, chat with the agent, change the queue, and assign the conversation to other agents as shown below:  
<img src="../images/assign-change-queue.png" alt="Assign, Change Queue" title="Assign, Change Queue" style="border: 1px solid gray; zoom:80%;">

### Filters

#### Create Filter

1. Click the **Filter** button.  
<img src="../images/agents-filter-button.png" alt="Filter Button" title="filter Button" style="border: 1px solid gray; zoom:80%;">

2. Click **New Filter**.  
<img src="../images/new-filter.png" alt="Load Capacity Indicator" title="Load Capacity Indicator" style="border: 1px solid gray; zoom:80%;">

3. Select the **Status**, **Agents**, **Skills**, and **Roles**.  
<img src="../images/filter-options.png" alt="Filter By" title="Filter By" style="border: 1px solid gray; zoom:80%;">

    Select from the below available options:

    1. **Clear** – Clears the selection.
    2. **Save & Apply** – Saves the filter, and it appears when selected.
    3. **Apply** – Applied for one instance and not saved.

4. Click **Save & Apply**.  

5. On the pop-up window, enter a name for the filter and click Save & Apply.  
<img src="../images/save-and-apply.png" alt="Save & Apply" title="Save & Apply" style="border: 1px solid gray; zoom:80%;">  

    A confirmation message is displayed and the filter is saved.

#### Edit Filter

Steps to edit a filter:

1. Click the **Filters** tab. The Saved Filter name appears.  
<img src="../images/saved-filters.png" alt="Saved Filters" title="Saved Filters" style="border: 1px solid gray; zoom:80%;">  

2. Click the **Edit** button.  
<img src="../images/edit-button.png" alt="Edit Button" title="Edit Button" style="border: 1px solid gray; zoom:80%;">

3. Make the necessary changes and click **Save & Apply**.  
    <img src="../images/edit-agent-filter.png" alt="Save & Apply" title="Save & Apply" style="border: 1px solid gray; zoom:80%;">

    A confirmation message is displayed and the filter is updated.

#### Copy Filter

1. Click the **Duplicate** button.  
<img src="../images/duplicate-button.png" alt="Duplicate Button" title="Duplicate Button" style="border: 1px solid gray; zoom:80%;">

2. On the Rename Filter window, enter a name for the filter and click **Save**.  
    <img src="../images/save-copy.png" alt="Save Button" title="Save Button" style="border: 1px solid gray; zoom:80%;">

    A confirmation is displayed and a copy of the filter is created.

#### Mark as Default

1. Click the **Mark as Default** button.  
<img src="../images/mark-as-default.png" alt="Mark as Default Button" title="Mark as Default Button" style="border: 1px solid gray; zoom:80%;">

2. A confirmation message is displayed and the filter is marked as default.

#### Delete Filter

1. Click the **Delete** button.  
<img src="../images/delete-saved-filter.png" alt="Delete Button" title="Delete Button" style="border: 1px solid gray; zoom:80%;">

2. A Delete Filter message appears. Click **Delete**.  
    <img src="../images/delete-filter-confirmation.png" alt="Mark as Default Button" title="Mark as Default Button" style="border: 1px solid gray; zoom:80%;">  

    A confirmation message is displayed and the filter is deleted.

### **Auto Refresh When Filters are Applied**

When a supervisor applies a filter, the page automatically refreshes at fixed intervals to maintain real-time data accuracy. For example, any changes in the status of agents are reflected after the auto-refresh, ensuring the data is up-to-date.

When filters are applied, the page refreshes every 5 seconds to update any changes in the data.  
<img src="../images/auto-refresh.png" alt="Auto Refresh" title="Auto Refresh" style="border: 1px solid gray; zoom:80%;"> 

A confirmation is displayed once the refresh is completed and the updated data is shown.  
<img src="../images/refreshed-filters.png" alt="Filters Refreshed" title="Filters Refreshed" style="border: 1px solid gray; zoom:80%;"> 

!!! Note

    The system will not immediately update changes to the data (for example, new interactions and status changes). These changes will appear after the next auto-refresh.

### Check Profile

Steps to check the agent profile:

There are three tabs, Profile tab, Settings tab, and Queue & Skills tab.

1. On the Profile tab, check/edit the profile of the agent.
2. Click **Save**.  
<img src="../images/profile.png" alt="Profile Tab" title="Profile Tab" style="border: 1px solid gray; zoom:60%;">

### Settings Tab

On the Settings tab, you can configure the chat experience and voice experience settings.  
<img src="../images/settings-tab.png" alt="Filters Refreshed" title="Filters Refreshed" style="border: 1px solid gray; zoom:60%;">

For chat experience, you can enable chat settings. If enabled you can define the properties of the chat request, for example, max chats = 5. You can choose the language and the proficiency level.  
<img src="../images/chat-experience.png" alt="Filters Refreshed" title="Filters Refreshed" style="border: 1px solid gray; zoom:60%;">

Similarly, for voice experience, you can enable voice settings. If enabled, you can define the properties of the voice request. You can choose the language and the proficiency level.

### Queues & Skills Tab

On the Queues & Skills tab, you can configure the Queues and Skills settings.  
<img src="../images/queues-and-skills.png" alt="Filters Refreshed" title="Filters Refreshed" style="border: 1px solid gray; zoom:60%;">

### Queues

You can select the default queue and the preferred queue.  
<img src="../images/select-preferred.png" alt="Select Preferred" title="Select Preferred" style="border: 1px solid gray; zoom:70%;">

### Skills

You can select the Proficiency level of the skill.  
<img src="../images/skill-proficiency.png" alt="Skills" title="Skills" style="border: 1px solid gray; zoom:70%;">

### Chat with an Agent

To chat with an Agent:

* Select the Chat option. A pop-up chat window appears, where the manager can type messages for the agent.  
<img src="../images/chat-agent.png" alt="Chat With Agent" title="Chat With Agent" style="border: 1px solid gray; zoom:60%;">

### Mark Offline

You can mark an agent as offline to prevent the agent from being assigned to any other customers.  
<img src="../images/mark-agent-offline.png" alt="Mark Agent Offline" title="Mark Agent Offline" style="border: 1px solid gray; zoom:60%;">

### Logout

Force Logout is a feature that allows the agent to be freed up and the ongoing customer engagements can be re-assigned to other agents.  
<img src="../images/force-logout.png" alt="Force Logout Agent" title="Force Logout Agent" style="border: 1px solid gray; zoom:50%;">

### Join a Conversation

Managers can monitor live conversations between agents and customers. The manager can view the agent engagement metrics of the agent. At any point, the manager can Join a conversation (conference) and view details of the agent-customer conversation.

Steps to Join a conversation:

1. On the right pane, click **Join Conversation**.  
<img src="../images/join-conversation.png" alt="Join Conversation" title="Join Conversation" style="border: 1px solid gray; zoom:70%;">

2. A confirmation pop-up appears. Click **Confirm** to join.

### Listen and Whisper [Voice Calls]
Listen and Whisper functionalities enhance supervisors’ oversight and support capabilities in real-time voice conversations.

Listen: This allows supervisors to discreetly monitor live voice conversations between agents and customers. By enabling this feature, supervisors can stay informed about ongoing interactions without participating directly, ensuring they are always aware of the dialogue and can step in if necessary.

Whisper: This functionality provides a means for supervisors to give real-time guidance to agents without the customer hearing the communication. Supervisors can use the whisper functionality to offer immediate support or corrective instructions, enhancing the agent’s performance and the overall quality of customer interaction.

Steps to Listen and Whisper Voice Conversations:

1. Go to **MONITOR** > **AGENTS** > Click the conversation that you want to Listen to & Whisper.  
<img src="../images/listen-and-whisper-button.png" alt="Voice Conversation" title="Voice Conversation" style="border: 1px solid gray; zoom:70%;">

2. Click **Listen & Whisper**.  
<img src="../images/voice-conversation-agents-tab.png" alt="Listen & Whisper Button" title="Listen & Whisper Button" style="border: 1px solid gray; zoom:70%;">

3. You can listen to the conversation between the customer and the agent. Press and hold the spacebar to whisper to the agent.  
<img src="../images/listen-conversation.png" alt="Listen Conversation" title="Listen Conversation" style="border: 1px solid gray; zoom:70%;">

4. Release the spacebar to stop whispering to the agent.  
<img src="../images/release-spacebar.png" alt="Release Spacebar" title="Release Spacebar" style="border: 1px solid gray; zoom:70%;">

    When a supervisor whispers, an indication appears at the top of the live interaction, and the transcript is displayed in yellow.  
    <img src="../images/console-whisper-input.png" alt="Console Whisper Input" title="Console Whisper Input" style="border: 1px solid gray; zoom:70%;">

## Interactions

You can view all live interactions on the Contact Center AI console. This view includes only interactions that involve agent transfers. A summary of the interactions view is shown below:  
<img src="../images/interactions-tab.png" alt="Join Conversation" title="Join Conversation" style="border: 1px solid gray; zoom:80%;">

### Manually Assign Conversations to an Agent and Change Queue

* Managers can assign conversations to an agent, and change queues for conversations. Click an on going conversation to view the Assign and Change Queue options.  
<img src="../images/manual-assign-change-queue.png" alt="Manually Assign/Change Queue" title="Manually Assign/Change Queue" style="border: 1px solid gray; zoom:80%;">

Managers can also view an agent’s engagement metrics.  
<img src="../images/interaction-dropdown.png" alt="Agent Engagement Metrics Dropdown" title="Agent Engagement Metrics Dropdown" style="border: 1px solid gray; zoom:80%;">

<img src="../images/engagement-metrics-agent.png" alt="Engagement Metrics" title="Engagement Metrics" style="border: 1px solid gray; zoom:80%;">

### Filters

#### Create Filter

1. Click the **Filter** button.  
<img src="../images/filter-interactions.png" alt="Filter Button" title="Filter Button" style="border: 1px solid gray; zoom:80%;">

2. Click **New Filter**.  
<img src="../images/new-filter.png" alt="New Filter Button" title="New Filter Button" style="border: 1px solid gray; zoom:80%;">

3. Select the **Status**, **Agents**, **Skills**, **Queues**, **Channels**, and **Language**.  
    <img src="../images/filter-criteria.png" alt="Filter Options" title="Filter Options" style="border: 1px solid gray; zoom:80%;">

    Select from the below available options:
    1. **Clear** – Clears the selection.
    2. **Save & Apply** – Saves the filter, and it appears when selected.
    3. **Apply** – Applied for one instance and not saved.
4. Click **Save & Apply**.

5. On the pop-up window, enter a name for the filter and click **Save & Apply**.  
    <img src="../images/save-and-apply.png" alt="Save & Apply" title="Save & Apply" style="border: 1px solid gray; zoom:80%;">

    A confirmation message is displayed and the filter is created.

## Edit Filter

Steps to edit a filter:

1. Click the **Filters** tab. The Saved Filter name appears.  
<img src="../images/saved-filters.png" alt="Saved Filters" title="Saved Filters" style="border: 1px solid gray; zoom:80%;">

2. Click the **Edit** button.  
<img src="../images/edit-button.png" alt="Edit Button" title="Edit Button" style="border: 1px solid gray; zoom:80%;">

3. Make the necessary changes and click **Save & Apply**.  
    <img src="../images/save-and-apply-edits.png" alt="Save & Apply" title="Save & Apply" style="border: 1px solid gray; zoom:60%;">

    A confirmation message is displayed and the filter is updated.

#### Copy Filter

1. Click the **Duplicate** button.  
<img src="../images/duplicate-button.png" alt="Duplicate Button" title="Duplicate Button" style="border: 1px solid gray; zoom:80%;">

2. On the Rename Filter window, enter a name for the filter and click Save.  
    <img src="../images/save-copy.png" alt="Save Copy" title="Save Copy" style="border: 1px solid gray; zoom:80%;">

    A confirmation is displayed and a copy of the filter is created.

#### Mark as Default

1. Click the **Mark as Default** button.  
<img src="../images/mark-as-default.png" alt="Mark as Default" title="Mark as Default" style="border: 1px solid gray; zoom:80%;">

2. A confirmation message is displayed and the filter is marked as default.

#### Delete Filter

1. Click the **Delete** button.  
<img src="../images/delete-saved-filter.png" alt="Delete Button" title="Delete Button" style="border: 1px solid gray; zoom:80%;">

2. A Delete Filter message appears. Click **Delete**.  
    <img src="../images/delete-filter-confirmation.png" alt="Delete Confirmation" title="Delete Confirmation" style="border: 1px solid gray; zoom:80%;">

    A confirmation message is displayed and the filter is deleted.  

## Service Levels

Service level targets establish the acceptable threshold for key performance indicators such as Average Speed to Answer, Response Service Level, Abandonment Rate, and Transfer Rate for interactions, including voice calls, and chats.

App Developers and Supervisors can access service levels by going to **MONITOR** > **SERVICE LEVELS**.  
<img src="../images/service-levels-tab.png" alt="Service Levels Tab" title="Service Levels Tab" style="border: 1px solid gray; zoom:80%;">

The following Key Performance Indicators are displayed:  
<img src="../images/service-level-details.png" alt="Service Level Details" title="Service Level Details" style="border: 1px solid gray; zoom:80%;">

### Refresh Service Levels

You can refresh the service levels by clicking the refresh icon on the upper right corner.  
<img src="../images/refresh-service-level.png" alt="Refresh Service Level" title="Refresh Service Level" style="border: 1px solid gray; zoom:80%;">

## Filter Service Levels

The following filters are available on service levels:  
<img src="../images/service-level-filters.png" alt="Service Level Filters" title="Service Level Filters" style="border: 1px solid gray; zoom:80%;">

You can clear the filters by clicking Clear Filters on the upper right corner.  
<img src="../images/clear-filters.png" alt="Clear Filters" title="Clear Filters" style="border: 1px solid gray; zoom:80%;">

## Time Intervals

You can configure the service level targets for each channel type and measuring interval. The measuring intervals can be configured in 30-minute increments, with a minimum interval of 30 minutes and a maximum interval of 24 hours.  
<img src="../images/time-intervals.png" alt="Time Intervals" title="Time Intervals" style="border: 1px solid gray; zoom:100%;">

## Configure Service Levels

This feature enables app developers to define, customize, and monitor service-level targets based on specific needs.

To configure service levels, go to **Contact Center AI** > **PERFORMANCE MANAGEMENT** > **Service Level**.  
<img src="../images/service-level-page.png" alt="Service Levels Page" title="Service Levels Page" style="border: 1px solid gray; zoom:80%;">

### Create a New Service Level

Steps to create a new service level:

1. Click the **+ New Service Level** button on the upper-right corner.  
<img src="../images/new-service-level.png" alt="+ New Service Level Button" title="+ New Service Level Button" style="border: 1px solid gray; zoom:80%;">

2. On the New Service Level Rule pop-up window, enter a **Name** and **Description** for the service rule and click **Next**.  
    <img src="../images/new-service-level-rule.png" alt="New Service Level Rule Popup" title="New Service Level Rule Popup" style="border: 1px solid gray; zoom:70%;">

    The service level configuration screen is displayed.  
    <img src="../images/service-level-configuration-page.png" alt="Service Level Configuration Page" title="Service Level Configuration Page" style="border: 1px solid gray; zoom:80%;">

3. Click and select the **Queues** and **Channels** from the drop-down menus.  
<img src="../images/queues-and-channels.png" alt="Queues and Channels" title="Queues and Channels" style="border: 1px solid gray; zoom:80%;">

4. Click **+ Add triggers** and choose a trigger.  
    <img src="../images/add-triggers.png" alt="Add Triggers" title="Add Triggers" style="border: 1px solid gray; zoom:80%;">

    Based on your selected trigger, you can choose the following:

    **Abandonment rate**:
    <img src="../images/abandonment-rate.png" alt="Abandonment Rate" title="Abandonment Rate" style="border: 1px solid gray; zoom:80%;">  

    **Average speed to answer (ASA)**:  
    <img src="../images/average-speed-to-answer.png" alt="Average Speed to Answer" title="Average Speed to Answer" style="border: 1px solid gray; zoom:80%;">

    **Response Service Level (RSL)**:  
    <img src="../images/response-service-level.png" alt="+ New Service Level Button" title="+ New Service Level Button" style="border: 1px solid gray; zoom:80%;">

    **Transfer rate**:  
    <img src="../images/transfer-rate.png" alt="Transfer rate" title="Transfer rate" style="border: 1px solid gray; zoom:80%;">

5. Click **+ Add an action** and choose an action.  
    <img src="../images/add-an-action.png" alt="+ Add an action" title="+ Add an action" style="border: 1px solid gray; zoom:80%;">

    Based on your selected action, you can choose the following:

    **Alert**:  
    <img src="../images/alert.png" alt="Alert" title="Alert" style="border: 1px solid gray; zoom:80%;">

    **Email**:  
    <img src="../images/email.png" alt="Email" title="Email" style="border: 1px solid gray; zoom:80%;">

6. Click **Save** to create the service level.  
    <img src="../images/save-service-level.png" alt="Save Service Level" title="Save New Service Level" style="border: 1px solid gray; zoom:80%;">

    A confirmation message is displayed and the service level is created.

### Edit a Service Level

Steps to edit a service level:

1. Click the **Edit** button.  
<img src="../images/edit-service-level.png" alt="Edit Button" title="Edit Button" style="border: 1px solid gray; zoom:80%;">

2. Make the necessary changes to the service level and click **Save**.  
    <img src="../images/edit-and-save.png" alt="Edit and Save" title="Edit and Save" style="border: 1px solid gray; zoom:80%;">

    A confirmation message is displayed.

### Edit a Service Level Name

Steps to edit a service level name:

1. Click the **Edit** button.  
<img src="../images/edit-service-level.png" alt="Edit Button" title="Edit Button" style="border: 1px solid gray; zoom:80%;">

2. Click the **Settings** icon.  
<img src="../images/settings-icon.png" alt="Settings Icon" title="Settings Icon" style="border: 1px solid gray; zoom:80%;">

3. Make the changes on the Edit Service Level Name pop-up and click **Apply**.  
<img src="../images/apply-edit.png" alt="Edit Service Level" title="Edit Service Level" style="border: 1px solid gray; zoom:60%;">

4. Click **Save**.  
    <img src="../images/revised-service-level-name.png" alt="Revised Service Level Name" title="Revised New Service Level Name" style="border: 1px solid gray; zoom:80%;">

    The revised service level name is displayed.

### Delete a Service Level

Steps to delete a service level:

1. Click the **Delete** button.  
<img src="../images/delete-icon.png" alt="Delete Icon" title="Delete Icon" style="border: 1px solid gray; zoom:80%;">

2. Click **Yes** on the confirmation pop-up window.  
<img src="../images/delete-service-level.png" alt="Delete Service Level Confirmation" title="Delete Service Level Confirmation" style="border: 1px solid gray; zoom:80%;">

3. A confirmation message is displayed and the service level is displayed.

## Configure Conversation Intelligence Dashboard

1. To configure the Conversation Intelligence Dashboard, go to **Contact Center AI** > **PERFORMANCE MANAGEMENT** > **Settings** > **Conversation Intelligence Dashboard**.  
<img src="../images/conversation-intelligence-settings.png" alt="Conversation Intelligence Dashboard Settings" title="Conversation Intelligence Dashboard Settings" style="border: 1px solid gray; zoom:80%;">

2. By default, the conversation intelligence dashboard is disabled. Click the down arrow, the Conversation Intelligence Dashboard is displayed in a disabled state.  
<img src="../images/down-arrow.png" alt="Down Arrow" title="Down Arrow" style="border: 1px solid gray; zoom:80%;">

3. Turn on the Conversation Intelligence Dashboard toggle, the Supervisor Dashboard is displayed in the disabled state.
<img src="../images/supervisor-dashboard.png" alt="Supervisor Dashboard" title="Supervisor Dashboard" style="border: 1px solid gray; zoom:80%;">

4. Turn on the Supervisor Dashboard toggle, the Interactivity Score and Script Adherence Configuration options are displayed in the disabled state.  
<img src="../images/additional-toggle.png" alt="Interactivity Score and Script Adherence Toggles" title="Interactivity Score and Script Adherence Toggles" style="border: 1px solid gray; zoom:80%;">

5. Set the weightage for the voice and chat channels, the weightage for each channel must not exceed 100%.  

    **Voice**:  
    <img src="../images/interactivity-score-voice.png" alt="Interactivity Score - Voice" title="Interactivity Score - Voice" style="border: 1px solid gray; zoom:80%;">

    **Chat**:  
    <img src="../images/interactivity-score-chat.png" alt="Interactivity Score - Chat" title="Interactivity Score - Chat" style="border: 1px solid gray; zoom:80%;">

6. Turn on Script adherence configuration toggle and define the scripts for agent adherence attributes.  
<img src="../images/script-adherence-configuration.png" alt="Script Adherence Configuration" title="Script Adherence Configuration" style="border: 1px solid gray; zoom:80%;">

7. Turn on the STATUS toggle to enable it. A message is displayed to enter a message for the attribute. Click the **Edit** icon to add a message.  
<img src="../images/status-toggle.png" alt="Status Toggle" title="Status Toggle" style="border: 1px solid gray; zoom:80%;">

8. Click **Add Message** to enter the message.  
<img src="../images/add-message-button.png" alt="Add Message Button" title="Add Message Button" style="border: 1px solid gray; zoom:60%;">

9. Enter the message in the message field. You can add multiple messages by clicking the Add Message button. Click the (**-**) icon to delete a message.  
<img src="../images/multiple-message.png" alt="Add Multiple Messages" title="Add Multiple Messages" style="border: 1px solid gray; zoom:60%;">

10. Click **Save** to update the message.  
    <img src="../images/save-message.png" alt="Save Message" title="Save Message" style="border: 1px solid gray; zoom:60%;">

    The configured message is displayed under MESSAGE.
    <img src="../images/message-configured.png" alt="Message Configured" title="Message Configured" style="border: 1px solid gray; zoom:80%;">

10. Click **Save** after the messages are defined for the required attributes.  
    <img src="../images/save-supervisor-dashboard.png" alt="Save Button" title="Save Button" style="border: 1px solid gray; zoom:80%;">

    A confirmation message is displayed.