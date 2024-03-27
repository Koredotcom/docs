# Content Extraction

To generate answers using the source data, the ingested data is segmented into smaller segments or chunks to understand better, organize, and efficiently retrieve the most relevant set of data when required. Selecting the most appropriate strategy requires considering several factors, like the type of content, the embedding model to store chunks, the expected length and complexity of user queries and answers, etc.

The application supports various chunk-generation strategies. You have the flexibility to select and customize the strategies based on the format and structure of the ingested data or as per the answers required. You can configure multiple strategies to apply to different types of content. This improves the precision of answers by aligning the strategy to the document characteristics and gives you flexibility and granular control over the answers generated.  

To view the strategies defined in an application or to make any changes, go to the **Extraction** page.

![Extraction Strategy](../images/extraction-home.png "Extraction Strategy")

By default, every application has a **Default Strategy** configured to perform Text-based Extraction on all types of data ingested from different sources.

## Adding a new Strategy

To add a new extraction strategy, click on the **+Add Strategy**button.

![Add a new Strategy](../images/add-strategy.png "Add a new Strategy")
Enter the following details of the strategy.

![Strategy Details](../images/add-strategy-widget.png "Strategy Details")

**Strategy Name**: Enter a unique name for the strategy for identification.

**Define Source**: Use the fields here to define the source data on which this strategy is applicable. 

* **Source Name**: This field allows you to select the data on which the strategy is to be applied. It lists all the data sources configured in the application and the content corresponding to each of them. 
* **Content Type**: This field allows you to specify the content type within each data source.

**Define Chunk Strategy:** Use this field to specify the chunk strategy and its configuration for the selected source.

**Extraction Model:** Select the extraction model from the drop-down menu. The extraction model defines the technique applied to break down large pieces of textual information into manageable chunks. At present, we support the Text Extraction Model, with plans to extend support for multiple models soon.

**Text Extraction Model**

The Text Extraction Model incorporates a fusion of techniques from natural language processing (NLP) and machine learning. It is based on the concept of tokenization, where the text is segmented into smaller units. The model undergoes training to identify and extract most suitable chunks relevant to the search queries.

Configuration: Use the **chunk size** field to define the size of a single chunk. This field can help optimize the relevance of the content retrieved for answer generation. Choose the value of this field depending on various factors like the structure and type of content, type of expected user queries, type of embedding models used, etc. 

* When **Chunk Size** is set to **pages**, every page is treated as a single chunk. 
* When **Chunk Size** is set to **Chunk Tokens**, chunks are prepared using the following two parameters:
    * **Tokens**: Maximum number of tokens that can be present in a chunk. This field can take a maximum value of 1000. A smaller chunk will result in a larger number of chunks and similarly, a larger chunk will result in a lesser number of chunks. An optimal  
    * **Chunk Overlap**: Number of tokens that should overlap between two consecutive chunks.

Configure the strategy as per your needs and click the **Save** button. By default, as soon as a strategy is created, it is automatically enabled.

## Deleting a Strategy

To delete an existing strategy, go to the corresponding strategy page and click on the **Delete **button. This will not affect the existing chunks.

![Deleting a strategy](../images/delete-strategy.png "Deleting a strategy")

## Enabling/ Disabling a Strategy

By default, as soon as a strategy is created, it is enabled. You can also temporarily enable or disable a strategy for testing purposes to evaluate alternative extraction strategies or when it is no longer needed. You can do so from the strategy page. 

![Disable a strategy](../images/disable-strategy.png "Disable a strategy")

## Using Multiple Extraction Strategies

When there is more than one strategy defined in a given application, the **strategies are applied to the data based on their priority or sequence** in the list. For example, if there are two strategies defined - one for the web pages and the other one is the default one that applies to all types of content, the sequence decides the strategy to be used for a given content type. If the default strategy is on the top, it will extract chunks from all the sources and the other strategy will not be used at all. If, on the other hand, the strategy for web pages is on top, it will be applied first and will extract the chunks from the web pages followed by the extraction of chunks from all other sources using the default extraction strategy.  

![Multiple Strategies](../images/multiple-strategies.png "Multiple Strategies")

To **change the sequence** of the strategies, drag and drop the strategy up or down as required.

![Moving Strategies](../images/moving-strategies.png "Moving Strategies")
