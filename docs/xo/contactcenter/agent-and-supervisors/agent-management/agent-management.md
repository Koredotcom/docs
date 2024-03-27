# Agent Management

## Agents

In the Contact Center, the term **Agent Management** refers to the management of agents (customer support representatives), supervisors, and administrators with an account within the contact center. To serve customers, you must add users to contact center and provide them with the necessary access. You can create user profiles, assign them to voice, chat, or both channels, and specific skills or queues.

You can find the _Agents_ section by going to **Contact Center > AGENT & SUPERVISORS > Agent Management**.
<img src="../images/agent-management-page-agents.png" alt="Agents Tab" title="Agents Tab" style="border: 1px solid gray; zoom:80%;">

## Agents Section Features

The Agents section includes the features in the table below.

<table>
  <tr>
   <td><strong>FEATURE</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
  </tr>
  <tr>
   <td>Search
   </td>
   <td>Type in a user’s name to retrieve their record.
   </td>
  </tr>
  <tr>
   <td>User
   </td>
   <td>This is the name of the user you are viewing, as entered within their profile. Under every user’s name, contact center mentions the groups that the user is part of.
   </td>
  </tr>
  <tr>
   <td>Actions
   </td>
   <td>This field lets you perform actions on the user record:
<p>
<table>
  <tr>
   <td><strong>ACTION</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
  </tr>
  <tr>
   <td>
<img src="../images/edit-button.png" alt="Edit Button" title="Edit Button" style="border: 1px solid gray; zoom:50%;">

   </td>
   <td><strong>Edit </strong>the user record.
   </td>
  </tr>
  <tr>
   <td>
<img src="../images/ellipsis menu.png" alt="Ellipsis Menu" title="Ellipsis Menu" style="border: 1px solid gray; zoom:50%;">

   </td>
   <td><strong>More options</strong>: 
<ul>

<li><strong>Clone</strong>: Create a copy of the user record with the same configuration. This feature is useful when adding new users by updating their profiles without needing to configure them every time.

<li><strong>Delete</strong>: Deletes the user.

<strong><em>Note: You cannot restore deleted users. Please proceed with caution</em></strong>!
</li>
</ul>
   </td>
  </tr>
</table>
   </td>
  </tr>
  <tr>
   <td>Role

   </td>
   <td>Lists the role assigned to the user.

   </td>
  </tr>
  <tr>
   <td>Skills

   </td>
   <td>Lists the skills assigned to the user.

   </td>
  </tr>
</table>

### Add a User

You can add a user to Contact Center by following the steps below:

1. In the Agent section, click **+Add User**.
<img src="../images/add-user-button.png" alt="Add User Button" title="Add User Button" style="border: 1px solid gray; zoom:80%;">

2. The **New User** window displays. Here, you can find the following three areas to configure: 
    1. **Profile**: Provide the user’s profile information. This section opens by default.
    2. **Settings**: Configure settings related to the Chat and Voice Experience.
    3. **Queues & Skills**: Assign the user to specific queues and skills.
    <img src="../images/new-user-tabs.png" alt="New User Window Tabs" title="New User Window Tabs" style="border: 1px solid gray; zoom:100%;">

### Profile

In the profile section, configure the following:

* _(Optional)_ **Profile Picture**: Upload the user’s profile picture here.
* **First Name** and **Last Name** are mandatory fields for the user’s first and last names, respectively. Only alphanumeric characters are allowed.
* _(Optional) **Nick Name:**_ This is a mandatory field for the user’s nickname in contact center.
* **Role**: Select whether the new user should be an Agent, Supervisor, or Administrator. See [Role Management](https://docs.kore.ai/smartassist/agent/rolemanagement-overview/) for details.
* **Phone Number**: This mandatory field requires a 10-digit phone number.
* **Email ID**: This is a mandatory field for the user’s email address.
* **Group:** This is a mandatory field for a new user’s organizational group. The **Unassigned** group is pre-selected.
!!! Note

      Users in the Unassigned group are not considered when routing interactions.

* **Custom ID**: This optional field lets you enter a custom ID for each user. The field supports up to 15 alphanumeric characters and cannot include space or special characters. You can use this field via API while [adding ](https://docs.kore.ai/smartassist/api/create-an-agent/)or [editing ](https://docs.kore.ai/smartassist/api/update-a-specific-agent/)a user.
* **Desktop Layout**: Choose the layout with which the user will work within the Agent Console. See [Manage Layout](https://docs.kore.ai/smartassist/console/manage-layout/) for details.
<img src="../images/new-user-profile.png" alt="New User Profile" title="New User Profile" style="border: 1px solid gray; zoom:100%;">

### Settings

#### Digital Experience

This section sets the chat support features for a user, such as the capacity by channel type, language, and proficiency level selections, and whether you want to allow attachments and emails within chats.

To configure the digital experience, follow these steps:

1. **Enable** or **Disable** the digital experience using the toggle switch.
2. **CAPACITY BY CHANNEL TYPE** – This lets you set the maximum number of sessions an agent can handle simultaneously in a specific channel (Digital, Email, or Message).
3. **Language Support** – Allows you to enable or disable the languages known by the user and sets the proficiency level (_Novice, Average_, _Good, or Expert_). To add more languages, see  [System Setup > Languages & Speech](https://docs.kore.ai/smartassist/settings/general-settings/language-management/#). 
<img src="../images/new-user-settings.png" alt="New User Settings" title="New User Settings" style="border: 1px solid gray; zoom:100%;">

#### Voice Experience

This feature helps configure a user’s voice (call) experience settings.

In the **Voice Experience** section, the following options are available:

* **Enable Voice Settings** – Enabling this option adds the user to the voice channel so that they can handle incoming calls.
* **Language Support** – Select the language for voice support from the given options and set the language proficiency level. To add more languages, see [System Setup > Languages & Speech](https://docs.kore.ai/smartassist/settings/general-settings/language-management/#). 
<img src="../images/voice-experience.png" alt="Voice Experience Dialog Box" title="Voice Experience Dialog Box" style="border: 1px solid gray; zoom:100%;">

* **Voicemail** – Enabling this option lets the user select the maximum number of voicemails an agent can receive. 
<img src="../images/voicemail.png" alt="Voicemail Dialog Box" title="Voicemail Dialog Box" style="border: 1px solid gray; zoom:100%;">

### Queues & Skills

This section lets you configure the queues and skills assigned to a user.

#### Queues

To assign queues to a user, follow these steps:

1. Type a **Queue Name** in the field, then select the one you need from the list. Clicking into the _Skills_ field shows the list of available options. The list only contains queues that are already created. To add a queue, see [Routing > Queues](https://docs.kore.ai/smartassist/routing/queues/).
2. Once you select a queue, it will be added to the user’s list of assigned queues. If you have more than one queue assigned to the same user, you can **select or deselect the queues** to assign; and **set queues as _Preferred_**. Queues set as such will take priority over others when the user receives incoming queries. 
<img src="../images/queues.png" alt="Queues Dialog Box" title="Queues Dialog Box" style="border: 1px solid gray; zoom:80%;">

### Skills

This section lets you configure the skills that the user brings to your team.

To assign skills to a user:

1. **Type a skill name**, and select it from the dropdown list to add it to the user’s skill list. Clicking into the _Skills_ field shows the list of available options. The list only contains skills that are already created. To add more skills, see [Routing > Skills](https://docs.kore.ai/smartassist/skills/skills/).
2. Once you select a skill, **choose the proficiency level**  (_Novice, Average, Good,_ or _Expert_).
3. You can remove a skill by clicking the **Delete (bin)** button next to it.
<img src="../images/skills.png" alt="Skills Dialog Box" title="Skills Dialog Box" style="border: 1px solid gray; zoom:80%;">

### save a User

To save the user, click the **Add** button at the bottom of the New User window. This is available regardless of the section that you are currently navigating.
<img src="../images/add-new-user-button.png" alt="Save New User" title="Save New User" style="border: 1px solid gray; zoom:80%;">

!!! Notes

      The minimum requirements to save a user record are the following:

      1. The mandatory profile fields (all except the Profile Picture and Nick Name);
      2. Enable at least one channel (Chat or Voice);
      3. Assign at least one language to the channel you enable.

### Edit a User

To edit a user, follow these steps:

1. On the **Agents** page, click the **Edit** icon corresponding to the user you want to edit.
<img src="../images/edit-user-button.png" alt="Edit User Button" title="Edit User Button" style="border: 1px solid gray; zoom:80%;">

2. On the **Edit User** window, make the necessary edits.
3. Click **Save**.

### Delete a User

To delete a user, follow these steps:

1. On the **Agents** page, click the **...** icon corresponding to the user you want to delete.
2. Click **Delete**. 
<img src="../images/delete-user.png" alt="Delete User Button" title="Delete User Button" style="border: 1px solid gray; zoom:80%;"> 
Alternatively, edit the user, and on the **Edit User** window, click the **Delete (bin)** icon on the bottom left. 
<img src="../images/delete-button.png" alt="Delete Button" title="Delete Button" style="border: 1px solid gray; zoom:100%;">

3. You will be asked to confirm your choice.

!!! Notes

      1. You cannot delete your own user.
      2. You cannot delete the SmartAssist account owner.
      3. Reports, dashboards, and APIs will display deleted agents as long as interaction
      4. After deleting a user record, the respective user can no longer sign into the contact center. If you want to temporarily restrict users from handling customer conversations, you can turn off their access to chat and voice channels, or add them to the [Unassigned group](https://docs.kore.ai/smartassist/agent/agent-group/agent-groups/#Preconfigured_Groups).

## **Agent Groups**

An **Agent Group** is a collection of agents based on skills, scopes, roles, functionalities, etc. Agents are assigned to groups to streamline customer service within Contact Center.

To find _Agent Groups_, go to **Contact Center > AGENT & SUPERVISORS > Agent Management**. All groups are visible on this page by default.
<img src="../images/agent-groups-tab.png" alt="Delete an Agent" title="Delete an Agent" style="border: 1px solid gray; zoom:80%;">

### Agent Group Section Features

The Agent Group section includes the following features:

* You can use the **Search** field to find a group by name.
* Each group item shows the _Group Name, Description,_ and the _Number of Agents_ it includes.
* Clicking any group name reveals the agents who are part of it. Each agent is listed with their name, Edit Action, Role, assigned Skills, and Queues. Learn more about [User Management](https://docs.kore.ai/smartassist/getting-started/agent-management/).

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

To learn more about adding or editing agents, please see [User Management](https://docs.kore.ai/smartassist/getting-started/agent-management/).
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

## **Agent Status Management**

This feature lets you display various statuses of an Agent – such as available, offline, busy, or away – along with a brief description for each status. You can add new statuses and edit or delete the existing ones.

### The Agent Status Live Board

You can find the _Agent Status_ section by going to **Contact Center > Agent Management > AGENT & SUPERVISORS**.

Here you can see a list of existing statuses, along with the following information:

* **Name**: The name of the status that is displayed within the Agent Console.
* **Actions**: The available action is to Edit the status entry.
* **Type**: The type of status, mentioning whether the agent is _Available, Away, Busy,_ or _Offline_ while the particular status is set.
* **Description**: A short description of the status.
<img src="../images/agent-status-page.png" alt="Agent Status Page" title="Agent Status Page" style="border: 1px solid gray; zoom:80%;">

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
Once enabled, the Login Prep becomes the default status for every new login for the agent. [Learn more](https://docs.kore.ai/smartassist/console/interacting-with-customers/#Behavior_When_Login_Prep_Status_is_Enabled).

## **Agent Settings**

Agent Settings let you configure the settings that apply to all agents across Contact Center.

Go to **Contact Center > AGENT & SUPERVISORS > Agent Management > Agent Settings** to view and edit the following:

1. **Answer Mode**: These settings let you define how conversations get answered on each channel (Digital – Chats, and Emails, as well as Voice).
2. **Conversation Status Control**: These options let you define how conversation status behaves and the messages triggered by status changes.
3. **Call Recording Control**: These settings let you configure call recording behavior. If enabled, you can further enable options to allow Agents and Virtual Assistants to Pause/Resume call recording.
4. **Transfers**: This section lets you define settings related to External Transfers, Skill Match, and Transfer Destination Control.
5. **Skill Modification**: You can decide if the agents can modify skills attached to a conversation.
6. **Auto Logout**: Administrators can configure this setting to specify a period of inactivity that automatically logs out agents.

These settings are grouped and presented as closed groups when first opening the Settings screen. Click any group to view its corresponding options. 
<img src="../images/agent-settings-page.png" alt="Agent Settings Page" title="Agent Settings Page" style="border: 1px solid gray; zoom:80%;">

## Answer Mode

### Voice

* **Manual**: Agents must click ‘Accept’ to begin their voice interaction with the next customer.
<img src="../images/voice-configuration.png" alt="Voice Configuration Manual" title="Voice Configuration Manual" style="border: 1px solid gray; zoom:80%;">

* **Auto**: Calls are auto-answered. The agent does not need to click ‘Accept’.
<img src="../images/voice-configuration-auto.png" alt="Voice Configuration Auto" title="Voice Configuration Auto" style="border: 1px solid gray; zoom:80%;">

### Chats

* **Manual**: Agents must click **_Accept _** to begin chatting with the next customer. Set the acceptance timeout for agents before a chat returns to the queue by entering the number of minutes and seconds.
<img src="../images/chat-configuration.png" alt="Chat Configuration Manual" title="Chat Configuration Manual" style="border: 1px solid gray; zoom:80%;">

* **Auto**: Chats are auto-answered, and the agent does not need to click ‘Accept’. Set the first response timeout for agents to respond to new chats.
<img src="../images/chat-configuration-auto.png" alt="Chat Configuration Auto" title="Chat Configuration Auto" style="border: 1px solid gray; zoom:80%;">

### Emails

* **Manual**: Agents must click ‘**Accept**’ to begin their email interaction with the next customer. Set the acceptance timeout for agents before an email returns to the queue by entering the number of minutes and seconds.
<img src="../images/email-configuration-manual.png" alt="Email Configuration Manual" title="Email Configuration Manual" style="border: 1px solid gray; zoom:80%;">

* **Auto**: Emails are auto-accepted, and the agent does not need to click ‘Accept’.
<img src="../images/email-configuration-auto.png" alt="Email Configuration Auto" title="Email Configuration Auto" style="border: 1px solid gray; zoom:80%;">

## Conversation Status Control

The Conversation Status Control settings are available for the following channels: Live Chat, Messaging, Voice, and Emails.

Different statuses apply to each channel. Watch the short demo below to see what these look like in SmartAssist, and read the following sections for details on available statuses and their configuration.
<img src="../images/conversation-status-control-channels.gif" alt="Conversation Status Control" title="Conversation Status Control" style="border: 1px solid gray; zoom:80%;">

### Conversation Statuses by Channel (Live Chat, Messaging, and Voice)

Conversation statuses apply in certain conditions for specific channels. These are listed in the table below:

<table>
  <tr>
   <td><strong>Status</strong>
   </td>
   <td><strong>Applicability</strong>
   </td>
   <td><strong>Channel</strong>
   </td>
   <td><strong>Message</strong>
   </td>
   <td><strong>Variables</strong>
   </td>
  </tr>
  <tr>
   <td rowspan="2" >On Connect
   </td>
   <td rowspan="2" >When the agent connects
   </td>
   <td>Live Chat, Messaging.
   </td>
   <td>To User
   </td>
   <td>Agent Full Name, Agent First Name, Agent Last Name, Agent Nick Name Elapsed Time, Expired Time.
   </td>
  </tr>
  <tr>
   <td>Voice
   </td>
   <td>To User
   </td>
   <td>Agent Full Name, Agent First Name, Agent Last Name, Agent Nick Name
   </td>
  </tr>
  <tr>
   <td>Due Reminder For Agent
   </td>
   <td>If the agent’s response time is greater than the set percentile of overdue conversations.
   </td>
   <td>Live Chat, Messaging.
   </td>
   <td>To Agent
   </td>
   <td>Agent Full Name, Agent First Name, Agent Last Name, Agent Nick Name Elapsed Time, Expired Time.
   </td>
  </tr>
  <tr>
   <td>Agent Inactivity
   </td>
   <td>If the agent has not responded to an overdue conversation for the set time (in minutes and seconds).
   </td>
   <td>Live Chat
   </td>
   <td>To Agent
   </td>
   <td>Agent Full Name, Agent First Name, Agent Last Name, Agent Nick Name Elapsed Time, Expired Time.
   </td>
  </tr>
  <tr>
   <td>Overdue
   </td>
   <td>If the agent has not responded for the set amount of time (in minutes and seconds).
   </td>
   <td>Live Chat, Messaging.
   </td>
   <td>To Agent
   </td>
   <td>Agent Full Name, Agent First Name, Agent Last Name, Agent Nick Name Elapsed Time, Expired Time.
   </td>
  </tr>
  <tr>
   <td>Idle Reminder For Customer
   </td>
   <td>If the customer’s response time is greater than the set percentile of total idle customer conversations.
   </td>
   <td>Live Chat, Messaging.
   </td>
   <td>To User
   </td>
   <td>Agent Full Name, Agent First Name, Agent Last Name, Agent Nick Name Elapsed Time, Expired Time.
   </td>
  </tr>
  <tr>
   <td>Idle
   </td>
   <td>If the customer has not responded for the set amount of time (in minutes and seconds).
   </td>
   <td>Live Chat, Messaging.
   </td>
   <td>To User
   </td>
   <td>Agent Full Name, Agent First Name, Agent Last Name, Agent Nick Name Elapsed Time, Expired Time.
   </td>
  </tr>
  <tr>
   <td rowspan="2" >Auto Expire
   </td>
   <td rowspan="2" >If the customer’s response time is greater than the set amount of time (in minutes and seconds).
   </td>
   <td rowspan="2" >Live Chat
   </td>
   <td>To User
   </td>
   <td>Agent Full Name, Agent First Name, Agent Last Name, Agent Nick Name Elapsed Time, Expired Time.
   </td>
  </tr>
  <tr>
   <td>To Agent
   </td>
   <td>Agent Full Name, Agent First Name, Agent Last Name, Agent Nick Name
   </td>
  </tr>
  <tr>
   <td>On Interruption
   </td>
   <td>If the agent disconnects unexpectedly.
   </td>
   <td>Live Chat, Messaging.
   </td>
   <td>To User
   </td>
   <td>Agent Full Name, Agent First Name, Agent Last Name, Agent Nick Name Elapsed Time, Expired Time.
   </td>
  </tr>
  <tr>
   <td>On Close
   </td>
   <td>If the agent closes the conversation.
   </td>
   <td>Live Chat, Messaging.
   </td>
   <td>To User
   </td>
   <td>Agent Full Name, Agent First Name, Agent Last Name, Agent Nick Name Elapsed Time, Expired Time.
   </td>
  </tr>
</table>

### Conversation Statuses by Channel (Email)

<table>
  <tr>
   <td><strong>Status</strong>
   </td>
   <td><strong>Applicability</strong>
   </td>
   <td><strong>Channel</strong>
   </td>
   <td><strong>Message</strong>
   </td>
   <td><strong>Variables</strong>
   </td>
  </tr>
  <tr>
   <td>Overdue
   </td>
   <td>If the agent has not responded for the set amount of time (in hours and minutes).
   </td>
   <td>Email
   </td>
   <td>To Agent
   </td>
   <td>Elapsed Time, Expired Time, Time Left to Inactivity, Time Left to Expiry.
   </td>
  </tr>
  <tr>
   <td>Due Reminder for Agent Inactivity
   </td>
   <td>If the agent’s response time is under the set amount of time (in hours).
   </td>
   <td>Email
   </td>
   <td>To Agent
   </td>
   <td>Elapsed Time, Expired Time, Time Left to Inactivity, Time Left to Expiry.
   </td>
  </tr>
  <tr>
   <td>Agent Inactivity
   </td>
   <td>The conversation will be moved back to Queue, once it turns overdue if the agent has not responded for the set amount of time (in hours and minutes).
   </td>
   <td>Email
   </td>
   <td>To Agent
   </td>
   <td>Elapsed Time, Expired Time, Time Left to Inactivity, Time Left to Expiry.
   </td>
  </tr>
  <tr>
   <td>Agent Offline
   </td>
   <td>If an agent gets disconnected unexpectedly, conversations will wait in queue for a set amount of time (in hours and minutes).
   </td>
   <td>Email
   </td>
   <td>To Agent
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Customer Idle
   </td>
   <td>If the customer has not responded for the set amount of time (in hours and minutes) since the last agent response.
   </td>
   <td>Email
   </td>
   <td>To User
   </td>
   <td>Elapsed Time, Expired Time, Time Left to Inactivity, Time Left to Expiry.
   </td>
  </tr>
  <tr>
   <td>Due Reminder for Auto Expiry
   </td>
   <td>If the customer’s response time is under the set amount of time (in hours) before Auto Expiry.
   </td>
   <td>Email
   </td>
   <td>To User
   </td>
   <td>Elapsed Time, Expired Time, Time Left to Inactivity, Time Left to Expiry.
   </td>
  </tr>
  <tr>
   <td rowspan="2" >Auto Expire
   </td>
   <td rowspan="2" >Once the conversation turns idle if the customer does not respond for the set amount of time (in hours and minutes) the interaction expires.
   </td>
   <td rowspan="2" >Email
   </td>
   <td>To User
   </td>
   <td>Elapsed Time, Expired Time, Time Left to Inactivity, Time Left to Expiry.
   </td>
  </tr>
  <tr>
   <td>To Agent
   </td>
   <td>Elapsed Time, Expired Time, Time Left to Inactivity, Time Left to Expiry.
   </td>
  </tr>
  <tr>
   <td>On Close
   </td>
   <td>If the conversation is closed by the agent.
   </td>
   <td>Email
   </td>
   <td>To User
   </td>
   <td>Elapsed Time, Expired Time, Time Left to Inactivity, Time Left to Expiry.
   </td>
  </tr>
</table>

### Conversation Status Configuration

For each status, you can configure the following:

1. **The response time after which the status should trigger**: This can be set in either as a percent value of a total or as minutes and seconds.
    1. The statuses for which you can set a percent value are: _Due Reminder For Agent_, and _Idle Reminder For Customer._
    2. The statuses for which you can set a response time (in minutes and seconds) are: _Overdue, Agent Inactivity, Idle_, and _Auto Expire_.
    3. The statuses that do not require percentile or response time configuration are: _On Connect, On Interruption_, and _On Close_. 
    <img src="../images/response-status.png" alt="Status Configuration" title="Status Configuration" style="border: 1px solid gray; zoom:80%;">
    The following applies to emails:
    4. The statuses for which you can set a response time (in hours) are _Due Reminder for Agent Inactivity_, and _Due Reminder for Auto Expiry_.
    5. The status for which there is no response time is _On Close_.
    6. The statuses for which you can set a response time (in hours and minutes) are _Overdue_, Agent _Inactivity_, _Agent Offline_, _Customer Idle_, and _Auto Expire_.
2. **The messaging goes out to either the user or the agent**. Status
Messages can be edited by clicking the Edit icon under the Message column. 
<img src="../images/status-edit.png" alt="Status Edit" title="Status Edit" style="border: 1px solid gray; zoom:80%;">

    7. Each status lets you edit the message text, add variables and select the language.
    <img src="../images/status-pop-up.png" alt="Status Message Dialog Box" title="Status Message Dilaog Box" style="border: 1px solid gray; zoom:80%;">

    8. **To add a variable**, place the cursor where you want to insert the variable, click the **Variable** field, then select the one you need. This adds a variable placeholder in your message text, which will be replaced with contextual information once the message reaches its recipient. You can select more than one variable within the same message.
    For example: `{{agentFirstName}}` becomes Christine Mark.
    <img src="../images/select-variables.png" alt="Add Variable" title="Add Variable" style="border: 1px solid gray; zoom:80%;">
See the table in [Conversation Statuses by Channel](https://docs.kore.ai/smartassist/user-management/agent-settings/?preview_id=7923&preview_nonce=34f3bb377c&post_format=standard&_thumbnail_id=-1&preview=true#Conversation_Statuses_by_Channel) for details on available variables.

Once you configure your Conversation Statuses and Messaging, click **Save** at the bottom right of the Agent Settings screen.
<img src="../images/save-button.png" alt="Save Conversation Status" title="Save Conversation Status" style="border: 1px solid gray; zoom:80%;">

## Call Recording Control

By default, SmartAssist records all voice interactions. SmartAssist admins can disable call recording for all voice interactions.
<img src="../images/call-recording-control.png" alt="Call Recording Control" title="Call Recording Control" style="border: 1px solid gray; zoom:80%;">

### Allow Agent to Pause/Resume

By default, the Allow Agent to Pause/Resume feature is disabled. However, admins can enable it for agents handling voice interactions, allowing them to pause the recording during the call.
<img src="../images/allow-agent-to-pause-resume.png" alt="Allow Agents to Pause/Resume Call Recording" title="Allow Agents to Pause/Resume Call Recording" style="border: 1px solid gray; zoom:80%;">

### Allow Virtual Assistant Dialogs to Pause/Resume

By default, the Allow Virtual Assistant to Pause/Resume feature is disabled. However, admins can enable it for virtual assistants (automation) handling voice interactions, allowing them to pause the recording when collecting [Personally Identifiable Information](https://docs.kore.ai/smartassist/history/handling-pii-data/) (PII).
<img src="../images/allow-virtual-assistants-to-pause-resume.png" alt="Allow Virtual Assitant Dialogs to Pause/Resume Call Recording" title="Allow Virtual Assitant Dialogs to Pause/Resume Call Recording" style="border: 1px solid gray; zoom:80%;">

Recorded calls are accessible to supervisors on the Dashboard’s [Interactions](https://docs.kore.ai/smartassist/dashboard/interactions/#Call_Recording) tab. The interactions are not recorded in the interactions tab for the duration that the recording was stopped/paused.

Changes to the Call Recording Control settings are logged on the [Kore.ai Bots Admin Console](https://bots.kore.ai/admin/#_login) > Analytics > [Audit Report page](https://docs.kore.ai/smartassist/administration/audit-report/).

## Transfers

### Transfer to External Contacts

If enabled, this option allows agents to transfer ongoing customer calls to the external contacts list, via the Agent Console. Please see [Agent Console > Transfer Interactions](https://docs.kore.ai/smartassist/console/interacting-with-customers/#Transfer_Interactions) to learn more.
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
<img src="../images/skill-modification.png" alt="Skill Modification" title="Skill Modification" style="border: 1px solid gray; zoom:80%;">

## Auto Logout

This feature allows administrators to specify the period of inactivity after which auto logout occurs. By default, auto logout is disabled.
<img src="../images/auto-logout.png" alt="Auto Logout" title="Auto Logout" style="border: 1px solid gray; zoom:80%;">

Enabling the setting allows administrators to configure the following rules:

**Auto Logout**: The period of inactivity after which auto logout occurs. The default setting is 8 hours.

**Due Reminder for Auto Logout**: The time duration before auto logout when the alert message appears.
<img src="../images/auto-logout-configuration.png" alt="Configure Auto Logout" title="Configure Auto Logout" style="border: 1px solid gray; zoom:80%;">

## Snooze

This feature allows agents to temporarily pause conversations that are awaiting a response from the customer or require any necessary action from the agent.

By default, the snooze functionality is disabled. Administrators can turn on the **Snooze** toggle to enable the functionality.
<img src="../images/enable-snooze.png" alt="Enable Snooze" title="Enable Snooze" style="border: 1px solid gray; zoom:80%;">