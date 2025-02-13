# Settings

The Settings allow you to make app-level changes to Conversation Intelligence.

The Settings has the following three sections:

* Conversation Intelligence
* Quality AI General Settings
* Language Settings

## Conversation Intelligence

This extracts valuable insights from customer interactions across various communication channels. It captures information from spoken and written conversations, matches the information with structured metadata about the interaction, and analyzes emotions and feelings to understand customers' desires, needs, opinions, and expectations.

You can access the **Conversation Intelligence** by navigating to **Contact Center AI** > **Quality AI** > **Configure** > **Settings** > **Conversation Intelligence**.  
<img src="../settings/images/default-settings.png" alt="Settings" title="Settings" style="border: 1px solid gray; zoom:80%;">

### Conversation Intelligence Dashboard

The Conversation Intelligence Dashboard displays post-interaction analytics and is a powerful tool designed to provide insights and actionable information following customer interactions. 

For more information about the Conversation Intelligence Dashboard, see [Conversation Intelligence](../analyze/conversation-intelligence.md).

!!! Note

    The role permissions in the Settings are defined based on the user or agent roles. Users cannot view all the Conversation Intelligence Dashboard overview details if the Conversation Intelligence Settings are not defined by the admin.

Steps to enable the Conversation Intelligence:

1. Expand the **Conversation Intelligence** collapse icon to view the **Conversation Intelligence Dashboard**.  
<img src="../settings/images/converse-intelligence.png" alt="Conversation Intelligence Dashboard" title="Conversation Intelligence Dashboard" style="border: 1px solid gray; zoom:80%;">

2. Enable the **Conversation Intelligence Dashboard** toggle to set the **Script adherence configuration** details.  
<img src="../settings/images/converse-intelligence-dashboard.png" alt="Conversation Intelligence Dashboard Toggle" title="Conversation Intelligence Dashboard Toggle" style="border: 1px solid gray; zoom:80%;">

By enabling this option, you can view the **Conversation Intelligence** feature displaying under the **Analyze** section.

Steps to disable the **Conversation Intelligence** Dashboard:

1. Disable the **Conversation Intelligence Dashboard** toggle button. The following dialog box appears.  
<img src="../settings/images/disable-conversation-intelligence.png" alt="Disable Converstion Intelligence" title="Disable Conversation Intelligence" style="border: 1px solid gray; zoom:60%;">

    !!! Note
    
        The Conversation Intelligence dashboard will not be visible to users throughout the application if the admin has disabled Conversation Intelligence. If it is enabled, then the user can view the insights on contact center efficiency, agent efficacy, and customer experience.

2. Click **Confirm** to disable the entire Conversation Intelligence application. The following screen appears.  
<img src="../settings/images/confirm-conversation-intelligence.png" alt="Confirm Disable Converstion Intelligence" title="Confirm Disable Conversation Intelligence" style="border: 1px solid gray; zoom:60%;">

3. Click **Save** to save the settings.

### Script Adherence Configuration

This allows you to add and define a set of dynamic messages or scripts for the user or agent. By default, the script adherence widget uses a default generic script to check for adherence, using this app level configuration, the user can set custom messages for each step of the script to visualize adherence to the custom message instead of the default script message.

Steps to enable the Script Adherence Configuration:

1. Expand the **Conversation Intelligence** collapse icon, and enable the toggle button of **Conversation Intelligence Dashboard** and **Script adherence configuration**.  
    <img src="../settings/images/script-adherence.png" alt="Script Adherence Toggle" title="Script Adherence Toggle" style="border: 1px solid gray; zoom:60%;">

2. Define the scripts for the following attributes to check the agent adherence. 

    * **Attribute**: Shows script steps like Greeting, Branding, and so on, where you can add custom messages.

    * **Action**: Enables you to enter messages for the agent by toggling the action button.

        By default, the action button is disabled but the user can enter the custom message for any of the desired attributes.
    
        Upon enabling, the system checks for adherence to the configured messages of the script adherence section of conversation intelligence instead of the default messages.

    * **Message**: Allows you to define specified attribute messages for the agent or user. You can add more than one message for the user for the same attribute and delete the defined messages.

    <img src="../settings/conversation-intelligence/images/conv-warning-message.png" alt="Script Adherence Toggle" title="Script Adherence Toggle" style="border: 1px solid gray; zoom:60%;">

        !!! Note
    
            If you are enabling this message box, you must enter a message in the corresponding attribute warning message box. You need to save and proceed before moving on to the next attribute message. A warning message will appear if you fail to enter a message for the corresponding attribute. 


    * **Save**: Allows you to save the defined messages.

        At the agent account level, the agent can only check the following options defined by the supervisor or app owner or administrator in the Settings.

        * In the Conversation Intelligence Dashboard, the agent can check the post-interaction analytics, such as brand tags, greetings, questions, emotions, interactions, and so on. 

        * In the Script adherence configuration, the agent can visualize the specific messages or scripts that are defined by the supervisor or app owner or administrator.  

