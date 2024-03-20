
# Kore.ai XO GPT Module

	

		

			

The new Kore.ai XO GPT Models module provides fine-tuned large language models optimized for enterprise conversational AI applications. These models have been evaluated and fine-tuned to be accurate, safe, and efficient for production deployment. Initial capabilities include Conversation Summarization and User Query Rephrasing. Additional models for features like Intent Resolution, Bot Response Rephrasing, Entity Co-referencing, etc., are planned in future updates.

!!! note

    The Kore.ai XO GPT Module is currently available only for English language interactions. The respective models are available only in our global deployment (US Cloud – https://bots.kore.ai).


## Advantages of Using Kore.ai XO GPT

The following are a few advantages of using Kore.ai XO GPT.



* **Accuracy**: The XO GPT module leverages smaller foundation models, typically under 10 billion parameters, that have been fine-tuned specifically for conversational AI applications. By tuning smaller models rather than directly prompting larger generative models, the XO GPT Models achieve better accuracy, relevance, and interpretability for production deployment.
* **High Performance**: The XO GPT Models are hosted along with the XO Platform and are relatively smaller in size. This results in faster response times, making them suitable for production use cases for digital and voice interactions.
* **Accelerate Time-to-Value with Pre-Tuned Models**: The Kore.ai XO GPT Models come pre-fine-tuned for conversational AI use cases, eliminating the complex process of prompt engineering required for adopting commercial LLMs. Enterprises can rapidly deploy these models to start realizing value immediately without needing in-house machine learning expertise or long tuning cycles.
* **Data Security and Privacy**: The Kore.ai XO GPT Models are fully integrated into the XO Platform, enabling the same enterprise-grade data confidentiality, privacy, and governance enforced across the XO stack.


## Fine Tuning Process

Fine-tuning is an iterative process of taking a pre-trained LLM and adapting it to perform conversational AI tasks.


### Kore.ai’s Model Fine-Tuning Process



1. **Data Collection**: We gather a dataset specific to the desired task. This dataset serves as the training material for fine-tuning the LLM.
2. **Selecting a base LLM**: The pre-trained LLM is loaded considering their purpose and the features to which they will be applied.
3. **Training Process**: The training process utilizes the task-specific dataset to train the model, involving the model’s parameters adjustment to grasp the nuances of the target task.
4. **Validation and Iteration**: The fine-tuned model is evaluated on a separate validation dataset to ensure it performs well. If necessary, we iterate through the fine-tuning process to achieve optimal results.


## Features Supported by Kore.ai XO GPT

The Kore.ai XO GPT module supports the following features:



* **Rephrase User Query**: This XO GPT model utilizes the bot domain knowledge and conversation history to expand and rephrase user queries for improved understanding by downstream NLP components. This includes better recognition of contextual intents, entity co-referencing, and more. [Learn more](dynamic-conversations-features.md 'Rephrase User Query').
* **Conversation Summary**: This model generates concise, natural language summaries of interactions between the virtual assistant, users, and human agents. It distills the key intents, entities, decisions, and outcomes into an easy-to-read synopsis. Companies can leverage conversation summarization to boost agent productivity, ensure process compliance, and create better contextual recommendations – without having to read lengthy transaction histories. It is pre-integrated with Kore.ai’s Contact Center platform. It is also extensible to third-party applications via API integration. [Learn more](../generative-ai-tools/dynamic-conversations-features.md #Conversation Summarization).
