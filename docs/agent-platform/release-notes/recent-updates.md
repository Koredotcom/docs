# Release Notes

This document provides information on the feature updates and enhancements introduced in the recent Agent Platform releases.

## March 14, 2025

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


**Feature Enhancements**

* Tools export with automatic model linking: Improvements have been made to tool imports for better handling of linked models.
* Guardrails model deployment support from file system: The deployment process for Guardrail models has been updated to read model paths directly from the file system instead of S3. The file system is now mounted to the Guardrails pods, enabling seamless deployment and testing of Guardrail models.
* Multimodal input support using vLLM: Support added for models that process image & audio inputs. Supported models include:
    * *microsoft/Phi-3-vision-128k-instruct*
    * *microsoft/Phi-3.5-vision-instruct*
    * *meta-llama/Llama-3.2-11B-Vision-Instruct*
    * *llava-hf/llava-1.5-7b-hf*