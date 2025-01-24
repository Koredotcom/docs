# HubSpot Connector

HubSpot provides a CRM platform with different tools to enable businesses to manage customer service, operations, marketing, sales, and more. SearchAI’s HubSpot Connector enables you to easily integrate with the HubSpot application to ingest **Tickets, Contacts, Companies, and Deals related content** and use it to answer user queries. 

<span style="text-decoration:underline;">Specifications</span>

<table>
  <tr>
   <td>Type of Repository 
   </td>
   <td>Cloud
   </td>
  </tr>
  <tr>
   <td>Supported Content Type
   </td>
   <td>Tickets, Contacts, Companies, Deals
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

You can set up communication between Search AI and HubSpot using a **private app** or set up an **OAuth Authorization Code Grant Type** for communication.


* **Private App**: If you are authenticating via a Private App, you must use your Access Token to set up the connector. Refer to the [official HubSpot documentation](https://developers.hubspot.com/docs/api/private-apps) to learn how to obtain the access token. This access token is used to configure the connector in Search AI. 
* **OAuth setup**: If you use OAuth to authenticate, Refer to [Hubspot's official documentation on Setting Up the OAuth app.](https://developers.hubspot.com/docs/api/working-with-oauth) After the setup, a client ID, and client secret will be generated. Use one of the following as the Redirect URL.
    * JP Region Callback URL: [https://jp-bots-idp.kore.ai/workflows/callback](https://jp-bots-idp.kore.ai/workflows/callback)
    * DE Region Callback URL: [https://de-bots-idp.kore.ai/workflows/callback](https://de-bots-idp.kore.ai/workflows/callback)
    * Prod Callback URL: [https://idp.kore.com/workflows/callback](https://idp.kore.com/workflows/callback)

    Use the client credentials to generate an access token and a refresh token for SearchAI to communicate. 


Note that a set of permissions is **required** to ingest the required data from the HubSpot account. Select the following scopes while creating the app. 

* crm.objects.companies.read
* crm.objects.contacts.read
* crm.objects.deals.read
* tickets
* crm.objects.owners.read
* crm.objects.users.read
* settings.users.teams.read


## HubSpot Connector Configuration

* Go to the ***Connectors*** page and select **HubSpot**. 
* On the **Authorization** page, provide the following information to enable SearchAI to establish a connection with HubSpot. 
  * **Name**: Unique name for the connector
  * **Authentication**: Select one of the following.
    * **OAuth Authorization:** For this type of authentication, provide the **client ID and client secret and the refresh token** generated above. 
    * **Private App:** For this type of authorization, provide the **Access Token** generated in the HubSpot account. 


## Content Ingestion

After successfully connecting the Search AI connector to the HubSpot account, go to the **Configuration** tab and set up content synchronization. For immediate sync, use the **Sync Now** option and the **Schedule Sync** option to set up a scheduler to sync the content in the future. 

Upon sync, Search AI ingests **Tickets, Contacts, Companies, and Deals** from the HubSpot account. 

For each of the four types of ingested content, the following fields are captured as the `content` field in the Search AI index. The `type` field in the ingested content suggests the type of content. Other properties are stored in dedicated fields within the indexed content or as metadata fields. 

Tickets: 

* Content of the ticket
* Priority
* creation Date
* Owner Name
* Last activity date
* Associated Companies 
* Associated Contacts

Deals:

* Amount
* Creation Date
* Deal Stage
* Owner Name
* Last Activity Date
* Associated Companies
* Associated Contacts

Contacts:

* Email Id 
* Phone number
* Company name
* Total Revenue
* Recent Deal amount
* Creation Date
* Last Activity Date
* Owner Name 
* Associated Companies. 

Companies

* Description
* Domain Name
* Industry
* City
* Employees Count
* Annual Revenue
* Owner Name
* Associated Contacts


## RACL Support

For each of the content types ingested from HubSpot, the following fields are added to the sys_racl field. 

* Owner of the content type, e.g. owner of the ticket, deal, etc. For the owner, the sys_racl field directly contains the email address of the owner. 
* The teams having access to the content type, i.e., the teams that the owner of the content belongs to. A permission entity is created corresponding to each team having access to the content. To enable access control for the team members in Search AI, associate users to the corresponding permission entity using the [Permission Entity APIs](https://docs.kore.ai/xo/apis/searchai/permission-entity-apis/). 