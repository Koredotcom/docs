# GitLab connector

If you are trying to search through the content in your GitLab repositories, configure this connector. 


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

Search AI interacts with the GitLab using APIs. It supports the following types of authorizations. 

* OAuth 2.0
* Using Personal Access Tokens. 

## Set up GitLab

Login to the GitLab account. Depending on the type of Authorization to be used,  perform either of the following. 

* Generate[ Personal Access Token](https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html)
* Generate [OAuth client credentials ](https://docs.gitlab.com/ee/integration/oauth_provider.html)


## Configure Search AI

Create a new connector for GitLab in Search AI and provide the following configuration fields. 

* Name - Provide a unique name for the connector.  
* Authorization Type - Provide the API token generated above. If the Auth type is set to Private Token, provide the Personal Access Token here. If the auth type is set to OAuth 2.0, provide the client credentials. 

Use the following fields to **map the content** in the GitLab account to the fields in SearchAI. For the standard implementation, **use the default values of the fields** defined below. 


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
   <td>Field that uniquely identifies the content 
   </td>
   <td>project_id
   </td>
  </tr>
  <tr>
   <td>Title 
   </td>
   <td>Field that defines the title for the content
   </td>
   <td>title
   </td>
  </tr>
  <tr>
   <td>Content 
   </td>
   <td>Field that provides the description of the content
   </td>
   <td>description
   </td>
  </tr>
  <tr>
   <td>URL 
   </td>
   <td>Field that provides the URL of the content 
   </td>
   <td>web_url
   </td>
  </tr>
  <tr>
   <td>CreateOn 
   </td>
   <td>Field used to get the creation date.
   </td>
   <td>created			
   </td>
  </tr>
  <tr>
   <td>UpdateOn 
   </td>
   <td>Field used to get the creation date.
   </td>
   <td>updated
   </td>
  </tr>
  <tr>
   <td>Type 
   </td>
   <td>Field used to identify the type of content.
   </td>
   <td>-
   </td>
  </tr>
</table>


Click **Connect** to sync the content from GitLab. 
