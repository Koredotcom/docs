# Introduction

The Chunk Browser provides a means for you to observe the extracted chunks from the source data, giving you an insight into the output from the extraction process and enabling you to undertake subsequent actions like editing and rectifying the chunks. This not only allows you to view and verify the extracted chunks but also allows you to edit the chunks enabling you to work with answers in a way that best serves your specific goals and requirements.

## Key capabilities

* Observation and Verification: You can use the Chunk Browser to inspect and verify the extracted chunks. This step is crucial for ensuring the correctness of the extraction process, the accuracy of the chunks generated and to ensure that no data is lost during extraction. 
* Editing of Chunks: You can edit the chunk information directly within the browser interface. This capability can help you add any missed information, edit inaccurate information, or simply enrich the extracted information.

To view the chunks, go to the Chunk Browser under the Content tab. The chunks browser displays chunks from all the data ingested into the application. 

![View Chunks](../images/chunk-browser.png "View Chunks")

## View Chunk Details

To view the details of any chunk, click on the chunk record. The Chunk Viewer displays the summary of the selected chunk. 

![Chunk Viewer](../images/summary-view.png "Chunk Viewer")

* **Document Title**: Title of the document/page in the source from where the chunk is extracted.
* **Chunk Title**: Title given to the chunk 
* **Chunk Text**: Content of the chunk
* **Chunk ID**: Unique identifier of the chunk.
* **Page Number**: Page number in the source file from where the chunk is extracted, if applicable. 
* **Source Title**: Name of the source of the chunk in the application. 
* **Source**: The source type of the content like web pages, files or connectors.  
* **Extraction Strategy**: Strategy used for extracting the chunk. .
* **Edited on:** Date of the last update to the chunk, if applicable.
* **Source URL**: URL of the source from where the chunk is extracted, if applicable. 
* **Page Number**: Page number in the source file from where the chunk is extracted, if applicable. 

The Chunk Viewer also provides the following options:

**View All from Document**: This can be used to see all the chunks from the same source document as the chunk displayed. 

**View JSON**: This can be used to view the contents of the chunk in JSON format. It lists all the properties that store information about the chunk.  

![Chunk Viewer](../images/json-view.png "Chunk Viewer")

## Edit Chunks

The Chunk Viewer also allows you to edit and update the title and text of the chunk. This gives you the ability to enhance the chunk for effective answers.

![Update Chunks](../images/update-chunk.png "Update Chunks")

## Search and Filter Chunks

You can also use the chunk browser to search for specific chunks using any of the properties of the chunks like chunkTitle, chunkText, source, etc. Use the **search bar** at the top to search for chunks.

![Search Chunks](../images/search-bar.png "Search Chunks")

The **Filter option** offers you an advanced search capability that you to use to find chunks matching more than one criterion like all the chunks from a given source containing a specific word or phrase.

![Filter Chunks](../images/filter-chunks.png "Filter Chunks")
