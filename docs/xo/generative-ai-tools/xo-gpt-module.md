
# Kore.ai XO GPT Module

The new Kore.ai XO GPT module provides fine-tuned large language models optimized for enterprise conversational AI applications. These models have been evaluated and fine-tuned to be accurate, safe, and efficient for production deployment. Initial capabilities include Conversation Summarization and User Query Rephrasing. We plan to add more capabilities in future updates, including Intent Resolution, Bot Response Rephrasing, and Entity Co-referencing.

!!! note

    The module is currently available only for English interactions. The respective models are available in global deployments on US Cloud (https://platform.kore.ai) and DE Cloud (https://de-platform.kore.ai).


## Benefits of Using the Module

The XO GPT module offers fast, accurate AI responses with built-in security:

* **Better Accuracy**: The module leverages smaller foundation models, typically under 10 billion parameters, that have been explicitly fine-tuned for conversational AI applications. The models achieve better accuracy, relevance, and interpretability for production deployment by tuning smaller models rather than directly prompting larger generative models.

* **Faster Responses**: The models are relatively smaller and hosted along with the XO Platform. This results in faster response times, making them suitable for production use cases for digital and voice interactions.

* **Ready to Use**: Enterprises can rapidly deploy these pre-fine-tuned models to immediately realize value without needing in-house AI expertise and long tuning cycles.

* **Data Security and Privacy**: The models are fully integrated into the XO Platform, enabling the same enterprise-grade data confidentiality, privacy, and governance enforced across the XO stack.


## Kore.ai’s Model Fine-Tuning Process

Fine-tuning is an iterative process of taking a pre-trained LLM and adapting it to perform conversational AI tasks:

1. **Collect Data**: Gather a dataset relevant to the desired task. This dataset serves as the training material for fine-tuning the LLM.

2. **Select a base LLM**: Select a pre-trained LLM that best fits the task needs.

3. **Train**: Train the model to understand specific conversation patterns. The training process utilizes the task-specific dataset and involves adjusting the model’s parameters to grasp the nuances of the task.

4. **Test and Refine**: Evaluate the fine-tuned model on a separate validation dataset to ensure it performs well. If necessary, iterate through the fine-tuning process to achieve optimal results.


## Features Supported by the Module

The Kore.ai XO GPT module currently supports the following features:

* **Conversation Summary**: This model generates concise, natural language summaries of interactions between the virtual assistant, users, and human agents. It distills the key intents, entities, decisions, and outcomes into an easy-to-read synopsis. Enterprises can leverage conversation summarization to boost agent productivity, ensure process compliance, and create better contextual recommendations without reading lengthy transaction histories. It is pre-integrated with Kore.ai’s Contact Center platform and extensible to third-party applications via API integration. [Learn more](co-pilot-features.md#conversation-summarization).

* **Answer Generation**: This feature helps generate an answer to the user's question based on the data ingested into the Search AI application. Relevant data with a user query is inserted into the prompt, and XO GPT responds with the answer accordingly. This answer is then formatted appropriately and presented to the user. [Learn more](dynamic-conversations-features.md#answer-generation).

* **Rephrase Dialog Responses**: This feature sends all User Prompts, Error Prompts, and Bot Responses to XO GPT with the conversation context, which depends on the configured number of user inputs. Responses are rephrased based on the context and user emotion, providing the end user with a more empathetic, natural, and contextual conversation experience. [Learn more](dynamic-conversations-features.md#rephrase-dialog-responses).

* **Rephrase User Query**: This XO GPT model utilizes the bot domain knowledge and conversation history to expand and rephrase user queries for improved understanding by downstream NLP components. This includes better recognition of contextual intents, entity co-referencing, and more. [Learn more](dynamic-conversations-features.md 'Rephrase User Query').

* **Vector Generation**: This feature helps create vector embeddings for all the ingested data in the Search AI application. When the user inputs a query, the query is converted into an embedding, and then a vector search is performed to get a list of relevant data from the ingested data. This relevant data is then sent to the answer generation feature. [Learn more](dynamic-conversations-features.md#vector-generation).