# Answers Generation

This section is used to configure the type of answers to be presented to the users. There are two types of Answer generation techniques supported:

1. **Extractive Answers**: The topmost chunk retrieved in response to the user query is directly presented to the user as answers. The extractive answers are exact content retrieved from the chunks without any change in text. Provide the following configurations for extractive answers.
    * **Response Length**- This is the expected length of the answer, in tokens.
2. **Generative Answers**: The top chunks retrieved in response to the user query are sent to the configured LLM, which generates a paraphrased answer from the content in the chunks. [Integrate LLM](../generative-ai-tools/models-library.md) and [Enable Answer Generation](../generative-ai-tools//dynamic-conversations-features/#answer-generation) in the Generative AI Tools configuration. 
    * **Chunk Order:** This configuration sets the order of qualified chunks sent to the LLM in the Prompt. The order of data chunks can affect the context and thereby, the results of a user query. The decision to use a specific chunk order should align with the goals of the task and the nature of the data being processed.
    * **Most to Least Relevant:** In this case, the chunks are added in descending order of relevance, i.e., highest relevance to the lowest, followed by the query. For instance, if the top five chunks are to be sent to the LLM, the most relevant chunk is added first, and the least relevant chunk is added at the end.
    * **Least to Most Relevant:** In this case, the chunks are added in ascending order of relevance. The least relevant chunk is added first, and the most relevant chunk is at the end, followed by the query.