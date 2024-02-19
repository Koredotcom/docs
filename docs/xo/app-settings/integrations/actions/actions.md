# Actions

The Kore.ai XO Platform offers pre-built integrations with popular business applications to exchange data. You can configure and enable actions for Service Now, Salesforce, Zendesk, Hubspot, and others. Each of these integrations provides a full conversation flow definition, a low-code interface for API integration, and pre-built response mapping and create dialog tasks with pre-built templates without need to worry about developer assistance.

**Watch a Short Video on System Integrations**

<iframe title="vimeo-player" src="https://player.vimeo.com/video/715550596?h=5d9e151d44" width="640" height="360" frameborder="0"    allowfullscreen></iframe>


## Steps to use the actions or pre-built integrations

1. Enable the Developer or a User to do a single-click authorization.
2. Enable an integration to exchange data between two systems during the dialog task execution.
3. Enable an integration and create the dialog tasks using the preconfigured templates supported by the integration.

The **Actions** module is available under the **App Settings > Integrations** menu.


## Actions Enablement

By default, your Virtual Assistant (VA) will not exchange data with any integration unless you authorize one or more actions through which it can communicate. You can enable an integration and perform actions in a third-party system. 


## Authorization Types

The Kore.ai XO Platform supports OAuth 2.0, Basic, and API key based authentication to allow an integration to exchange data.


### OAuth v2 Authentication

OAuth v2 is the new version of the open protocol to allow secure authorization via a standard method from web, mobile, and desktop applications. To learn how OAuth v2 authentication works, read the [Setting Up Authorization using OAuth v2](../../../dev-tools/bot-authorization/setting-up-authorization-using-oauth-v2){:target="_blank"} article.


### Basic HTTP Authentication

HTTP Basic Auth is a simple method that creates a username and password style authentication for HTTP requests. This technique uses a header called Authorization, with a base64 encoded representation of the username and password. For more information, read the [Bot Authorization Overview](../../../dev-tools/bot-authorization/bot-authentication){:target="_blank"} article.


### API Key

Identification and authorization token generated or provided by a web application or web service used to identify the incoming application request, and in some cases, also provides authentication for secure access. For more information, read the [Setting Up Authorization using an API Key](../../../dev-tools/bot-authorization/setting-up-authorization-using-an-api-key/){:target="_blank"} article. 

Actions can be authorized based on the authorization profiles that are supported by the third-party  integrations.  Users can use pre-authorized credentials provided by the developer during the configuration process or their own authorization profile during the configuration process to let the end user authorize during the conversation.

!!! note

    An email notification is sent to all the bot developers when the authorization token expires for any of the Prebuilt Action Integrations in the bot. The notification requests the bot developer to reauthorize. The integration moves to an error state as soon as the token expires. The service call fails during the run time, upon expiry of authorization token and an error message, "Something went wrong" is displayed to the end-user.

The email template which is sent to the bot developer upon token expiry is as follows:  
<img src="../images/actions-img1.png" alt="Email Template" title="Email Template" style="border: 1px solid gray;zoom:50%;"/>


## Available Actions and How to Configure Them

The available Actions/Integrations are listed in the table below. Go to **Build > Integrations > Actions** and click the **Action** you want to configure in the Kore.ai XO platform. The page with Instructions and Configuration settings will slide out. For step-by-step instructions on how to configure an action, click the Learn more link for the action in the table below.


<table border="1">
  <tr>
   <td><strong>Actions</strong>
   </td>
   <td><strong>Descriptions</strong>
   </td>
   <td><strong>Supported Templates </strong>
   </td>
   <td><strong>Authorization Type</strong>
   </td>
   <td><strong>More Information</strong>
   </td>
  </tr>
  <tr>
   <td>Azure OpenAi
   </td>
   <td>Integrates with Azure OpenAI instance to find answers to your general queries..
   </td>
   <td>1
   </td>
   <td>Basic Auth
   </td>
   <td><a href="../azure-open-ai/configuring-the-azure-openai-action" target="_blank">Learn more</a>
   </td>
  </tr>
  <tr>
   <td>BambooHR
   </td>
   <td>Integrates with BambooHR software for small and medium businesses and those who work in them.
   </td>
   <td>7
   </td>
   <td>Basic Auth
   </td>
   <td><a href="../bamboo-hr/configuring-the-bamboohr-action" target="_blank">Learn more</a>
   </td>
  </tr>
  <tr>
   <td>DHL
   </td>
   <td>Integrates with DHL system to find information regarding DHL Locations and Track Shipments.
   </td>
   <td>2
   </td>
   <td>Basic Auth
   </td>
   <td><a href="../dhl/configuring-the-dhl-action" target="_blank">Learn more</a>
   </td>
  </tr>
  <tr>
   <td>Freshdesk 
   </td>
   <td>Integrates with Freshdesk to create, view, update, search and delete tickets.
   </td>
   <td>6
   </td>
   <td>Basic Auth
   </td>
   <td><a href="../freshdesk/configuring-the-freshdesk-action" target="_blank">Learn more</a>
   </td>
  </tr>
  <tr>
   <td>Freshservice ITSM
   </td>
   <td>Integrates with Freshservice ITSM to create, view, update, search and delete tickets.
   </td>
   <td>6
   </td>
   <td>Basic Auth
   </td>
   <td><a href="../freshservice/configuring-the-freshservice-action" target="_blank">Learn more</a>
   </td>
  </tr>
  <tr>
   <td>Google Maps
   </td>
   <td>Integrates with Google Maps to find information regarding accurate Locations and places.
   </td>
   <td>2
   </td>
   <td>Basic Auth
   </td>
   <td><a href="../google-maps/configuring-the-google-maps-action" target="_blank">Learn more</a>
   </td>
  </tr>
  <tr>
   <td>HubSpot 
   </td>
   <td>Integrates with HubSpot CRM to customize the lead details through a virtual assistant.
   </td>
   <td>10
   </td>
   <td>Dev OAuth and OAuth
   </td>
   <td><a href="../hubspot/configuring-the-hubspot-action" target="_blank">Learn more</a>
   </td>
  </tr>
  <tr>
   <td>JIRA 
   </td>
   <td>Integrates with JIRA to create, view, update and delete issues.
   </td>
   <td>5
   </td>
   <td>Basic Auth
   </td>
   <td><a href="../jira/configuring-the-jira-action" target="_blank">Learn more</a>
   </td>
  </tr>
  <tr>
   <td>Microsoft Graph 
   </td>
   <td>Integrates with Microsoft Graph to create, view, and update events and to-do lists, and send emails to users.
   </td>
   <td>5
   </td>
   <td>Basic Auth
   </td>
   <td><a href="../microsoft-graph/configuring-the-microsoft-graph-action" target="_blank">Learn more</a>
   </td>
  </tr>
  <tr>
   <td>OpenAI
   </td>
   <td>Integrates with OpenAI ChatGPT to generate answers from context and extract skills from the resume through a virtual assistant.
   </td>
   <td>2
   </td>
   <td>API Key OAuth
   </td>
   <td><a href="../open-ai/configuring-the-openai-action" target="_blank">Learn more</a>
   </td>
  </tr>
  <tr>
   <td>Salesforce CRM
   </td>
   <td>Integrates with Salesforce CRM to power your conversations to create Leads / Opportunities and other functions.
   </td>
   <td>7
   </td>
   <td>Dev OAuth and OAuth
   </td>
   <td><a href="../salesforce/configuring-the-salesforce-crm-action" target="_blank">Learn more</a>
   </td>
  </tr>
  <tr>
   <td>Shopify
   </td>
   <td>Integrates with Shopify Shop instance to find information regarding Customers, Products, and Orders.
   </td>
   <td>6
   </td>
   <td>Basic OAuth
   </td>
   <td><a href="../shopify/configuring-the-shopify-action/" target="_blank">Learn more</a>
   </td>
  </tr>
  <tr>
   <td>ServiceNow
   </td>
   <td>Integrates with ServiceNow to build the digital workflows on a single, unified platform.
   </td>
   <td>10
   </td>
   <td>Basic OAuth
   </td>
   <td><a href="../servicenow/configuring-the-servicenow-action/" target="_blank">Learn more</a>
   </td>
  </tr>
  <tr>
   <td>Stripe
   </td>
   <td>Integrates with Stripe to accept payments, send payouts, and manage the payment to complete payment-related tasks.
   </td>
   <td>5
   </td>
   <td>Basic OAuth
   </td>
   <td><a href="../stripe/configuring-the-stripe-action/" target="_blank">Learn more</a>
   </td>
  </tr>
  <tr>
   <td>Twilio Verify
   </td>
   <td>Integrates with Twilio Verify to send SMS, start verification and check verification.
   </td>
   <td>3
   </td>
   <td>Basic OAuth
   </td>
   <td><a href="../twilio/configuring-the-twilio-action/" target="_blank">Learn more</a>
   </td>
  </tr>
  <tr>
   <td>Zendesk
   </td>
   <td>Integrates with Zendesk instance to create ticket, view all tickets, search tickets with IDs and search ticket with keywords.
   </td>
   <td>5
   </td>
   <td>Basic OAuth
   </td>
   <td><a href="../zendesk/configuring-the-zendesk-action/" target="_blank">Learn more</a>
   </td>
  </tr>
</table>



## Disabling or Deleting Actions/Integrations

You can disable or delete an external integration that you configured earlier. This is useful in case you want to switch to another integration and are no longer using the configured integration.


### Disabling an Integration/Action

Disabling the integration action will change its status from enabled to disabled, but the authorization configurations associated with it will remain the same.

**Steps to disable an integration.**

1. To **disable** the integration, hover over it in the actions list and click the **Settings** icon in the top right corner.
2. If the action/integration is enabled, you will have the option to **Disable** it, and vice versa.  
<img src="../images/actions-img2-integrations_disable.png" alt="Disable integration" title="Disable integration" style="border: 1px solid gray;zoom:50%;"/>

3. Once you Disable an action, the authorization configurations related to that particular action are disabled with no changes.
4. The service node status changes from **Integration Service** to **Custom Service**.  
<img src="../images/actions-img3-integrations_disable1.png" alt="Node status change" title="Node status change" style="border: 1px solid gray;zoom:50%;"/>

5. If you need to enable a previously disabled action, you can do so by hovering over it in the actions list and clicking on the Settings icon located in the top right corner as shown in the figure below.  
<img src="../images/actions-img4-integrations_disable2.png" alt="Re-enable integration" title="Re-enable integration" style="border: 1px solid gray;zoom:50%;"/>

6. You will be redirected to re-authorize the action with your external integration account credentials. For more information related to how to authorize an integration action, see Authorization article.


### Deleting an Integration/Action

You can delete an external integration that is no longer in use.

**Steps to delete an integration:**

1. To **delete** the integration, hover over it in the actions list and click the **Settings** icon in the top right corner.
2. Choose the option to **Delete** the action/integration.  
<img src="../images/actions-img5-integrations_delete.png" alt="Delete integration" title="Delete integration" style="border: 1px solid gray;zoom:50%;"/>


**Warning**: Deletion is permanent and cannot be undone. You are asked to confirm your choice, so make sure this is exactly what you want to do. Once an action is **Deleted**, all authorization configurations related to that particular integration are deleted.


## More Like This

* [Kore.ai Integrations Framework Guide](https://info.kore.ai/hubfs/1.%20Kore.ai%20Resources/XO%20Platform/Documents/Technical%20Documents%20v9.0/Kore.ai%20XO%20Platform%20Integration%20Capabilities_Sep%202022.pdf){:target="_blank"}
* [Configure Salesforce Integrations Actions](https://vimeo.com/761445731){:target="_blank"} (Video: 3m15s)