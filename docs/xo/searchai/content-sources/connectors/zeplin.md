# Zeplin Connector

Zeplin is a collaboration tool for designers and developers that allows them to hand off UI designs with specs, assets, and code snippets.

Search AI supports searching through the **Screens **in the Zeplin account.  \


**<span style="text-decoration:underline;">Zeplin Connector Specifications</span>**


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
   <td>Screens
   </td>
  </tr>
  <tr>
   <td>RACL Support
   </td>
   <td>Yes
   </td>
  </tr>
    <tr>
   <td>Automatic Permission Entities Resolution </td>
   <td>Yes </td>
  </tr>
  <tr>
   <td>Content Filtering
   </td>
   <td>No
   </td>
  </tr>
</table>



## Connector Configuration

Search AI interacts with Zeplin via APIs. To use the Zeplin API and authenticate requests sent by Search AI, you can use any one of the following auth mechanisms. 



* Personal Access Token
* OAuth 2.0 - For using OAuth 2.0, you need to create a new app in Zeplin. Search AI interacts with the application using the app. 


### Generating Personal Access Token



* Go to the Profile page in your account. 
* Navigate to the [Developer page](https://app.zeplin.io/profile/developer). 
* Click on Create new token under Personal access tokens. 
* Enter a name for the token. 
* Enable admin access. 
* Click CREATE. This will generate an access token. Copy the token. It won't be visible once you navigate away from this page. 


### Creating an OAuth app in Zeplin



* Go to the Profile page in your account. 
* Navigate to the [Developer page](https://app.zeplin.io/profile/developer).
* Click on Create new app under Owned Zeplin apps. 
* Provide the following details of the app. 
    * Name - Enter a unique, identifiable name for the app. 
    * Summary - Provide a brief description of the purpose of the app. 
    * Website - Provide the website url. 
    * Redirect URIs - Use one of the following URLs based on your region or deployment. 
        * JP Region Callback URL: [https://jp-bots-idp.kore.ai/workflows/callback](https://jp-bots-idp.kore.ai/workflows/callback)
        * DE Region Callback URL: [https://de-bots-idp.kore.ai/workflows/callback](https://de-bots-idp.kore.ai/workflows/callback)
        * Prod Callback URL: https://idp.kore.com/workflows/callback
    * Click CREATE. This will generate a client ID and client secret. These credentials will be used while configuring the Zeplin connector in Search AI. 


### Zeplin Connector Configuration in Search AI

On the **Authorization** tab of the connector, provide the following details.



* Name - Unique name for the connector. 
* Authorization Type - Select API Key or OAuth 2.0 as required. 

When the API Key type of authorization is selected, enter the following fields. 



    * API Key - Enter the Personal access token generated in the Zeplin account. This is required when the authorization type is API Key. 

    When OAuth authentication is selected, enter the following fields. 

    * Grant type - Set this to Authorization Code
    * Client ID - provide the client ID generated in the Zeplin account
    * Client Secret - Provide the client credentials generated for the app. 

Click **Connect** to initiate the authentication. 


## Content Ingestion

Once the Zeplin account is successfully connected, navigate to the **Configuration** tab and click **Sync Now** to begin content ingestion. You can also schedule a one-time or recurring sync using the **Scheduler**.

During ingestion, the connector retrieves details of all screens across various projects in the connected Zeplin account. Each screen is ingested as a **separate document** in Search AI with the following structure. The doc_source_type field in the ingested content suggests the type of ingested content (i.e., screen).



* **Title**: Screen name
* **URL**: Direct link to the screen in Zeplin
* **Content**: List of users with access to the screen and annotations on a screen. Annotations allow adding instructions that remain pinned to a screen. For each annotation, this field contains the author of the annotation, the type of the annotation, and the creation and updation date. 
* **Project**: Name of the project the screen belongs to
* **Labels**: Tags or labels applied to the screen
* **Comments**: All comments associated with the screen. For each comment, it lists the author of the comment, the comment text, and the created and updated dates for the comment. 


## RACL Support

In Zeplin, access to screens is controlled at the project level. Anyone with access to a project automatically has access to all screens within that project. Therefore, the sys_racl field contains the project ID of the project to which the screen belongs. Project ID is added as a permission entity. Hence, use the Permission Entity APIs to associate users with the project ID. 
