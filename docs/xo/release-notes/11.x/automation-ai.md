# Automation AI Updates

This document provides information on the feature updates and enhancements introduced in **Automation AI** of XO v11.x releases.

## v11.4.1 August 11, 2024

<u> Patch Release </u>

This update includes bug fixes and minor enhancements.

### Entity Node

#### Transient Entity Feature for Enhanced Data Privacy
The platform has introduced a "Transient Entity" feature for the Entity node. It allows platform users to ensure that sensitive user inputs do not persist after a conversation session ends.

Key updates:

* The new “Transient Entity” toggle in Entity Node > Component Settings. It’s visible when Sensitive Entity is enabled.
* It’s a component-level property, ensuring consistent application across all instances and flows using the Entity node.
* Applies to all channels, including IVR.
* Masks data during conversation based on existing Sensitive Entity settings.
* Removes specified data from conversation history once the session ends.
* Displays a placeholder "[data_purged]" in conversation history where data has been removed.

Key benefits:

* Enhanced Data Privacy: Sensitive information does not persist after conversations end.
* Regulatory Compliance: Helps businesses meet GDPR, CCPA, and other data protection regulations.
* Customizable: Works with existing Sensitive Entity settings for tailored data masking.
* Audit-Friendly: Improves audit trails with a clear indication of purged data.
* Industry-Specific Value: Particularly beneficial for the BFSI sector with strict data regulations.  

[Learn more :octicons-arrow-right-24:](../../automation/use-cases/dialogs/node-types/working-with-the-entity-node.md)


## v11.4 July 27, 2024

<u> Patch Release </u>

This update includes feature enhancements and bug fixes. Key features and enhancements included in this release are summarized below.

### Virtual Assistant

#### Timeout Settings Moved to Instance Properties for Service Node
The timeout settings for the Service Node have been moved from Component Properties to Instance Properties. 

Key benefits:

* Increased flexibility: Customize timeout settings for each dialog individually without affecting other tasks using the same Service Node.
* Improved error handling: The "Jump to Specific Node" option now works more reliably within the current dialog.

Backward compatibility:

* Existing service nodes retain their current timeout behavior while the timeout settings are moved to the Instance Properties. 


[Learn more :octicons-arrow-right-24:](../../automation/use-cases/dialogs/node-types/working-with-the-service-node.md#instance-properties)

#### Enhanced Debug Logs
The platform now groups debug logs by user utterance and bot response in a chat-like structure to improve clarity and efficiency in tracing conversation flow for platform users.

Key updates:

* Chat-like interface for intuitive log viewing.
* Detailed logs displayed on group expansion.
* Truncated display for lengthy responses with the "Show more" option.

Key benefits:

* Improved readability: Easily follow the conversation flow.
* Enhanced context: Quickly understand the sequence of events in a conversation.
* Efficient navigation: Collapsible groups and smooth scrolling for a better overview.
* Flexible viewing: Filter option for targeted log analysis.
* Optimized performance: Lazy loading for efficient log rendering.

### Rephrased User Query Details in the Context Object

The platform now includes the Rephrased User Query in the context object, making it available for downstream tasks. This enhancement improves intent detection, entity extraction, and search accuracy by providing enriched user input by incorporating contextual signals. Platform users can now leverage rephrased queries for dialog execution and API calls to Search AI.

Key updates:

* New “UserQuery” context object: 
    ``` json
    context.UserQuery : {

        originalUserQuery : <original user input>,
        rephrasedUserQuery : <rephrase user query>
        }
        
    ```

* New “Conversation History” setting: Indicates the conversation history length - the number of previous messages sent as context to LLM:
Generative AI > Dynamic Conversation > Rephrase User Query > Advanced Settings > Conversation History Length.

[Learn more :octicons-arrow-right-24:](../../automation/intelligence/context-object.md)

<hr>

## v11.3.1 July 13, 2024

<u> Patch Release </u>

This update includes bug fixes.

<hr>

## v11.3.0 June 29, 2024

<u>Patch Release</u>

Key features and enhancements included in this release are summarized below.

### Virtual Assistant

#### Dynamic Values for Timeout Duration in Voice Call Properties

This update enables dynamic timeout settings for voice calls via environment variables. Users can now manage timeouts across multiple components without manual adjustments. This approach enhances consistency, reduces errors, and simplifies voice call property management.

The users now have two options for setting timeout durations:

* **Preset**: Select a maximum wait time between 1 and 60 seconds to receive input.

* **Environment Variable**: Select any environment variable from a drop-down list or use a search bar to find a specific variable. [Learn more :octicons-arrow-right-24:](../../automation/use-cases/dialogs/node-types/voice-call-properties.md#dialog-node-settings)

### NLU

#### Ability to Import ML Utterances from One Language to Another (without Translation)

The platform now supports copying utterances between languages within the same app. This feature simplifies importing and synchronizing utterance data across multiple languages. [Learn more :octicons-arrow-right-24:](../../automation/natural-language/training/machine-learning-engine.md#how-to-export-or-import-ml-utterances)

The ability to automatically translate the copied utterances in the target language will be available soon. 

#### Improvements to Zip Code Entities

The  Zip Code entity has been enhanced to identify wild cards like “ “ and “-”. For example, “1 2 3 45” is identified as “12345”. [Learn more :octicons-arrow-right-24:](../../automation/use-cases/dialogs/entity-types.md#zip-code)

### Digital Forms 

#### Option to Clear Default Date During Design Time

Date fields on digital forms now have a clear ('x') icon, which allows users to easily remove the default date value.

### Agent Transfer 

#### Attachment Sharing Between Users and Live Agents

Users can now send files to agents during conversations. This improves communication and helps solve issues faster. This feature is currently available only for ServiceNow agent integration. [Learn more:octicons-arrow-right-24:](../../app-settings/integrations/agents/agent-transfer-integrations.md#attachment-sharing-with-live-agent).

### Capability to Handle Agent Fallback Errors

The platform has introduced a new "Agent Transfer fallback response" to improve user experience during agent transfers. Instead of leaving the conversation idle, the platform can now inform users with an appropriate response that can be configured in the app definition. This feature allows for clearer communication and better handling of technical issues during agent transfers. [Learn more:octicons-arrow-right-24:](../../automation/intelligence/conversation-management/standard-responses.md#errors-warnings).

<hr>

## v11.2.1 June 15, 2024

<u>Patch Release</u>

This update includes bug fixes.

<hr>

## v11.2 June 01, 2024

<u>Patch Release</u>

Key features and enhancements included in this release are summarized below.

### Digital Forms

#### Preprocessor Script Support for Digital Forms

The Digital Forms module now provides the ability to dynamically configure the form definition and behavior. The newly introduced Preprocessor configuration allows updating the form definition dynamically using JavaScript. The platform executes this preprocessor during the runtime and delivers the form definition to the channel. The preprocessor can use the environment, content, and context variables. 

The following are some of the key use cases:

1. Dynamically changing the form field titles, descriptions, etc. 

2. Dynamically populating the values of fields, for e.g., options in a  drop-down component

3. Changing the language of the messages to support multilingual conversations 
  
The koreUtil library has been extended with the "getFormDefinition" function to retrieve and modify the form definition.

This feature also helps address the current limitation of system messages available only in English. The "formMsgMeta" section of the form data contains the full list of system messages and errors, which can be modified using the Preprocessor. [Learn more :octicons-arrow-right-24:](../../../automation/use-cases/digital-skills/digital-forms/#configuration-setup-using-pre-processor-script)

### SDK Configuration

#### Customize Virtual Assistant’s Theme & Design

The platform now supports customizing the Virtual Assistant's look and feel with the new Theme and Design feature. This includes changes to welcome text, buttons, colors, chat windows, and sound themes to match their needs. A real-time preview pane shows changes instantly and makes it easy to make any adjustments before deploying the updated design. [Learn more :octicons-arrow-right-24:](./../../channels/add-web-mobile-client.md#virtual-assistant-theme--design)

#### Enhanced Panels & Widgets

The platform now supports the Panels and Widgets feature according to the selected Theme and Design of the Web SDK. [Learn more :octicons-arrow-right-24:](./../../automation/use-cases/digital-skills/digital-views.md)

<hr>

## v11.1.1 May 11, 2024

<u>Patch Release</u>

This update includes bug fixes.

<hr>

## v11.1.0 April 27, 2024

<u>Minor Release</u>

Key features and enhancements included in this release are summarized below.

### Dialog Builder

#### Enhancement to the Comments Functionality

The Comments feature now includes comment and thread actions, user mentions and notifications, timestamps, and filtering options. These enhancements make Comments a powerful tool for collaboration. [Learn more :octicons-arrow-right-24:](../../../automation/use-cases/dialogs/using-the-dialog-builder-tool/#notes-comments-and-bookmarks)

### Digital Forms

* Enable the "Off-the-Record Information" Flag for Digital Forms: On a digital form, when the field’s “Off the record” flag is enabled, the field data is cleared at the end of the user session and not stored in databases or logs. [Learn more :octicons-arrow-right-24:](../../automation/use-cases/digital-skills/configure-digital-forms.md#form-editor) 
* Digital Forms Date Picker Supports Japanese: The digital form’s Date Picker now supports the Japanese language if the bot language is Japanese.

### Export/Import

#### Enable App Import Functionality using Zip File Upload

Platform users can now import apps by uploading a ZIP file containing the app's data. This eliminates the need to extract and manually import JSON files. The ZIP file import works for both new and existing apps. [Learn more :octicons-arrow-right-24:](../../manage-assistant/bot-management.md#steps-in-importing-to-an-existing-assistant)

The corresponding APIs have also been updated to support this change: Import New VA and Import Existing VA.

