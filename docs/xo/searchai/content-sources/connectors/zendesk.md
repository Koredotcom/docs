# Zendesk Connector

You can easily configure SearchAI to connect to the Zendesk application to enable users to fetch query results using the content in Zendesk Knowledge Base articles. 

<span style="text-decoration:underline;">Specifications</span>


<table>
  <tr>
   <td>Type of Repository 
   </td>
   <td>Cloud
   </td>
  </tr>
  <tr>
   <td>Supported API version
   </td>
   <td>REST API v2
   </td>
  </tr>
  <tr>
   <td>Answers Support
   </td>
   <td>Zendesk knowledge base articles
   </td>
  </tr>
</table>

## Authorization Support 

Search AI supports **OAuth 2.0 Authorization Code Grant Type** mechanism for Zendesk. To configure Zendesk as a content source, it requires:

* Adding an OAuth client in Zendesk
* Configuring the Zendesk connector in Search AI

## Step 1: Setup an OAuth client in Zendesk
The first step is to set up an OAuth client in Zendesk and generate OAuth credentials that SearchAI can use to authenticate the requests sent to Zendesk.  

1. Go to the **Admin Center** in your Zendesk application.
![Admin Center](../images/zendesk/admin-center.png "Admin Center")

2. Register Search AI as OAuth Client. Refer to [this documentation](https://support.zendesk.com/hc/en-us/articles/4408845965210-Using-OAuth-authentication-with-your-application#topic_s21_lfs_qk) for information about the fields required in the configuration.  Set the **Redirect URLs** field to point to one of the following callback URLs as per your region.

    * JP Region Callback URLs:[ https://jp-bots-idp.kore.ai/workflows/callback](https://jp-bots-idp.kore.ai/workflows/callback)
    * DE Region Callback URLs:[ https://de-bots-idp.kore.ai/workflows/callback](https://de-bots-idp.kore.ai/workflows/callback)
    * Prod Region Callback URLs: [https://idp.kore.com/workflows/callback](https://idp.kore.com/workflows/callback?__hstc=59894770.28210ac89bd49725c54c92ebeabe794b.1663135555706.1715322786391.1715330815958.698&__hssc=59894770.1.1715330815958&__hsfp=659442714)

On saving the details, a pre-populated Secret field appears on the page. This is the **client secret** required for configuration in SearchAI along with the **Unique Identifier** generated while registering the application.


## Step 2: Configure the Zendesk connector in SearchAI

Go to the **Connectors**under the _Sources_ page and select **_Zendesk_**. Go to the **Authorization** tab, enter the following details, and click **Connect**.

* **Name**: Unique name for the connector.
* **Authorization Type**: Search AI supports only **OAuth 2.0 authorization with Zendesk**.
* **Grant Type**: Method of obtaining access token in OAuth 2.0 authentication. SearchAI supports the **Authorization Code grant type for Zendesk**  Refer to [this for more information on Grant types](../../connector.md).
* **Client ID**: The client ID generated after registering SearchAI for OAuth authentication.  
* **Client Secret**: The secret generated while configuring the OAuth authentication.
* **Host URL**: URL pointing to your Zendesk instance.

After a successful connection, the content can be ingested from Zendesk using the **Sync Now** option under the **Configuration** tab.
