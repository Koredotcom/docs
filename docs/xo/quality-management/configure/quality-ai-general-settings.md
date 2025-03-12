# Quality AI General Settings

The Quality AI General Settings allow you to enhance the performance and compliance of your contact center agents. You can configure agent scorecards, create detailed evaluation forms, and set up bookmarks to highlight key conversation points by enabling specific options within this page. These settings are crucial for maintaining high standards in customer interactions and improving overall service quality.

Supervisors or Administrators can enable or disable auto QA scoring of interactions through the QM settings at the app level. Even can control agent access to these interactions (either only audited interactions or both manually evaluated interactions and Auto QA scored interactions) based on roles and operational procedures and configure whether agents can see the names of auditors who scored their interactions, ensuring auditor anonymity as per company policies and security.

Additionally, you can activate Conversation Intelligence, which helps ensure adherence to scripts, including mandatory elements like greeting and promotional messages.

Yoc can access the **Quality AI** by navigating to **Contact Center AI** > **Quality AI** > **Configure** > **Settings** > **Quality AI General Settings**.  
<img src="../settings/images/qm-setting.png" alt="QM Settings" title="QM Settings" style="border: 1px solid gray; zoom:60%;">

The QA has the following sections:

* Auto QA
* Agent Score Card
* Bookmarks
* Agent Access to Scored Interactions
* Hide auditor details for agent
* Quality AI Express

### Auto QA

The Auto QA feature lets you set up Evaluation Forms for automated scoring. When the feature is turned off, automated QA scores are hidden across the entire application and its queues, regardless of whether the user has access to Agent Scorecard and QA functionalities. This also restricts access to features like Conversation Mining, Dashboards, and Evaluation Forms.

#### Enable Auto QA

Steps to enable Auto QA:

1. Expand the **Quality AI General Settings** collapse icon to view the following **Auto QA**.  
<img src="../settings/images/auto-qa.png" alt="Auto QA" title="Auto QA" style="border: 1px solid gray; zoom:90%;">

2. Enable **Auto QA**.

By enabling this Auto QA option, you can access features like the Dashboard (Fail Statistics, Performance Monitor), Adherence Heatmap, Conversation Mining, and Evaluation Forms.

3. Click **Save** to save the settings.

!!! Note

    Except the administrator, no other user can enable the Auto QA option for agents. The **Auto QA** toggle option is always in disable mode though it is in activate mode.
    
Once the **Auto QA** feature is enabled, you get the following screen to create and configure evaluation forms.

<img src="../settings/images/qa-settings-eva-forms.png" alt="Create and Config Evaluation Forms" title="Create and Config Evaluation Forms" style="border: 1px solid gray; zoom:60%;">

!!! Note

    When a user with Auto QA permissions disables the Auto QA toggle in **Settings**, the Agent Scorecard and bookmarks will also be disabled, regardless of whether the user has access to the Agent Scorecard and QA functionalities.

#### Disable Auto QA

Steps to disable Auto QA:

1. If you turn off the **Auto QA** toggle, the following dialog box is displayed.  
<img src="../settings/images/disable-auto-qa.png" alt="Disable Auto QA" title="Disable Auto QA" style="border: 1px solid gray; zoom:100%;">

2. Click **Confirm** to disable the Auto QA.
3. Click **Save** to save the settings.

!!! Note

    By disabling the **Auto QA**, the automated QA scoring will be disabled across the entire app and all queues within it.
    
### Agent Score Card

This setting allows you to enable or disable agent-level interaction scoring through agent scorecards, users with the relevant permission access can enable or disable this setting.

#### Enable Agent Score Card

Steps to enable the Agent Score Card:  
1. Expand the **Quality AI** collapse icon to view the **Agent Score Card**.   
<img src="../settings/quality-ai-general-settings/images/sett-agent-scorecard.png" alt="Agent Scorecard Set" title="Agent Scorecard Set" style="border: 1px solid gray; zoom:60%;">



2. Enable the **Agent Score Card** option.
3. Click **Save** to save the settings.

Once the **Agent Score Card** is enabled from the **Settings**, you will get the following screen to create agent scorecards.  
<img src="../settings/images/settings-enable-agent-scorecard.png" alt="Auto QA" title="Auto QA" style="border: 1px solid gray; zoom:60%;">

#### Disable Agent Score Card
Steps to disable the Agent Score Card:

1. If you turn off the **Agent Score Card** toggle, the following dialog box is displayed.  
<img src="../settings/images/disable-agent-scorecard.png" alt="Auto QA" title="Auto QA" style="border: 1px solid gray; zoom:100%;">

2. Click **Confirm** to disable the Agent Scorecard.
3. Click **Save** to save the settings.

### Bookmarks

This feature lets you bookmark interactions into various collections for future reference. Once created, these collections are added to Conversation Mining.

#### Enable Bookmarks
Steps to Add Bookmarks:

1. Expand the **Quality AI** collapse icon to view the following **Bookmarks** option.  
<img src="../settings/images/settings-bookmarks.png" alt="Bookmark" title="Bookmark" style="border: 1px solid gray; zoom:70%;">

2. Enable the **Bookmarks** toggle option to add a new bookmark.

3. Click the **Add Bookmark**. The following new **Bookmarks** row appears.
<img src="../settings/images/settings-new-bookmarks.png" alt="Bookmarks" title="Bookmarks" style="border: 1px solid gray; zoom:100%;">

4. Enter the **Bookmarks** name for the assigned interactions.
5. Add **Color** for the newly added bookmarks.
6. Click **Save** to save the settings.

#### Disable Bookmarks
Steps to disable Bookmarks:

1. If you turn off the **Bookmarks** toggle, the following dialog box is displayed.   
<img src="../settings/images/delete-bookmark.png" alt="Bookmark" title="Bookmark" style="border: 1px solid gray; zoom:100%;">

2. Click **Confirm** to disable the bookmark.
3. Click **Save** to save the settings.

!!! Note
    
    Deleting any created bookmarks removes only the bookmark itself, not the associated relevant interactions.


