# GitHub Connector

SearchAI allows ingestion of content from GitHub Repositories and makes it Searchable. You can configure this connector to index content from one or more repositories at once. 


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
   <td>Supported Content
   </td>
   <td>Issues
   </td>
  </tr>
</table>

## Authorization Support

You can use **Personal Access Token** or **OAuth 2.0 authentication** for communication between Search AI and GitHub. 


## GitHub Configuration 

To use Personal Access Token for authentication, go to the [Developer Settings](https://github.com/settings/tokens) in your GitHub account and generate a token. 

To use OAuth authentication, [register a new OAuth application](https://github.com/settings/developers). 

## GitHub Connector Configuration in Search AI

Configure the GitHub connector in Search AI. 

Provide the following fields for authentication with the GitHub application. 

1. Name: Unique identifier for the connector. 
2. Authorization Type: Select the type of authorization. 
    1. Personal Access Token: If this auth type is selected, provide the generated token. 
    2. OAuth 2.0: If this auth type is selected, provide the client credentials and the refresh token. 

There are a few other fields that are used to map the content from the GitHub repositories. Currently, Search AI supports standard fields only, hence, it is not mandatory to provide those fields. 
