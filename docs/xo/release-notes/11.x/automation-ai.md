# Automation AI Updates

This document provides information on the feature updates and enhancements introduced in **Automation AI** of XO v11.x releases.

## v11.11.1 March 15, 2025

<u>Patch Release</u>

This update include only bug fixes.

<hr>

## v11.11.0 March 04, 2025

<u> Minor Release </u>

### Build Agentic Experiences

#### Agent Node Tool Calling Enhanced with Jump-to-Node Transition Capability

The Agent node now features a "Jump-to-Node" transition option, enabling the creation of sophisticated dialog workflows. This enhancement allows for dynamic branching based on tool execution results, significantly streamlining the design of complex conversation flows.

Key Updates:

* Added "Jump-to-Node" transition option for tools within the Agent node.
* Enables seamless navigation to specified target nodes following tool execution.
* Maintains complete session-level conversation history across all transitions.
* Supports transitions to both orphan nodes and sub-dialogs.
* Ensures full backward compatibility with existing tool configurations.

[Learn more :octicons-arrow-right-24:](../../automation/use-cases/dialogs/node-types/agent-node-configuration.md#tools){:target="_blank"}

### Agent Transfer

#### Service Now Agent Transfer Status

The XO platform now records the status of the agent transfer for ServiceNow in both Debug Logs and Analytics. This information helps to analyze whether the agent transfer is successful or not. Thus, it facilitates improved tracking and troubleshooting of transfer-related issues.

[Learn more:octicons-arrow-right-24:](../../app-settings/integrations/agents/servicenow/configuring-the-servicenow-agent-utah-and-vancouver.md#agent-transfer-status){:target="_blank"}

<hr>

## v11.10.0 February 12, 2025

<u> Minor Release </u>

This update include enhancement and bug fixes. The key enhancement included in this release is summarized below.

### Analytics


#### Analytics for DialogGPT

DialogGPT's comprehensive analytics provide detailed tracking of user interactions, intent detection, and conversation outcomes, ensuring data-driven insights for continuous improvement. By leveraging analytics, the platform users can accurately evaluate DialogGPT's effectiveness and enhance conversational experiences.
[Learn more :octicons-arrow-right-24:](../../analytics/automation/nlp-insights.md#dialoggpt-nlp-insights-analysis)


### Export/Import


#### Redesigned Export Interface for Improved User Experience

The Import / Export interface has been redesigned to mirror the Publish layout. A new top-level "Flows" section and reorganized "Automation Tasks" improve component organization. The update maintains backward compatibility and provides clearer section names and descriptions for an intuitive, cohesive experience.
[Learn more :octicons-arrow-right-24:](../../deploy/bot-management.md)


<hr>

## v11.9.1 January 25, 2025

<u>Patch Release</u>

This update include enhancement and bug fixes. The key enhancement included in this release is summarized below.

### Agent Node

#### Pre and Post Processor Support at the Node Level for Custom Prompts

Agent Node now supports configuring pre and post-processor scripts at the node level for custom prompts, in addition to the existing prompt-level script support. This enables platform users to reuse the same custom prompt across multiple nodes while customizing the processing logic, input variables, and output keys for each specific use case.

Key changes

* Pre and post-processor scripts can now be configured at both node and prompt levels for custom prompts.
* A warning is shown to alert users about potential added latency when configuring scripts at both the node and prompt levels.
* Scripts execution order in a defined flow: Node Pre-processor → Prompt Pre-processor → Prompt Execution → Prompt Post-processor → Node Post-processor.
* Support for app functions in addition to content, context, and environment variables in the node level pre and post-processor scripts.

[Learn more :octicons-arrow-right-24:](../../automation/use-cases/dialogs/node-types/agent-node-configuration.md#custom-prompt-for-agent-node)


<hr>

## v11.9.0 January 05, 2025

<u> Minor Release </u>

This update include enhancement and bug fixes. The key enhancement included in this release is summarized below.

### Build Agentic Experiences

This release introduces new features that simplify building agentic experiences. Create more natural and personalized virtual assistant conversations while streamlining your development workflow.

#### Function or Tool Calling Support in Agent Node

Tool Calling enables Agent Node (previously GenAI Node) to interact with your business applications. You can define accessible tools, connect multiple actions, and incorporate external data into the conversation context. The recently launched DialogGPT manages conversation orchestration, while Agent Node with Tool Calling creates more natural interactions. Combine these features to deliver seamless agentic experiences for your customers and employees. 

Key updates

* Tool calling integration with business applications and external data.
* New tools repository for managing custom and system integrations.
* Direct connection between tools and actions (scripts, service Search AI, Webhooks).
* Prompts include tool definitions and context for decision-making.

Key benefits

* More dynamic, responsive virtual assistants.
* Integration of real-time data and complex query handling.
* Flexibility with custom/system integrations and prompts.
* Seamless orchestration between user input, functions, and responses.  

[Learn more :octicons-arrow-right-24:](../../automation/use-cases/dialogs/node-types/genai-node-v2.md#tools)


#### GenAI Node and Prompt Node Renaming
The GenAI Node has been renamed the Agent Node to reflect its agentic experiences and tool-calling capabilities, while the GenAI Prompt Node has been renamed the Prompt Node.

### DialogGPT
#### DialogGPT App Lifecycle Management
DialogGPT has been integrated into the app lifecycle to centralize configuration management, ensuring consistency and scalability.

Key updates

* Integrated with Generative AI & LLM Settings for centralized management.
* DialogGPT events added to Integrations & API Extensions.
* Full and partial app export/import support.
* Version control and comparison features.

[Learn more :octicons-arrow-right-24:](../../deploy/bot-management.md)

#### OpenAI GPT-4o mini Support for DialogGPT
The Platform now supports OpenAI GPT-4o mini models in DialogGPT for efficient conversation management. These models are compact and optimized variants of the GPT-4 family, designed to deliver high efficiency in resource-constrained environments while maintaining advanced capabilities.

[Learn more :octicons-arrow-right-24:](../../generative-ai-tools/dgpt-conversation-orchestration.md)


### Dialog Builder 

#### Enhanced Sticky Notes for Intuitive Note-Taking Experience 
The redesigned notes feature works like familiar sticky notes, making it easier and more intuitive to capture and organize your thoughts.

Key updates

* Streamlined editing with autosave functionality.
* Resizable notes for better organization.
* Customizable background colors.
* Default yellow styling with instant edit mode.

[Learn more :octicons-arrow-right-24:](../../automation/use-cases/dialogs/using-the-dialog-builder-tool.md#bookmarks-and-notes)


#### Upgraded Bookmarks for Better Visual Organization 
The enhanced bookmarks feature improves organization and collaboration capabilities.

Key updates

* Customizable background colors.
* Improved loading experience with visual feedback.

[Learn more :octicons-arrow-right-24:](../../automation/use-cases/dialogs/using-the-dialog-builder-tool.md#bookmarks-and-notes)


<hr>

## v11.8.1 December 19, 2024

<u>Patch Release</u>

This update includes bug fixes.

<hr>

## v11.8.0 December 11, 2024

<u> Minor Release </u>

This update include enhancement and bug fixes. The key enhancement included in this release is summarized below.

### DialogGPT, an Agentic Orchestration for Intelligent Conversations

DialogGPT is an intelligent, agentic orchestration engine that powers natural conversations at scale, providing autonomous orchestration across multiple topics through Dialog Tasks. This innovative solution perfectly balances defined business rules and the conversational fluidity your customers expect from virtual assistants. Using a powerful combination of embeddings and generative models, it contextually understands user input and identifies optimal paths for request fulfillment. Setup is quick and effortless, as DialogGPT eliminates the need for training data by intelligently utilizing task names and descriptions for recognition. The DialogGPT is in beta and is supported only for English conversations.    

Key Capabilities

* Conversation Orchestration: DialogGPT intelligently manages conversations, understands user intent, handles requests, seeks clarification when needed, and automatically deals with common conversational flows like pausing, repeating information, or restarting.
* Smart Understanding: By considering the full context - current conversation, prior interactions, and user details - the system better understands user needs, reducing errors. It simplifies intent training and management by consolidating all intent types within a unified vector index.
* Intelligent Dialog Navigation: DialogGPT can start by understanding a request and then asking targeted follow-up questions to determine the user's needs, guiding the conversation intelligently.
* Flexible Responses: The system generates natural, contextual responses dynamically based on conversation history, user information, and business rules, ensuring appropriate answers for each situation.
* Cross-Assistant Communication: DialogGPT seamlessly routes conversations to the correct assistant based on the user's stated needs for organizations with multiple virtual assistants.
* Model Flexibility: Organizations can use their preferred AI models, whether commercial, custom, or Kore.ai's fine-tuned specialized models, for enhanced performance. They also have full control over the prompts' design to interact with AI models.
* Performance Monitoring: Comprehensive testing tools and analytics are provided to track the system's performance in understanding users, successfully handling requests, and identifying areas for improvement.

Key Benefits

* Improved Customer Experience: Customers enjoy more natural conversations with virtual assistants who understand the context and can simultaneously handle multiple requests.
* Greater Accuracy: The system better understands what customers request, even when requests are complex or industry-specific. Combining broad understanding with detailed knowledge of your business can extract the right information and make smarter decisions about how to help.
* Lower Costs: It reduces manual effort in building and maintaining virtual agents; it automatically resolves more requests, minimizing transfers to human representatives and lowering operational expenses.

**DialogGPT Rollout Plan**

The implementation of DialogGPT is planned in three phases:

* Phase 1 (included in this release): Focuses on core capabilities like the main DialogGPT flow, RAG pipeline, conversation orchestrator, and handling of common conversation intents.
* Phase 2 (future release): Introduces advanced features such as Universal Bot support, granular intent identification, custom entity extraction, and new XO GPT models.
* Phase 3 (future release): Includes extended capabilities like multilingual support and implementation of guardrails.  

[Learn more :octicons-arrow-right-24:](../../generative-ai-tools/dialog-gpt.md)

### Dialog Builder  

#### Property Panel Enhancements for List of Items Configuration

The property panel has been updated with a redesigned interface for configuring "List of Items" properties, including both enumerated and lookup types. 

Key Improvements

* Intuitive Layout: The new design organizes properties logically, making it easier to locate and modify settings. The streamlined interface reduces clutter and enhances usability.
* Enhanced Sliders: The configuring "List of Items" sliders have been revamped to provide a more user-friendly experience. Users can now adjust settings more efficiently within the improved interface.  

[Learn more :octicons-arrow-right-24:](../../automation/use-cases/dialogs/entity-types.md#list-of-items-enumerated)

#### Rich Text Formatting for Prompts

A new rich text editor has been added to all prompt areas in the platform, including User Prompts, Bot Responses, and Error Prompts. The editor allows platform users to easily format text using a convenient markup toolbar, enhancing readability and improving the user experience for content creators and end users. Double-click or select any text in the detailed prompt editor to invoke the toolbar.

Key Capabilities

* Text Styling: Bold and italic formatting options
* Headings: Six levels of headings (H1 to H6) for clear content structure
* Lists: Numbered and bulleted lists with referencing controls
* Media: Insertion of links and images (with URL and alt text)

Formatted text is rendered properly across all supported channels, and the feature maintains backward compatibility with existing prompts.

[Learn more :octicons-arrow-right-24:](../../automation/use-cases/dialogs/prompt-editor.md#configure-the-user-prompt)

### Knowledge AI 

#### Get FAQs API Enhancement

The **Get FAQs API** has been enhanced to support two sets of parameters, providing more flexible retrieval options while ensuring backward compatibility:

* Existing Parameters (backward compatible): ktId and parentId (node ID)
* New Parameters (alternative option): botId, language, mode (configured/published), and nodeName.  

[Learn more :octicons-arrow-right-24:](../../apis/automation/get-faqs-from-knowledge-task-V2.md)

<hr>

## v11.7.1 November 18, 2024

<u> Patch Release </u>

This update includes bug fixes.

<hr>

## v11.7.0 November 03, 2024

<u> Minor Release </u>

This update include enhancement and bug fixes. The key enhancement included in this release is summarized below.

### Conversation Testing

#### Support for Preprocessor Script

The new Preprocessor Script for Conversation Testing lets platform users control preconditions during conversation testing. Users can run custom scripts before the recording, validation, and execution phases.

Key features:

* Script Editor: Create, edit, and manage preprocessor scripts with built-in syntax highlighting and error checking.
* Testing Controls: Execute scripts before initiating test recording and validation, with the ability to modify and re-validate on the fly.
* Data Management: Control session context by modifying data, simulating external systems, and tracking changes through secure execution.  
[Learn more :octicons-arrow-right-24:](../../automation/testing/regression-testing/conversation-testing/create-a-test-suite.md#pre-processor-script)

### Dialog Builder

#### Auto Save Option in JavaScript Editor

The JavaScript editor in Dialog Builder now allows users to enable auto save to automatically save changes while writing the code. Users can enable auto-save with a single click, and the changes will automatically be saved after one second of inactivity. They can view the last saved timestamp and use this feature across all Dialog Builder script editors.
[Learn more :octicons-arrow-right-24:](../../automation/use-cases/dialogs/prompt-editor.md#javascript-prompts-or-responses)
<hr>

## v11.6.1 October 21, 2024

<u> Patch Release </u>

This update include enhancement and bug fixes. The key enhancement included in this release is summarized below.

### Knowledge AI
#### FAQ Conditional Responses

The FAQ feature has been enhanced to provide more contextually relevant answers. Platform users can now define conditions for each FAQ response, allowing for dynamic answer selection based on specific criteria. 

Key updates:

* Context-based answer selection: Define rules to determine which response is delivered based on the query's context.
* Integration with existing methods: The new rule-based system works seamlessly with the current channel-based and random  selection methods.

Key benefits:

* Improved accuracy and relevance of FAQ responses.
* Enhanced personalization of user interactions.
* Greater flexibility in managing complex FAQ scenarios.
* Better user experience through context-aware answers.

Backward compatibility:

* The enhancement is fully compatible with existing FAQs and answers to ensure a smooth user transition.

[Learn more :octicons-arrow-right-24:](../../automation/knowledge-ai/manage-faqs.md#faq-conditional-responses){:target="_blank"}

<hr>

## v11.6.0 September 28, 2024

<u> Minor Release </u>

This update includes enhancements and bug fixes.

### Dialog Builder

#### **PII Redaction in API Responses (Service Node)**


The platform now supports the redaction of sensitive/PII information in responses from external services. Users can select specific parts of API responses for PII scanning and apply suitable redaction patterns.  

Key updates:

* A new "PII Redaction for API responses" setting in Service Node Component Properties.
* Customizable redaction for specific keys in API responses.
* Multiple redaction methods, including original value, de-identification, random value, static text, or masking.
* Supports various API response structures, including key-value pairs, arrays, and nested objects.
* Enhanced logging with options for original or redacted data display.

Key benefits:

* Improved compliance with data privacy regulations
* Reduced risk of accidental sensitive data exposure
* Flexible configuration to balance usability and privacy.

[Learn more :octicons-arrow-right-24:](../../automation/use-cases/dialogs/node-types/working-with-the-service-node.md#component-properties)

<hr>

## v11.5.1 September 14, 2024

<u> Patch Release </u>

This update include minor enhancement and bug fixes. The key enhancement included in this release is summarized below.

### Dialog Builder
#### Error Handling for Service Nodes

Service Node’s error handling capability is enhanced to provide greater control over non-timeout error scenarios. It allows platform users to customize dialog execution when API calls fail for reasons other than timeouts.

Key updates:

* A new option to continue dialog execution after a service call failure.
* Ability to transition to a specific node upon encountering an error.
* Detailed error information is available in the service node response object.

[Learn more :octicons-arrow-right-24:](../../automation/use-cases/dialogs/node-types/working-with-the-service-node.md#instance-properties){:target="_blank"}

<hr>

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

