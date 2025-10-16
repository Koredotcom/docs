# Release Notes

This document provides information on the feature updates and enhancements introduced in the recent GALE releases.

## v1.0.9 February 10, 2025

<u> Minor Release </u>

This update includes new features and feature enhancements summarized below.

**New Features**

* Added JSON Input and Output Types in Agent/Tool: Users can now pass and generate JSON data as input and output parameters. This ensures flexible data handling and runtime validation, with error messages for inconsistencies.
* Added Enum Input Type in Agent/Tool: Users can now pass enumerated values as input parameters, ensuring only predefined values are accepted, with validation and error messages for invalid inputs.
* Added Image-to-Text Support (OCR): GALE agents can now process images using external models like OpenAI (GPT-4, GPT-4-turbo) and Anthropic (Claude Sonnet Vision), allowing users to upload a single image for text generation. The new ‘Image to Text’ node supports image URLs or binary, base64-encoded images with model-specific input formats and temporary storage during the agent run.
* Added Source Column on Monitoring Page: A new 'Source' column on the monitoring page shows whether a tool is run via an Agentic app (displaying the app name) or called through an API endpoint (showing the API key).
* Added Public File Upload API: Users can now upload files via an API, receiving a unique file URL and file ID in response for use in multimodal nodes and managing file availability across the application.
* AWQ-Marlin Support in GALE: AWQ-Marlin is now the default for models using AWQ with vLLM, providing improved throughput while maintaining accuracy. This update supports models in Prompt studio, model endpoints, and agents without requiring any UI changes.
* Distributed Traceability for Agents and Models: Added support for distributed traceability across agents and models. Each component now generates and maintains its own x-trace-id for operations while supporting parent_trace_id for tracking parent-child relationships between component interactions.

**Feature Enhancements**

* Debug Log UI Enhancement for Tool Calls: The debug log UI has been improved by grouping GEN AI requests/responses under ‘Model’ calls and consolidating tool executions in the ‘Tools’ section. It also clearly demarcates sequential and parallel calls.
* Evaluation Studio:
    * Running a Prompt: Users can now generate data by running a prompt in Evaluation studio, allowing for dynamic data creation based on the given input.
    * Evaluator Snapshot and Insights: Users can now view a quick snapshot of insights for each evaluator, including pass rates and visualizations - line charts for continuous scoring and stacked columns for Boolean evaluators.
    * Stopping an Evaluation: Users can now stop an ongoing evaluation at the overall, column, or cell level.
    * Importing Production Data: Users can now import production data based on the selected model through traces and filter the data further by sources such as agents, prompt studio, or model Inference.


<hr>

## v1.0.8 January 10, 2025

<u> Minor Release </u>

This update includes new features, enhancements, security fixes, and bug fixes summarized below.

**New Features**

* Evaluation Studio: GALE’s new Evaluation Studio serves as a comprehensive tool for assessing LLM performance. The platform offers users the flexibility to either select from a variety of pre-existing evaluators or design their own to measure model effectiveness. Users can upload and organize datasets, which include inputs and outputs, into designated projects. The evaluation process accommodates adjustable thresholds and scoring metrics, allowing customization based on specific evaluator needs. [Learn more](../evaluation/overview.md).
* Public API Support: Users can now generate and manage API keys with customizable expiration dates and scopes (e.g., deploying models or agents). The API endpoints enables users to deploy, undeploy, import, and export GALE agents, models, and guardrails with the appropriate permissions.

**Feature Enhancements**

* Tool Calling:

    * Tool traceability and enhanced debugger in Gen AI nodes: Users can now trace tool calls (both sequential and parallel) in the Gen AI node. Each tool call is logged, with input and output data displayed in the debug panel, with a dedicated tool trace view.
    * Agent and model analytics also include relevant metrics for tool calls, such as latency and token calculations.    
    * Change log and permissions: Tool-related events are now captured in the flow change log of the GenAI node. User permissions determine if they can add tools to the builder.    
    * Tool output variables: At least one output variable is now required for every end node in the agent flow. If not added, an error message will appear, the debug run will fail, and new flow versions cannot be deployed.

* Improved Model Deployment and Fine-tuning: Specific folders in AWS S3 buckets are now mounted directly to fine-tuning and deployment pods in K8s cluster, reducing the need to download files. This improves deployment and fine-tuning service start times, especially in autoscaling scenarios.
* Improved Test Automation with data-id Attributes: Added data-id attributes to all actionable elements on the frontend to improve test automation stability despite ongoing UI changes.


**Security Enhancements**

* The Python version is upgraded to 3.10.15 in the following ML services: ml-training, ml-ray, ml-inference, and ml-guardrail.
* Analyzed and fixed security vulnerabilities in ML services.


**Bug Fixes**

* Fixed an issue where the DocSearch response appeared blank in agent monitoring when executing an agent with a DocSearch node.
* Resolved the issue where users were unable to view the flow when importing an agent into a shared workspace.


<hr>


## v1.0.7 December 25, 2024

<u> Minor Release </u>

This update includes new features, feature enhancements, and security enhancements, summarized below.

**New Features**

* Unified External Model Request & Response Structure: Introducing a wrapper endpoint to standardize request and response formats for all external AI models. The wrapper converts model-specific outputs to a unified structure, resulting in a consistent API, simplified integration, and improved maintainability.
* Knowledge Node: Introducing a new node on the agent canvas, allowing users to search documents within GALE workflows by integrating with Search AI. Users can connect accounts, configure searches, and use optional meta filters to narrow results.
* Function Calling in Gen AI Node: Implemented support for function calling (happy path) within the Gen AI Node in the Agent, including basic debugging capabilities.
* Prompt Integration in Gen AI Node: Prompt studio is now integrated into Gen AI nodes, simplifying the use of prompts and AI models while enhancing accessibility and productivity. Users can easily manage and customize prompts in the studio, and seamlessly integrate them with the Gen AI nodes.


**Feature Enhancements**

* Improved Model Import File Download: ML services will now directly access imported model files from the file system to address issues with the current URL-based download, such as unknown speeds for large files and URL expiration during scaling or restarts.
* Improved Error Handling for Agent Runtime Failures: Defined error codes and messages for the 15 agent runtime failure scenarios and propagated these consistently to both the Agent API response and Agent Monitoring tab.

**Security Enhancements**

* Host Manipulation in Forgotten Password Emails: Implemented proper protocol and host validation when using "hostUrl" to construct reset links

<hr>

## v1.0.6 December 12, 2024

<u> Minor Release </u>

This update includes new features, feature enhancements, and security enhancements, summarized below.

**New Features**

* Export and import agents: The new agent export functionality allows users to export GALE agents as self-contained packages. Users can import the agents from the files, preserving node configurations, variables, and settings.
* Increased token limits and hyper-parameter changes for external models.
* Better validation for open-source model files under 500MB to streamline imports (files over 500MB continue to use server-side validation).
* Added support for Llama3.2 (1B, 3B) and Mistral-Nemo-12b open-source and fine-tuned models.
* Added support for using IAM roles to access AWS services like S3 and KMS, in addition to the existing key-based authentication for customers running GALE on an AWS VPC environment.


**Feature Enhancements**

* Improved prompt API endpoint: The updated instructions in the prompt API endpoint help users properly set up and use the endpoint.
* Improved labels for credits and runs.
* Show deployment history after the first model deployment attempt, regardless of the deployment status.

**Security Enhancements**

* Fixed stored XSS vulnerability in open-source model.
* Resolved security issues found in v1.0.4 scan.

<hr>

## v1.0.5 November 20, 2024

<u> Minor Release </u>

This update includes new features, improvements, and bug fixes, summarized below.

**New Features**

* Added support to import open-source models, such as Base and Adapter models, from a user's local machine
* Added support for new external models: *OpenAI - o1-mini* and *o1-preview*
* Expanded support for new hardware types for model deployment: *Cluster of 8's - A10* and *Cluster of 8's - T4*
* Added statuses *Waiting* and *In Progress* to track Agent Runs in Async mode

**Improvements**

* Upgraded the vLLM package version from 0.4.3 to 0.6.2 for Model inferencing
* Added 10 new events in the Audit log for Prompt Studio.  [Learn more](../settings/monitoring/audit-logs.md).

**Bug Fixes**

* Addressed unified load distribution across GPU issues for ML inference calls
* Added password validations on the Reset Password page

<hr>

## v1.0.4 November 05, 2024

<u> Minor Release </u>

This update includes new features, improvements, and bug fixes, summarized below.

**New Features**

* Generate Prompt and Prompt Test Data using GenAI
* Prompts - Permission Enforcement
* Enabled optimization CT2 and vllm for mistralai/Mistral-7B-Instruct-v0.3 model
* Option to exclude specific users from SSO
* Audit logs for Agent canvas changes and Export audit Logs
* Export model traces

**Improvements**

* User ID no longer shown as undefined for shared prompts in Model traces
* Model credits in traces for the model used only in Agents
* Empty state for model listing and adding model from empty state
* Allow invited users to sign up

**Bug Fixes**

* Custom models connection active state issue corrected
* Removal of preference Permission at the account level

<hr>

## v1.0.3 October 04, 2024

<u> Major Release </u>

This update includes new features and improvements, summarized below.

**New Features**

* Billing Usage Analytics
* Model Analytics Dashboard
* Model Monitoring for Inferences
* Prompts studio 3.0
* New libraries support (like Pandas and Datetime) for script node 

**Improvements**

* Admin and User app integrated with new MFE, NX
* Application and Key service logging enhancements to make debugging easy

<hr>

## v1.0.2 September 11, 2024

<u> Minor Release </u>

This update includes new features, enhancements, and bug fixes, summarized below.

**New Features**

* Agent Analytics
* Agent Monitoring - All/LLM runs
* ML - S3 integration for fine-tuning and deployment

**Improvements**

* ML: FSDP Enhancement (support extended for cluster GPUs with any number of GPUs)
* Added GPT-4o mini, llama3.1-8B instruct, llama 3.1-8B open source and external models
* Toast messages have been improved for the sync-async feature in Agents

**Security Enhancements**

* Command Injection fix in admin service

**Bug Fixes**

* SSO invited user login following workspace creation

<hr>

## v1.0.1 August 22, 2024

<u> Minor Release </u>

This update includes new features, enhancements, and bug fixes, summarized below.

**New Features**

* Configure SSO and login experience
* Integrate new External Models from - Google and Anthropic
* Added Google Gemma 2 models as Open Source Models in GALE
* Support for AWQ (Activation-aware Weight Quantization) for model inference optimization
* Support for No Timeout option in the API node in Agent for Async execution mode and other fixes

**Feature Enhancements**

* Updating details in the Custom API Integration model to continue to work in existing experiments

**Security Enhancements**

* Enforce the password in email-based login to be 12 characters long

<hr>