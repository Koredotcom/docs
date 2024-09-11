# Search AI Updates

This document provides information on the feature updates and enhancements introduced in **Search AI** of XO v11.x releases.

## v11.5.0 September 01, 2024

<u> Patch Release </u>

This update includes enhancements and bug fixes. Key enhancements included in this release are summarized below.

### Content Browser

Search AI chunk browser is now enhanced to make it more user-friendly, providing a detailed view of the extracted content and making it easier to edit. Additionally, you can now view tables directly in the browser. 

### Extraction of Complex Tables from HTML

Search AI can now extract content from complex HTML tables using the Layout-Aware Extraction Strategy, enhancing its ability to accurately capture and process data from table structures. This improvement ensures more reliable data extraction and accurate information retrieval from tabular content.

### Support for New Connectors (Beta)

SearchAI now extends support for data ingestion from a broader range of knowledge bases and enterprise applications through connectors, including Airtable, HubSpot, GitLab, GitHub, Jira, Monday, Notion, and Slack. This expansion allows users to seamlessly integrate and ingest content from these platforms, enhancing the versatility of the data sources.

### Sharepoint Site Support Enhancement

SearchAI now supports ingesting content from up to 6,000 sites from Sharepoint using the connector. This enhancement allows users to seamlessly access and search through a large volume of data, ensuring better search capabilities and improving the information retrieval process across the organization.

### Support for Re-Rankers 

Search AI now offers advanced re-ranking capabilities to improve the quality and relevance of retrieved content significantly. Re-ranking is a crucial second step in the search process that refines initial results for greater accuracy. Enable and configure re-ranking models, like Cross Encoder, BGE, or MixedBread re-rankers, to reorder the chunks provided by the first-stage retriever, ensuring more relevant and accurate answers. 

### Enhanced Search AI Navigation 

The latest version of Search AI offers a simplified interface that is easy to use and intuitive to navigate. The newer design enhances usability and productivity. 

<hr>

## v11.4.1 August 11, 2024

<u> Patch Release </u>

This update includes bug fixes and minor enhancements.

### Search AI Menu Update

The "Answers" menu is renamed "Search Configurations" across the product, aligning with the revised product naming convention. 

Key updates:

* “Search AI > Answers” is now "Search AI > Search Configurations".
* The header in the side navigation for this section now reads "Search Configurations".
* In Automation AI, "Answers" is replaced with "Search Configurations".

<hr>

## v11.4 July 27, 2024

<u> Patch Release </u>

This update includes feature enhancements and bug fixes. Key features and enhancements included in this release are summarized below.

### Source Ingestion Logs

Search AI now maintains comprehensive logs for the content ingested through web crawling. These logs include status codes, sizes, and other necessary details for each page ingested or skipped during the crawling process. Detailed logs help the administrators monitor the ingestion process and promptly identify and resolve issues. 

### Detailed Error Messages for Web Crawl Failures

Search AI now provides detailed error messages for web crawl failures, along with recommended actions to take. This enhancement aids in quick troubleshooting and rectification of issues.

### Answer Generation API Enhancement

The Answer Generation API now allows for more details about the answer in the response. You can get detailed information about the qualified chunks for the query in response, along with the answer to the query. This can be particularly useful to orchestrate complex use cases.

### Answer Generation Errors

Search AI now displays error messages to users when the answer generation process fails. These errors may occur for various reasons, such as an invalid OpenAI key or the absence of relevant chunks. This feature ensures users are promptly informed of any issues, facilitating quicker resolution.

### Layout Aware Content Extraction Strategy (Beta)

Search AI introduces an advanced way of extracting content from documents (PDF and DOCX) by detecting the objects in the document using a combination of OCR technology, layout detection models, and layout awareness rules. This advanced strategy can accurately extract content from tables, graphs, and charts in the documents.

<hr>

## v11.3.1 July 13, 2024

<u> Patch Release </u>

This update includes bug fixes.

<hr>

## v11.3.0 June 29, 2024

<u> Patch Release </u>

Key features and enhancements included in this release are summarized below.

### Support for Filtered Content Ingestion from third-party applications

Search AI now extends support for content ingestion from a wider variety of third-party applications, including Confluence Cloud, Azure Storage, Salesforce, Oracle Knowledge, and dotCMS, in addition to the existing connectors. The connectors now offer customizable filters that give platform users the flexibility to selectively ingest data, allowing for precise and targeted indexing and enhancing the search index's efficiency and accuracy.

### Advanced Web Crawl Configurations

Search AI now offers advanced web crawl capabilities that allow platform users to remove redundant sections of a web page while indexing. Also, for JavaScript-rendered pages, the users can now introduce a delay after which the crawler starts indexing the page, allowing all dynamic content to load properly. These enhancements provide greater control and precision in web crawling, leading to a more efficient and accurate search experience.

<hr>

## v11.2.1 June 15, 2024

<u>Patch Release</u>

Key features and enhancements included in this release are summarized below.

###  Automated Content Syncing and Training with Connectors

Search AI now offers the capability to schedule automatic content syncing from third-party applications using connectors. The data is automatically ingested, and the application is trained with the new data, ensuring that the content is always up to date.

###  Enhanced Web Crawl Error Reporting

The enhanced web crawl error reporting feature in Search AI provides detailed information about crawl failures, enabling quick identification and resolution of issues. 


<hr>

## v11.2 June 01, 2024

<u>Patch Release</u>

Key features and enhancements included in this release are summarized below.

###  Support for Hybrid Chunk Retrieval Strategy

Search AI now supports the Hybrid Chunk Retrieval strategy, which leverages both keyword-based and semantic search techniques to deliver more precise and contextually appropriate answers. This improvement ensures that users receive high-quality responses tailored to their queries, enhancing the overall search experience.

###  Chunk Order Configuration 

Search AI now allows adding relevant chunks in your preferred order within the prompt. The order of the chunks in the prompt can affect the performance depending upon the LLM limitations of context retention, prompt lengths, and attention mechanism. By allowing users to configure the chunk order, SearchAI ensures that relevant data is prioritized, improving the generated responses' quality and reliability.

<hr>

## v11.1.1 May 11, 2024

<u>Patch Release</u>

This update includes feature enhancements and bug fixes. Key enhancement included in this release is summarized below.

### Extended Connector Support

In addition to the existing ServiceNow connector, Search AI now supports more knowledge base connectors, including Zendesk, Confluence Server, Google Drive, and Dropbox. The new connectors make it easier to integrate Search AI with these platforms, helping users quickly find and access information to boost productivity. [Learn more :octicons-arrow-right-24:](../../searchai/content-sources/connectors.md)

<hr>

## v11.1.0 April 27, 2024

<u>Minor Release</u>

This update includes feature enhancements and bug fixes. Key feature included in this release is summarized below.

### Business Rules Support

Business Rules Support allows users to define custom rules that modify the answers provided by the AI search system. By using contextual data specific to their needs, users can create tailored rules to refine the AI's responses. The system also suggests relevant context variables dynamically to assist in defining these rules. [Learn more :octicons-arrow-right-24:](../../searchai/business-rules.md)
