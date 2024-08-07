# Salesforce Connector

To enable efficient searching of your content managed by Salesforce, configure the Salesforce connector in SearchAI and start benefiting from seamless integration.

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
   <td>API v57.0
   </td>
  </tr>
  <tr>
   <td>Extractive Model for Answers
   </td>
   <td>Not supported
   </td>
  </tr>
  <tr>
   <td>Generative Model for Answers
   </td>
   <td>Knowledge articles managed by Salesforce.
   </td>
  </tr>
</table>

## Authorization Support

Search AI  uses the **OAuth 2.0 authorization code grant type** to access the resources on Salesforce. 


## Integration Steps

Configuring ServiceNow as a content source in SearchAI requires:

* Creating an OAuth application in Salesforce
* Configuration of the Salesforce connector in SearchAI


## Creating an OAuth application in Salesforce

Login to the [Salesforce application](https://login.salesforce.com/). Click on the **Setup icon**and go to the Setup.

![Salesforce Home](../images/salesforce/salesforce-home.png "Home")

This will open the **Object Manager** home page as shown below.

![Object Manager](../images/salesforce/object-manager.png "Object Manager")

Go to the **App Manager**and click on **New Connected App**.

![Create App](../images/salesforce/create-app.png "Create New App")

Provide the details for the app. Provide basic information about the application like the name, email address, logo, icon, etc. 

![App details](../images/salesforce/app-details.png "App details")

**Enable OAuth settings** for API Integration under the **API** section and provide the callback URL. You can use one of the following callback URLs as per your region or deployment. 
  * JP Region Callback URLs: https://jp-bots-idp.kore.ai/workflows/callback
  * DE Region Callback URLs: https://de-bots-idp.kore.ai/workflows/callback
  * Prod Region Callback URLs: https://idp.kore.com/workflows/callback

Select and add the following to the **Selected OAuth Scopes**. 
  * Full access (full)
  * Perform requests at any time (refresh_token, offline_access)

Leave other settings as default and click **Save** and **Continue**. The summary page for the application will be displayed as shown below. 

![App details](../images/salesforce/save-app.png "App details")

Click **Manage Consumer Details** to generate the consumer ID and secret from this page. Save this information to complete the connector integration in the next step.


## Configuring the Salesforce connector

The next step is to configure the Salesforce connector in SearchAI. Go to the **Connectors** tab under **Sources** and select **Salesforce** from the list of available connectors. On the Authorization tab, enter a name for the connector, provide the Consumer ID and Consumer Secret Key, generated in the previous section, select the type of source, and click **Connect**. The field **Type** can take the following values:
  * **Cloud**- Production environment/instance
  * **Sandbox**- Test environment/instance. 

![Authorization](../images/salesforce/authorization.png "Authorization")

After the connection is successfully established, the connector is marked as **Connected**and is ready for content ingestion. You can ingest all the content available in your Salesforce account or filter content for ingestion. 

![Content Filters](../images/salesforce/content-filter.png "Content Filters")

### Content Filters

Salesforce Connector allows selective ingestion of content. To set content filters, select **Sync Specific Content** and click on the **Configure** link. The following page allows you to define rules for selecting the content. Each rule can be defined using a parameter, operator, and its value. 

![Content Rules](../images/salesforce/content-rule.png "Content Rules")

The most commonly used **Parameter** fields are listed in the dropdown. You can also add new parameters if the content supports those fields using the **+Add** option. 

The **Operator** field can take different values depending upon the parameter selected like equals to, not equals to, contains, etc. 

The **Value** field is used for setting the expected value of the parameter.

Refer to the complete list of supported fields and the values that the fields can take [here](https://developer.salesforce.com/docs/atlas.en-us.knowledge_dev.meta/knowledge_dev/sforce_api_objects_knowledgearticleversion.htm). 

For instance, to select all the knowledge articles published on a certain date set the filter as shown below. 
![Content Rule Example](../images/salesforce/example1.png "Content Rule Example")

Similarly, to selectively ingest only the articles with a specific title and author, you can configure the filter as shown below. 

![Content Rule Example](../images/salesforce/example2.png "Content Rule Example")
