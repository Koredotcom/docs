# Settings

The Settings allow you to make app-level changes to Conversation Intelligence.

The Settings has the following two sections:

* Conversation Intelligence
* Quality Management

## Conversation Intelligence

This extracts valuable insights from customer interactions across various communication channels. It captures information from spoken and written conversations, matches the information with structured metadata about the interaction, and analyzes emotions and feelings to understand customers' desires, needs, opinions, and expectations.

Users can access the **Conversation Intelligence** by navigating to **Contact Center AI** > **Quality Management** > **Configure** > **Settings** > **Conversation Intelligence**.

<img src="../images/default-settings.png" alt="Settings" title="Settings" style="border: 1px solid gray; zoom:80%;">

### Conversation Intelligence Dashboard

The Conversation Intelligence Dashboard displays post-interaction analytics and is a powerful tool designed to provide insights and actionable information following customer interactions. 

For more information about the Conversation Intelligence Dashboard, see [Conversation Intelligence](../analyze/conversation-intelligence.md).

!!! Note

    The role permissions in the Settings are defined based on the user or agent roles. Users cannot view all the Conversation Intelligence Dashboard overview details if the Conversation Intelligence Settings are not defined by the admin.

Steps to enable the Conversation Intelligence:

1. Expand the **Conversation Intelligence** collapse icon to view the **Conversation Intelligence Dashboard**.  
<img src="../images/converse-intelligence.png" alt="Conversation Intelligence Dashboard" title="Conversation Intelligence Dashboard" style="border: 1px solid gray; zoom:80%;">

2. Enable the **Conversation Intelligence Dashboard** toggle to set the **Script adherence configuration** details.  
<img src="../images/converse-intelligence-dashboard.png" alt="Conversation Intelligence Dashboard Toggle" title="Conversation Intelligence Dashboard Toggle" style="border: 1px solid gray; zoom:80%;">

Steps to disable the **Conversation Intelligence** Dashboard:

1. Disable the **Conversation Intelligence Dashboard** toggle button. The following dialog box appears.  
<img src="../images/disable-conversation-intelligence.png" alt="Disable Converstion Intelligence" title="Disable Conversation Intelligence" style="border: 1px solid gray; zoom:60%;">

    !!! Note
    
        The Conversation Intelligence dashboard will not be visible to users throughout the application if the admin has disabled Conversation Intelligence. If it is enabled, then the user can view the insights on contact center efficiency, agent efficacy, and customer experience.

2. Click **Confirm** to disable the entire Conversation Intelligence application. The following screen appears.  
<img src="../images/confirm-conversation-intelligence.png" alt="Confirm Disable Converstion Intelligence" title="Confirm Disable Conversation Intelligence" style="border: 1px solid gray; zoom:60%;">

3. Click **Save** to save the settings.

### Script Adherence Configuration

This allows you to add and define a set of dynamic messages or scripts for the user or agent. By default, the script adherence widget uses a default generic script to check for adherence, using this app level configuration, the user can set custom messages for each step of the script to visualize adherence to the custom message instead of the default script message.

Steps to enable the Script Adherence Configuration:

1. Expand the **Conversation Intelligence** collapse icon, and enable the toggle button of **Conversation Intelligence Dashboard** and **Script adherence configuration**.  
    <img src="../images/script-adherence.png" alt="Script Adherence Toggle" title="Script Adherence Toggle" style="border: 1px solid gray; zoom:60%;">

2. Define the scripts for the following attributes to check the agent adherence. 

    * **Attribute**: Shows script steps like Greeting, Branding, and so on, where custom messages can be added.

    * **Message**: Shows the custom messages that are already configured.

    * **Action**: Enables you to enter messages for the agent by toggling the action button.

        By default, the action button is disabled but the user can enter the custom message for any of the desired attributes.
    
        Upon enabling, the system checks for adherence to the configured messages of the script adherence section of conversation intelligence instead of the default messages.

    * **Message**: Allows you to define specified attribute messages for the agent or user. You can add more than one message for the user for the same attribute and delete the defined messages.

    * **Save**: Allows you to save the defined messages.

        At the agent account level, the agent can only check the following options defined by the supervisor or app owner or administrator in the Settings.

        * In the Conversation Intelligence Dashboard, the agent can check the post-interaction analytics, such as brand tags, greetings, questions, emotions, interactions, and so on. 

        * In the Script adherence configuration, the agent can visualize the specific messages or scripts that are defined by the supervisor or app owner or administrator.  

## Quality Management

The App owners can use the Settings option under QM to enable or disable auto QA scoring of interactions and at an app level. Users with relevant permissions can enable and create bookmarks to collect interactions in different bookmarks for easy future reference.

Users can access the **Quality Management** by navigating to **Contact Center AI** > **Quality Management** > **Configure** > **Settings** > **Quality Management**.  
<img src="../images/qm-setting.png" alt="QM Settings" title="QM Settings" style="border: 1px solid gray; zoom:60%;">

The QA has the following sections:

* Auto QA
* Agent Score Card
* Bookmarks

### Auto QA

The Auto QA feature lets you set up Evaluation Forms for automated scoring. When the feature is turned off, automated QA scores are hidden across the entire application and its queues, regardless of whether the user has access to Agent Scorecard and QA functionalities. This also restricts access to features like Conversation Mining, Dashboards, and Evaluation Forms.

#### Enable Auto QA

Steps to enable Auto QA:

1. Expand the **Quality AI** collapse icon to view the following **Auto QA**.  
<img src="../images/auto-qa.png" alt="Auto QA" title="Auto QA" style="border: 1px solid gray; zoom:90%;">

2. Enable the **Auto QA**.

3. Click **Save** to save the settings.

!!! Note

    Except the administrator, no other user can enable the Auto QA option for agents.The Auto QA toggle option is always in disable mode though it is in activate mode for a user.
    
Once the **Auto QA** feature is enabled, you get the following screen to create and configure evaluation forms.

<img src="../images/qa-settings-eva-forms.png" alt="Create and Config Evaluation Forms" title="Create and Config Evaluation Forms" style="border: 1px solid gray; zoom:60%;">

!!! Note

    When a user with Auto QA permissions disables the Auto QA toggle in **Settings**, the Agent Scorecard and bookmarks will also be disabled, regardless of whether the user has access to the Agent Scorecard and QA functionalities.

#### Disable Auto QA

Steps to disable Auto QA:

1. If you turn off the **Auto QA** toggle, the following dialog box is displayed.  
<img src="../images/disable-auto-qa.png" alt="Auto QA" title="Auto QA" style="border: 1px solid gray; zoom:100%;">

2. Click **Confirm** to disable the Auto QA.
3. Click **Save** to save the settings.

!!! Note

    By disabling the Auto QA, the automated QA scoring will be disabled across the entire app and all queues within it.
    
### Agent Score Card

This setting allows you to enable or disable agent-level interaction scoring through agent scorecards, users with the relevant permission access can enable or disable this setting.

#### Enable Agent Score Card

Steps to enable the Agent Score Card:  
1. Expand the **Quality Management** collapse icon to view the **Agent Score Card**.   
<img src="../images/sett-agent-scorecard.png" alt="Auto QA" title="Auto QA" style="border: 1px solid gray; zoom:60%;">

2. Enable the **Agent Score Card** option.
3. Click **Save** to save the settings.

Once the **Agent Score Card** is enabled from the **Settings**, you will get the following screen to create agent scorecards.  
<img src="../images/settings-enable-agent-scorecard.png" alt="Auto QA" title="Auto QA" style="border: 1px solid gray; zoom:60%;">

#### Disable Agent Score Card
Steps to disable the Agent Score Card:

1. If you turn off the **Agent Score Card** toggle, the following dialog box is displayed.

<img src="../images/settings-disable-agent-scorecard.png" alt="Auto QA" title="Auto QA" style="border: 1px solid gray; zoom:100%;">

2. Click **Confirm** to disable the Agent Scorecard.
3. Click **Save** to save the settings.

### Bookmarks

This feature lets you bookmark interactions into various collections for future reference. Once created, these collections are added to Conversation Mining.

#### Enable Bookmarks
Steps to Add Bookmarks:

1. Expand the **Quality Management** collapse icon to view the following **Bookmarks** option.  
<img src="../images/settings-bookmarks.png" alt="Bookmark" title="Bookmark" style="border: 1px solid gray; zoom:70%;">

2. Enable the **Bookmarks** toggle option to add a new bookmark.
3. Click the **Add Bookmark**. The following new **Bookmarks** row appears.  
<img src="../images/settings-new-bookmarks.png" alt="Bookmarks" title="Bookmarks" style="border: 1px solid gray; zoom:100%;">

4. Enter the **Bookmarks** name for the assigned interactions.
5. Add **Color** for the newly added bookmarks.
6. Click **Save** to save the settings.

#### Disable Bookmarks
Steps to disable Bookmarks:

1. If you turn off the **Bookmarks** toggle, the following dialog box is displayed.   
<img src="../images/settings-delete-bookmarks.png" alt="Bookmark" title="Bookmark" style="border: 1px solid gray; zoom:100%;">

2. Click **Confirm** to disable the bookmark.
3. Click **Save** to save the settings.   

!!! Note
    
    Deleting any created bookmarks removes only the bookmark itself, not the associated relevant interactions.
