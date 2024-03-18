# Indexing 

Indexing is the process of generating vectors or embeddings from the extracted chunks and creating a knowledge Index that can be used for generating answers. 

Vectors or Embeddings are multi-dimensional numerical representations of the chunks and carry their semantic information. Embedding Models are algorithms that can translate data into vectors. The Answers module supports various embedding models such as MPNet, LaBSE, and e5 and gives you the flexibility to choose a model as per your specific needs.


## Features

* You can select from a range of supported embedding models such as MPNet, LaBSE, e5, and more. This gives you flexibility and ensures compatibility with diverse requirements and preferences.
* You have the autonomy to choose the specific chunk fields on which embeddings are to be generated. This selection empowers you to focus on fields that hold higher relevance to your particular use case.
* You can also Answers ingest your embeddings into the answer index. This capability enhances adaptability, allowing you to leverage proprietary models tailored to your unique context.

Index Configuration requires you to set up and configure Generative AI Tools. As a prerequisite, go to the App settings and configure the LLM and Vector Model. 

![LLM Configuration](../images/configure-llm.png "LLM Configuration")

* Vector Model: Select the embedding model of your choice. 

* Source Fields: Select the chunk fields that you want to use to generate vector embeddings. Choosing the fields with higher relevance as source fields will result in embeddings with more useful data and thereby, result in efficient answers to search queries. You can select more than one field as source fields. In the case of multiple source fields, the sequence of the fields affects the generated vector. 

## Switching between Models

When you switch one model to another, retrain the application to generate embeddings again.
