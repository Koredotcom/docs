# Vector Configuration 

Indexing is the process of generating vectors or embeddings from the extracted chunks and creating a knowledge Index that can be used for generating answers.

Vectors or Embeddings are multidimensional numerical representations of the chunks that carry their semantic information. Embedding Models are algorithms that can translate data into vectors. The Kore XO platform supports various embedding models, such as MPNet, LaBSE, BGE-M3, and E5 and allows you to choose a model according to your specific needs.

**By default, when a new app is created, the BGE-M3 vector model is selected for generating embeddings.**

## Features

* You can select from a range of supported embedding models such as MPNet, LaBSE, E5, and more. This gives you flexibility and ensures compatibility with diverse requirements and preferences.
* You have the autonomy to choose the specific chunk fields on which embeddings are to be generated. This selection allows you to focus on fields that hold higher relevance to your particular use case.

## Prerequisites

Vector Generation depends on the Kore.ai XO GPT model to generate embeddings. This requires setting up and configuring the model under Generative AI Tools.

1. Go to the **Models Library** under **Generative AI Tools** and [configure Kore.ai XO GPT ](https://docsinternal-kore.github.io/docs/xo/generative-ai-tools/models-library/#pre-built-llm-integration)Model. Ensure that the vector generation feature is enabled during configuration. If you are using the same model for Answer Generation, enable that feature for the model too. [Learn More](https://docsinternal-kore.github.io/docs/xo/generative-ai-tools/xo-gpt-module/).
2. Go to **Dynamic Conversations**, select the configured model for **Vector Generation** and** Answer Generation**, and use the toggle button to enable them. [Learn More.](https://docsinternal-kore.github.io/docs/xo/generative-ai-tools/dynamic-conversations-features/) 

## Configuration

Configure the following fields used for vector generation. 

* **Vector Model**: Select the embedding model to be used for Vector Generation. Kore.ai XO GPT supports the following three models: MPNet, LaBSE, and E5 embedding models. Choose the model depending on the nature of the content and user queries expected by the application.

* **Source Fields**: Select the chunk fields that you want to use to generate vector embeddings. Choosing the fields with higher relevance as source fields will result in embeddings with more valuable data, resulting in efficient answers to search queries. You can select more than one field as source fields. In the case of multiple source fields, the sequence of the fields affects the generated vector.

## Switching between Models

When you switch from one embedding model to another, **Train** the application to generate the embeddings again per the new model.
.
