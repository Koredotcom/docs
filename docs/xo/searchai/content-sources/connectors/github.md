# GitHub Connector

SearchAI allows ingestion of content from GitHub Repositories and makes it Searchable. You can configure this connector to index content from one or more repositories at once. 

<span style="text-decoration:underline;">Specifications</span>


<table>
  <tr>
   <td><strong>Type of Repository </strong>
   </td>
   <td>Cloud
   </td>
  </tr>
  <tr>
   <td><strong>Extractive Model for Answer Generation</strong>
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td><strong>Generative Model for Answer Generation</strong>
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td><strong>Supported Content</strong>
   </td>
   <td>Issues
   </td>
  </tr>
</table>


## Authorization Support

Search AI supports two types of authentication for communication with GitHub.

1. Using **Personal Access Token**
2. **OAuth 2.0 authentication**


## Prerequisites - GitHub Configuration 

To use **Personal Access Token** for authentication, go to the [Developer Settings](https://github.com/settings/tokens) in your GitHub account and generate a token. 

To use **OAuth authentication**, r[egister a new OAuth application](https://github.com/settings/developers). Provide the basic details of the app. Use one of the following as the callback URLs, depending on your region or deployment. 

* JP Region Callback URL: [https://jp-bots-idp.kore.ai/workflows/callback](https://jp-bots-idp.kore.ai/workflows/callback)
* DE Region Callback URL: [https://de-bots-idp.kore.ai/workflows/callback](https://de-bots-idp.kore.ai/workflows/callback)
* Prod Callback URL: [https://idp.kore.com/workflows/callback](https://idp.kore.com/workflows/callback)

This will generate client credentials and a token. These are required to configure the GitHub connector in Search AI. 

## GitHub Connector Configuration in Search AI

Configure the GitHub connector in Search AI.  Provide the following fields for authentication with the GitHub application. 

1. **Name**: Unique identifier for the connector. 
2. **Authorization Type**: Select the type of authorization. 
    1. Personal Access Token: If this auth type is selected, provide the generated token. 
    2. OAuth 2.0: If this auth type is selected, provide the client credentials and the refresh token. 

There are a few other fields that are used to map the content from the GitHub repositories. Currently, Search AI supports standard fields only; hence, it is not mandatory to provide those fields. The default values of the fields are automatically populated. 

The following fields are used to map the content from the GitHub repositories. For each of the fields, use the default values for the standard implementation in GitHub. 


<table>
  <tr>
   <td>Field 
   </td>
   <td>Description
   </td>
   <td>Value
   </td>
  </tr>
  <tr>
   <td>GitHub Repositories
   </td>
   <td>Comma-separated list of repositories from which data is to be ingested. 
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Id
   </td>
   <td> Field to be used as the unique identifier of the repository when data is ingested from the GitHub repository. 
   </td>
   <td>Id
   </td>
  </tr>
  <tr>
   <td>Title
   </td>
   <td>Field to be used as the title of the content. 
   </td>
   <td>title
   </td>
  </tr>
  <tr>
   <td>Content
   </td>
   <td>Field to be used to get the searchable content for the GitHub repositories.
   </td>
   <td>body
   </td>
  </tr>
  <tr>
   <td>URL
   </td>
   <td>Field to be used as the URL This URL is used as citation when the content qualifies as the answer.
   </td>
   <td>url
   </td>
  </tr>
  <tr>
   <td>CreateOn
   </td>
   <td>Field to fetch the creation date for the cotent. This is used to identify the incremental change in the content during the sync activity with SearchAI. 
   </td>
   <td>created_at
   </td>
  </tr>
  <tr>
   <td>UpdateOn
   </td>
   <td>Field to get the updation date for the cotent. This is used to identify the incremental change in the content during the sync activity with SearchAI. 
   </td>
   <td>updated_at
   </td>
  </tr>
</table>
