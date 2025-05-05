# Release Notes

This document provides information on the feature updates and enhancements introduced in the recent Kore.ai Agent Platform releases.

## v1.0.4 April 26, 2025

<u> Minor Release </u>

This update includes new features, enhancements, and bug fixes summarized below.

<font size="4">Agentic Apps</font>

**Knowledge Integration with Agent Platform**

The Agent Platform now integrates with AI for Service (XO) search capabilities, offering a RAG-based knowledge solution that enables users to leverage knowledge from multiple sources through agents easily. With this integration, users can easily link one or more knowledge bases to an agent and access them as Knowledge Tools. The agent can then leverage these tools to provide accurate and relevant responses to user queries, enhancing overall performance.

Key features

* Users can create a new Search AI app or link it to an existing app in the same workspace, streamlining knowledge management.
* Users can link one or more knowledge bases to the Agentic app, enabling access to various sources. 
* Agents can access the most up-to-date and relevant knowledge to deliver more accurate responses to user queries.

[Learn more :octicons-arrow-right-24:](./../ai-agents/knowledge/about-knowledge.md)


**Export and Import Agentic Apps, Agents, and Tools**

Agent Platform now supports both importing and exporting of application configurations, agent definitions, and tool setups. This feature simplifies the process of reusing, sharing, and backing up components across different workspaces and environments. Users can export components in a standardized format and later import them to quickly replicate configurations, reducing manual effort and ensuring consistency across different deployment environments. 

Key features

* Standardized export format ensures consistency.
* A dependency-based import process where the platform follows an order of importing Tools, followed by Agents, and then the App config. This ensures that all components are successfully imported. If any step fails, the process is fully rolled back to maintain system integrity.
* Easy export and import streamlines deployment and accelerates setup across environments, saving time and minimizing errors.

[Learn more :octicons-arrow-right-24:](./../ai-agents/agentic-apps/import.md)

**Add Tools from Library, Marketplace, or File**

Users can now easily enhance the applications by importing tools from three sources: the enterprise library, the marketplace, or by importing from a file. This flexible tool's addition capability simplifies application development, encourages the reuse of existing resources, and accelerates the process. It also promotes consistency by allowing teams to standardize tool usage across applications and environments. 

[Learn more :octicons-arrow-right-24:](./../ai-agents/create-agent.md)

**Support for Attaching Files During Interaction**

Agentic Apps now enable real-time document sharing during user interactions. Users can upload documents directly through the chat interface, allowing AI Agents to analyze and extract relevant information. This enables personalized and contextual responses without requiring users to provide the content directly. 

Key features

* Intuitive Interface.
* Support for PDF document formats.
* Multiple file upload capability.
* Progress indicators for uploading and processing documents.

[Learn more :octicons-arrow-right-24:](./../ai-agents/agentic-apps/attachment-support.md)


**Support for System Events**

The Agent Platform now supports handling key system events, including welcome events, agent handoff, and end-of-conversation events. This enhancement enables the platform to effectively manage critical stages of a conversation, including initiation, closure, error handling, and scenarios that require human intervention. By offering more control over conversation flow, this feature significantly improves the user experience. 

Key features 

* The release supports three system events: welcome events, agent handoffs, and end-of-conversation events. Users can enable or disable these events as needed, offering greater flexibility. 
* System events are applied consistently across all agents within an agent-based app, ensuring uniform behavior throughout the platform. 
* Users can customize the data passed during agent handoff or end-of-conversation events. This customization enables apps to modify behaviors based on specific scenarios.

[Learn more :octicons-arrow-right-24:](./../ai-agents/agentic-apps/settings/events.md)

**Session Meta Memory Store for Contextual Prompts**

The Platform has introduced enhanced memory capabilities, enabling developers to access session-level information within the application and use it directly in the prompts for agents and supervisors.  With this feature, developers can design more contextual, intelligent, and personalized conversational experiences by dynamically using session-specific data stored in the default system memory store, *sessionMeta*. This data is retained for the duration of a session and is automatically cleared once the session ends. 

Key benefits

* Reduced repetitive inputs from users by using key details from the memory stores.
* Seamless personalization across interactions. 


<font size="4">Feature Enhancements</font>

Optimized the performance of prompt update and GET endpoints, resulting in significantly faster response times and enhanced overall system responsiveness.

<hr>

## v1.0.3 April 18, 2025

<u> Minor Release </u>

This update includes new features, enhancements, and bug fixes summarized below.


<font size="4">Tools</font>

**OAuth2 Support in API Node**

Users can now select an existing authorization profile from the Auth tab when configuring an API node, allowing a secure connection to third-party services using the saved authentication settings. By default, ‘None’ is selected, allowing users to proceed without choosing a profile for authentication.

**Support for New Integration Node**

Agent Platform introduces the Integration node in Tool Flow to help users connect to supported third-party services and perform specific actions for different use cases. It supports form-based and JSON configuration for easy, no-code integration into automation flows.


<font size="4">Models</font>

**Real-Time Model Support**

Support for real-time models (gpt-4o-realtime-preview, gpt-4o-mini-realtime-preview) via API key integration has been added. These models can now be added through the Models module and used within the Agentic Apps section. Support for other modules will be added in future updates.



<font size="4">Evaluation</font>

**New Table Features in Evaluation Studio**

A new table option has been added to make working with data easier in Evaluation Studio. Users can now filter and sort columns, adjust row heights, and hide or show columns to create a personalized view.


<font size="4">Settings</font>

**Custom Connection Integration with OAuth 2.0**

Users can now select preconfigured custom OAuth 2.0 auth profiles to preauthorize a connection. These profiles automatically populate the required parameters, such as Scopes, Refresh URLs, and more. Once a custom auth profile is selected, no further authentication is needed for the external integration.

**Centralized Integrations Management**

A dedicated Integrations section has been added to manage all external service integrations on the Agent Platform. Users can now go to Settings → Integrations to:

* View all supported integrations in one place.
* Search and filter integrations by category and authorization type.
* View key details, including supported authentication mechanisms, descriptions, and connection names.
* Easily switch between grid and list views.
* Add and set up a new connection, including the pre-authorization credentials to access the service securely.
* Test a configured connection and fix any errors.
* Edit, delete, enable, or disable a connection.



<font size="4">Feature Enhancements</font>

**Structured Output Support Across Modules**

The platform has added support for response JSON schemas across the modules, enhancing how structured outputs are handled in settings, models, tools, prompts, and agentic apps. The update ensures full backward compatibility, allowing existing users to add schemas to their current setups without any disruption.

* Trace & Monitor Responses: Response JSON schemas are now captured in model traces and monitoring, with token usage tracked for better insights.
* Save & Reuse with Templates: You can save prompts with attached schemas as templates and reuse them directly in AI nodes—no need to redefine.
* Seamless Sharing & Import/Export: Shared prompts retain their schemas, and exports now include schema details. Imports restore schema data automatically.
* Customize with Flexibility: Schemas can be added or edited directly in AI nodes, and templates or Prompt hub selections auto-load the schema.
* Consistency Across Tools: Cloned and scoped tools in Agentic Apps preserve schemas, and flow change logs now capture schema-related updates.



<font size="4">Bug Fixes</font>

* Fixed an issue where StableDiffusion models were not automatically undeployed after 1 hour. Models now undeploy as expected after the set time.


<hr>


## v1.0.2 April 05, 2025

<u> Minor Release </u>

This update includes new features, enhancements, and bug fixes summarized below.

<font size="4">Agentic Apps</font>

**Seamless Integration of Third-Party Agents**

Agent Platform now supports the integration of external agents via a proxy agent architecture, allowing enterprises to leverage their existing investments in agents built on various platforms. 

Key benefits

* Centralized management and monitoring of agents across multiple platforms.
* Consistent user experience when interacting with different agent systems.
* Ability to combine and orchestrate cross-platform agent capabilities.


**Integration with XO Platform**

Agent Platform now seamlessly integrates with the XO Platform. This integration simplifies the creation of highly contextual, self-service automation experiences from XO using multi-agent orchestration powered by Agentic Apps.

Key benefits

* Ability to integrate fully autonomous applications from the XO Platform.
* Leverage XO Platform's channel integrations while using Agent Platform capabilities.
* Streamlined user experience with shared authentication and session management.


**Voice Integration in Agentic Apps**

The XO Platform and the Agent Platform now support real-time voice interactions through the Kore Voice Gateway using multi-modal language models, enabling low-latency, contextual, and real-time voice interaction experiences for customers.

Key features

* Real-time Voice Streaming: Enables real-time voice interactions when the Kore Voice Gateway is selected as the channel.
* Voice Streaming to Users: Supports streaming voice responses to users in real-time based on agent responses.
* Model and Prompt Selection: Provides options to select supported AI models and prompts specific to voice interactions.


**Enhanced Tool Integration and Management**

The Agentic Apps tool management system has been redesigned to improve usability, functionality, and permissions. Tools are now cloned and directly linked to specific Agentic Apps, creating app-scoped tool instances, rather than being linked by reference. This simplifies management, updates, and permission assignment. The Tool Library remains the central source for importing tools from the Marketplace, Library, or Files. Also, the tools are now scoped into the app’s context during import.

Key improvements 

* Full Lifecycle Management: Each tool instance within an Agentic App now has full lifecycle management capabilities, including versioning and editing, ensuring greater control and flexibility.
* Simplified Permissions: The new structure simplifies permissions by making tools more securely controlled within each app, improving sharing control, and reducing complexity.
* Easier Updates: With tools directly associated with Agentic Apps, updates and modifications can be made more easily, without impacting other apps or instances.
* Improved Manageability: App-scoped tool instances make tools more manageable, as they are now organized and accessed within the context of each Agentic App.


**Enhanced Versioning System**

The advanced versioning system streamlines the management of AI-driven Agentic Applications by supporting continuous innovation and ensuring stability. This system allows users to seamlessly handle multiple versions of agents and applications across various environments (development, testing, production etc).

Key features

* Integrated Draft Development: Thoroughly test application functionality in draft mode before creating versions, minimizing disruptions to active environments.
* Flexible Agent Selection: When creating application versions, users can choose from the current draft, previous versions, or specific versions of agents and tools, ensuring optimal compatibility and performance.
* Unified Version Tracking: Agent versions automatically align with application versions, simplifying tracking and management of complex, multi-component systems.
* Seamless Environment Management: Effortlessly deploy and manage different versions of applications across development, testing, and production environments, ensuring consistency and reliability.


**Enhanced Tool Tracing and Logs**

Tool traces are now directly integrated into the Agentic app, providing greater visibility into tool execution. It results in a streamlined debugging process, enhanced transparency of tool operations, and simplified troubleshooting for complex tool interactions.

Key capabilities

* Detailed Execution Logs: Comprehensive logging for every tool interaction.
* On-Demand Trace Viewing: Instant access to execution details.
* Improved Troubleshooting: Deeper insights into tool performance and behavior.


**Advanced Environment Management for Agentic Apps**

The new Environment Management System offers a robust solution for managing and deploying AI-driven applications across multiple environments, including development, testing, staging, and production. Key benefits include flexible deployment processes, consistent application behavior, and improved version control.

Key capabilities 

* Create and manage distinct environments.
* Link specific application versions to environments.
* Use unique endpoints for each environment.
* Customize configurations per environment.
* Track deployment history.
* Streamline CI/CD integration.


**Simplified Web SDK Integration**

The Kore-hosted SDK can now be easily integrated into enterprise websites using the new, lightweight Webclient Script. This JavaScript solution eliminates the need for users to leave the enterprise website to access the application, creating a seamless user experience with minimal development.

Key features

* Simple integration via a script tag.
* Ability to launch the application directly within enterprise websites.
* Customizable configuration options.
* Seamless authentication and session management.

**AI Agent’s Thought Streaming**

Agent Platform now introduces thought streaming that provides insights into the AI Agent’s reasoning and planning process behind its decisions and actions. This enables users to understand how the agent analyzes, decides, and responds to the user's query. Thought Streaming promotes transparency, helps build trust, and improves overall engagement. 
Real-time insights into the decision process also serve as a tool to identify issues and improve performance.


<font size="4">Tools</font>

**Introducing Tool Templates**

The Agent Platform now supports Tool Templates—a library of 23 prebuilt templates integrated with third-party services. Instead of building tool flows from scratch, users can install a ready-to-use template based on their category and task, requiring zero coding effort. Each template includes a preconfigured tool flow of nodes that the users can customize. Once installed, the system automatically adds all predefined elements—nodes, flows, and configurations—to the Tools Flow canvas. The users can then modify the node settings as needed.


**Structured Output in AI nodes**

AI nodes now support structured output, enabling users to define a JSON schema for model responses. This optional feature can be enabled if the model supports the response format, with the default being "text" if no schema is provided. Supported schema types include String, Boolean, Number, Integer, Object, Array, Enum, and anyOf. Currently, the JSON schema from the prompt template cannot be persisted to the AI node. We are working on adding capabilities to support structured output across various impact areas on the platform, and this feature will be included in the next release.


<font size="4">Models</font>

**Optimized Inference Time for CTranslate2 (CT2)**

CTranslate2 (CT2) models have been optimized to reduce latency and enhance performance during deployment. These improvements affect both open-source models and fine-tuned models, providing a faster and more efficient inference process.


<font size="4">Prompts</font>

**Structured Output in Prompt Studio**

Prompt Studio now supports structured output, allowing users to define a JSON schema for model responses when writing prompts. This optional feature can be enabled if the model supports the specified format, and if not, the schema is sent with the prompt for the model to determine the response format. Supported schema types include String, Boolean, Number, Integer, Object, Array, Enum, and anyOf. Currently, the JSON schema from the prompt template cannot be persisted to the AI node. We are working on adding capabilities to support structured output across various impact areas on the platform, and this feature will be included in the next release.


<font size="4">Settings</font>

**Introducing OAuth2 Authorization**

Platform users can now set up an Authorization Profile using OAuth v2 in the Settings console to define the attributes for robust, customizable,, and reliable user authentication and authorization. This enables secure and confidential access to external models via custom APIs and API and AI nodes for Tools.


<font size="4">Feature Enhancements</font>

* Upgraded the TRL version of ml-training-service to support DPO RLHF fine-tuning, ensuring seamless functionality with custom parameters.


<font size="4">Bug Fixes</font>

* Fixed an issue with CTranslate2 where deploying models with more than 6 billion parameters (e.g., opt-6.7b) on A10 hardware was stuck in the Deploying state when optimization was not enabled.
* Fixed an issue where the output JSON in the model traces for diffusion models in the Text-To-Image node was returning null.
* Fixed an issue where the output JSON in the model traces for the Whisper model in the Audio-To-Text node was returning null.


<hr>

## v1.0.1 March 22, 2025

<u> Patch Release </u>

This update includes only bug fixes.

<hr>

## v1.0 March 14, 2025

<u> Major Release </u>

This update includes new features and enhancements summarized below.

**New Features**

* JSON schema validation for JSON input type: Users can now define and validate JSON schemas for the JSON input type in Tools. A new JSON editor with schema definition and validation ensures that input data matches the required format, with detailed error messages during agent runs and endpoint failures.
* Mapping environment variables in Tools: Tool builders can now specify and map environment variables when adding tools within an AI node. They can select existing environment variables from the tool’s configuration or context variables or enable tool-specific environment variables.
* Deepseek model support: Added support for deploying Deepseek models from Hugging Face on existing Agent Platform hardware. Users can now deploy models like *Deepseek-R1-Distill-Qwen-1.5B*, *Deepseek-R1-Distill-Llama-8B*, *Deepseek-R1-Distill-Qwen-14B*, and *Deepseek-R1-Distill-Qwen-7B*. These models are now available in the list of open-source models. This support is only available for the models listed above through Hugging Face connections.
* Text-to-Image support: The AI node now supports Text-to-image generation within the tools flow. In prompts, users can specify image details and attributes, including elements to include or exclude. Using the Stable Diffusion model, the system generates images in line with the given instructions/keywords. The output is converted to a URL for further usage. Developers can now seamlessly generate and modify images using text-based instructions for creative purposes like generating marketing content, etc.
* Audio-to-Text support: The AI node now supports Audio-to-text conversion for multi-speaker, multilingual conversations using the OpenAI Whisper model. It transcribes audio, removes banned words, and translates other languages into English. Users can customize transcription style, proper nouns, punctuation, and context through prompt inputs, ensuring accurate results.
* Support for Open AI Whisper and Anthropic Claude Sonnet Vision: Agent Platform now supports the following external commercial models in its modules and workflows:
    * Open AI Whisper
    * Anthropic Claude Sonnet Vision
* Support for Stable Diffusion: Agent Platform now supports the following variants of the Stable Diffusion open-source models in its modules and workflows:
    * stable-diffusion-xl-base-1.0
    * stable-diffusion-2-1
    * stable-diffusion-v1-5
* Evaluation Studio:
    * Added support for sharing and collaboration: Projects can now be shared with collaborators, enabling team-based evaluation in a centralized environment. Permissions can now be applied across all evaluations within the project.
    * Added support for creating custom evaluators: Users can now create custom AI evaluators using in-built templates, with the ability to select evaluator categories (Quality or Safety). Users can choose scoring mechanisms, set thresholds, and test evaluators, receiving scores and explanations. Custom evaluators can be edited, and saved as templates for use by other users. They can also be saved as global evaluators, making them accessible across multiple projects.
    * Added support for human evaluators: Users can now add human evaluators to datasets with three types: thumbs up/down, better output, and comments. These evaluators are added as columns, where users can use ‘thumbs up/down’ to show approval or disapproval, ‘better output’ to suggest improvements, and ‘comments’ for additional feedback.
    * Added support for running an API as an output column: Users can now integrate data from external sources using rows from the Evaluation Studio data table. For example, values from a row can be passed as input to a tool, which then generates a response by triggering an API call. This response is automatically populated into a new output column within Evaluation Studio.
    * Added support for RAGAS evaluators: RAGAS evaluators are now integrated into Evaluation Studio as system evaluators, particularly within RAG (Retrieval-Augmented Generation) pipelines. These evaluators assess both the accuracy of the answer and the relevance of the contexts used. The supported evaluators include Context Precision, Context Recall, Context Entity Recall, Noise Sensitivity, and Faithfulness. 
* Agentic Apps: We are excited to announce the general availability (GA) of Agentic Apps.


**Feature Enhancements**

* Tools export with automatic model linking: Improvements have been made to tool imports for better handling of linked models.
* Guardrails model deployment support from file system: The deployment process for Guardrail models has been updated to read model paths directly from the file system instead of S3. The file system is now mounted to the Guardrails pods, enabling seamless deployment and testing of Guardrail models.
* Multimodal input support using vLLM: Support added for models that process image & audio inputs. Supported models include:
    * *microsoft/Phi-3-vision-128k-instruct*
    * *microsoft/Phi-3.5-vision-instruct*
    * *meta-llama/Llama-3.2-11B-Vision-Instruct*
    * *llava-hf/llava-1.5-7b-hf*