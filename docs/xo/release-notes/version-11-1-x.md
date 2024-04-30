---
hide:
  - toc
  - feedback
---

# 11.1.x Release Notes

This document provides information on the various releases and the corresponding feature updates and enhancements introduced in version 11.1.x of the Kore.ai Experience Optimization Platform.

## v11.1.0 April 27, 2024

<u>Minor Release</u>

Key updates to products and features are summarized below. Click the corresponding tab to see the details.

=== "LLM and Generative AI"
    
    ## Custom LLM Integration Support for Rephrase Dialog Responses  

    Rephrase Dialog Responses now supports Custom LLMs in addition to commercial LLMs. This allows platform users to use the rephrasing feature with their own custom-trained language models and create customized prompts tailored to their specific use cases, models, and linguistic contexts, providing greater flexibility and control over the rephrasing process and conversational experiences.  
    [Learn more :octicons-arrow-right-24:](../app-settings/generative-ai-tools/dynamic-conversations-features.md#rephrase-dialog-responses)

    ## Custom LLM Integration Support for Answer Generation 

    In addition to pre-built commercial LLMs, the Answer Generation now supports Custom LLMs. It allows platform users to craft personalized prompts to unlock the full potential of the Answer Generation and deliver uniquely tailored conversation experiences for their users.  
    [Learn more :octicons-arrow-right-24:](../app-settings/generative-ai-tools/dynamic-conversations-features.md#answer-generation)

    ## Kore.ai XO GPT Supports Vector Generation and Answer Generation (Beta)

    Kore.ai XO GPT now supports Answer Generation and Vector Generation. The XO GPT provides a range of models, including the fine-tuned Mistral-Answers Model for Answer Generation and E5, Labse, and MPNet embedding models for Vector Generation.  
    [Learn more :octicons-arrow-right-24:](../app-settings/generative-ai-tools/xo-gpt-module.md)

=== "Flows & Channels"

    ## Updated Default Start Flow

    All fields of the default Start Flows can now be edited except the associated channel.  
    [Learn more :octicons-arrow-right-24:](../flows/create-flows.md#the-start-flows)

    ## Support for Thread Handling for Virtual Assistants in Slack Channels

    The Platform now offers native support for threaded conversations in the Slack channel. Users can initiate a new thread from any message within a Slack channel or direct message group.

    Additionally, the platform provides extended functionality for developers. It can automatically create a new thread whenever a user \@mentions the virtual assistant in a Slack channel. This behavior is configurable, giving developers control over this feature.  
    <img src="../images/slack-channel-customize.png" alt="Slack Channel Configuration" title="Slack Channel Configuration" style="border: 1px solid gray; zoom:70%;">

    [Learn more :octicons-arrow-right-24:](../channels/add-slack-channel-new.md)

=== "Automation AI"

    ## Digital Forms

    * Enable the "Off-the-Record Information" Flag for Digital Forms: On a digital form, when the field’s “Off the record” flag is enabled, the field data is cleared at the end of the user session and not stored in databases or logs.  
    [Learn more :octicons-arrow-right-24:](../automation/use-cases/digital-skills/configure-digital-forms.md#form-editor) 
    * Digital Forms Date Picker Supports Japanese: The digital form’s Date Picker now supports the Japanese language if the bot language is Japanese.

    ## Export/Import

    ### Enable App Import Functionality via Zip File Upload

    Platform users can now import apps by uploading a ZIP file containing the app's data. This eliminates the need to extract and manually import JSON files. The ZIP file import works for both new and existing apps.  
     [Learn more :octicons-arrow-right-24:](../manage-assistant/bot-management.md#steps-in-importing-to-an-existing-assistant)

    The corresponding APIs have also been updated to support this change: Import New VA and Import Existing VA.

=== "Search AI"

    This update includes only bug fixes.
    

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
    [Learn more](../user-management/role-management.md#permissions)

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

    The Selected Hours Report shows daily totals of every agent's productive hours. Productive hours are determined by built-in and custom statuses selected by users.  
    [Learn more :octicons-arrow-right-24:](../analytics/contact-center/reports/selected-hours-report.md)

=== "Agent AI"

    ## Agent AI Widget Updates

    ### No Results Found and No Dialog Tasks Enabled Messages

    The Agent AI widget now shows the “No Search Result Found. Could you rephrase your question or ask something else?” message when an agent’s search query on the search bar doesn’t show any results.
    If no dialog tasks are configured for an account, the message “No dialog tasks enabled for library” appears in the Library/Search tab.

    ### Updates to the Override Mode of the Agent AI widget

    **Override Mode Off**
        
    * When the customer's input is expected, the field remains grayed out and displays the entity name followed by “waiting….”
    * The “Override” call-to-action (CTA) appears, and agents can click it to override the customer's utterance and manually populate the entity field.

    **Override Mode On**
        
    * The green “tick” mark that appeared after receiving the customer’s input is removed.
    * The Entity Display Name appears with a cursor to indicate editing mode.
    * Introduced the Cross and Check icons.
    * The “keyboard” icon is replaced with the “agent” icon to indicate agent input.

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

    Agent AI has introduced the Conversation Transfer feature to customize the transfer functionality of the Agent AI widget. This feature is applicable only to the third-party configurations where appropriate transfer events are transmitted. The Cold Transfer type applies to all three channels - Chat, Voice, and Email and has the following options to choose from:
    * Scroll up to the First Message
    * Continue from the Last Message
    * Configure Dialog Task

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

    ## Updated Summarization Feature

    Agent AI has improved the Summarization feature of its widget. The latest version comes up with improved summary accuracy and advanced handling of various scenarios in conversations between agents and users. Currently, this update is available only for the US PROD environment and supports English. It is not yet available for DE, JP, EU, AU, and IND environments.  

    **Key Highlights**
    
    * Improved Summary Accuracy: The summary accuracy has been significantly improved through the implementation of a new model, and Agent AI is fine tuning it for specific use cases.
    * Summary for Small Conversations: Agent AI has effectively addressed issues related to agent transfer scenarios between bots and users, ensuring seamless communication and comprehension.
    * Handling Incomplete Summaries: The new model handles incomplete summaries more effectively, providing more comprehensive and useful insights even when the conversation is not fully concluded.
    * Handling Longer Calls: The new model handles longer calls extending up to 20 minutes. The previous model would generate incomplete summaries for such extended conversations.

    ## Agent Coaching Updates

    In Agent Coaching > Utterance Trigger section, **Anytime in conversation** is now a default selection for the “in conversation” field.

    ## Dashboard Updates

    ### Enhanced Agent Feedback Functionality

    The AgentAI dashboard has been updated to include a detailed summary of Agent Feedback for dialog tasks, including "Not Helpful" feedback and additional comments. Users can now get a detailed view of the “Not Helpful” feedback with Responses, Additional Comments, and Counts.

    ### Average Widget Usage (Third-Party Agent Desktop)

    The Dashboard has been updated to include the Average Widget Usage feature. This feature gives a graphical representation of the average amount of time agents spend on the AgentAI widget.

<hr>