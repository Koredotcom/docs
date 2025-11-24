# Guardrails for Safety and Compliance

Guardrails are safety measures that ensure AI-generated responses from large language models (LLMs) remain appropriate and aligned with organizational or regulatory standards. The Agent Platform includes pre-deployed guardrails that scan both user inputs and model outputs to help maintain safe, responsible, and compliant AI interactions.

!!! note

    Guardrails are pre-deployed by the platform. To view the full list, go to **Settings** in the top navigation bar and select **Manage guardrails** from the left menu.


## Supported Scanners

| **Scanner** | **Description** |
|------------|-----------------|
| **Regex** | • Validates prompts using user-defined regular expression patterns.<br>• Supports defining desirable (“good”) and undesirable (“bad”) patterns for fine-grained validation. |
| **Anonymize** | • Removes sensitive data from user prompts.<br>• Helps maintain privacy and prevents exposure of personal information. |
| **Ban topics** | • Blocks specific topics (for example, religion) from appearing in prompts.<br>• Helps avoid sensitive or inappropriate discussions. |
| **Prompt injection** | • Detects attempts to manipulate or override model behavior.<br>• Protects the LLM from malicious or crafted inputs. |
| **Toxicity** | • Analyzes prompts for toxic or harmful language.<br>• Helps ensure safe and respectful interactions. |
| **Bias detection** | • Examines model outputs for potential bias.<br>• Helps maintain neutrality and fairness in generated responses. |
| **Deanonymize** | • Replaces placeholders in model outputs with actual values.<br>• Restores necessary information when needed. |
| **Relevance** | • Measures similarity between the user’s prompt and the model’s output.<br>• Provides a relevance score to ensure responses stay contextually aligned. |






