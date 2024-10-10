# Monday Connector

SearchAI allows ingestion of content from Monday and makes it searchable. You can configure this connector to index content from one or more boards. 


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
   <td> Items on a board
   </td>
  </tr>
</table>



## Authorization Support 

Search AI supports interaction with Monday using both the **Monday API token** and the **OAuth 2.0** authentication mechanism. 


## Monday Configuration

Depending upon the type of authentication to be used for integration, generate [OAuth credentials](https://developer.monday.com/apps/docs/oauth) or generate a [Monday API Token](https://developer.monday.com/api-reference/docs/authentication). 


## Monday Connector Configuration in Search AI

Provide the following fields while configuring the Monday connector in Search AI. 

1. Name: Unique identifier for the connector. 
2. Authorization Type: Select Personal Access Token or OAuth 2.0. Personal Access Token here refers to the user’s global API token. For OAuth 2.0, provide the client credentials. 

The following properties are used to map the content from the Monday application to SearchAI application. Currently, only standard fields are supported, hence it is not mandatory to provide all the other fields.
