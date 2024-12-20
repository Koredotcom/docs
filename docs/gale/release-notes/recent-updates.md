# Release Notes

This document provides information on the feature updates and enhancements introduced in the recent GALE releases.

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