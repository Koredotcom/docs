# Monitor Queues, Agents, Interactions, and Service Levels

To access the **Monitor** section, you must be an _App Owner, App developer, App Tester,_ or _Supervisor_; or have the _Monitor Console –_ permission set to _Yes_. See [Role Management](../user-management/role-management.md#permissions) for more.

The **Monitor** tab lets you monitor live conversations between agents and customers and displays four views: **Queues**, **Agents**, and **Interactions**.

1. The **Queues** section displays the conversation summary between agents and customers per queue. You only have access to the queues you are assigned to; and to the agents assigned to the same queues as you.
2. The **Agents** section lets you view agent performance metrics and monitor agent-specific live conversations. Listed agents belong to the same queues you are also assigned to.
3. The **Interactions** section displays all interactions currently live in Contact Center AI and assigned to agents on the console.

    !!! Note

        Your Monitor access is restricted to the Queues that you are assigned to.
4. A pop-up message appears when the user clicks the **Monitor** tab if the Contact Center Permissions are disabled for them.  
    <img src="../images/monitor-tab-disabled-user.png" alt="Disabled User" title="Disabled User" style="border: 1px solid gray; zoom:80%;">

## Queues

In this section, you can see all the queues to which you are assigned. The number of conversations waiting to be picked up, the number of already engaged conversations, and a summary of agents assigned to a particular queue along with their current status. In addition to the above details, the supervisor can see the average wait time, max wait time (an indicator of peak load handling capacity), and drop-off rate.

Clicking the sort icon allows you to sort the columns in ascending/descending order. The default sorting is by Queue Name.

To monitor the agents:

* On the **Monitor** tab, click the **Queue** tab.  
    <img src="../images/queues-tab.png" alt="Queues Tab" title="Queues Tab" style="border: 1px solid gray; zoom:80%;">

* On the left menu, click a queue that you want to view.  
    <img src="../images/queue-name.png" alt="Queue Name" title="Queue Name" style="border: 1px solid gray; zoom:80%;">

* The queue screen appears as shown below:  
    <img src="../images/queues-details.png" alt="Queue Details" title="Queue Details" style="border: 1px solid gray; zoom:70%;">

* Click the agent name. The detailed screen of the agent conversation opens up on the right.  

    **Chat**, **Messaging**, and **Voice**:  

    The assigned agent’s name is shown immediately upon assignment, even if the agent has not yet sent a response.  
    <img src="../images/agent-assigned.png" alt="Agent Assigned" title="Agent Assigned" style="border: 1px solid gray; zoom:70%;">

### Filter

#### Create Filter

1. Click the **Filter** button.  
    <img src="../images/filter-button.png" alt="Filter Button" title="Filter Button" style="border: 1px solid gray; zoom:80%;"> 

2. Click **New Filter**.  
    <img src="../images/new-filter.png" alt="New Filter" title="New Filter" style="border: 1px solid gray; zoom:80%;"> 

3. Select the **Queues**, **Channels**, **Type**, **State**, and **Languages**.

    !!! Note

        You can select from agent groups (list of agents), search for agents, and select from dynamic sub-filters.    
    <img src="../images/filter-options-queues.png" alt="Filter By" title="Filter By" style="border: 1px solid gray; zoom:80%;">  

    Select from the below available options:  
        1. **Clear** – Clears the selection.  
        2. **Save & Apply** – Saves the filter, and it appears when selected.  
        3. **Apply** – Applied for one instance and not saved.
4. Click **Save & Apply**.

5. On the pop-up window, enter a name (up to 20 characters) for the filter and click **Save & Apply**.  
    <img src="../images/save-and-apply.png" alt="Save & Apply" title="Save & Apply" style="border: 1px solid gray; zoom:80%;">  

    A confirmation message is displayed and the filter is saved.

6. Click Saved Filters. By default, the system shows the following:

    * The Waiting with Agents and Waiting in Queue quick filters are pre-selected. These filters are editable and can be deleted.  
        <img src="../images/default-filters.png" alt="Default Filters" title="Default Filters" style="border: 1px solid gray; zoom:80%;"> 
    * You can select up to four quick filters. Quick filters appear along with unsaved filters.
    * If a filter is set as the default but not selected as a quick filter, the system still treats it as a quick filter.
    * You cannot disable a quick filter while a default filter is applied. To disable the quick filter, first remove the default filter.

#### Edit Filter

Steps to edit a filter:

1. Click the **Filters** tab. The Saved Filter name appears.  
    <img src="../images/saved-filters.png" alt="Saved Filters" title="Saved Filters" style="border: 1px solid gray; zoom:80%;"> 

2. Click the **Edit** button.  
    <img src="../images/edit-button.png" alt="Edit Button" title="Edit Button" style="border: 1px solid gray; zoom:80%;"> 

3. Make the necessary changes and click **Save & Apply**.  
    <img src="../images/edit-queue-filters.png" alt="Save and Apply" title="Save and Apply" style="border: 1px solid gray; zoom:80%;">  

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
Supervisors can monitor live conversations between agents and customers. The supervisor can view the agent engagement metrics of the agent. At any point, the supervisor can view details of the agent-customer conversation, or the supervisor can manually assign the agent to another available agent.

### Manually Assign Conversations from the Queue to an Agent

Steps to assign a conversation from the queue to an agent (including themselves):

1. Select the conversation from the Queue on the right pane and click **Assign**.  
    <img src="../images/assign.png" alt="Assign Button" title="Assign Button" style="border: 1px solid gray; zoom:80%;"> 

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
    <img src="../images/queues-tab.png" alt="Queues Tab" title="Queues Tab" style="border: 1px solid gray; zoom:70%;">

2. Select a queue and then select the conversation.  
    <img src="../images/select-conversation.png" alt="Select Conversation" title="Select Conversation" style="border: 1px solid gray; zoom:70%;">

3. Click **Change Queue**.  
    <img src="../images/change-queues.png" alt="Change Queue" title="Change Queue" style="border: 1px solid gray; zoom:70%;">

4. On the Change Queue pop-up window, click the **Change Queue from** drop-down, select a queue, and then click Change Queue. Select Mark as priority to place the conversation at the top of the list in the destination queue.  
    <img src="../images/change-queue-from.png" alt="Change Queue Window" title="Change Queue Window" style="border: 1px solid gray; zoom:70%;">

    !!! Notes

        * On transferring a conversation, the count of waiting conversations decreases in the original queue and increases in the destination queue.
        * By default, the position of the conversation in the queue is determined based on the conversation’s arrival time in the original queue.
        * Transferring a conversation from the current queue to a different queue is recorded for reporting purposes.

### View Voicemails

When a call is converted to a voicemail, it can be viewed in the Monitor tab. Supervisors can view voicemails in waiting status and “Assign” to an agent or “Change Queue”.

### Transfer all Calls/Chats/Emails in Agent Queue

Supervisors can transfer or end multiple conversations at once across all supported digital channels, including chat, email, and voice. It improves workload management by allowing bulk actions directly from the Monitor tab. By default, the option is disabled for Agents and Custom roles. Supervisors, Admins, Owners, and App Developers can access the feature when permissions are explicitly granted—role-based permissions control access.

Steps to transfer all Calls/Chats/Emails in Agent Queue:

1. Open the **Monitor** tab.
2. Select a queue. A panel appears with all active and waiting conversations.
3. Click the **⋮** menu in the top-right corner of the panel.
4. Choose one of the following options:
    * Transfer Conversation
    * Force Close  
        <img src="../images/transfer-options (2).png" alt="Transfer Options" title="Transfer Options" style="border: 1px solid gray; zoom:70%;">

#### Transfer Conversations

1. Selecting Transfer Conversations activates multi-selection mode.
2. Select one or more conversations. An option to select all or clear the selection is available.  
    <img src="../images/select-conversations.png" alt="Select Conversations" title="Select Conversations" style="border: 1px solid gray; zoom:70%;">

    !!! Note

        At least one conversation must be selected to proceed.

3. A bottom action bar appears, displaying a **"Transfer"** button.
4. From the queue dropdown, choose a destination queue.  
    <img src="../images/select-queue (2).png" alt="Select Queue" title="Select Queue" style="border: 1px solid gray; zoom:70%;">
5. Click **Transfer**. The selected conversations are reassigned to the chosen queue.  
    <img src="../images/transfer.png" alt="Transfer" title="Transfer" style="border: 1px solid gray; zoom:70%;">

#### Force Close

1. Selecting Force Close activates multi-selection mode.
2. Select one or more conversations.

    !!! Note

        * At least one conversation must be selected to proceed.  
        * When a conversation is force-closed—either individually or through a bulk action—a system-generated disposition is automatically attached to the conversation. This behavior applies to both indefinite and timed slot release scenarios.  
        * If an agent has already selected a disposition for a conversation before it is force-closed, the agent-selected disposition will not be saved. The system-generated disposition will be applied instead.

3. A bottom action bar appears, displaying a Force Close button.
4. Click **Force Close**.  
    <img src="../images/force-close.png" alt="Forece Close" title="Force Close" style="border: 1px solid gray; zoom:70%;">
5. A confirmation pop-up is displayed. Click **Confirm**. The selected conversations are closed across their respective channels.  
    <img src="../images/confirm-close.png" alt="Confirm Close" title="Confirm Close" style="border: 1px solid gray; zoom:70%;">

#### Post-Action Behavior

After completing the transfer or end actions, the interface:

* Exits selection mode.  
* Updates the conversation list.  

## Agents

You can check agent details and monitor and intervene in ongoing conversations. The agents in this section are restricted to those assigned to the same queues as you. A list of conversations currently being handled by the agents is displayed with parameters such as state, load, first response, average response, AHT, etc.

Clicking the sort icon allows you to sort the columns in ascending or descending order. The default sorting is by State.

!!! Note

    Sorting is unavailable for automation interactions. Removing offline agents improves performance when sorting by load, but offline agents will not be visible in this mode.

The following metrics and their total counts are displayed:

* **Completed**: Count of interactions completed and closed by the agent.
* **Transferred**: Count of interactions an agent has transferred to a queue or another agent.
* **Rejected**: Count of interactions explicitly rejected by an agent using the reject button.
* **Unanswered**: Count of interactions assigned to an agent where the agent did not pick up the interaction within the acceptance timeout.  

The channel selection status appears on the Agents tab beside the Agent’s name. Active channels appear in Green and the disabled channels appear in Amber color.  
<img src="../images/agents-tab.png" alt="Agents Tab" title="Agents Tab" style="border: 1px solid gray; zoom:80%;">  
If an agent selects a channel and logs out at the end of the day, the previously selected channel persists when the agent starts a new session. Active channels appear in green, while disabled channels appear in amber for the supervisor.

* Hovering over an agent’s name displays a pop-up with the following information:

    * Agent status (for example, Available, Busy, Inactive).
    * Agent Name and profile icon, email ID, phone number, role.
    * Skills assigned to the agent.
    * Queues the agent is associated with.
    * Agent Groups the agent is part of.  
        <img src="../images/agent-name-hover.png" alt="Agent Name Hover" title="Agents Name Hover" style="border: 1px solid gray; zoom:80%;">  

* The load capacity indicator displays the agent’s overall load capacity. Hovering over the load shows the channel-wise load capacity—for example, Live Chat ⅔ (2 slots out of 3 defined slots are engaged) and the total digital conversation limit.
    <img src="../images/load-capacity-indication.png" alt="Load Capacity Indicator" title="Load Capacity Indicator" style="border: 1px solid gray; zoom:80%;">

* On the monitor tab, select an agent on the left side. The supervisor can view the agent’s ongoing conversation on the right and check the engagement metrics.  
    <img src="../images/agents-details.png" alt="Engagement Metrics" title="Engagement Metrics" style="border: 1px solid gray; zoom:80%;">

* On the right window, click the agent’s name.  Another window opens to the right as shown below. To check the agent engagement metrics, on the right window, click the down arrow as shown below:  

    **Chat**, **Messaging**, and **Voice**:

    <img src="../images/engagement-metric.png" alt="Agent Engagemnt Metrics" title="Agent Engagement Metrics" style="border: 1px solid gray; zoom:80%;">  

    **Email**:  

    <img src="../images/email-metrics.png" alt="Email Metrics" title="Email Metrics" style="border: 1px solid gray; zoom:70%;">

* For a selected agent, the supervisor can check the agent profile, chat with the agent, change the queue, and assign the conversation to other agents as shown below:  
    <img src="../images/agents-assign-change-queues.png" alt="Assign, Change Queue" title="Assign, Change Queue" style="border: 1px solid gray; zoom:80%;">

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

5. On the pop-up window, enter a name (up to 20 characters) for the filter and click Save & Apply.  
<img src="../images/save-and-apply.png" alt="Save & Apply" title="Save & Apply" style="border: 1px solid gray; zoom:80%;">  

    A confirmation message is displayed and the filter is saved.

6. Click Saved Filters. By default, the system shows the following:

    * The Waiting with Agents and Waiting in Queue quick filters are pre-selected. These filters are editable and can be deleted.  
        <img src="../images/agents-default-filters.png" alt="Default Filters" title="Default Filters" style="border: 1px solid gray; zoom:80%;"> 
    * You can select up to four quick filters. Quick filters appear along with unsaved filters.
    * If a filter is set as the default but not selected as a quick filter, the system still treats it as a quick filter.
    * You cannot disable a quick filter while a default filter is applied. To disable the quick filter, first remove the default filter.

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

### Auto Refresh When Filters are Applied

When a supervisor applies a filter, the page refreshes at fixed intervals to ensure real-time data accuracy. For example, changes in agent status appear after the auto-refresh, keeping the data up to date.
The page refreshes every 10 seconds to update data changes. Supervisors can pause updates by clicking the **Pause** button.  
<img src="../images/pause-button.png" alt="Pause Refresh" title="Pause refresh" style="border: 1px solid gray; zoom:80%;">  

Clicking the **Play** button resumes updates.  
<img src="../images/resume-button.png" alt="Resume Refresh" title="Resume refresh" style="border: 1px solid gray; zoom:80%;">  

A confirmation is displayed once the refresh is completed, and the updated data is shown.  
<img src="../images/filter-updated.png" alt="Filter Updated" title="Filter Updated" style="border: 1px solid gray; zoom:80%;">  

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

* Select the Chat option. A pop-up chat window appears, where the supervisor can type messages for the agent.  
<img src="../images/chat-agent.png" alt="Chat With Agent" title="Chat With Agent" style="border: 1px solid gray; zoom:60%;">

### Mark Offline

You can mark an agent as offline to prevent the agent from being assigned to any other customers.  
<img src="../images/mark-agent-offline.png" alt="Mark Agent Offline" title="Mark Agent Offline" style="border: 1px solid gray; zoom:60%;">

### Logout

Force Logout is a feature that allows the agent to be freed up and the ongoing customer engagements can be re-assigned to other agents.  
<img src="../images/force-logout.png" alt="Force Logout Agent" title="Force Logout Agent" style="border: 1px solid gray; zoom:50%;">

### Join a Conversation

Supervisors can monitor live conversations between agents and customers. The supervisor can view the agent engagement metrics of the agent. At any point, the supervisor can Join a conversation (conference) and view details of the agent-customer conversation.

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
<img src="../images/selected-conversation.png" alt="Voice Conversation" title="Voice Conversation" style="border: 1px solid gray; zoom:70%;">  

    A conference icon is displayed if multiple participants are on the call. The Listen & Whisper and Join options are disabled.  
    <img src="../images/participants.png" alt="Participants" title="Participants" style="border: 1px solid gray; zoom:70%;">  

2. Click **Listen & Whisper**.  
<img src="../images/listen-and-whisper-button.png" alt="Listen & Whisper Button" title="Listen & Whisper Button" style="border: 1px solid gray; zoom:70%;">

3. You can listen to the conversation between the customer and the agent.  Click the **Whisper to Agent** button to whisper to the agent.  
<img src="../images/listening.png" alt="Whisper to Agent" title="Whisper to Agent" style="border: 1px solid gray; zoom:70%;">

4. A confirmation is displayed that whisper mode is enabled.  
<img src="../images/whisper-mode-on.png" alt="Whisper Mode ON" title="Whisper Mode ON" style="border: 1px solid gray; zoom:60%;">

    When a supervisor whispers, an indication appears at the top of the live interaction, and the transcript is displayed in yellow.  
    <img src="../images/whispering.png" alt="Console Whisper Input" title="Console Whisper Input" style="border: 1px solid gray; zoom:70%;">

5. Click **Stop Whispering** to end the Listen and Whisper Session.  
    <img src="../images/stop-whispering.png" alt="Stop Whispering" title="Stop Whispering" style="border: 1px solid gray; zoom:70%;">  
    When a supervisor stops listening to a conversation, the message Listen session ended is displayed.  
    <img src="../images/listen-session-ended.png" alt="Listen Session Ended" title="Listen Session Ended" style="border: 1px solid gray; zoom:70%;">  
    The transcripts are not real-time. Click the **Refresh** icon to refresh the transcript.  
    <img src="../images/transcripts.png" alt="Transcripts" title="Transcripts" style="border: 1px solid gray; zoom:70%;">

## Interactions

You can view all live interactions on the Contact Center AI console. This view includes only interactions that involve agent transfers.  Clicking the sort icon allows you to sort the columns in ascending/descending order. A summary of the interactions view is shown below:  
<img src="../images/interaction-tab.png" alt="Interactions Tab" title="Interactions Tab" style="border: 1px solid gray; zoom:80%;">

!!! Note

    Agents are not listed in Agent Transfers when the Chat and Email channel slots are set to zero.

### Manually Assign Conversations to an Agent and Change Queue

Supervisors can assign conversations to an agent, and change queues for conversations. Click an Ongoing conversation to view the Assign and Change Queue options.  
<img src="../images/manually-assign-change-queue.png" alt="Manually Assign/Change Queue" title="Manually Assign/Change Queue" style="border: 1px solid gray; zoom:80%;">

Supervisors can also view an agent’s engagement metrics.

### Manually Assign a Bot-led Conversation to an Agent or Queue

Supervisors can assign bot-led conversations to an agent or a queue. To do so, click an Ongoing conversation and then click **Assign**.  
<img src="../images/assign-button-bot-led-conversation.png" alt="Manually Assign/Change Queue (Bot-Led Conversation)" title="Manually Assign/Change Queue (Bot-Led Conversation)" style="border: 1px solid gray; zoom:80%;">

In the Assign Conversation pop-up window, select Agent/Queue, select the agent or queue from the dropdown, mark as priority if required, turn on the message to customer toggle if you want to send a message to the customer, and click **Assign**.  
<img src="../images/assign-bot-led-conversation.png" alt="Assign/Change Queue (Bot-Led Conversation)" title="Assign/Change Queue (Bot-Led Conversation)" style="border: 1px solid gray; zoom:80%;">

### Filters

#### Create Filter

1. Click the **Filter** button.  
<img src="../images/filter-interactions.png" alt="Filter Button" title="Filter Button" style="border: 1px solid gray; zoom:80%;">

2. Click **New Filter**.  
<img src="../images/new-filter.png" alt="New Filter Button" title="New Filter Button" style="border: 1px solid gray; zoom:80%;">

3. Select the **Status**, **Agents** (bot-led interactions disabled), **Skills**, **Queues**, **Channels**, **Type**, and **Language**.  
    <img src="../images/interaction-filter.png" alt="Filter Options (Bot-Led Interactions Disabled)" title="Filter Options (Bot-Led Interactions Disabled)" style="border: 1px solid gray; zoom:80%;">  
    Select the **Status**, **Participants** (bot-led interactions enabled), **Skills**, **Queues**, **Channels**, **Type**, and **Language**.  
        <img src="../images/participant-filter.png" alt="Filter Options (Bot-Led Interactions Enabled)" title="Filter Options (Bot-Led Interactions Enabled)" style="border: 1px solid gray; zoom:80%;">  
    
    !!! Note

        Bot-led interactions will not appear by default, even when bot-led interaction permission is enabled for a role. To view these interactions, supervisors must explicitly select 'Automation' or 'Automation/Agents' from the Participant filter. The default setting remains "Agent" regardless of permission settings to prevent supervisors from being overwhelmed with automation conversations. This keeps automation conversations hidden unless specifically requested while maintaining the flexibility to include them when needed.

    Select from the below available options:
    1. **Clear** – Clears the selection.  
    2. **Save & Apply** – Saves the filter, and it appears when selected.  
    3. **Apply** – Applied for one instance and not saved.  

4. Click **Save & Apply**.

5. On the pop-up window, enter a name (up to 20 characters) for the filter and click **Save & Apply**.  
    <img src="../images/save-and-apply.png" alt="Save & Apply" title="Save & Apply" style="border: 1px solid gray; zoom:80%;">

    A confirmation message is displayed and the filter is created.

6. Click Saved Filters. By default, the system shows the following:

    * The Waiting with Agents and Waiting in Queue quick filters are pre-selected. These filters are editable and can be deleted.  
        <img src="../images/interactions-default-filters.png" alt="Default Filters" title="Default Filters" style="border: 1px solid gray; zoom:80%;"> 
    * You can select up to four quick filters. Quick filters appear along with unsaved filters.
    * If a filter is set as the default but not selected as a quick filter, the system still treats it as a quick filter.
    * You cannot disable a quick filter while a default filter is applied. To disable the quick filter, first remove the default filter.

#### Edit Filter

Steps to edit a filter:

1. Click the **Filters** tab. The Saved Filter name appears.  
<img src="../images/saved-filters.png" alt="Saved Filters" title="Saved Filters" style="border: 1px solid gray; zoom:80%;">

2. Click the **Edit** button.  
<img src="../images/edit-button.png" alt="Edit Button" title="Edit Button" style="border: 1px solid gray; zoom:80%;">

3. Make the necessary changes and click **Save & Apply**.  
    <img src="../images/edit-interactions-filters.png" alt="Save & Apply" title="Save & Apply" style="border: 1px solid gray; zoom:60%;">

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

This section enables supervisors to  monitor service-level targets based on specific needs.

To monitor service levels, go to Console > Monitor > SERVICE LEVELS.  
<img src="../images/service-levels-dashboard.png" alt="Service Levels Dashboard" title="Service Levels Dashboard" style="border: 1px solid gray; zoom:80%;">

The dashboard displays the following information:

**Queues**: Name of the Queue for which the service levels are shown.

**Average Speed to Answer (ASA)**: The average time it takes for agents to answer inbound customer contacts (such as calls or chats) after they enter the queue. It measures the responsiveness of the contact center.

**Response Service Level (SL)**: The percentage of inbound customer contacts answered by agents within a predefined threshold time. It reflects how consistently the contact center meets its response time targets.

**Abandonment Rate**: The percentage of inbound customer contacts (calls, chats, or emails) that customers disconnect or leave before reaching an agent or completing self-service.

**Transfer Rate**: The percentage of customer contacts that agents transfer to another agent, department, or queue after initially answering the interaction.

### Filters

Supervisors can create, edit, copy, mark as default, and delete filters to customize the view of service level metrics.

For information on configuring Service Levels, refer to [SLAs & Alerts](../contactcenter/performance-management/slas-and-alerts.md).