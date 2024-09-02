# Automation AI Updates

This document provides information on the feature updates and enhancements introduced in **Automation AI** of XO v11.x releases.

## v11.5.0 September 01, 2024

<u> Patch Release </u>

This update includes enhancements and bug fixes. Key enhancements included in this release are summarized below.

### Dialog Builder

#### Introducing Search AI Node

The platform has introduced a new Search AI node in the dialog builder. The node empowers platform users to integrate advanced search capabilities directly into dialog flows, improving the accuracy and relevance of AI responses in complex, multi-topic environments.

Key features:

* Customizable Search Configuration:
    * Query selection: Last user input or custom.
    * Search Filters: Define meta filters to scope searches.
* Flexible Results Configuration:
    * Return Qualified Chunks: Access chunks via context variable.
    * Generate Answer: Present standard response or store in context object.
* Enhanced Control:
    * Custom tags: Allow categorization and organization of search queries.
    * Timeout configuration: Set limits on search duration to prevent delays.
    * Error handling options: Define how the bot responds to search failures or timeouts.

Key benefits:

* Targeted searches: Allows scoping searches to specific topics or contexts.
* Improved accuracy: Reduces irrelevant responses and intent confusion.
* Customization: Enables defining meta filters and search rules.
* Seamless integration: Incorporates advanced search directly into conversation flows.  

[Learn more :octicons-arrow-right-24:](../../automation/use-cases/dialogs/node-types/working-with-the-searchai-node.md){:target="_blank"}

#### Real-time Collaboration in Dialog Builder 

This update transforms the Dialog Builder into a collaborative workspace, allowing multiple users to view, discuss, and seamlessly transition between editing roles. 

Key updates:

* Instant Cursor Chat: To initiate a cursor chat, use "Cmd+/" on Mac or "Ctrl+/" on Windows, or right-click on the dialog builder and select "Cursor Chat."
* Dialog Access Claim:
    * A new notification system is in place for users when the current editor exits the dialog. This allows other users to claim edit access seamlessly.

    * The first user to click on the edit access notification will immediately be granted editing rights, enabling them to continue working on the dialog in edit mode. 	
    <img src="../images/edit-access-granted.png" alt="collaboration-tool" title="collaboration-tool" style="border: 1px solid gray; zoom:100%;">	

* Collaborative viewing: The first user to open the app is automatically granted editing rights, while subsequent users join as viewers. This ensures clear control over who can make changes, reducing the potential for conflicts or errors.  

[Learn more :octicons-arrow-right-24:](../../automation/use-cases/dialogs/using-the-dialog-builder-tool.md#collaboration-tool){:target="_blank"}

#### Redesigned Property Panel for Dialog Builder Nodes

The redesigned property panel for Dialog Builder nodes was introduced in the previous release. It provides a fluid experience with better organization of the elements, easier discoverability of the options, and a new theme. The remaining second-level UI elements have also been updated to match the new theme.


### Dialogs

#### Manage Components Search Enhancement 

The improved search functionality in the Manage Components page allows platform users to find components more easily, regardless of whether they remember a component's technical name or display name.

Key updates:

* A new "Display Name" field is added for all nodes.
* Search now supports both Name and Display Name for all nodes.
* Dynamic filtering as user types.
* Case-insensitive search.
* Matches from the beginning of field names.
* Real-time results update.  

[Learn more :octicons-arrow-right-24:](../../automation/use-cases/dialogs/managing-dialogs.md#dialog-components){:target="_blank"}

### Digital Forms

#### Field Validations using Post Processor Script

The platform now supports custom field validations in Digital Forms using a post-processor script. It allows platform users to create complex, custom validation rules using JavaScript, improving data collection accuracy and user experience.

Key updates:

* Custom Validation:
    * JavaScript-based post-processor script.
    * Supports dynamic variables, multi-field validations, and regex.
* Design Time:
    * An expandable text box for script input.
    * Retry limit (20) with an error message on exceeding.
* Run Time:
    * Script processed on form submission.
    * Error handling with task failure events and debug logs.
* Validation Types:
    * Field-level: Highlights field with the error message below
    * Form-level: Displays error message above submit button

Backward Compatibility:

* Existing forms treat the post-processor as an empty script.

[Learn more :octicons-arrow-right-24:](../../automation/use-cases/digital-skills/digital-forms.md#component-properties){:target="_blank"}

<hr>

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
* Audit-Friendly: Improves audit trails with a clear indication of purged data. 

Known Issues

We are working to fix these issues in the next release:

* Task Execution Logs (script execution): Entity values in the Context Object are redacted and not purged.
* In Analytics > Conversation History: When a Transient Entity is printed in the message/confirmation node, the data is redacted but not purged.
* Service Node: The usage of the transient entity in the service node request is in plain text in the response.
* Debug Logs (Analytics): When a transient entity is printed as part of debugger statements, the data is in redacted form in the Debug Logs (Analytics) and is not purged.

[Learn more :octicons-arrow-right-24:](../../automation/use-cases/dialogs/node-types/working-with-the-entity-node.md#configure-the-node){:target="_blank"}


### Dialog Builder

#### Real-time Collaboration in Dialog Builder

The platform now enables real-time collaboration in the dialog builder. It allows team members to work together seamlessly, enhancing efficiency and productivity in dialog development.

Key updates:

* Live presence awareness: See who's currently working on the canvas. Cursor displays and avatar icons show active team members. Each member gets a unique color for easy identification.
* Color-coded cursor: This helps team members easily identify their actions. They can see each other's cursor locations in real-time.  
* Instant cursor chat: It enables instant communication through comments tied to cursor positions, allowing users to communicate ideas and feedback in real time.
* Simultaneous editing and viewing: It allows team members to work together seamlessly.

Key benefits:

* Improved team efficiency.
* Decreased risk of conflicting changes.
* Faster decision-making and problem-solving.
* Immediate feedback and idea sharing.
* Streamlined dialog development process.

<img src="../images/collaboration-tool.png" alt="collaboration-tool" title="collaboration-tool" style="border: 1px solid gray; zoom:100%;">

[Learn more :octicons-arrow-right-24:](../../automation/use-cases/dialogs/using-the-dialog-builder-tool.md#collaboration-tool){:target="_blank"}


#### Redesigned Property Panel for Dialog Builder Nodes

The redesigned property panel for Dialog Builder nodes provides a fluid experience with better organization of the elements, easier discoverability of the options, and a new theme.

Key updates:

* Clean, intuitive layout: Logical organization of properties and minimized clutter for easier navigation.
* Compact and responsive design: Streamlined interface for quicker access to properties. Adapts to various screen sizes and orientations.
* Consistent updating: Applied to all nodes for uniform experience. 

Key benefits:

* Improved property accessibility.
* Enhanced user efficiency in modifying element properties.
* Easier navigation and reduced cognitive load for users.
* Consistent experience across different devices.

### Digital Forms

#### Field Validations using Regex

The platform now supports Regex-based field validations in Digital Forms, enhancing data collection capabilities.

Key updates:

* Regex Option: Added alongside the existing predefined conditions in Field Validation.
* Flexible Validation: Fields are validated based on the provided regex patterns.
* Error Handling: Displays a custom error for a regex pattern mismatch.

Key benefits:

* Provides greater control over input formats.
* Enables precise data validation for complex scenarios.

[Learn more :octicons-arrow-right-24:](../../../automation/use-cases/digital-skills/digital-forms/#component-properties){:target="_blank"}


### Agent Transfer

#### Enhanced Agent Chat History Link

The platform has improved the functionality of chat history links provided to agents during conversation transfers. The access limit for these links has been increased from 5 to 10 times, allowing supervisors to better audit them. Additionally, the links now display the specific conversation that prompted the transfer, providing more relevant context to agents.

Backward compatibility:

* The existing agent transfer chat history links remain unchanged. These changes apply only to the links generated after this release.


[Learn more :octicons-arrow-right-24:](../../app-settings/integrations/agents/agent-transfer-integrations.md#user-bot-chat-transcript-link-to-live-agents){:target="_blank"}

<hr>

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

[Learn more :octicons-arrow-right-24:](../../automation/use-cases/dialogs/node-types/working-with-the-service-node.md#instance-properties){:target="_blank"}

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

[Learn more :octicons-arrow-right-24:](../../automation/intelligence/context-object.md){:target="_blank"}

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

* **Environment Variable**: Select any environment variable from a drop-down list or use a search bar to find a specific variable. [Learn more :octicons-arrow-right-24:](../../automation/use-cases/dialogs/node-types/voice-call-properties.md#dialog-node-settings){:target="_blank"}

### NLU

#### Ability to Import ML Utterances from One Language to Another (without Translation)

The platform now supports copying utterances between languages within the same app. This feature simplifies importing and synchronizing utterance data across multiple languages. [Learn more :octicons-arrow-right-24:](../../automation/natural-language/training/machine-learning-engine.md#how-to-export-or-import-ml-utterances){:target="_blank"}

The ability to automatically translate the copied utterances in the target language will be available soon. 

#### Improvements to Zip Code Entities

The  Zip Code entity has been enhanced to identify wild cards like “ “ and “-”. For example, “1 2 3 45” is identified as “12345”. [Learn more :octicons-arrow-right-24:](../../automation/use-cases/dialogs/entity-types.md#zip-code){:target="_blank"}

### Digital Forms 

#### Option to Clear Default Date During Design Time

Date fields on digital forms now have a clear ('x') icon, which allows users to easily remove the default date value.

### Agent Transfer 

#### Attachment Sharing Between Users and Live Agents

Users can now send files to agents during conversations. This improves communication and helps solve issues faster. This feature is currently available only for ServiceNow agent integration. [Learn more:octicons-arrow-right-24:](../../app-settings/integrations/agents/agent-transfer-integrations.md#attachment-sharing-with-live-agent){:target="_blank"}.

### Capability to Handle Agent Fallback Errors

The platform has introduced a new "Agent Transfer fallback response" to improve user experience during agent transfers. Instead of leaving the conversation idle, the platform can now inform users with an appropriate response that can be configured in the app definition. This feature allows for clearer communication and better handling of technical issues during agent transfers. [Learn more:octicons-arrow-right-24:](../../automation/intelligence/conversation-management/standard-responses.md#errors-warnings){:target="_blank"}.

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

This feature also helps address the current limitation of system messages available only in English. The "formMsgMeta" section of the form data contains the full list of system messages and errors, which can be modified using the Preprocessor. [Learn more :octicons-arrow-right-24:](../../../automation/use-cases/digital-skills/digital-forms/#configuration-setup-using-pre-processor-script){:target="_blank"}

### SDK Configuration

#### Customize Virtual Assistant’s Theme & Design

The platform now supports customizing the Virtual Assistant's look and feel with the new Theme and Design feature. This includes changes to welcome text, buttons, colors, chat windows, and sound themes to match their needs. A real-time preview pane shows changes instantly and makes it easy to make any adjustments before deploying the updated design. [Learn more :octicons-arrow-right-24:](./../../channels/add-web-mobile-client.md#virtual-assistant-theme--design){:target="_blank"}

#### Enhanced Panels & Widgets

The platform now supports the Panels and Widgets feature according to the selected Theme and Design of the Web SDK. [Learn more :octicons-arrow-right-24:](./../../automation/use-cases/digital-skills/digital-views.md){:target="_blank"}

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

The Comments feature now includes comment and thread actions, user mentions and notifications, timestamps, and filtering options. These enhancements make Comments a powerful tool for collaboration. [Learn more :octicons-arrow-right-24:](../../../automation/use-cases/dialogs/using-the-dialog-builder-tool/#notes-comments-and-bookmarks){:target="_blank"}

### Digital Forms

* Enable the "Off-the-Record Information" Flag for Digital Forms: On a digital form, when the field’s “Off the record” flag is enabled, the field data is cleared at the end of the user session and not stored in databases or logs. [Learn more :octicons-arrow-right-24:](/docs/xo/automation/use-cases/digital-skills/digital-forms/#component-properties){:target="_blank"}
* Digital Forms Date Picker Supports Japanese: The digital form’s Date Picker now supports the Japanese language if the bot language is Japanese.

### Export/Import

#### Enable App Import Functionality using Zip File Upload

Platform users can now import apps by uploading a ZIP file containing the app's data. This eliminates the need to extract and manually import JSON files. The ZIP file import works for both new and existing apps. [Learn more :octicons-arrow-right-24:](../../manage-assistant/bot-management.md#steps-in-importing-to-an-existing-assistant){:target="_blank"}

The corresponding APIs have also been updated to support this change: Import New VA and Import Existing VA.

