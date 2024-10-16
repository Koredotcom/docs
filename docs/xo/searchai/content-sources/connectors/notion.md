# Notion Connector

SearchAI allows the ingestion of content from Notion Workspaces and makes them searchable. 


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
   <td> Pages
   </td>
  </tr>
</table>

## Authorization Support 

Search AI supports interaction with Notion using [the internal integration token and the OAuth 2.0 authentication mechanism](https://developers.notion.com/docs/authorization?_gl=1*1lxqhtn*_gcl_au*MzgzMDU4OTQ1LjE3MjcyNjA5Mzc.*_ga*MTUxOTU0MzMzNy4xNzI3MjYwOTM4*_ga_9ZJ8CB186L*MTcyNzI2MDkzNy4xLjEuMTcyNzI2MTAxMS40OC4wLjA.). 

Refer to this documentation for generating an **[internal integration](https://developers.notion.com/docs/authorization?_gl=1*1lxqhtn*_gcl_au*MzgzMDU4OTQ1LjE3MjcyNjA5Mzc.*_ga*MTUxOTU0MzMzNy4xNzI3MjYwOTM4*_ga_9ZJ8CB186L*MTcyNzI2MDkzNy4xLjEuMTcyNzI2MTAxMS40OC4wLjA.)**. Ensure that the Notion workspace pages are shared with the integration so that the content can be ingested into the SearchAI application. 

**Public Integration** is implemented using the OAuth 2.0 protocol. Refer to [this ](https://developers.notion.com/docs/authorization?_gl=1*1lxqhtn*_gcl_au*MzgzMDU4OTQ1LjE3MjcyNjA5Mzc.*_ga*MTUxOTU0MzMzNy4xNzI3MjYwOTM4*_ga_9ZJ8CB186L*MTcyNzI2MDkzNy4xLjEuMTcyNzI2MTAxMS40OC4wLjA.)to set up this type of integration. 


## Configure Notion Connector in SearchAI

Provide the following fields to configure the connector. Some fields are used for authentication with the application, and some fields are used to map the searchable fields and metadata fields of the content that is to be ingested from the application. 

* **Name**: Unique name for the connector
* **Authorization Type**: Select Personal Access Token(Internal Integration) or OAuth 2.0(Public Integration) as required.  Depending on the type of auth mechanism selected, provide the access token or the client credentials.

There are some more fields that are used to map the content in Notion to that of the corresponding fields in Search AI. Currently, only standard fields are supported. Hence, it is not mandatory to provide the values of those fields.   
