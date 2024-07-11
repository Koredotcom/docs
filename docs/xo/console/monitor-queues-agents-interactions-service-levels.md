# Monitor Queues, Agents, Interactions, and Service Levels

To access the **Monitor** section, you must be an _App Owner, App developer, App Tester,_ or _Supervisor_; or have the _Monitor Console –_ permission set to _Yes_. See [Role Management](../user-management/role-management.md#permissions) for more.

The **Monitor** tab lets you monitor live conversations between agents and customers and displays four views: **Queues**, **Agents**, **Interactions**, and **Service Levels**.

1. The **Queues** section displays the conversation summary between agents and customers per queue. You only have access to the queues you are assigned to; and to the agents assigned to the same queues as you.
2. The **Agents** section lets you view agent performance metrics and monitor agent-specific live conversations. Listed agents belong to the same queues you are also assigned to.
3. The **Interactions** section displays all interactions currently live in Contact Center AI and assigned to agents on the CONSOLE.
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
    <img src="../images/agent-details.png" alt="Agent Conversation Details" title="Agent Conversation Details" style="border: 1px solid gray; zoom:80%;">  

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
<img src="../images/manual-assignment.png" alt="Manual Assignment" title="Manual Assignment" style="border: 1px solid gray; zoom:80%;">

3. Select Mark as priority (optional) and click **Assign**.  
<img src="../images/assign-to-agent.png" alt="Assign to Agent" title="Assign to Agent" style="border: 1px solid gray; zoom:80%;">

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
<img src="../images/change-queue-from.png" alt="Change Queue Window" title="Change Queue Window" style="border: 1px solid gray; zoom:80%;">

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

    <img src="../images/email-metrics.png" alt="Email Metrics" title="Email Metrics" style="border: 1px solid gray; zoom:80%;">

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
<img src="../images/select-preferred.png" alt="Select Preferred" title="Select Preferred" style="border: 1px solid gray; zoom:80%;">

### Skills

You can select the Proficiency level of the skill.  
<img src="../images/skill-proficiency.png" alt="Skills" title="Skills" style="border: 1px solid gray; zoom:80%;">

### Chat with an Agent

To chat with an Agent:

* Select the Chat option. A pop-up chat window appears, where the manager can type messages for the agent.  
<img src="../images/chat-agent.png" alt="Chat With Agent" title="Chat With Agent" style="border: 1px solid gray; zoom:60%;">

### Mark Agent Offline

You can mark an agent as offline to prevent the agent from being assigned to any other customers.  
<img src="../images/mark-agent-offline.png" alt="Mark Agent Offline" title="Mark Agent Offline" style="border: 1px solid gray; zoom:80%;">

### Force Logout Agent

Force Logout is a feature that allows the agent to be freed up and the ongoing customer engagements can be re-assigned to other agents.  
<img src="../images/force-logout.png" alt="Force Logout Agent" title="Force Logout Agent" style="border: 1px solid gray; zoom:60%;">

### Join a Conversation

Managers can monitor live conversations between agents and customers. The manager can view the agent engagement metrics of the agent. At any point, the manager can Join a conversation (conference) and view details of the agent-customer conversation.

Steps to Join a conversation:

1. On the right pane, click **Join Conversation**.  
<img src="../images/join-conversation.png" alt="Join Conversation" title="Join Conversation" style="border: 1px solid gray; zoom:70%;">

2. A confirmation pop-up appears. Click **Confirm** to join.

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

### Configure Service Levels

This feature enables app developers to define, customize, and monitor service-level targets based on specific needs.

To configure service levels, go to **CONFIGURATION** > **PERFORMANCE MANAGEMENT** > **Event Configuration**.  
<img src="../images/filter-interactions.png" alt="Filter Button" title="Filter Button" style="border: 1px solid gray; zoom:80%;">

## **Create a New Service Level**

Steps to create a new service level:



1. Click the + New Service Level button on the upper-right corner. \


<p id="gdcalert94" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: error handling inline image </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert95">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


2. On the New Service Level Rule pop-up window, enter a Name and Description for the service rule and click Next. \


<p id="gdcalert95" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: error handling inline image </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert96">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

 \
The service level configuration screen is displayed. \


<p id="gdcalert96" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: error handling inline image </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert97">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


3. Click and select the Queues and Channels from the drop-down menus. \


<p id="gdcalert97" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: error handling inline image </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert98">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


4. Click + Add triggers and choose a trigger. \


<p id="gdcalert98" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: error handling inline image </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert99">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

 \
Based on your selected trigger, you can choose the following: \
Abandonment rate: \


<p id="gdcalert99" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: error handling inline image </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert100">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

 \
Average speed to answer: \


<p id="gdcalert100" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: error handling inline image </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert101">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

 \
Response service level: \


<p id="gdcalert101" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: error handling inline image </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert102">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

 \
Transfer rate: \


<p id="gdcalert102" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: error handling inline image </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert103">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


5. Click + Add an action and choose an action. \


<p id="gdcalert103" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: error handling inline image </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert104">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

 \
Based on your selected action, you can choose the following: \
Alert: \


<p id="gdcalert104" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: error handling inline image </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert105">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

 \
Email: \


<p id="gdcalert105" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: error handling inline image </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert106">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


6. Click Save to create the service level. \


<p id="gdcalert106" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: error handling inline image </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert107">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

 \
A confirmation message is displayed and the service level is created. \


<p id="gdcalert107" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: error handling inline image </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert108">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>




## **Edit a Service Level**

Steps to edit a service level:



1. Click the Edit button. \


<p id="gdcalert108" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: error handling inline image </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert109">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


2. Make the necessary changes to the service level and click Save. \


<p id="gdcalert109" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: error handling inline image </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert110">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

 \
A confirmation message is displayed. \


<p id="gdcalert110" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: error handling inline image </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert111">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>




## **Edit a Service Level Name**

Steps to edit a service level name:



1. Click the Edit button. \


<p id="gdcalert111" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: error handling inline image </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert112">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


2. Click the Settings button. \


<p id="gdcalert112" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: error handling inline image </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert113">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


3. Make the changes on the Edit Sevice Level Name pop-up and click Apply. \


<p id="gdcalert113" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: error handling inline image </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert114">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


4. Click Save. \


<p id="gdcalert114" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: error handling inline image </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert115">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

 \
The revised service level name is displayed. \


<p id="gdcalert115" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: error handling inline image </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert116">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>




## **Delete a Service Level**

Steps to delete a service level:



1. Click the Delete button. \


<p id="gdcalert116" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: error handling inline image </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert117">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


2. Click Yes on the confirmation pop-up window. \


<p id="gdcalert117" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: error handling inline image </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert118">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


3. A confirmation message is displayed and the service level is displayed. \


<p id="gdcalert118" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: error handling inline image </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert119">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>




## **Configure Conversation Intelligence Dashboard**



1. To configure the Conversation Intelligence Dashboard, go to CONFIGURATION > PERFORMANCE MANAGEMENT > Settings > Conversation Intelligence Dashboard. \


<p id="gdcalert119" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: error handling inline image </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert120">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


2. By default, the conversation intelligence dashboard is disabled. Toggle on the conversation intelligence dashboard to enable it. The Supervisor Dashboard is displayed in a disabled state. \


<p id="gdcalert120" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: error handling inline image </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert121">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


3. Toggle on the Supervisor Dashboard to enable it. The Interactivity Score and Script Adhererence Configuration options are displayed in the disabled state. \


<p id="gdcalert121" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: error handling inline image </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert122">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


4. Set the weightage for the voice and chat channels, the weightage for each channel must not exceed 100%. \
Voice: \


<p id="gdcalert122" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: error handling inline image </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert123">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

 \
Chat: \


<p id="gdcalert123" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: error handling inline image </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert124">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


5. Toggle on Script adherence configuration and define the scripts for agent adherence attributes \


<p id="gdcalert124" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: error handling inline image </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert125">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


6. Toggle on the STATUS to enable it. A message is displayed to enter a message for the attribute. Click the Edit icon to add a message. \


<p id="gdcalert125" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: error handling inline image </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert126">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


7. Click Add Message to add the message. \


<p id="gdcalert126" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: error handling inline image </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert127">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


8. Enter the message in the message field. You can add multiple messages by clicking the Add Message button. Click the (-) icon to delete a message. \


<p id="gdcalert127" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: error handling inline image </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert128">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


9. Click Save to update the message. \


<p id="gdcalert128" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: error handling inline image </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert129">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

 \
The configured message is displayed under MESSAGE. \


<p id="gdcalert129" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: error handling inline image </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert130">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


10. Click Save after the messages are defined for the required attributes. \


<p id="gdcalert130" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: error handling inline image </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert131">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

 \
A confirmation message is displayed. \


<p id="gdcalert131" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: error handling inline image </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert132">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

