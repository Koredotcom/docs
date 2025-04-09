# Release Notes

This document provides information on the feature updates and enhancements introduced in the recent Agent Platform releases.

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

Prompt Studio now supports structured output, allowing users to define a JSON schema for model responses when writing prompts. This optional feature can be enabled if the model supports the specified format, and if not, the schema is sent with the prompt for the model to determine the response format.
    Supported schema types include String, Boolean, Number, Integer, Object, Array, Enum, and anyOf. Currently, the JSON schema from the prompt template cannot be persisted to the AI node. We are working on adding capabilities to support structured output across various impact areas on the platform, and this feature will be included in the next release.


<font size="4">Settings</font>

**Introducing OAuth2 Authorization**

Platform users can now set up an Authorization Profile using OAuth v2 in the Settings console to define the attributes for robust, customisable,, and reliable user authentication and authorization. This enables secure and confidential access to external models via custom APIs and API and AI nodes for Tools.


<font size="4">Feature Enhancements</font>

* Upgraded the TRL version of ml-training-service to support DPO RLHF fine-tuning, ensuring seamless functionality with custom parameters.


<font size="4">Bug Fixes</font>

* Fixed an issue with CTranslate2 where deploying models with more than 6 billion parameters (e.g., opt-6.7b) on A10 hardware was stuck in the Deploying state when optimization was not enabled.
* Fixed an issue where the output JSON in the model traces for diffusion models in the Text-To-Image node was returning null.
* Fixed an issue where the output JSON in the model traces for the Whisper model in the Audio-To-Text node was returning null.


<hr>


## v1.0.1 March 14, 2025

<u> Minor Release </u>

This update includes new features and feature enhancements summarized below.

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