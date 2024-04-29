---
hide:
  - toc
  - feedback
---

# 11.1.x Release Notes

This document provides information on the various releases and the corresponding feature updates and enhancements introduced in version 11.1.x of the Kore.ai Experience Optimization Platform.

## v11.1.0 April 27, 2024

**Minor Release**

Key features and enhancements included in this release are summarized below.

=== "LLM and Generative AI"

    ## Custom LLM Integration Support for Rephrase Dialog Responses  

    Rephrase Dialog Responses now supports Custom LLMs in addition to commercial LLMs. This allows platform users to use the rephrasing feature with their own custom-trained language models and create customized prompts tailored to their specific use cases, models, and linguistic contexts, providing greater flexibility and control over the rephrasing process and conversational experiences.
    [Learn more :octicons-arrow-right-24:](../app-settings/generative-ai-tools/dynamic-conversations-features.md#rephrase-dialog-responses)

    ## Custom LLM Integration Support for Answer Generation 

    In addition to pre-built commercial LLMs, the Answer Generation now supports Custom LLMs. It allows platform users to craft personalized prompts to unlock the full potential of the Answer Generation and deliver uniquely tailored conversation experiences for their users. 
    [Learn more :octicons-arrow-right-24:](../app-settings/generative-ai-tools/dynamic-conversations-features.md#answer-generation)

    ## Kore.ai XO GPT Supports Vector Generation and Answer Generation (Beta)

    Kore.ai XO GPT now supports Answer Generation and Vector Generation. The XO GPT provides a range of models, including the fine-tuned Mistral-Answers Model for Answer Generation and E5, Labse, and MPNet embedding models for Vector Generation.

=== "Flows & Channels"

    ## Updated Default Start Flow

    All fields of the default Start Flows can now be edited except the associated channel. 
    [Learn more :octicons-arrow-right-24:](../flows/create-flows.md#the-start-flows)

    ## Support for Thread Handling for Virtual Assistants in Slack Channels

    The Platform now offers native support for threaded conversations in the Slack channel. Users can initiate a new thread from any message within a Slack channel or direct message group.

    Additionally, the platform provides extended functionality for developers. It can automatically create a new thread whenever a user @mentions the virtual assistant in a Slack channel. This behavior is configurable, giving developers control over this feature.  
    <img src="../images/slack-channel-customize.png" alt="Slack Channel Configuration" title="Slack Channel Configuration" style="border: 1px solid gray; zoom:70%;">

=== "Automation AI"

    ## NLP

    ### New Pre-trained MPNet Few-shot Model for Intent Detection

    The few-shot model now supports the Pre-trained MPNet embedding model for intent detection.
    The Pre-trained MPNet model is the advanced version of MPNet. It has been pre-trained and fine-tuned for superior accuracy and precision in intent identification compared to MPNet.

    Advantages of using the Pre-trained MPNet Model:

    * **Understanding Negations**: Pre-trained models get negations like "not" or "don't" easily, unlike MPNet, which might mix things up. So, when you say, "I want to transfer funds," and "I do not want to transfer funds," pre-trained models know the difference, making them better at understanding what you really mean.
    * **Clear Intent Differentiation**: Pre-trained models are great at telling apart similar things, which can be tricky for MPNet. For example, if you say, "I want to unblock a card," or "I want to block a card," pre-trained models can confidently tell the difference between wanting to block or unblock a card, unlike MPNet, which might get confused.
    * **Staying on Topic**: Pre-trained models are good at sticking to the topic at hand. So, if you talk about increasing your credit card limit, they won't start suggesting things unrelated to credit cards, unlike MPNet, which might go off track.
    * **Easier Training**: Pre-trained models need less training data compared to MPNet. This means the model can learn the same things with fewer examples, making the training process faster and simpler.

    ## Digital Forms

    * Enable the "Off-the-Record Information" Flag for Digital Forms: On a digital form, when the field’s “Off the record” flag is enabled, the field data is cleared at the end of the user session and not stored in databases or logs. 
    * Digital Forms Date Picker Supports Japanese: The digital form’s Date Picker now supports the Japanese language if the bot language is Japanese.

    ## Export/Import

    ### Enable App Import Functionality via Zip File Upload

    Platform users can now import apps by uploading a ZIP file containing the app's data. This eliminates the need to extract and manually import JSON files. The ZIP file import works for both new and existing apps.

    The corresponding APIs have also been updated to support this change: Import New VA and Import Existing VA.

=== "Search AI"

    ## Business Rules Support

    Business Rules Support allows users to define custom rules that modify the answers provided by the AI search system. By using contextual data specific to their needs, users can create tailored rules to refine the AI's responses. The system also suggests relevant context variables dynamically to assist in defining these rules.

=== "Contact Center AI"

    ## Agent Console

    ### Outbound Emails

    Outbound email functionality is a key feature within Contact Center AI designed to streamline communication between agents and customers through email channels. Agents can now send outbound emails from the agent console. The outbound emails are independent of the ongoing conversations. 
    [Learn more :octicons-arrow-right-24:](../console/interacting-with-customers/interacting-with-customers.md#outbound-email)

    A new permission for Outbound Email is added in the Agent & Supervisor Experience section with the following details:

    **Name**: Outbound Email

    **Subtext**: Make outbound emails if enabled for the account

    **Access Level**: Yes/No

    * App Owner – Yes
    * App Developer – Yes
    * Supervisor – Yes
    * App Tester – No
    * Agent – No
    * Custom Role – No (Default)

    ## Campaigns

    ### Schedule Voice Campaigns

    Scheduling allows precise control over when your messages will be delivered. You can now seamlessly plan campaigns to coincide with peak engagement times, ensuring maximum impact. 
    [Learn more :octicons-arrow-right-24:](../contactcenter/campaigns/campaign-management/voice-campaigns.md#schedule-voice-campaigns)

    ## Agents & Supervisors

    ### System Busy and System Away Status Enabled by Default

    System Away and System Busy statuses are enabled by default for new accounts. For existing accounts, contact Kore Support. 
    [Learn more :octicons-arrow-right-24:](../contactcenter/agent-and-supervisors/agent-management/agent-management.md#system-away-and-system-busy-status)

    ### Enable/Disable Resolution Disposition Sets

    The **Resolution** Disposition Set comes prebuilt. App Owners can now enable/disable and edit the resolution disposition set. 
    [Learn more :octicons-arrow-right-24:](../contactcenter/agent-and-supervisors/dispositions/manage-dispositions.md#disposition-sets)

    ## Analytics and Reporting

    ### Selected Hours Report

    The Selected Hours Report shows daily totals of every agent's productive hours. Productive hours are determined by built-in and custom statuses selected by users. [Learn more :octicons-arrow-right-24:](../analytics/contact-center/reports/selected-hours-report.md)

    ## API

    ### Agent Status Details API (v2) Update

    Two new fields, **startDate** and **endDate** are added to the request body. This change applies only to the version 2 (v2).

    * The “dateFilter.startDate” field accepts date-time in “YYYY-MM-DDTHH24:mm:SS” format. If the user specifies only the date for the startDate field, the time will be taken as “00:00:00”.
    * The “dateFilter.endDate” field accepts date-time in “YYYY-MM-DDTHH24:mm:SS” format. If the user specifies only the date for the endDate field, the time will be taken as “23:59:59”. 
    * If the user specifies both the old “dateFilter.date”, and either/both of the new “dateFilter.startDate” or the “dateFilter.endDate” fields, then an error message is displayed.

=== "Agent AI"

    ## Agent AI Widget Updates

    ### No Results Found and No Dialog Tasks Enabled Messages

    The Agent AI widget now shows the “No Search Result Found. Could you rephrase your question or ask something else?” message when an agent’s search query on the search bar doesn’t show any results.
    If no dialog tasks are configured for an account, the message “No dialog tasks enabled for library” appears in the Library/Search tab.

    ### Updates to the Override Mode of the AgentAI widget

    **Override Mode Off**
        
    * When the customer's input is expected, the field remains grayed out and displays the entity name followed by “waiting….”
    * The “Override” call-to-action (CTA) appears, and agents can click it to override the customer's utterance and manually populate the entity field.

    **Override Mode On**
        
    * The green “tick” mark that appeared after receiving the customer’s input is removed.
    * The Entity Display Name appears with a cursor to indicate editing mode.
    * Introduced the Cross and Check icons:
        * Cross: Click to go back to Override Mode off status.
        * Check: Click to save the input. You can also press the “Enter” button on the keyboard.
    * The “keyboard” icon is replaced with the “agent” icon to indicate the agent’s input.

    ## Agent AI Configuration with OpenAI GPT-3.5

    For enhanced Real-time Coaching and Playbooks performance, the AgentAI configuration is now upgraded from OpenAI GPT 3.0 to OpenAI GPT 3.5. OpenAI GPT 3.5 delivers more accurate and context-aware responses, thereby enhancing Real-time Coaching effectiveness and Playbooks quality.

    ## Feedback Mechanism for Answers
    In an effort to constantly improve the accuracy and helpfulness of answers displayed on the AgentAI widget, Kore has introduced a feedback mechanism for agents. Agents can now click the “thumbs up” or “thumbs down” icon displayed with every answer to indicate positive or negative feedback. This feedback data will help train Agent AI to provide more accurate answers.

    ## SearchAssist Configuration Page Updates

    The SearchAssist Configuration page inside Agent AI has been updated with the following changes:

    * Stream ID has been replaced with App ID.
    * A warning is displayed when a user enters incorrect values in the configuration fields -  “Could not establish connection with SearchAssist. Check all parameters and try again. Hint: Ensure that the domain URL does not contain "https://" and does not have a forward slash "/" at the end.”
    * As soon as a user lands on the configuration page, the following hint is displayed: “Ensure that the domain URL does not contain "https://" and does not have a forward slash "/" at the end.” 
    * If a user enters incorrect values in the configuration page, the following error message is displayed: “Error establishing connection.

    ## Conversation Transfer Experience (Third-Party Agent Desktop)

    The conversation transfer behavior of the Agent AI widget is now defined and categorized based on the transfer type and channels. It applies only to the third-party configurations where appropriate transfer events are transmitted.

    * Cold Transfer: It is defined as a conversation handover that happens between two agents and is applicable to all three channels - Voice, Chat, and Email. The conversation summary is generated again for the receiving agent, and this summary, along with the feedback options, gets added to the transferor agent’s Assist tab. The transferee agent can change the summary feedback for voice and email channels.

    The Cold Transfer has the following options to choose from:

    * Scroll up to the First Message: The chat history page scrolls up to the top of the page (first message).
    * Continue from the Last Message: The chat history page scrolls down to the bottom of the page (last message).
    * Configure Dialog Task: The user has to select one of the dialog tasks associated with a bot from the list. If a dialogue task of fetching a summary of agent 1 and the customer is selected, agent 2 will see it automatically when the conversation is transferred to him/her.

    ## Configure your own Auto Summarization Model (Third-Party Agent Desktop)

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

    ## Agent Coaching Updates

    In Agent Coaching > Utterance Trigger section, **Anytime in conversation** is now a default selection for the “in conversation” field.

    ## Dashboard Updates

    ### Enhanced Agent Feedback Functionality

    The AgentAI dashboard has been updated to include a detailed summary of Agent Feedback for dialog tasks, including "Not Helpful" feedback and additional comments. Users can now get a detailed view of the “Not Helpful” feedback with Responses, Additional Comments, and Counts.

    * Click the “eye-like” icon in Additional Comments to access all comments linked to their conversation IDs.
    * Click the Conversation ID link to go to the respective conversation.
    * Click the Counts number to access the Conversation ID, Date, Time, and Agent Name/ID.
    * Use the “search” button to find conversations by agent name, agent ID, or conversation ID.
    * If the agent's name is provided, the agent column appears for searching; otherwise, the conversation ID is available.

    ### Average Widget Usage (Third-Party Agent Desktop)

    The Dashboard has been updated to include the Average Widget Usage feature. This feature gives a graphical representation of the average amount of time agents spend on the AgentAI widget. Admins can customize the dates—yesterday, Last 7 Days, Last 15 Days, Last 30 Days, Custom Range—and view a graph that depicts the average widget usage time by agents during the selected time period. This is applicable only to third-party agent desktops.

<hr>