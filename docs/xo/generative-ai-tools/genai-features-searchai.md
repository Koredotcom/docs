# Generative AI Features - Search AI

Utilize generative AI features to supercharge your AI Agent with powerful tools that enhance productivity, enable natural conversations, improve intent detection, analyze customer sentiment, and support agent performance, all working together to create seamless end-user experiences through intuitive design.

## Model Feature Matrix

The following table displays the features and the supported models. 

(✅ Supported | ❌ Not supported)

| Model     | Answer Generation     | Vector Generation     | Metadata Extractor Agent     | Query Rephrase for Advanced Search API     | Query Transformation     | Result Type Classification     |Rephrase User Query|
|---|---|---|---|---|---|---|---|
| Azure OpenAI - GPT 4 Turbo     | ✅     | ❌     | ❌     | ❌     | ❌     | ❌     | ✅     |
| Azure OpenAI - GPT 4o, and GPT-4o mini*     | ✅     | ❌     | ✅     | ✅     | ✅     | ✅     | ✅     |
| OpenAI - GPT 3.5 Turbo, GPT 4, GPT 4 Turbo     | ✅     | ❌     | ❌     | ❌     | ❌     | ❌     | ✅     |
| OpenAI -   GPT 4o, and GPT-4o mini*     | ✅     | ❌     | ✅     | ✅     | ✅     | ✅     | ✅     |
| Custom LLM     | ✅     | ✅     | ✅   (If underlying llm is GPT 4o / GPT 4o mini)     | ✅   (If underlying llm is GPT 4o / GPT 4o mini)     | ✅   (If underlying llm is GPT 4o / GPT 4o mini)     | ✅   (If underlying llm is GPT 4o / GPT 4o mini)     | ✅     |
| Kore.ai XO GPT     | ✅     | ✅     | ❌     | ❌     | ❌     | ❌     | ✅     |
| Amazon Bedrock     | ❌     | ❌     | ❌     | ❌     | ❌     | ❌     |❌     |

\* *The OpenAI GPT-4o mini and Azure OpenAI GPT-4o mini don't include system prompts, but they can be used with custom prompts.* 

\** *To use the Provider's New LLM, you must create a custom prompt as system prompts are unavailable.*

## Answer Generation

This feature helps generate an answer to the user question based on the data ingested into the Search AI application. The relevant data with a user query is inserted into the prompt, and the configured LLM responds with the answer. This answer is then formatted appropriately and presented to the user. [Learn more](../searchai/answer-configuration.md#answers-generation).

## Vector Generation

This feature helps create vector embeddings for all the ingested data in the Search AI application. When the user inputs a query, the query is converted into an embedding, and then a vector search is performed to get a list of relevant data from the ingested data. This relevant data is then sent to the answer generation feature.

## Metadata Extractor Agent
This feature is used to extracts relevant sources and fields from a query, map them to structured data, and apply filters or boosts for accurate retrieval. This is particularly useful for data from third party applications. [Learn More](https://docs.kore.ai/xo/searchai/rag-agents/).  

## Query Rephrase for Advanced Search API
This feature is used to add contextual information to the user queries and enhance them for relevance. [Learn More](https://docs.kore.ai/xo/searchai/rag-agents/)

## Query Transformation
This feature is used to identify key terms within a query, removing noise and prioritizing relevant documents. [Learn More](https://docs.kore.ai/xo/searchai/rag-agents/)

## Result Type Classification
This feature is used in Agentic RAG to determine whether the user seeks a specific answer or a list of search results in response to the query. [Learn More](https://docs.kore.ai/xo/searchai/rag-agents/)

## Rephrase User Query

The Rephrase User Query feature enhances the AI Agent’s understanding by reconstructing incomplete or ambiguous user inputs using the ongoing conversation history. This helps improve intent detection and entity extraction accuracy, especially when user input is fragmented across multiple messages.

When users submit queries that are incomplete or rely on previous context (coreference), the system uses an LLM to rephrase the input at runtime. This rephrased version consolidates relevant details from earlier messages, helping the NLP engine better understand the user’s intent and extract entities more accurately.

**Usage**
The LLM rephrases the query using one of the following methods depending on the scenario:

**Completeness**: The user query should be complete within the conversation context, allowing the application to identify the correct intent. If the user query is incomplete, the system urges the user to rephrase with more information. However, using this feature, the user query is automatically completed using the conversation context. 

For example:

* User: What's the weather forecast for New York tomorrow? 
* App : It will be Sunny, with temperatures ranging between 30 and 35 degrees Celsius. 
* User: How about Orlando? 

Without rephrasing, the last query is ambiguous.

Rephrased Query: What's the weather forecast for Orlando tomorrow?

**Co-referencing**: Handles situations where the user refers to something previously mentioned using pronouns or vague references.

For example:

* User: I’ve had a headache for the past week.
* App : I’m sorry to hear that. Have you taken any medication?
* User: Yes, ibuprofen, but it’s not helping.
* App : I see. How often do you take it?
* User: Every six hours.

Without rephrasing, the last user message isn't meaningful and doesn't suggest the user intent.

Rephrased Query: I take ibuprofen every six hours.

**Completeness and Co-referencing**: Handles both issues together by reconstructing the full meaning.

For example:

* User: I want to apply for a personal loan.
* App : You're eligible for up to $20,000.
* User: How about a home loan?
* App : You’re eligible for up to $100,000.
* User: What about interest rates?

Rephrased Query: What are the interest rates for personal and home loans?

### Conversation History Length

This setting controls how many previous messages (from both the user and the App ) are used to provide context for rephrasing. The default value is 5, and the maximum is 25. If the session history contains fewer messages than the configured number, only the available messages will be sent, even if the set value is higher. 

You can access the Conversation History Length from **Repharse User Query > Advanced Settings**.

