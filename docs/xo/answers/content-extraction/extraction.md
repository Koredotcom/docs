# Content Extraction

To generate answers using the source data, the ingested data is segmented into smaller segments or chunks to understand better, organize, and efficiently retrieve the most relevant piece of information when required. 

The application supports various chunk-generation strategies. You have the flexibility to select and customize the strategies based on the format and structure of the ingested data or as per the answers required. You can configure multiple strategies to apply to different types of content. 

To add a new strategy or to customize an existing one, go to the **Extraction** page.

![Extraction Home](../images/extraction-home.png "Extraction Home")

By default, every application has a **Default Strategy** that is configured to perform Text-based Extraction on all types of data from all the sources.

## Using Multiple Extraction Strategies

When there is more than one strategy, the strategies are applied to the data based on their priority or sequence in the list. For example, if there are two strategies defined - one for the web pages and the other one is the default one that applies to all types of content, the sequence decides the strategy to be used for a given content type. If the default strategy is on the top, it will extract chunks from all the sources and the other strategy will not be used at all. If, on the other hand, the strategy for web pages is on top, it will be applied first and will extract the chunks from the web pages followed by the extraction of chunks from all other sources using the default extraction strategy.  

<add screenshot>

## Adding a new Strategy

To add a new extraction strategy, click on the **+Add Strategy** button.

![Add a new Strategy](../images/add-strategy.png "Add a new strategy")
Enter the following details of the strategy.

![Add Widget](../images/add-strategy-widget.png "Add Widget")

**Strategy Name**: Enter a unique name for the strategy for identification. 

**Define Source**: Use the fields here to define the source data on which this strategy is applicable. 



* **Source Name**: This field allows you to select the data on which the strategy is to be applied. It lists all the data sources configured in the application and the content corresponding to each of them. 
* **Content Type**: This field allows you to specify the content type within each source of data. 

**Define Chunk Strategy:** Use this field to specify the chunk strategy and its configuration for the selected source. 	


## Deleting a Strategy


## Enabling/ Disabling a Strategy
