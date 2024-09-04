# Agent AI Updates

This document provides information on the feature updates and enhancements introduced in **Agent AI** of XO v11.x releases.

## v11.5.0 September 01, 2024
<u> Patch Release </u>

This update includes enhancements and bug fixes. Key enhancements included in this release are summarized below.

### Agent AI Conversation Logs

This update introduces a comprehensive Conversation Logs feature for reviewing past agent-customer interactions. It provides a powerful tool for managers and quality assurance teams to review, analyze, and improve agent-customer interactions over time.

[Learn more :octicons-arrow-right-24:](../../analytics/contact-center/agentai-conversation-logs.md){:target="_blank"}

Key updates:

* **Detailed Interaction Records**: Date and time of conversations, Channel used, and Duration of interaction.

* **Conversation Content**: Auto-generated summaries, Edited summaries (if any), and Original conversation transcripts.

* **Flexible Filtering Options**: Today, Yesterday, Past 7 days, Past 28 days, Past 90 days, and Custom date range.

### Expandable and Collapsible Table Templates in the Widget

This update allows agents to manage their workspace more efficiently by controlling the display of table templates, leading to a more organized and personalized view of information.

Key updates:

* **Expand/Collapse Functionality**: Icons added to toggle table view.
* **Default View**: Tables appear expanded by default.
* **User Control**: Agents can adjust table visibility as needed.  
<img src="../images/expandable-collapsible-content.png" alt="expandable-collapsible-content" title="expandable-collapsible-content" style="border: 1px solid gray; zoom:80%;">

### Enabling Server-Side Triggering of Conversation Summary in Agent AI

Third-party applications can now trigger a conversation summary by sending the “agentAssist.endOfConversation” event to Agent AI with the help of a new API.

[Learn more :octicons-arrow-right-24:](../../apis/agent-ai/conversation-summary-trigger-api.md){:target="_blank"}

### Introduction of Additional languages for Agent AI

For localization, feedback, and greetings, Agent AI now supports 33 languages, including Indian, Dutch, and other major languages. It significantly broadens Agent AI’s accessibility and user-friendliness across different linguistic markets, enabling more effective communication and interaction with a global user base.

Key updates:

* **Expanded Language Options**: Added Indian, Dutch, and other major languages, a total of 33 supported languages.
* **Comprehensive Integration**: Widget Settings, Feedback Settings, and Widget Theming.
* **Specific Application Areas**: Auto Summarization, Default Widget Language, Various Feedback Types (Dialog Task, Answers, FAQ, Summary), and Widget Personalization Settings.

<hr>

## v11.4.1 August 11, 2024
<u> Patch Release </u>

This update includes feature enhancements and bug fixes. Key features and enhancements included in this release are summarized below.

### Widget Landing Tab

The location of the Widget Landing Tab settings is changed in this update:

* Old location: Widget Settings > Agent AI Channel Specific Settings. 
* New location: Widget Theming > Layout Customization > Widget Menu Layout.

This change consolidates widget customization options, making it easier for users to configure the landing tab along with other layout settings.

### OAuth Credential Update for Genesys

The **Authorized Redirect URI** in the Genesys Middleman App is updated to ensure seamless integration of Agent AI with XO v11:

* Previous URI: https://agentassist.kore.ai/koreaiaa-genesys/
* New URI: https://platform.kore.ai/koreaiaa-genesys/

<hr>

## v11.4 July 27, 2024
<u> Patch Release </u>

This update includes feature enhancements and bug fixes. Key features and enhancements included in this release are summarized below.

### Search AI Configuration Moved from Account to Bot Level

The Search AI Configuration data is now saved at the bot level instead of the account level.

### Enhanced Scroll Functionality in the Widget

In the Agent AI widget, the **Assist** and the **My Bot** tabs now contain “up” and “down” arrow buttons at the top and the bottom to let you scroll to the first and last messages. These buttons appear after the messages in the **Assist** tab are large enough to require a scroll bar.  
<img src="../images/enhanced-scroll-functionality-1.png" alt="enhanced-scroll-functionality" title="enhanced-scroll-functionality" style="border: 1px solid gray; zoom:80%;">

### Agent AI Enabled Dialog Tasks for Playbook Step Adherence and Triggers

To improve the usability and relevance of the Playbooks module, Agent AI now restricts the selection of dialog tasks specified only for the Playbook’s designated channel. This dialog task selection applies during trigger point creation for Dynamic Playbooks and Step Adherence within Primary Playbooks.  
<img src="../images/agent-ai-enabled-dialog-tasks-2.png" alt="agent-ai-enabled-dialog-tasks" title="agent-ai-enabled-dialog-tasks" style="border: 1px solid gray; zoom:80%;">

### Feedback Reason and Comment on Summarization

The Agent AI widget's Summary feature now offers enhanced feedback capabilities for auto-generated summaries. Agents can provide more specific and actionable feedback by selecting a reason from up to five customizable messages and adding optional comments. Administrators can edit these messages, turn the comment box on or off, and choose the feedback language. This improved feedback system allows agents to pinpoint issues with summaries more accurately, contributing to the continuous improvement of the auto-summarization feature's accuracy and relevance over time. [Learn More](https://docsinternal-kore.github.io/docs/xo/agentai/configuration/feedback-settings/){:target="_blank"} 
<img src="../images/feedback-reason-3.png" alt="feedback-reason" title="feedback-reason" style="border: 1px solid gray; zoom:80%;">

### Language-specific Summarization

The Agent AI widget now supports language-specific summarization for third-party agent desktops. Admins can customize the language of automatically generated conversation summaries by selecting the **Custom Dialog Task** option in the **Auto Summarization Model** section. After choosing a preferred language, the system displays a configured dialog task for that language. The summary is then generated based on this language-specific task, allowing for more accurate and culturally appropriate summaries across different languages.  
<img src="../images/language-specific-summarization-4.png" alt="language-specific-summarization" title="language-specific-summarization" style="border: 1px solid gray; zoom:80%;">

### View Summary from Any Active Tab

The Agent AI widget now displays summaries more flexibly across all active tabs. When an agent closes a conversation, the summary appears on whichever tab they're currently viewing, not just the Assist tab. This change supports the widget's customizable layout feature, allowing agents to see summaries even if they've rearranged or removed certain tabs. For example, a summary can now pop up on the Search tab, enhancing the widget's versatility and ensuring agents always have access to important conversation summaries regardless of their current view.

### Widget Layout Customization (Beta)

The Agent AI widget now offers channel-specific layout customization in beta. Users can adjust language settings, menu labels, visibility controls for messages, dialog task timelines, and assist message types. The feature also allows customization of widget menu layout, assist action menu, landing tab settings, and "More" menu behavior. This flexibility enables tailoring the widget to specific channel needs and preferences. While the preview function is still in beta and may not fully reflect the final widget experience, it provides a close reference for customization options. [Learn More](https://docsinternal-kore.github.io/docs/xo/agentai/configuration/widget-theming-layout-customization/){:target="_blank"}  
<img src="../images/widget-layout-customization-5.png" alt="widget-layout-customization" title="widget-layout-customization" style="border: 1px solid gray; zoom:80%;">

### Entry/Exit Event Support in Third-Party Integration

Integration with third-party applications lets Agent AI capture and process events like entry, exit, and internalTransfer between agents to ensure smooth transition and improved user experience. Currently, these events are only supported by Genesys. 

<hr>

## v11.3.1 July 13, 2024

<u> Patch Release </u>

This update includes bug fixes.

<hr>

## v11.3.0 June 29, 2024

<u>Patch Release</u>

This update includes feature enhancements and bug fixes. Key features and enhancements included in this release are summarized below.

### Summarization Service Optimization

The Conversation Summary generation process has been updated to handle short, long, and abrupt endings of conversations. For long conversations, the maximum limit is set to 8000 tokens (approximately 6000 words).

### Improved Widget Search Experience

The widget search bar has been improved for a better user experience. It now shows "Ask a question" as placeholder text with a search icon on the right. As users type in the bar, the placeholder disappears, and the search icon changes to a close (X) icon, which makes it easy to clear the text.

### Dashboard Updates

Agent AI dashboard is enhanced with new suggestion relevance metrics and reorganized customer inquiry insights.

* A new **Relevant Suggestions** tab is added, showing the percentage of suggestions used by agents.
* The **What are your customers looking for** section is revised:
    * "Articles" is renamed to "Answers", displaying SearchAssist results.
    * A new "Others" tab is added for web suggestions and additional data sources.

<img src="../images/updated-dashboard.png" alt="updated-dashboard" title="updated-dashboard" style="border: 1px solid gray; zoom:80%;">

### Attachment Support in Widget

Agent AI now accepts file or image attachments during live conversations. 

If the file or image is not automatically detected, you can override and manually attach the file. To maintain system efficiency, attachments are limited to one file at a time and must not exceed 25 MB in size.

### Dark Theme for Agent AI Widget

Agents can now customize the widget appearance by selecting a theme. To select it, go to the widget’s **Settings** section and select **Dark** or **Light**.

### In-line Digital Form

Agent AI has introduced in-line digital forms in the **Assist** tab, making it easier to collect customer information during live conversations. Configure the forms with dialog tasks to use this feature and select "Open inline form" in the **Web/Mobile SDK Form Behavior** setting.

<img src="../images/inline-digital-form.png" alt="inline-digital-form" title="inline-digital-form" style="border: 1px solid gray; zoom:80%;">

**In-line form**:

<img src="../images/inline-form.png" alt="inline-form" title="inline-form" style="border: 1px solid gray; zoom:80%;">

### Streamlined Conversation Summary Management

Conversation Summary management has been improved to enhance usability and tracking.

* When agents submit a summary, it's automatically saved and linked to its **Conversation ID**, making it easily accessible in the **Conversation Logs** screen.  
<img src="../images/conversation-logs.png" alt="conversation-logs" title="conversation-logs" style="border: 1px solid gray; zoom:80%;">

* For easy identification and comparison, the modified Conversation Summary before submission is marked as “Edited Summary” with an “eye” icon to view the original summary.  
<img src="../images/edited-summary.png" alt="edited-summary" title="edited-summary" style="border: 1px solid gray; zoom:80%;">

* Each displayed Conversation Summary indicates whether it has been modified.
* If summary generation fails, the following message is displayed to inform the user: "Error occurred while generating summary".  
<img src="../images/summary-generation-error.png" alt="summary-generation-error" title="summary-generation-error" style="border: 1px solid gray; zoom:80%;">

### Enabling Channel-Specific Automations and Managing Appearance in the Widget Library

Agent AI lets you configure channel-specific dialog tasks across all communication channels - Chat, Voice, and Email. You can also specify whether these dialog tasks appear in the list or only when searched in the widget’s library (**Search** tab). These preferences can be set while creating or editing a dialog task and are available under the **Triggers & Permissions** tab.
<img src="../images/triggers-and-permissions.png" alt="triggers-and-permissions" title="free text" style="border: 1px solid gray; zoom:80%;">

**When Enabled**: When a dialog task is enabled for a specific channel, it is triggered automatically or manually by the agent during interaction with customers on that specific channel.

**Launch Through Library**: 

**Enabled**: The dialog task is listed under all available dialog tasks in the **Search** tab of triggers-and-permissions widget.

**Disabled**: The dialog task doesn’t appear on the list but remains searchable via the “Ask a question” search bar in the **Search** tab.

### Agent AI Raw Data API v2

This updated version of the Raw Data API offers the following additional conversation data for deeper insights into Agent AI interactions and conversation flows:

* Feedback (reason code and feedback text in addition to like/dislike) from the agent.
* Complete generated answers with feedback
* Comprehensive agent activity tracking
* Full end-user utterances
* Dialog task execution details
* Agent search bar activity timing


## v11.2.1 June 15, 2024

<u>Patch Release</u>

This update includes bug fixes.

<hr>

## v11.2 June 01, 2024

<u>Patch Release</u>

This update includes feature enhancements and bug fixes. Key features and enhancements included in this release are summarized below.

### Auto-scroll Agent AI Widget Content

The **Auto-Scroll Assist Tab Content toggle** lets you manage the scrolling functionality of content in the Assist tab. Agents can enable/disable this toggle in the **AgentAssist widget** > **Settings** tab.
<img src="../images/autoscroll-settings-tab.png" alt="autoscroll-settings-tab" title="autoscroll-settings-tab" style="border: 1px solid gray; zoom:80%;">

<img src="../images/autoscroll-enabled-disabled-1.png" alt="autoscroll-enabled-disabled" title="autoscroll-enabled-disabled" style="border: 1px solid gray; zoom:80%;">

### Entity-Based Summarization

Dialog tasks having “message nodes” didn’t let users customize the Conversation Summary. Hence, to let users customize the Conversation Summary, “message nodes” are replaced with “entity nodes”. To utilize this capability, admins must create dialog tasks with entity nodes and select these dialog tasks in the **Agent AI** > **Configuration** > **Widget Settings** > **AgentAssist Channel Specific Settings** > **Auto Summarization** > **Auto Summarization Model** > **Custom Dialog Task** section.

<img src="../images/entity-based-summarization-2.png" alt="entity-based-summarization" title="entity-based-summarization" style="border: 1px solid gray; zoom:80%;">

For Conversation Summary customization, select a dialog task with “entity node” in the **Custom Dialog Task** field.

### Warm Transfer

Agent AI has introduced the **Warm Transfer** feature to customize the transfer functionality of the Agent AI widget. This feature specifically caters to third-party configurations, where appropriate transfer events are transmitted.

The **Warm Transfer** feature can be defined as a conference call between two agents and applies to both Voice and Chat channels. During this process, Agent-2 has the ability to modify the Summary Feedback, but the **Run**, **Override, Send, Copy, Terminate, Restart,** and **List View** buttons remain disabled until Agent-1 disconnects from the call. It has the following options to choose from:

* **Scroll up to the First Message**

* **Continue from the Last Message**

* **Configure Dialog Task**

### Negative Feedback Settings

For better processing and accurate identification of reasons for receiving a “thumbs down”, Admins can now configure a list of negative feedback messages for agents to select. They can also include a comment box for agents to add additional comments. Admins decide whether these two options appear in the widget after agents select the “thumbs down” icon at the end of a Dialog Task and after each answer and FAQ. Additionally, Admins can change the language of the feedback messages by selecting one from the available language list.

**Feedback Settings in the AgentAssist UI**:

<img src="../images/feedback-settings-ui-3.png" alt="feedback-settings-ui" title="feedback-settings-ui" style="border: 1px solid gray; zoom:80%;">

**Feedback Messages and Comment Box in the Widget**:

<img src="../images/feedback-settings-widget-4.png" alt="feedback-settings-widget" title="feedback-settings-widget" style="border: 1px solid gray; zoom:80%;">

<hr>

## v11.1.1 May 11, 2024

<u>Patch Release</u>

This update includes bug fixes.

<hr>

## v11.1.0 April 27, 2024

<u>Minor Release</u>

Key features and enhancements included in this release are summarized below.

### Agent AI Widget Updates

#### No Results Found and No Dialog Tasks Enabled Messages

The Agent AI widget now shows the “No Search Result Found. Could you rephrase your question or ask something else?” message when an agent’s search query on the search bar doesn’t show any results.
If no dialog tasks are configured for an account, the message “No dialog tasks enabled for library” appears in the Library/Search tab.

#### Updates to the Override Mode of the Agent AI widget

**Override Mode Off**
        
* When the customer's input is expected, the field remains grayed out and displays the entity name followed by “waiting….”
* The “Override” call-to-action (CTA) appears, and agents can click it to override the customer's utterance and manually populate the entity field.

**Override Mode On**
        
* The green “tick” mark that appeared after receiving the customer’s input is removed.
* The Entity Display Name appears with a cursor to indicate editing mode.
* Introduced the Cross and Check icons.
* The “keyboard” icon is replaced with the “agent” icon to indicate agent input.

### Agent AI Configuration with OpenAI GPT-3.5

For enhanced Real-time Coaching and Playbooks performance, the AgentAI configuration is now upgraded from OpenAI GPT 3.0 to OpenAI GPT 3.5. OpenAI GPT 3.5 delivers more accurate and context-aware responses, thereby enhancing Real-time Coaching effectiveness and Playbooks quality.

### Feedback Mechanism for Answers
In an effort to constantly improve the accuracy and helpfulness of answers displayed on the AgentAI widget, Kore has introduced a feedback mechanism for agents. Agents can now click the “thumbs up” or “thumbs down” icon displayed with every answer to indicate positive or negative feedback. This feedback data will help train Agent AI to provide more accurate answers.

### SearchAssist Configuration Page Updates

The SearchAssist Configuration page inside Agent AI has been updated with the following changes:

* Stream ID has been replaced with App ID.
* A warning is displayed when a user enters incorrect values in the configuration fields -  “Could not establish connection with SearchAssist. Check all parameters and try again. Hint: Ensure that the domain URL does not contain "https://" and does not have a forward slash "/" at the end.”
* As soon as a user lands on the configuration page, the following hint is displayed: “Ensure that the domain URL does not contain "https://" and does not have a forward slash "/" at the end.” 
* If a user enters incorrect values in the configuration page, the following error message is displayed: “Error establishing connection.

### Conversation Transfer Experience (Third-Party Agent Desktop)

Agent AI has introduced the Conversation Transfer feature to customize the transfer functionality of the Agent AI widget. This feature is applicable only to the third-party configurations where appropriate transfer events are transmitted. The Cold Transfer type applies to all three channels - Chat, Voice, and Email and has the following options to choose from:
* Scroll up to the First Message
* Continue from the Last Message
* Configure Dialog Task

### Configure your own Auto Summarization Model (Third-Party Agent Desktop)

Agent AI has introduced the **Auto Summarization Model** widget to customize the automatic summarization process. You can now select Kore’s default automatic summarization or the “Custom Dialog Task“ option, which lets you select a “dialog task with a single message node” to automatically generate the conversation summary. This is applicable only to third-party agent desktops.

After enabling the **Auto Summarization** toggle, select one of the following options:

* **OOTB Kore Summarization**: For Kore’s default auto summarization
* **Custom Dialog Task**: To generate customized auto summarization, you must select a dialog task with a single message node. These message nodes call APIs.

The **Custom Dialog Task** field displays a list of dialog tasks or child bots based on bot selection at the app level. 

The Agent AI widget's Assist tab now displays an updated Summary that includes the following:

* A **.ai Suggested** logo.
* The summary textbox has a cross icon for clearing the text.
* Ability to freely edit the summary within the text box.

After submission, the summary appears under the “.ai CONVERSATION SUMMARY” title with a **Copy** button at the bottom-right corner.

### Updated Summarization Feature

Agent AI has improved the Summarization feature of its widget. The latest version comes up with improved summary accuracy and advanced handling of various scenarios in conversations between agents and users. Currently, this update is available only for the US PROD environment and supports English. It is not yet available for DE, JP, EU, AU, and IND environments.  

**Key Highlights**
    
* Improved Summary Accuracy: The summary accuracy has been significantly improved through the implementation of a new model, and Agent AI is fine tuning it for specific use cases.
* Summary for Small Conversations: Agent AI has effectively addressed issues related to agent transfer scenarios between bots and users, ensuring seamless communication and comprehension.
* Handling Incomplete Summaries: The new model handles incomplete summaries more effectively, providing more comprehensive and useful insights even when the conversation is not fully concluded.
* Handling Longer Calls: The new model handles longer calls extending up to 20 minutes. The previous model would generate incomplete summaries for such extended conversations.

### Agent Coaching Updates

In Agent Coaching > Utterance Trigger section, **Anytime in conversation** is now a default selection for the “in conversation” field.

### Dashboard Updates

#### Enhanced Agent Feedback Functionality

The AgentAI dashboard has been updated to include a detailed summary of Agent Feedback for dialog tasks, including "Not Helpful" feedback and additional comments. Users can now get a detailed view of the “Not Helpful” feedback with Responses, Additional Comments, and Counts.

#### Average Widget Usage (Third-Party Agent Desktop)

The Dashboard has been updated to include the Average Widget Usage feature. This feature gives a graphical representation of the average amount of time agents spend on the AgentAI widget.
