# Agent Management

## Agent Groups

An **Agent Group** is a collection of agents based on skills, scopes, roles, functionalities, etc. Agents are assigned to groups to streamline customer service within Contact Center.

To find _Agent Groups_, go to **Contact Center AI** > **AGENT & SUPERVISORS** > **Agent Management**. All groups are visible on this page by default.  
<img src="../images/agent-groups-tab.png" alt="Agent Groups Tab" title="Agent Groups Tab" style="border: 1px solid gray; zoom:80%;">

### Agent Group Section Features

The Agent Group section includes the following features:

* You can use the **Search** field to find a group by name.
* Each group item shows the _Group Name, Description,_ and the _Number of Agents_ it includes.
* Clicking any group name reveals the agents who are part of it. Each agent is listed with their name, Edit Action, Role, assigned Skills, and Queues. Learn more about [User Management](../../../user-management/manage-users.md).

### Pre-configured Groups

There are two pre-configured groups available:

* **Unassigned** is automatically selected in the _Group_ drop down while creating a new user. The _Unassigned_ group is not considered for routing interactions.
* **Default Group**.

### Create an Agent Group

To create a new agent group, follow these steps:

1. On the _Agent Groups_ page, click **Add Group**.
<img src="../images/add-group-button.png" alt="Add Group Button" title="Add Group Button" style="border: 1px solid gray; zoom:80%;">

2. In the **New Group** window, provide the input for the following fields:
    1. **Group Name** – Enter the name of the agent group.
    2. **Description** – Enter a brief description of the group.

### Add Agents to a Group

To add agents to a group, you either need to add a new agent to the Contact Center or edit an existing one to assign the group to them. Follow these steps to add an agent to a group:

1. Go to **Agents** and create or edit an agent.
2. On the **profile**, select the desired group.
3. **Save** the agent record.

To learn more about adding or editing agents, please see [Edit a User](../../../user-management/manage-users.md#edit-a-user).
<img src="../images/group-dropdown.png" alt="Select Group" title="Select Group" style="border: 1px solid gray; zoom:80%;">

### Edit an Agent Group

To modify an agent group, follow these steps:

1. On the **Agent Groups** page, hover over the group that you want to edit, then click the **Edit** icon next to the group name;
<img src="../images/edit-group-button.png" alt="Edit Group Name" title="Edit Group Name" style="border: 1px solid gray; zoom:80%;">

2. In the **Edit Group** window, make the required changes;
3. Click **Save**.

!!! Note

      You cannot change the name of the pre-configured groups: Unassigned and Default Group.

### Delete an Agent Group

To delete an agent group, follow these steps:

1. On the **Agent Groups** page, click the **Edit** icon next to the group you want to delete.
2. In the **Edit Group** window, click the **Delete Agent Group** icon at the bottom left.
<img src="../images/delete-button.png" alt="Delete an Agent Group" title="Delete an Agent Group" style="border: 1px solid gray; zoom:80%;">

## Agent Status Management

This feature lets you display various statuses of an Agent – such as available, offline, busy, or away – along with a brief description for each status. You can add new statuses and edit or delete the existing ones.

### The Agent Status Live Board

You can find the _Agent Status_ section by going to **Contact Center > Agent Management > AGENT & SUPERVISORS**.

Here you can see a list of existing statuses, along with the following information:

* **Name**: The name of the status that is displayed within the Agent Console.
* **Actions**: The available action is to Edit the status entry.
* **Type**: The type of status, mentioning whether the agent is _Available, Away, Busy,_ or _Offline_ while the particular status is set.
* **Description**: A short description of the status.
<img src="../images/agent-status-page.png" alt="Agent Status Page" title="Agent Status Page" style="border: 1px solid gray; zoom:80%;">

### System Busy Status without Blended Mode

Without Blended Mode, the "System Busy" status follows this logic:

* For digital interactions: Triggers when digital interaction concurrency reaches 100% of available slots.
* For voice interactions: Triggers when the single voice slot is occupied.
* Combined: Agents on voice are marked "System Busy" for digital, and vice versa.

#### Key Changes with Blended Mode

The following key changes are introduced with the Blended Mode:

1. Slot Treatment: Voice is treated as another interaction slot (not just digital slots).

2. System Busy Logic:

    * **Blended On**: Triggers when all voice + digital slots full
    * **Blended Off**: Triggers at 100% digital occupancy or voice slot full

3. Load Capacity: Calculated as (Occupied Voice / Max Voice) + (Occupied Digital / Max Digital)

#### Status Transitions

The "System Busy" status is triggered differently depending on whether Blended Mode is on or off:

* **Blended On**: System busy when all the slots are full (Voice + Digital).
* **Blended Off**: Traditional System Busy logic (100% digital or voice slot full).

#### Best Practices

* Configure appropriate slot allocations based on interaction volumes.
* Train agents on blended handling and multitasking strategies.
* Monitor load capacity to optimize staffing levels.
* Use reporting to track blended mode impact on KPIs.

### Create an Agent Status

To create a new agent status, follow these steps:

1. In the **Agent Status** section, click **+ New Status**.
2. In the **New Status** window, enter the following details:
    1. **Status Name** – Enter the status name.
    2. **Status Type** – Select the status type: _Away_ or _Busy_.
    3. **Description** – Type in a brief description of the status.
3. Click **Add & Exit** to create the status and exit the window or click **Add & Stay** to create the status and continue to a new one.  
<img src="../images/new-status-dialog-box.png" alt="New Status Dialog Box" title="New Status Dialog Box" style="border: 1px solid gray; zoom:100%;">
4. The **_status created successfully_** success message is displayed on-screen and the new status is added to the **Agent Status** list. 
<img src="../images/status-created.png" alt="New Status Created" title="New Status Created" style="border: 1px solid gray; zoom:80%;">

### Edit an Agent Status

To edit an existing **Agent status** entry, follow these steps:

1. In the **Agent Status** section, click the **Edit** icon corresponding to the status entry that you want to modify.
<img src="../images/status-edit-button.png" alt="Status Edit Icon" title="Status Edit Icon" style="border: 1px solid gray; zoom:80%;">

2. In the **Edit Status** window, edit the **Status Name**, **Status Type**, and/or **Description**, then click **Update**.
<img src="../images/edit-status-dialog-box.png" alt="Edit Status Dialog Box" title="Edit Status Dialog Box" style="border: 1px solid gray; zoom:80%;">

3. The **Status updated successfully** message appears in the window and the modified values reflect in the **Agent Status** window.
<img src="../images/status-updated.png" alt="Status Updated" title="Status Updated" style="border: 1px solid gray; zoom:80%;">

### Delete an Agent Status

!!! Notes

      1. The default statuses (Available, Away, Busy, and Offline) cannot be deleted. Only custom statuses provide this option.
      2. Deleted Agent Status entries cannot be restored.

To delete an existing **Agent Status** entry, follow these steps:

1. In the _Agent Status_ section, click the **Delete** icon corresponding to the status that you want to delete.
<img src="../images/delete-status-icon.png" alt="Delete Status Icon" title="Delete Status Icon" style="border: 1px solid gray; zoom:80%;">

2. You will be asked to confirm your choice. Click **Yes** to confirm.
3. A success status message is displayed and the deleted _Agent Status_ is removed from the list.

### Configure Login Prep Status

Login Prep status ensures agents do not receive interactions immediately after they log in on the Console. This status provides agents with a designated time to prepare before they start receiving interactions. Administrators can enable and configure this status for their agents.

Steps to enable and configure Login Prep status:

1. By default, the login prep status is disabled. Click the Edit button to enable login prep.
<img src="../images/login-prep-disabled.png" alt="Login Prep Disabled" title="Login Prep Disabled" style="border: 1px solid gray; zoom:80%;">

2. On the **Edit Status** window, turn on the toggle to Enabled.
You can customize the following fields:
    1. Status Name
    2. Description
    3. Message to Agent
        1. Rule (default 30 seconds)
        2. Message  
        <img src="../images/edit-login-prep.png" alt="Edit Login Prep" title="Edit Login Prep" style="border: 1px solid gray; zoom:80%;">  

3. Click **Update** to save the changes.  
<img src="../images/update-login-prep-status.png" alt="Update Login Prep" title="Update Login Prep" style="border: 1px solid gray; zoom:80%;">   
A confirmation message is displayed.  
<img src="../images/login-prep-enabled.png" alt="Login Prep Enabled" title="Login Prep Enabled" style="border: 1px solid gray; zoom:100%;">  
Once enabled, the Login Prep becomes the default status for every new login for the agent. [Learn more](../../../console/interacting-with-customers.md#behavior-when-login-prep-status-is-enabled).

## Agent Settings

Agent Settings let you configure the settings that apply to all agents across Contact Center.

Go to **Contact Center AI** > **AGENT & SUPERVISORS** > **Agent Management** > **Agent Settings** to view and edit the following:

1. **Answer Mode**: These settings let you define how conversations get answered on each channel (Digital – Chats, and Emails, as well as Voice).
2. **Conversation Status Control**: These options let you define how conversation status behaves and the messages triggered by status changes.
3. **Call Recording Control**: These settings let you configure call recording behavior. If enabled, you can further enable options to allow Agents and Virtual Assistants to Pause/Resume call recording.
4. **Transfers**: This section lets you define settings related to External Transfers, Skill Match, and Transfer Destination Control.
5. **Skill Modification**: You can decide if the agents can modify skills attached to a conversation.
6. **Auto Logout & Auto Close Conversation**: Administrators can configure this setting to specify a period of inactivity for automatic agent logout and a conversation timeout to transition into ACW mode.
7. **Snooze**: This setting allows agents to temporarily pause conversations that are waiting for a reply from the customer’s end or any necessary action or item on the agent’s side.
8. **Blended Agents**: The Blended Mode enables agents to handle voice and digital interactions simultaneously. It is designed to optimize agent capacity, improve efficiency, and align with modern contact center best practices.
9. **Additional Routing Configuration**: Administrators can select from the following routing options that complement existing routing configurations through queues.
    * Fairer Workload distribution.
    * Hold interaction in queue until the wait time expires.
10. **Enable Dial Tone Until Agent Connects**: This setting plays a dial tone to the customer until the connection with the agent is established after the user hears connected tone.
These settings are grouped and presented as closed groups when first opening the Settings screen. Click any group to view its corresponding options.  

    <img src="../images/agent-settings-page.png" alt="Agent Settings Page" title="Agent Settings Page" style="border: 1px solid gray; zoom:70%;">

## Answer Mode

### Voice

* **Manual**: Agents must click ‘Accept’ to begin their voice interaction with the next customer.
<img src="../images/voice-configuration.png" alt="Voice Configuration Manual" title="Voice Configuration Manual" style="border: 1px solid gray; zoom:80%;">

* **Auto**: Calls are auto-answered. The agent does not need to click ‘Accept’.
<img src="../images/voice-configuration-auto.png" alt="Voice Configuration Auto" title="Voice Configuration Auto" style="border: 1px solid gray; zoom:80%;">

### Chats

* **Manual**: Agents must click ‘Accept’ to begin chatting with the next customer. Set the acceptance timeout for agents before a chat returns to the queue by entering the number of minutes and seconds.
<img src="../images/chat-configuration.png" alt="Chat Configuration Manual" title="Chat Configuration Manual" style="border: 1px solid gray; zoom:80%;">

* **Auto**: Chats are auto-answered, and the agent does not need to click ‘Accept’. Set the first response timeout for agents to respond to new chats.
<img src="../images/chat-configuration-auto.png" alt="Chat Configuration Auto" title="Chat Configuration Auto" style="border: 1px solid gray; zoom:80%;">

### Emails

* **Manual**: Agents must click ‘**Accept**’ to begin their email interaction with the next customer. Set the acceptance timeout for agents before an email returns to the queue by entering the number of minutes and seconds.
<img src="../images/email-configuration-manual.png" alt="Email Configuration Manual" title="Email Configuration Manual" style="border: 1px solid gray; zoom:80%;">

* **Auto**: Emails are auto-accepted, and the agent does not need to click ‘Accept’.
<img src="../images/email-configuration-auto.png" alt="Email Configuration Auto" title="Email Configuration Auto" style="border: 1px solid gray; zoom:80%;">

### Explicit Reject Button

Turn on the toggle to add an explicit reject button for incoming conversations. This applies only in manual acceptance mode. This toggle is turned off by default.  
<img src="../images/explicit-reject-button-toggle.png" alt="Explicit Reject Toggle" title="Explicit Reject Toggle" style="border: 1px solid gray; zoom:90%;">

## Conversation Status Control

The Conversation Status Control settings are available for the following channels: Live Chat, Messaging, Voice, and Emails.

Different statuses apply to each channel. Watch the short demo below to see what these look like in Contact Center AI, and read the following sections for details on available statuses and their configuration.
<img src="../images/conversation-status-control-channels.gif" alt="Conversation Status Control" title="Conversation Status Control" style="border: 1px solid gray; zoom:80%;">

### Conversation Statuses by Channel (Live Chat, Messaging, and Voice)

Conversation statuses apply in certain conditions for specific channels. These are listed in the table below:

| **Status**                  | **Applicability**                                                                        | **Channel**             | **Message** | **Variables**                                                                                                     |
|-----------------------------|------------------------------------------------------------------------------------------|-------------------------|-------------|-------------------------------------------------------------------------------------------------------------------|
| **On Connect**              | When the agent connects                                                                  | Live Chat, Messaging.   | To User     | Agent Full Name, Agent First Name, Agent Last Name, Agent Nick Name, Elapsed Time, Expired Time.                  |
|                             |                                                                                          | Voice                   | To User     | Agent Full Name, Agent First Name, Agent Last Name, Agent Nick Name                                               |
| **Due Reminder For Agent**  | If the agent’s response time is greater than the set percentile of overdue conversations | Live Chat, Messaging.   | To Agent    | Agent Full Name, Agent First Name, Agent Last Name, Agent Nick Name, Elapsed Time, Expired Time.                  |
| **Agent Inactivity**        | If the agent has not responded to an overdue conversation for the set time               | Live Chat               | To Agent    | Agent Full Name, Agent First Name, Agent Last Name, Agent Nick Name, Elapsed Time, Expired Time.                  |
| **Overdue**                 | If the agent has not responded for the set amount of time                                | Live Chat, Messaging.   | To Agent    | Agent Full Name, Agent First Name, Agent Last Name, Agent Nick Name, Elapsed Time, Expired Time.                  |
| **Idle Reminder For Customer** | If the customer’s response time is greater than the set percentile of total idle customer conversations | Live Chat, Messaging.   | To User     | Agent Full Name, Agent First Name, Agent Last Name, Agent Nick Name, Elapsed Time, Expired Time.                  |
| **Idle**                    | If the customer has not responded for the set amount of time                             | Live Chat, Messaging.   | To User     | Agent Full Name, Agent First Name, Agent Last Name, Agent Nick Name, Elapsed Time, Expired Time.                  |
| **Auto Expire**             | If the customer’s response time is greater than the set amount of time                   | Live Chat               | To User     | Agent Full Name, Agent First Name, Agent Last Name, Agent Nick Name, Elapsed Time, Expired Time.                  |
|                             |                                                                                          |                         | To Agent    | Agent Full Name, Agent First Name, Agent Last Name, Agent Nick Name                                               |
| **On Interruption**         | If the agent disconnects unexpectedly                                                    | Live Chat, Messaging.   | To User     | Agent Full Name, Agent First Name, Agent Last Name, Agent Nick Name, Elapsed Time, Expired Time.                  |
| **On Close**                | If the agent closes the conversation                                                     | Live Chat, Messaging.   | To User     | Agent Full Name, Agent First Name, Agent Last Name, Agent Nick Name, Elapsed Time, Expired Time.                  |

### Conversation Statuses by Channel (Email)

Here is the HTML table converted into Markdown format:

| **Status**                       | **Applicability**                                                                                                                   | **Channel** | **Message** | **Variables**                                                              |
|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------|-------------|-------------|----------------------------------------------------------------------------|
| Overdue                          | If the agent has not responded for the set amount of time (in hours and minutes).                                                    | Email       | To Agent    | Elapsed Time, Expired Time, Time Left to Inactivity, Time Left to Expiry. |
| Due Reminder for Agent Inactivity| If the agent’s response time is under the set amount of time (in hours).                                                            | Email       | To Agent    | Elapsed Time, Expired Time, Time Left to Inactivity, Time Left to Expiry. |
| Agent Inactivity                 | The conversation will be moved back to Queue, once it turns overdue if the agent has not responded for the set amount of time (in hours and minutes). | Email       | To Agent    | Elapsed Time, Expired Time, Time Left to Inactivity, Time Left to Expiry. |
| Agent Offline                    | If an agent gets disconnected unexpectedly, conversations will wait in queue for a set amount of time (in hours and minutes).       | Email       | To Agent    |                                                                            |
| Customer Idle                    | If the customer has not responded for the set amount of time (in hours and minutes) since the last agent response.                  | Email       | To User     | Elapsed Time, Expired Time, Time Left to Inactivity, Time Left to Expiry. |
| Due Reminder for Auto Expiry     | If the customer’s response time is under the set amount of time (in hours) before Auto Expiry.                                      | Email       | To User     | Elapsed Time, Expired Time, Time Left to Inactivity, Time Left to Expiry. |
| Auto Expire                      | Once the conversation turns idle if the customer does not respond for the set amount of time (in hours and minutes) the interaction expires. | Email       | To User     | Elapsed Time, Expired Time, Time Left to Inactivity, Time Left to Expiry. |
|                                  |                                                                                                                                     |             | To Agent    | Elapsed Time, Expired Time, Time Left to Inactivity, Time Left to Expiry. |
| On Close                         | If the conversation is closed by the agent.                                                                                         | Email       | To User     | Elapsed Time, Expired Time, Time Left to Inactivity, Time Left to Expiry. |

### Conversation Status Configuration

For each status, you can configure the following:

1. **The response time after which the status should trigger**: This can be set in either as a percent value of a total or as minutes and seconds.
    1. The statuses for which you can set a percent value are: _Due Reminder For Agent_, and _Idle Reminder For Customer._
    2. The statuses for which you can set a response time (in minutes and seconds) are: _Overdue, Agent Inactivity, Idle_, and _Auto Expire_.
    3. The statuses that do not require percentile or response time configuration are: _On Connect, On Interruption_, and _On Close_.  
        <img src="../images/response-status.png" alt="Status Configuration" title="Status Configuration" style="border: 1px solid gray; zoom:80%;">  
        <img src="../images/response-status.png" alt="Status Configuration" title="Status Configuration" style="border: 1px solid gray; zoom:80%;">  
    The following applies to emails:
    4. The statuses for which you can set a response time (in hours) are _Due Reminder for Agent Inactivity_, and _Due Reminder for Auto Expiry_.
    5. The status for which there is no response time is _On Close_.
    6. The statuses for which you can set a response time (in hours and minutes) are _Overdue_, Agent _Inactivity_, _Agent Offline_, _Customer Idle_, and _Auto Expire_.
2. **The messaging goes out to either the user or the agent**. Status
Messages can be edited by clicking the Edit icon under the Message column.  
    <img src="../images/status-edit.png" alt="Status Edit" title="Status Edit" style="border: 1px solid gray; zoom:80%;">
    <img src="../images/status-edit.png" alt="Status Edit" title="Status Edit" style="border: 1px solid gray; zoom:80%;">

    1. Each status lets you edit the message text, add variables and select the language.  
        <img src="../images/status-pop-up.png" alt="Status Message Dialog Box" title="Status Message Dilaog Box" style="border: 1px solid gray; zoom:80%;">
    1. Each status lets you edit the message text, add variables and select the language.  
        <img src="../images/status-pop-up.png" alt="Status Message Dialog Box" title="Status Message Dilaog Box" style="border: 1px solid gray; zoom:80%;">

    2. **To add a variable**, place the cursor where you want to insert the variable, click the **Variable** field, then select the one you need. This adds a variable placeholder in your message text, which will be replaced with contextual information once the message reaches its recipient. You can select more than one variable within the same message.
    2. **To add a variable**, place the cursor where you want to insert the variable, click the **Variable** field, then select the one you need. This adds a variable placeholder in your message text, which will be replaced with contextual information once the message reaches its recipient. You can select more than one variable within the same message.
    For example: `{{agentFirstName}}` becomes Christine Mark.  
        <img src="../images/select-variables.png" alt="Add Variable" title="Add Variable" style="border: 1px solid gray; zoom:80%;">  
        <img src="../images/select-variables.png" alt="Add Variable" title="Add Variable" style="border: 1px solid gray; zoom:80%;">  
See the tables in [Conversation Statuses by Channel (Live Chat, Messaging, and Voice)](#conversation-statuses-by-channel-live-chat-messaging-and-voice) and [Conversation Statuses by Channel (Email)](#conversation-statuses-by-channel-email) for details on available variables.

Once you configure your Conversation Statuses and Messaging, click **Save** at the bottom right of the Agent Settings screen.
<img src="../images/save-button.png" alt="Save Conversation Status" title="Save Conversation Status" style="border: 1px solid gray; zoom:80%;">

## Call Recording Control

By default, Contact Center AI records all voice interactions. Contact Center AI admins can disable call recording for all voice interactions.  
<img src="../images/call-recording-control.png" alt="Call Recording Control" title="Call Recording Control" style="border: 1px solid gray; zoom:80%;">

### Allow Agent to Pause/Resume

By default, the Allow Agent to Pause/Resume feature is disabled. However, admins can enable it for agents handling voice interactions, allowing them to pause the recording during the call.
<img src="../images/allow-agent-to-pause-resume.png" alt="Allow Agents to Pause/Resume Call Recording" title="Allow Agents to Pause/Resume Call Recording" style="border: 1px solid gray; zoom:80%;">

### Allow Virtual Assistant Dialogs to Pause/Resume

By default, the Allow Virtual Assistant to Pause/Resume feature is disabled. However, admins can enable it for virtual assistants (automation) handling voice interactions, allowing them to pause the recording when collecting [Personally Identifiable Information (PII)](../../configurations/advanced-settings/handling-sensitive-data.md).  
<img src="../images/allow-virtual-assistants-to-pause-resume.png" alt="Allow Virtual Assitant Dialogs to Pause/Resume Call Recording" title="Allow Virtual Assitant Dialogs to Pause/Resume Call Recording" style="border: 1px solid gray; zoom:80%;">

Recorded calls are accessible to supervisors on the Dashboard’s [Interactions](../../../analytics/contact-center/interactions.md#call-recording) tab. The interactions are not recorded in the interactions tab for the duration that the recording was stopped/paused.

Changes to the Call Recording Control settings are logged on the [Kore.ai Bots Admin Console](../../../administration/adminconsole.md#accessing-the-admin-console) > Analytics > [Audit Report page](../../../administration/analytics.md#audit-report-details).

## Transfers

### Transfer to External Contacts

If enabled, this option allows agents to transfer ongoing customer calls to the external contacts list, via the Agent Console. Please see [Agent Console > Transfer Interactions](../../../console/interacting-with-customers.md#transfer-interactions) to learn more.  
<img src="../images/transfer-to-external-contacts.png" alt="Enable Transfer to External Contacts" title="Enable Transfer to External Contacts" style="border: 1px solid gray; zoom:80%;">

### Enforce Skill Match for Transfers

If enabled, the system considers skills while finding an agent, during a queue transfer. If disabled, the system ignores skills while finding an agent, during a queue transfer.  
<img src="../images/enforce-skill-match-for-transfers.png" alt="Enable Enforce Skill Match for Transfers" title="Enable Enforce Skill Match for Transfers" style="border: 1px solid gray; zoom:80%;">

### Transfer Destinations

Supervisors can decide where agents can transfer interactions:

* **Queues & Agents**: Agents can transfer interactions to queues and other individual agents.
* **Queues only**: Agents can transfer interactions only to queues.  
<img src="../images/transfer-destinations.png" alt="Transfer Destinations" title="Transfer Destinations" style="border: 1px solid gray; zoom:80%;">

## Skill Modification

If enabled, the system allows agents to modify skills attached to an interaction.

You can select from the following options:

* **Live Interaction**: Selecting this option lets agents modify skills from the skills bar on the Live Interaction window.
* **Transfer**: Selecting this option lets agents modify skills when transferring an interaction.  
* **Transfer**: Selecting this option lets agents modify skills when transferring an interaction.  
<img src="../images/skill-modification.png" alt="Skill Modification" title="Skill Modification" style="border: 1px solid gray; zoom:80%;">

## Auto Logout & Auto Close Conversation

This feature allows administrators to specify the period of inactivity for automatic agent logout and a conversation timeout to transition into ACW mode. By default, auto logout & auto close conversation is disabled.

**Auto Logout**  
<img src="../images/auto-logout-toggle.png" alt="Auto Logout" title="Auto Logout" style="border: 1px solid gray; zoom:80%;">

Enabling the setting allows administrators to configure the following rules:

**Auto Logout**: The period of inactivity after which auto logout occurs. The default setting is 8 hours.

**Due Reminder for Auto Logout**: The time duration before auto logout when the alert message appears.  
<img src="../images/configuring-auto-logout.png" alt="Configure Auto Logout" title="Configure Auto Logout" style="border: 1px solid gray; zoom:80%;">

**Conversation Callback Timeout**

If enabled, the conversation automatically moves to ACW mode after the timeout period if the agent remains inactive on the callback screen. 30 Seconds is the default selection, you can configure it between 10 seconds and 5 minutes.  
<img src="../images/conversation-callback-timeout.png" alt="Conversation Callback Timeout" title="Conversation Callback Timeout" style="border: 1px solid gray; zoom:80%;">
**Due Reminder for Auto Logout**: The time duration before auto logout when the alert message appears.  
<img src="../images/configuring-auto-logout.png" alt="Configure Auto Logout" title="Configure Auto Logout" style="border: 1px solid gray; zoom:80%;">

**Conversation Callback Timeout**

If enabled, the conversation automatically moves to ACW mode after the timeout period if the agent remains inactive on the callback screen. 30 Seconds is the default selection, you can configure it between 10 seconds and 5 minutes.  
<img src="../images/conversation-callback-timeout.png" alt="Conversation Callback Timeout" title="Conversation Callback Timeout" style="border: 1px solid gray; zoom:80%;">

## Snooze

This feature allows agents to temporarily pause conversations that are awaiting a response from the customer or require any necessary action from the agent.

By default, the snooze functionality is disabled. Administrators can turn on the **Snooze** toggle to enable the functionality.  
<img src="../images/snooze.png" alt="Enable Snooze" title="Enable Snooze" style="border: 1px solid gray; zoom:80%;">

## Blended Agents

Administrators can turn on the toggle to enable the functionality, allowing agents to handle both voice and digital interactions concurrently, optimizing agent capacity, improving efficiency, and aligning with modern contact center best practices. By default, the blended agents functionality is disabled. For more information on the changes when blended mode is enabled see [Key Changes with Blended Mode](../agent-management/agent-management.md#key-changes-with-blended-mode).  
<img src="../images/blended-agents-toggle.png" alt="Blended Agents Toggle" title="Blended Agents Toggle" style="border: 1px solid gray; zoom:80%;">

## Additional Routing Configuration

Administrators can select from the following routing options that complement existing routing configurations through queues.

**Fairer Workload distribution**: When enabled, this feature distributes tasks evenly across agents, which reduces overload, improves focus, and can decrease completion times.

**Hold interaction in queue until the wait time expires**: When enabled, interactions remain in the queue till the set queue max timeout, regardless of agent availability. 
<img src="../images/additional-routing-configurations.png" alt="Additional Routing Configuration" title="Adiitional Routing Configuration" style="border: 1px solid gray; zoom:80%;">

## Enable Dial Tone Until Agent Connects

By default, the enable dial tone until agent connects functionality is disabled. Administrators can turn on the toggle and click Save to enable the functionality. When enabled, a dial tone is played to the customer until the connection with the agent is established after the user hears a connected tone.  
<img src="../images/enable-dial-tone.png" alt="Enable Dial Tone Until Agents Connect" title="Enable Dial Tone Until Agents Connect" style="border: 1px solid gray; zoom:80%;">