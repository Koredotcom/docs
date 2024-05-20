# Confluence Server Connector

If you are using Confluence Server to store and manage your content, you can easily search through that content using the out-of-box connector provided by Search AI. 

<span style="text-decoration:underline;">Specifications</span>


<table>
  <tr>
   <td>Type of Repository 
   </td>
   <td>On-Prem
   </td>
  </tr>
  <tr>
   <td>Supported API version
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Supported file types
   </td>
   <td>.doc, .docx, .ppt, .pptx, .pdf, .txt, .html \
Note: Password-protected files in any format are not supported
   </td>
  </tr>
</table>

## Authorization Support for Confluence Server

There are two ways to authorize and set up communication between Confluence Server and Search AI application.

* Using Basic Auth
* Using OAuth 2.0

For more information on auth types, refer to [this](../../connector.md). 

If you are setting up **OAuth** auth mechanism, you need to 

* Register Search AI application as OAuth client in the Confluence Server.
* Configure the connector in SearchAI with the integration details.

If you are using **Basic** authentication, no specific configuration is needed on the server side to fetch content from the Confluence Server. Directly go to step 2 and configure the connector in Search AI.

## Step 1: Register the Search AI application in the Confluence Server

**OAuth 2.0 authentication** requires creating an incoming link in the **application links** section on the Confluence server. During the registration process, set the **Redirect URL** as per your region and enable proper scopes to limit the range of resources that the SearchAI application can access.

Depending upon your region, you can use one of the following URLs as the Redirect URL.

* JP Region Callback URL: https://jp-bots-idp.kore.ai/workflows/callback
* DE Region Callback URL: https://de-bots-idp.kore.ai/workflows/callback
* Prod Region Callback URL: https://idp.kore.com/workflows/callback

Once you've created the link, you'll receive the OAuth credentials: Client ID and Client Secret. These will be used to complete the configuration in the SearchAI application. 

For detailed information and step-by-step instructions, refer to [this](https://confluence.atlassian.com/doc/configure-an-incoming-link-1115674733.html). 

## Step 2: Configuring SearchAI Connector

To complete the integration, do the following configuration in the connector. 

1. Go to **_Connectors _**under the **_Sources _**tab. 
2. On the authorization tab, provide the config parameters. 
    * Authorization Type: Basic or OAuth 2.0
    * Grant Type: Enter the Grant type for OAuth 2.0-based authentication. For Confluence Server, Search AI supports two types: **Authorization Code grant type** and **Client Credentials** grant type. For more details, refer to [this](../../connectors.md). 
    * For Basic Auth, provide the connector name, username, password, and Confluence server host URL.
    * For OAuth 2.0 Authentication,  enter the connector name, Client ID, Client Secret (as generated in the previous step), and Confluence server base URL and domain name.

Click **Connect** to initiate the connector authorization process. This completes the setup for communication between SearchAI and the Confluence Server. 