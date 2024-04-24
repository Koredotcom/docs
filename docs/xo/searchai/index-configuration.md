# Indexing 

Indexing is the process of generating vectors or embeddings from the extracted chunks and creating a knowledge Index that can be used for generating answers.

Vectors or Embeddings are multi-dimensional numerical representations of the chunks and carry their semantic information. Embedding Models are algorithms that can translate data into vectors. Kore XO platform supports various embedding models such as MPNet, LaBSE, and e5 and gives you the flexibility to choose a model as per your specific needs.

## Features

* You can select from a range of supported embedding models such as MPNet, LaBSE, e5, and more. This gives you flexibility and ensures compatibility with diverse requirements and preferences.
* You have the autonomy to choose the specific chunk fields on which embeddings are to be generated. This selection allows you to focus on fields that hold higher relevance to your particular use case.

Index Configuration requires you to set up and configure Generative AI Tools.
![LLM Configuration](../images/configure-llm.png "LLM Configuration")

As a prerequisite, go to the **App settings** and configure  Kore XO GPT LLM and enable Vector Generation Model.
![LLM Configuration](../images/xo-gpt-vector-model.png "LLM Configuration")

Then go to the **Dynamic Conversations**, select the preferred model for Vector Generation and use the toggle button to enable it. 
![LLM Configuration](../images/vector-model.png "LLM Configuration")

* **Vector Model**: Select the embedding model of your choice.

* **Source Fields**: Select the chunk fields that you want to use to generate vector embeddings. Choosing the fields with higher relevance as source fields will result in embeddings with more useful data and thereby, result in efficient answers to search queries. You can select more than one field as source fields. In the case of multiple source fields, the sequence of the fields affects the generated vector.

## Switching between Models

When you switch from one embedding model to another, to generate the embeddings again, **Train** the application.
