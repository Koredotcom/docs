# LLM and Generative AI Features

The Kore.ai XO Platform helps enhance your bot development process and enrich end-user conversational experiences by integrating pre-built (OpenAI, Azure OpenAI, Anthropic) or custom models or Kore.ai XO GPT Module in the backend.

In addition to the out-of-box integration with pre-built models, the Platform supports the bring-your-own (BYO) model framework to integrate with externally hosted models by third parties as well as models hosted by the enterprises themselves. The framework allows the creation of custom prompts that are optimized for specific purposes and models. This generic framework works seamlessly with the Auth Profiles module of the Platform, enabling enterprises to use the authentication mechanism of their choice.

The new Kore.ai XO GPT Models module provides fine-tuned large language models optimized for enterprise conversational AI applications. These models have been evaluated and fine-tuned to be accurate, safe, and efficient for production deployment. For more information, see [Kore.ai XO GPT](../../generative-ai-tools/xo-gpt-module.md).

By leveraging LLM and Generative AI capabilities, you can create intelligent, human-like conversational experiences for your end-users.

To configure Generative AI and LLM, go to **Product Switcher** > **Generative AI Tools** or click the Generative AI Tools icon in the left-side menu.



<img src="../../../generative-ai-tools/images/models-library.png" alt="Models-Library" title="Models-Library" style="border: 1px solid gray; zoom:70%;">

## Key Features

The Integration of Generative AI and LLM enables the following features:

* Model Library: Connect to Generative AI models of your choice using the out-of-box integrations (pre-built LLM integration) or custom integrations or Kore.ai XO GPT Module.

* Prompts Library: Complete flexibility to create fully customized prompts optimized for particular use cases using pre-built or custom models.

* Co-Pilot features:
    * **Automatic Dialog Generation**: This feature helps build production-ready dialog tasks automatically by briefly describing the task. A preview of the generated dialog is available and lets you modify the intent description and create multiple iterations of the dialog.
    * **Conversation Test Cases Suggestion**: The Platform suggests simulated user inputs covering various scenarios from an end-user perspective at every test step. You can use these suggestions to create test suites.
    * **Conversation Summary**: Implements the Conversation Summary public API to fetch the details of the entire conversation between the customer and the VA or agent. This API leverages the Flan-T5 foundational model to summarize conversations.
    * **NLP Batch Test Cases Suggestion**: The Platform generates NLP test cases for every intent, including entity checks. You only need to create test suites in the Builder using the generated testing utterances.
    * **Training Utterance Suggestions**: Generate high-quality training data quickly and easily with our platform’s suggested utterances for each intent. Review and add the suggestions as needed to create a powerful training set for your bot.    
    * **Use Case Suggestions**: Uses the Open AI LLM model to generate use cases during the VA (Bot) creation journey.
    
* Dynamic Conversations features:
    * **GenAI Node**: Collect Entities from end-users in a free-flowing conversation using LLM and Generative AI in the background. You can define entities to be collected as well as rules & scenarios.
    * **Answer from Documents**: Helps answer end-user queries from unstructured PDF documents without the need to extract individual FAQs and train them.
    * **GenAI Prompt:** Leverage this node to unlock the power of Generative AI with your prompts, enabling you to build creative and custom use cases.
    * **Rephrase Dialog Responses**: Enhance end-user experience with empathetic and contextual bot responses.
    * **Zero-shot ML Model**: Uses the Open AI LLM model for intent identification during run time based on semantic similarity.
    * **Repeat Responses**: Use LLM to reiterate the last bot responses when the Repeat Bot Response event is triggered.
    * **Rephrase User Query**: Improve intent detection and entity extraction by enriching the user query with relevant details from the ongoing conversation context.
    * **Few-shot ML Model**: Uses the Kore Ai’s hosted embeddings for intent identification during run time based on semantic similarity.

* Safeguards:
    * **Data Anonymization**: Protect Personal Identifiable Information (PII) and Sensitive Data shared to LLMs in GenAI Features.
    * **Guardrails**: Ensure the safety and appropriateness of LLM responses using the Guardrails.    

## Benefits

All these features benefit VA developers, NLP developers, and testers as follows:

* Being able to select between custom and pre-built LLM integrations.
* Developers can create dialog tasks on the fly through the prebuilt Dialog Tasks Flow.
* Developers can unlock the power of Generative AI with their prompts, enabling them to build creative and custom use cases.
* Mundane tasks like generating dialog tasks or training utterances are automated to help developers be more productive and focus on other important tasks like enhancing conversation design, creating complex test cases, and more.
* Testers can ensure that their intent descriptions are meaningful in the right context to generate the right content.
* The Platform provides suggestions and nudges developers in the right direction for the better design and development of Virtual Assistants. For example, it offers curated use case suggestions while creating the VA, including probable user inputs (simulating end-user behavior) in Conversation Testing. This way, the VA can simulate the end user’s behavior at every conversation step and respond more realistically by considering error scenarios, digressions, and contextual changes.
* Allows enterprises and advanced users to bypass the platform’s pre-built integrations. They can establish customized connections to large language models and optimize prompts and requests for their specific use cases.

## Next Step


1. Integrate a [pre-built or custom LLM or Kore.ai XO GPT](../../generative-ai-tools/models-library.md) in models library. 
2. Create [ New Prompts](../../generative-ai-tools/prompts-library.md) in the prompts library.
3. Enable[ Co-Pilot](../../generative-ai-tools/co-pilot-features.md) and [Dynamic Conversations](../../generative-ai-tools/dynamic-conversations-features.md) features.
4. (Optional) Enable [Data Anonymization](../../generative-ai-tools/data-anonymization.md) and [Guardrails](../../generative-ai-tools/guardrails.md).

