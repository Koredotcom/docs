# Settings

This phase lets you set up task utterances at the agent account level that identify the intent behind each utterance. These can be simple sentences, brand tags, greetings, questions, emotions, interactions, and so on.

The Settings has the following two sections:

* Conversation Intelligence
* Quality Management

## Conversation Intelligence

This extracts valuable insights from customer interactions across various communication channels. It captures information from spoken and written conversations, matches the information with structured metadata about the interaction, and analyzes emotions and feelings to understand customers' desires, needs, opinions, and expectations.

You can access the Evaluation Forms by going to **Contact Center AI** > **Quality Management** > **Configure** > **Settings** > **Conversation Intelligence**.  
<img src="../images/default-settings.png" alt="Settings" title="Settings" style="border: 1px solid gray; zoom:80%;">

### Conversation Intelligence Dashboard

The Conversation Intelligence Dashboard displays post-interaction analytics and is a powerful tool designed to provide insights and actionable information following customer interactions. 

For more information about the Conversation Intelligence Dashboard, see [Conversation Intelligence - Overview](../analyze/conversation-intelligence.md).

!!! Note

    The role permissions in the Settings are defined based on the user or agent roles. Users cannot view all the Conversation Intelligence Dashboard overview details if the Conversation Intelligence Settings are not defined by the admin.

Steps to enable the Conversation Intelligence:

1. Expand the **Conversation Intelligence** collapse icon to view the **Conversation Intelligence Dashboard**.  
<img src="../images/converse-intelligence.png" alt="Conversation Intelligence Dashboard" title="Conversation Intelligence Dashboard" style="border: 1px solid gray; zoom:80%;">

2. Enable the **Conversation Intelligence Dashboard** toggle to set the **Script adherence configuration** details.  
<img src="../images/converse-intelligence-dashboard.png" alt="Conversation Intelligence Dashboard Toggle" title="Conversation Intelligence Dashboard Toggle" style="border: 1px solid gray; zoom:80%;">

Steps to disable the Conversation Intelligence Dashboard:

1. Disable the **Conversation Intelligence Dashboard** toggle. The following dialog box appears.  
<img src="../images/disable-conversation-intelligence.png" alt="Disable Converstion Intelligence" title="Disable Conversation Intelligence" style="border: 1px solid gray; zoom:60%;">

    !!! Note
    
        The Conversation Intelligence dashboard will not be visible to users throughout the application if the admin has disabled Conversation Intelligence. If it is enabled, then the user can view the insights on contact center efficiency, agent efficacy, and customer experience.

2. Click **Confirm** to disable the entire Conversation Intelligence application. The following screen appears.  
<img src="../images/confirm-conversation-intelligence.png" alt="Confirm Disable Converstion Intelligence" title="Confirm Disable Conversation Intelligence" style="border: 1px solid gray; zoom:60%;">

3. Click **Save** to save the settings.

### Script Adherence Configuration

This allows you to add and define a set of dynamic messages or scripts for the user or agent. The Script adherence configuration caters to specific messages that a user wants to visualize the adherence in the Conversation Intelligence Dashboard.

Steps to enable the Script Adherence Configuration:

1. Expand the **Conversation Intelligence** collapse icon, and enable the toggle button of **Conversation Intelligence Dashboard** and **Script adherence configuration** to view the following attributes.  
<img src="../images/script-adherence.png" alt="Script Adherence Toggle" title="Script Adherence Toggle" style="border: 1px solid gray; zoom:60%;">

2. Define the scripts for the below attributes to check the agent adherence.
* **Attribute**: Shows script steps like Greeting, Branding, and so on, where custom messages can be added.
* **Message**: Shows the custom messages that are already configured.
* **Action**: Enables you to enter messages for the agent by toggling the action button.

    By default, the action button is disabled but the user can enter the custom message for any of the desired attributes.
    
    Upon enabling, the system checks for adherence to the configured messages of the script adherence section of conversation intelligence instead of the default messages.

* **Message**: Allows you to define specified attribute messages for the agent or user. You can add more than one message for the user for the same attribute and delete the defined messages.

* Click **Save** to save the defined messages.

## Quality Management Settings

The Quality Management Settings allows you to create and configure evaluation forms to generate automated scores and enable interactions to get bookmarked under the different sections for reference later.

Users can access Quality Management (QM) Settings by going to **Contact Center AI** > **Quality Management** > **Settings** > **Quality Management**.  
<img src="../images/qm-setting.png" alt="QM Settings" title="QM Settings" style="border: 1px solid gray; zoom:60%;">

The QA has the following two sections:

* Auto QA
* Bookmarks

### Auto QA

This feature allows you to set up Evaluation Forms for automated scoring. If the Auto QA toggle is off, users cannot see automated QA scores across the entire application and its queues. This also restricts access to features like Conversation Mining, Dashboards, and Evaluation Forms.

Steps to enable the Auto QA:

1. Expand the **Quality Management** collapse icon to view the following **Auto QA** option.  
<img src="../images/auto-qa.png" alt="Auto QA" title="Auto QA" style="border: 1px solid gray; zoom:60%;">

2. Enable the **Auto QA** option.
3. Click **Save** to save the settings.

    By Enabling the Auto QA toggle option, you can create and configure evaluation forms to generate automated scores.  
    <img src="../images/bookmarks.png" alt="Bookmark Toggle" title="Script Adherence Toggle" style="border: 1px solid gray; zoom:60%;">

### Bookmarks

This feature lets you bookmark interactions into various collections for future reference. Once created, these collections are added to Conversation Mining.

Steps to Add Bookmarks:

1. Expand the **Quality Management** collapse icon to view the following **Bookmarks** option.  
<img src="../images/bookmarks-(2).png" alt="Bookmark" title="Bookmark" style="border: 1px solid gray; zoom:70%;">

2. Enable the **Bookmarks** toggle option to add a new bookmark.
3. Click the **Add Bookmark**. The following new **Bookmarks** row appears.  
<img src="../images/bookmarks.png" alt="Bookmarks" title="Bookmarks" style="border: 1px solid gray; zoom:60%;">

4. Enter the **Bookmarks** name for the assigned interactions.
5. Add **Color** for the newly added bookmarks.
6. Click **Save**.

    !!! Note
    
        Deleting any created bookmarks removes only the bookmark itself, not the associated relevant interactions.
