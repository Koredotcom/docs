# **Aha! Connector**

<span style="text-decoration:underline;">Specifications</span>


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
   <td>Ideas, Features
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



## Authorization Support

Aha connector interacts with Aha! via the REST APIs. To enable this communication, two types of authentication is supported:

1. Using API Key
2. OAuth Authentication 

## Generate API Key 

* Log in to Aha!
* Access the **Settings **icon on the top right and click **Personal**. 
* Go to the **Developer **page. 
* On the **API Key** tab, click **Generate API Key**. Provide a name for the key. Save the generated key to configure the connector in Search AI. 

## Generate OAuth Credentials 

* Log in to Aha!
* Access the **Settings** icon on the top right and click **Personal**. 
* Go to the **Developer** page.
* Go to the **OAuth Applications** tab and click on **Register OAuth application**. 
* Provide a name for the oauth app and enter the Redirect URI. The Redirect URI should be one of the following based on your region or deployment. 
    * JP Region Callback URL:  [https://jp-bots-idp.kore.ai/workflows/callback](https://jp-bots-idp.kore.ai/workflows/callback)
    * DE Region Callback URL: [https://de-bots-idp.kore.ai/workflows/callback](https://de-bots-idp.kore.ai/workflows/callback)
    * Prod Callback URL: [https://idp.kore.com/workflows/callback](https://idp.kore.com/workflows/callback)
* This will generate the client credentials. Save them to configure the Search AI connector. 


## Configure Aha Connector in Search AI

Go to the **Authorization page** of the Aha! Connector, provide the following configuration fields and click **Connect**. 

* **Name**- Unique name for the connector.
* **Authorization Type**- Select your preferred Authorization Type. 
    * If **API Key** is selected as the auth type, provide the API Key generated in the Aha application. 
    * If Authorization Type is set to **OAuth**, set Grant Type to Authorization Code and then provide your client credentials generated in the Aha application. 


## Ingesting Content

After successfully connecting the Search AI connector to the Aha account, go to the **Configuration** tab and set up content synchronization. For immediate sync, use the **Sync Now** option and the **Schedule Sync** option to set up a scheduler to sync the content in the future. 

Upon sync, Search AI ingests details from the **Ideas** and the **Features** in Aha application into the Search AI application. 

The **‘type’** field in the ingested content suggests whether the data is related to an idea or a feature.


## RACL Support

* The **Features** in the Aha application are accessible to all the workspace as well as the project users. When the content of a feature is ingested into the Search AI application, the sys_racl field is populated with the Project ID. Use the Permission Enitty APIs to associate users with this **Project ID**.
* The Ideas in an Aha application can either belong to a Project in a Workspace or both Project in the workspace and the Idea Portal.The **visibility for Ideas in Portal** can be set to one of the following:
    * **Not visible**: When a idea is created with this visibility, it is not visible to ideas portal users but only to the users of the project. The sys_racl field is set to **Project ID** in this case. 
    * **Visible to creator**: When an idea is only accessible to the creator, the ideas will only be visible to them on the portal but within the workspace, it is visible to all members. Hence, the sys_racl field is set to **projectId and creator email id**.
    * **Visible to all**: These ideas will be visible to everyone, hence  sys_racl is set to *.
    * **Visible to employees:** These ideas are accessible to the users of the project as well as the users added to the portal, hence, the sys_racl field contains both **projectId and the ideaPortalId**.
    * If the Idea Portal is **Private**, the idea is visible in the workspace and to the users added to the portal. Hence, the sys_racl field is set to the **projectId and ideaPortalId**.