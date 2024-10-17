# Jira Connector

Search AI enables easy integration with Jira to ingest, index, and search through the **issues**. Data corresponding to each Jira issue is processed and organized to ensure efficient search and retrieval, improving accessibility to project-related content.

<table>
  <tr>
   <td>Type of Repository 

   </td>
   <td>Cloud

   </td>
  </tr>
  <tr>
   <td>Extractive Model for Answer Generation

   </td>
   <td>Yes

   </td>
  </tr>
  <tr>
   <td>Generative Model for Answer Generation

   </td>
   <td>Yes

   </td>
  </tr>
  <tr>
   <td>Supported Content Type
   </td>
   <td>Issues

   </td>
  </tr>
</table>

## Prerequisites

Create an Atlassian account with access to all the content to be indexed. 

## Set up Jira

Search AI interacts with Jira through the APIs. Hence, to set up integration, create an **API token** with the Atlassian account. Follow the instructions in this [documentation](https://support.atlassian.com/atlassian-account/docs/manage-api-tokens-for-your-atlassian-account/) for step-by-step instructions. 

## Configure Jira Connector in SearchAI 

Go to the **Connectors** page and add **Jira Connector**. Provide the following details to configure the connector. 

* Name - Provide a unique name for the connector.  
* API Token - Provide the API token generated above. 
* Domain - The URL of your Jira application instance. 
* Email - Email address corresponding to the Atlassian account set up for indexing. 

The following fields are used to **map the content(issues)** in the Jira account. For the standard implementation, use the default values of the fields. 


<table>
  <tr>
   <td>Field 
   </td>
   <td>Description
   </td>
   <td>Default Value
   </td>
  </tr>
  <tr>
   <td>ID 
   </td>
   <td>Field used as unique identifier for the issues.
   </td>
   <td>key
   </td>
  </tr>
  <tr>
   <td>Title 
   </td>
   <td>Field used as the title of the issue.
   </td>
   <td>fields.summary
   </td>
  </tr>
  <tr>
   <td>Content 
   </td>
   <td>Field used as the content of the issue.
   </td>
   <td>renderedFields.description
   </td>
  </tr>
  <tr>
   <td>URL 
   </td>
   <td>This is the base URL for the issues.
   </td>
   <td>self, indicates that the domain is same as the URL. 
   </td>
  </tr>
  <tr>
   <td>CreateOn 
   </td>
   <td>Field used to get the creation date. This is used for incremental content ingestion during periodic syncing by detecting and processing new, deleted, and updated content.
   </td>
   <td>created			
   </td>
  </tr>
  <tr>
   <td>UpdateOn 
   </td>
   <td>Field used to get the creation date. This is used to incrementally ingest content during periodic syncing by identifying new, deleted and updated content.
   </td>
   <td>updated
   </td>
  </tr>
  <tr>
   <td>Type 
   </td>
   <td>Field used to identify the type of content.
   </td>
   <td>fields.issuetype.name
   </td>
  </tr>
</table>


## Access Control

SearchAI supports access control for content ingested from Jira accounts using the **Project ID** for issues.

* In Jira, each issue is linked to a specific project through a unique **Project ID**.
* This **Project ID** is stored in the **RACL field** of the chunks related to the content ingested from Jira.
* For Search AI to determine which users can access a specific issue, use the **Permission Entity APIs** and associate users with the project ID.
* Users added to the corresponding Permission Entities gain access to the issues associated with those projects.

