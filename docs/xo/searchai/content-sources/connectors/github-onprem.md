# GitHub On-Premise Connector

GitHub is a widely used platform for version control and collaboration, enabling developers to host, manage, and track changes in code repositories. With the GitHub connector in SearchAI, you can ingest and index **content related to issues, pull requests, and README files** from GitHub repositories, making it easily searchable. This connector allows you to configure and index content from one or multiple repositories simultaneously, streamlining access to critical information.

<span style="text-decoration:underline;">Specifications</span>


<table>
  <tr>
   <td><strong>Type of Repository </strong>
   </td>
   <td>Cloud
   </td>
  </tr>
  <tr>
   <td><strong>Supported Content</strong>
   </td>
   <td>Issues, Pull Requests, README files
   </td>
  </tr>
  <tr>
   <td><strong>RACL Support</strong>
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td><strong>Content Filtering</strong>
   </td>
   <td>Yes
   </td>
  </tr>
</table>



## Prerequisites



* Set up auth on Github 
* Whitelist Search AI domain in GitHub On-Prem instance. 


## Authorization Support

Search AI supports two types of authentication for communication with GitHub.



1. Using **Personal Access Token**
2. **OAuth 2.0 authentication**


## GitHub Configuration 

To use **a Personal Access Token** for authentication, go to the [Developer Settings](https://github.com/settings/tokens) in your GitHub account and generate a token. 

To use **OAuth authentication**, [register a new OAuth application](https://github.com/settings/developers). Provide the basic details of the app. Use one of the following as the callback URLs, depending on your region or deployment.



* JP Region Callback URL: [https://jp-bots-idp.kore.ai/workflows/callback](https://jp-bots-idp.kore.ai/workflows/callback)
* DE Region Callback URL: [https://de-bots-idp.kore.ai/workflows/callback](https://de-bots-idp.kore.ai/workflows/callback)
* Prod Callback URL: [https://idp.kore.com/workflows/callback](https://idp.kore.com/workflows/callback)

This will generate client credentials. [Use the device flow](https://docs.github.com/en/apps/oauth-apps/building-oauth-apps/authorizing-oauth-apps#device-flow) and client credentials to manually create an access token using an API client tool, such as Postman. 


## GitHub Connector Configuration in Search AI

Configure the GitHub connector in Search AI.  Provide the following fields for authentication with the GitHub application. 

1. **Name**: Unique identifier for the connector. 
2. **Authorization Type**: Select the type of authorization. 
    1. Personal Access Token (APIKey): If this authentication type is selected, provide the generated token. 
    2. OAuth 2.0: If this auth type is selected, provide the client credentials generated above. 

Click **Connect** to authenticate the credentials. 


## Content Ingestion

Go to the Manage Content page and select the **Object** type that you want to ingest. Search AI supports ingesting **Issues, Pull Requests, and Readme files** from GitHub repositories. 

To select all the content from the selected object types, select **Ingest All Content** under **Ingestion Filter** and click **Sync**. 

You can also ingest selective content by using the **Ingest Filtered Content** option. Click the Configure link to set Standard Filters on GitHub content. 

**Standard Filter**

Use a standard filter to select the repositories from which content is to be ingested. All the repositories accessible are listed here. Select the required repositories and click Add Selection. 

Upon ingestion, the connector ingests the following fields for different types of content. The kind of content is identified by ``doc_source_type`` in the ingested JSON. For each type of content, the repositories to which they belong are captured using the repository_id and repository_name fields. The URL field contains the link to the specific object. Other fields, such as create and update dates, are captured in their respective fields. 

For Issues, additional information, such as the status of the issue, comments, reporter, assignee, reactions, closure date, closure by, labels, and other fields, is also captured and stored in the corresponding fields. 


## RACL Support

Search AI supports access control for content ingested from GitHub accounts. 

For all content ingested from GitHub repositories, Search AI currently uses the **repository ID** as the sys_racl field. This is stored as a permission entity; therefore, use the Permission Entity APIs to associate users with the permission entity corresponding to the repository ID, enabling access to the content. 
