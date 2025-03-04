
# HelpScout Connector

Help Scout is a customer support platform designed for businesses to manage customer communications efficiently. It offers features such as shared inboxes, knowledge bases, live chat, and robust reporting, making it a key tool for teams aiming to deliver seamless support experiences.

Search AI enables easy integration with Helpscout and ingests **Article**-related content, facilitating easy and efficient search. 

<span style="text-decoration:underline;">HelpScout Connector Specifications</span>


<table>
  <tr>
   <td>Type of Repository 
   </td>
   <td>Cloud
   </td>
  </tr>
  <tr>
   <td>Content Supported
   </td>
   <td>Articles
   </td>
  </tr>
  <tr>
   <td>RACL Support
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td>Content Filtering
   </td>
   <td>No
   </td>
  </tr>
</table>



## Prerequisites

Search AI interacts with the HelpScout application using its APIs. To fetch the articles content and metadata, Search AI uses the [Docs APis](https://developer.helpscout.com/docs-api/) exposed by the HelpScout. And to fetch the access-related information and find user details, it uses the [Inbox APIs](https://developer.helpscout.com/mailbox-api/). 

For accessing the Docs APIs, Search AI requires an API Key. and to access the Inbox APIs, it uses OAuth 2.0 authentication. Hence, to enable this communication, you require



* API Key
* OAuth Client credentials. 


## Generate API Key

To generate, view, or regenerate your API key, follow these steps:



* Click the "person" icon next to the search bar at the top right of your account.
* Select "Your Profile." 
* In the menu on the left, click on the "Authentication" link and then choose the "API Keys" tab.

Note: You need “Docs: Create new, edit settings & Collections" permission to generate an API Key. 


## Create OAuth Client Credentials

To create a new client app, 



* Go to your Profile > My Apps and click Create My App. 
* Provide one of the following as the Redirection URL, depending on your region or deployment. 
    * JP Region Callback URL: https://jp-bots-idp.kore.ai/workflows/callback
    * DE Region Callback URL: https://de-bots-idp.kore.ai/workflows/callback
    * Prod Callback URL: https://idp.kore.com/workflows/callback
* Click Save. It will generate an App ID and App Secret. These are required during the configuration of the HelpScout connector in Search AI. 


## HelpScout Connector Configuration in Search AI

Go to the Connectors home page in Search AI. Select HelpScout Connector. Provide the following details in the Authorization tab and click Connect to set up the connection. 



* Name: Unique name for the connector. 
* API Key: API Key generated above.
* Client ID and Client Secret: OAuth Client App credentials generated above.


## Content Ingestion

Search AI connector ingests the HelpScout articles from across different collections. 

For each article, it ingests the content in text as well as HTML format. Additional information about an article, such as the category, collection, URL, creation, and update dates, are also captured in separate fields. 

Note that the connector only ingests published articles from the HelpScout application. 


## RACL Support

Every article in HelpScout is part of a collection. These collections can be categorized as either public or private. Public collections are visible to everyone, while private collections are only accessible to HelpScout members who have permission to view the collection. 

To manage visibility, the sys_racl field is configured as follows: 


* For articles in a public collection, sys_racl is set to *. 
* For articles in a private collection, sys_racl is set to the collection ID. This ID functions as a permission entity. You can use the permission entity APIs to associate users with the permission entity corresponding to the collection ID.