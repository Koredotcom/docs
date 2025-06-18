# Generative AI Features - Search AI

Utilize generative AI features to supercharge your virtual assistant with powerful tools that enhance productivity, enable natural conversations, improve intent detection, analyze customer sentiment, and support agent performance, all working together to create seamless end-user experiences through intuitive design.

## Model Feature Matrix

The following table displays the features and the supported models. 

(✅ Supported | ❌ Not supported)

| Model     | Answer Generation     | Vector Generation     | Metadata Extractor Agent     | Query Rephrase for Advanced Search API     | Query Transformation     | Result Type Classification     |
|---|---|---|---|---|---|---|
| Azure OpenAI - GPT 4 Turbo     | ✅     | ❌     | ❌     | ❌     | ❌     | ❌     |
| Azure OpenAI - GPT 4o, and GPT-4o mini*     | ✅     | ❌     | ✅     | ✅     | ✅     | ✅     |
| OpenAI - GPT 3.5 Turbo, GPT 4, GPT 4 Turbo     | ✅     | ❌     | ❌     | ❌     | ❌     | ❌     |
| OpenAI -   GPT 4o, and GPT-4o mini*     | ✅     | ❌     | ✅     | ✅     | ✅     | ✅     |
| Custom LLM     | ✅     | ✅     | ✅   (If underlying llm is GPT 4o / GPT 4o mini)     | ✅   (If underlying llm is GPT 4o / GPT 4o mini)     | ✅   (If underlying llm is GPT 4o / GPT 4o mini)     | ✅   (If underlying llm is GPT 4o / GPT 4o mini)     |
| Kore.ai XO GPT     | ✅     | ✅     | ❌     | ❌     | ❌     | ❌     |
| Amazon Bedrock     | ❌     | ❌     | ❌     | ❌     | ❌     | ❌     |

\* *The OpenAI GPT-4o mini and Azure OpenAI GPT-4o mini do not include system prompts, but they can be used with custom prompts.* 

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