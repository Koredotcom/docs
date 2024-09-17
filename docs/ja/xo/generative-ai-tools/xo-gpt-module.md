
# Kore.ai XO GPT Module

	

		

			

The new Kore.ai XO GPT Models module provides fine-tuned large language models optimized for enterprise conversational AI applications. These models have been evaluated and fine-tuned to be accurate, safe, and efficient for production deployment. Initial capabilities include Conversation Summarization and User Query Rephrasing. Additional models for features like Intent Resolution, Bot Response Rephrasing, Entity Co-referencing, etc., are planned in future updates.

!!! note

    The Kore.ai XO GPT Module is currently available only for English language interactions. The respective models are available only in our global deployment (US Cloud – https://platform.kore.ai/builder/home).


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

* **Conversation Summary**: This model generates concise, natural language summaries of interactions between the virtual assistant, users, and human agents. It distills the key intents, entities, decisions, and outcomes into an easy-to-read synopsis. Companies can leverage conversation summarization to boost agent productivity, ensure process compliance, and create better contextual recommendations – without having to read lengthy transaction histories. It is pre-integrated with Kore.ai’s Contact Center platform. It is also extensible to third-party applications via API integration. [Learn more](co-pilot-features.md#conversation-summarization).

* **Answer Generation**: This feature helps generate an answer to the user question based on the data ingested into the Search AI application. The relevant data with a user query is inserted into the prompt, and the configured LLM responds with the answer. This answer is then formatted appropriately and presented to the user. [Learn more](dynamic-conversations-features.md#answer-generation).

* **Rephrase Dialog Responses**: This feature sends all User Prompts, Error Prompts, and Bot Responses to the configured LLM with the conversation context, which depends on the configured number of user inputs. Responses are rephrased based on the context and user emotion, providing the end user with a more empathetic, natural, and contextual conversation experience. [Learn more](dynamic-conversations-features.md#rephrase-dialog-responses).

* **Rephrase User Query**: This XO GPT model utilizes the bot domain knowledge and conversation history to expand and rephrase user queries for improved understanding by downstream NLP components. This includes better recognition of contextual intents, entity co-referencing, and more. [Learn more](dynamic-conversations-features.md 'Rephrase User Query').



* **Vector Generation**: This feature helps create vector embeddings for all the ingested data in the Search AI application. When the user inputs a query, the query is converted into an embedding, and then a vector search is performed to get a list of relevant data from the ingested data. This relevant data is then sent to the answer generation feature. [Learn more](dynamic-conversations-features.md#vector-generation).