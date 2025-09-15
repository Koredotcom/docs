


# PII and Sensitive Data Anonymization - LLM Interactions



Personally identifiable information (PII), or sensitive personal information (SPI), refers to information that can be used on its own or with other information to identify, contact, or locate a single person, or to identify an individual in context. Examples of PII include Social Security Numbers, email addresses, credit card numbers, passport numbers, and home addresses.

The Platform allows you to anonymize sensitive information, such as entities and tool parameters, before sending it to large language models (LLMs). This feature protects confidential or personally identifiable information (PII) while preserving end-to-end system functionality.

You must define regular expression (regex) patterns that the Platform uses to detect sensitive data in user input and determine how to handle it.



* **Redaction**: Replace the data with a placeholder that entirely hides the value.
* **Replacement**: Substitute the data with a predefined value or string.
* **Mask with Character**: Conceal part of the data while keeping a recognizable format (for example, masking all but the last four digits of a number).

When the LLM-layer PII option is enabled, anonymization applies only during interactions with the language model. The Platform restores the original values after the LLM response, while conversation history and debug logs always display the original/unmasked data to support internal processing. LLM-layer PII works alongside [globally declared PII](../app-settings/advanced-settings/pii-data-masking.md), with global settings taking precedence. 

Currently, data anonymization during LLM applies to the following GenAI features.



* Agent Node
* Conversation Summary
* DialogGPT
* Disposition Prediction for Agent Wrap-Up
* Prompt Node
* Rephrase Response
* Sentiment Analysis

**How to Anonymize Data**

Follow these steps:



1. Go to **Generative AI Tools** > **Safeguards** > **Data Anonymization**.  
<img src="../images/data-anonymization.png" alt="Data Anonymization" title="Data Anonymization" style="border: 1px solid gray; zoom:70%;">

2. Click **Get Started / + New Field**.  
<img src="../images/data-anonymization-add-new-type.png" alt="Data Anonymization" title="Data Anonymization" style="border: 1px solid gray; zoom:70%;">

3. Enter the Information Type and Regex Pattern, then select the Display Type.
4. Click **Save**.