# Agent Management

## Agents
In SmartAssist, the term **Agent Management** refers to the management of agents (customer support representatives), supervisors, and administrators with an account within SmartAssist. To serve customers, you must add users to SmartAssist and provide them with the necessary access. You can create user profiles, assign them to voice, chat, or both channels, and specific skills or queues.

You can find the _Agent Management_ section by going to **Contact Center > AGENT & SUPERVISORS > Agent Management**.

<img src="./images/agent-management-page-agents.png" alt="Agents Tab" title="Agents Tab" style="border: 1px solid gray; zoom:80%;">

### Agents Section Features

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
   <td>This is the name of the user you are viewing, as entered within their profile. Under every user’s name, SmartAssist mentions the groups that the user is part of.
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
<img src="./images/edit-button.png" alt="Edit Button" title="Edit Button" style="border: 1px solid gray; zoom:50%;">

   </td>
   <td><strong>Edit </strong>the user record.
   </td>
  </tr>
  <tr>
   <td>
<img src="./images/ellipsis menu.png" alt="Ellipsis Menu" title="Ellipsis Menu" style="border: 1px solid gray; zoom:50%;">

   </td>
   <td><strong>More options</strong>: 
<ul>

<li><strong>Clone</strong>: Create a copy of the user record with the same configuration. This feature is useful when adding new users by updating their profiles without needing to configure them every time.

<li><strong>Delete</strong>: Deletes the user. \
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

You can add a user to SmartAssist by following the steps below:

1. In the Agent section, click **+Add User**.
<img src="./images/add-user-button.png" alt="Add User Button" title="Add User Button" style="border: 1px solid gray; zoom:80%;">

2. The **New User** window displays. Here, you can find the following three areas to configure: 
    1. **Profile**: Provide the user’s profile information. This section opens by default.
    2. **Settings**: Configure settings related to the Chat and Voice Experience.
    3. **Queues & Skills**: Assign the user to specific queues and skills.
    <img src="./images/new-user-tabs.png" alt="New User Window Tabs" title="New User Window Tabs" style="border: 1px solid gray; zoom:80%;">

#### Profile

In the profile section, configure the following:

* _(Optional)_ **Profile Picture**: Upload the user’s profile picture here.
* **First Name **and** Last Name** are mandatory fields for the user’s first and last names, respectively. Only alphanumeric characters are allowed.
* _(Optional) **Nick Name:**_ This is a mandatory field for the user’s nickname in SmartAssist.
* **Role**: Select whether the new user should be an Agent, Supervisor, or Administrator. See [Role Management](https://docs.kore.ai/smartassist/agent/rolemanagement-overview/) for details.
* **Phone Number**: This mandatory field requires a 10-digit phone number.
* **Email ID**: This is a mandatory field for the user’s email address.
* **Group:** This is a mandatory field for a new user’s organizational group. The **Unassigned** group is pre-selected. \
!!! **_Note_**
_Users in the Unassigned group are not considered when routing interactions._
* **Custom ID**: This optional field lets you enter a custom ID for each user. The field supports up to 15 alphanumeric characters and cannot include space or special characters. You can use this field via API while [adding ](https://docs.kore.ai/smartassist/api/create-an-agent/)or [editing ](https://docs.kore.ai/smartassist/api/update-a-specific-agent/)a user.
* **Desktop Layout**: Choose the layout with which the user will work within the Agent Console. See [Manage Layout](https://docs.kore.ai/smartassist/console/manage-layout/) for details.
<img src="./images/new-user-profile.png" alt="New User Profile" title="New User Profile" style="border: 1px solid gray; zoom:60%;">

#### Settings

##### Digital Experience

This section sets the chat support features for a user, such as the capacity by channel type, language, and proficiency level selections, and whether you want to allow attachments and emails within chats.

To configure the digital experience, follow these steps:

1. **Enable** or **Disable** the digital experience using the toggle switch.
2. **CAPACITY BY CHANNEL TYPE** – This lets you set the maximum number of sessions an agent can handle simultaneously in a specific channel (Digital, Email, or Message).
3. **Language Support** – Allows you to enable or disable the languages known by the user and sets the proficiency level (_Novice, Average_, _Good, or Expert_). To add more languages, see  [System Setup > Languages & Speech](https://docs.kore.ai/smartassist/settings/general-settings/language-management/#).\
<img src="./images/new-user-settings.png" alt="Digital Experience Dialog Box" title="Digital Experience Dialog Box" style="border: 1px solid gray; zoom:60%;">

##### Voice Experience

This feature helps configure a user’s voice (call) experience settings.

In the **Voice Experience** section, the following options are available:

* **Enable Voice Settings** – Enabling this option adds the user to the voice channel so that they can handle incoming calls.
* **Language Support** – Select the language for voice support from the given options and set the language proficiency level. To add more languages, see [System Setup > Languages & Speech](https://docs.kore.ai/smartassist/settings/general-settings/language-management/#).
<img src="./images/voice-experience.png" alt="Voice Experience Dialog Box" title="Voice Experience Dialog Box" style="border: 1px solid gray; zoom:60%;">

* **Voicemail** – Enabling this option lets the user select the maximum number of voicemails an agent can receive.
<img src="./images/voicemail.png" alt="Voicemail Dialog Box" title="Voicemail Dialog Box" style="border: 1px solid gray; zoom:60%;">

#### Queues & Skills

This section lets you configure the queues and skills assigned to a user.

##### Queues

To assign queues to a user, follow these steps:

1. Type a **Queue Name** in the field, then select the one you need from the list. Clicking into the _Skills_ field shows the list of available options. The list only contains queues that are already created. To add a queue, see [Routing > Queues](https://docs.kore.ai/smartassist/routing/queues/).
2. Once you select a queue, it will be added to the user’s list of assigned queues. If you have more than one queue assigned to the same user, you can **select or deselect the queues** to assign; and **set queues as _Preferred_**. Queues set as such will take priority over others when the user receives incoming queries.
<img src="./images/queues.png" alt="Queues Dialog Box" title="Queues Dialog Box" style="border: 1px solid gray; zoom:60%;">

#### Skills

This section lets you configure the skills that the user brings to your team.

To assign skills to a user:

1. **Type a skill name**, and select it from the dropdown list to add it to the user’s skill list. Clicking into the _Skills_ field shows the list of available options. The list only contains skills that are already created. To add more skills, see [Routing > Skills](https://docs.kore.ai/smartassist/skills/skills/).
2. Once you select a skill, **choose the proficiency level**  (_Novice, Average, Good,_ or _Expert_).
3. You can remove a skill by clicking the **Delete (bin)** button next to it.
<img src="./images/skills.png" alt="Skills Dialog Box" title="Skills Dialog Box" style="border: 1px solid gray; zoom:60%;">

### save a User

To save the user, click the **Add** button at the bottom of the New User window. This is available regardless of the section that you are currently navigating.\
<img src="./images/add-new-user-button.png" alt="Save New User" title="Save New User" style="border: 1px solid gray; zoom:60%;">

!!! **_Notes:_**

   _The minimum requirements to save a user record are the following:_

   1. _The mandatory profile fields (all except the Profile Picture and Nick Name);_
   2. _Enable at least one channel (Chat or Voice);_
   3. _Assign at least one language to the channel you enable._

### Edit a User

To edit a user, follow these steps:

1. On the **Agents** page, click the **Edit** icon corresponding to the user you want to edit.\
<img src="./images/edit-user-button.png" alt="Edit User Button" title="Edit User Button" style="border: 1px solid gray; zoom:60%;">

2. On the **Edit User** window, make the necessary edits.
3. Click **Save**.

### Delete a User

To delete a user, follow these steps:

1. On the **Agents** page, click the **...** icon corresponding to the user you want to delete.
2. Click **Delete**.\
<img src="./images/delete-user.png" alt="Delete User Button" title="Delete User Button" style="border: 1px solid gray; zoom:60%;">
\
Alternatively, edit the user, and on the **Edit User** window, click the **Delete (bin)** icon on the bottom left.
<img src="./images/delete-button.png" alt="Delete Button" title="Delete Button" style="border: 1px solid gray; zoom:60%;">

3. You will be asked to confirm your choice.

!!! **_Notes: _**

   1. _You cannot delete your own user._
   2. _You cannot delete the SmartAssist account owner._
   3. _Reports, dashboards, and APIs will display deleted agents as long as interactions and metrics contain data associated with the deleted agents._
   4. _After deleting a user record, the respective user can no longer sign into SmartAssist. If you want to temporarily restrict users from handling customer conversations, you can turn off their access to chat and voice channels, or add them to the [Unassigned group](https://docs.kore.ai/smartassist/agent/agent-group/agent-groups/#Preconfigured_Groups)._