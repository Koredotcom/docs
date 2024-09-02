# SharePoint Connector

Configure the SharePoint connector if you're using SharePoint to manage your content and want to make your existing content searchable with SearchAI. Configuring SharePoint as a content source requires:

* **Registering a multi-tenant app in SharePoint**
* **Configuration of the SharePoint connector in SearchAssist**

## Authorization Support

Search AI supports **OAuth 2.0 Authorization Code Grant Type** mechanism for SharePoint.

## Registering multi-tenant app in SharePoint

App registrations are required to access resources programmatically. Registering an application establishes trust between the SearchAI application and the identity provider, the Microsoft identity platform. To register, 

* Log in to the [Azure Platform Portal](https://portal.azure.com/#home) and go to Manage **Azure Active Directory**.

![Azure Home](../images/sharepoint/azure-home.png "Admin Center")

* Register a new application. To do so, go to **App Registrations** under **Applications** and click on **New Registration.**

![App Registration](../images/sharepoint/new-app-registration.png "Application Registration")

* Enter the application's name. Create a multi-tenant account and set the account type to ‘Accounts in any organization directory’. Set the Redirect URL and click **_Register_**. You can use one of the following URLs according to your region.
    * JP Region Callback URL: https://jp-bots-idp.kore.ai/workflows/callback
    * DE Region Callback URL: https://de-bots-idp.kore.ai/workflows/callback
    * Prod Region Callback URL: https://idp.kore.com/workflows/callback
    
![Account Types](../images/sharepoint/account-types.png "Account Types")

* This will generate a client ID, which will be used to identify the application uniquely in the  Microsoft Identity Platform. Save the **ClientId** and **TenantId** from the **Overview** section.

![Client Credentials](../images/sharepoint/client-credentials.png "Client Credentials")

* Next, [Generate a client Secret for the registered app](https://learn.microsoft.com/en-us/azure/active-directory/develop/quickstart-register-app#add-a-client-secret) under the **Certificates and Secrets** tab.

![Client Credentials](../images/sharepoint/client-secret.png "Client Credentials")

* Enter a description and set the expiration time to 24 months. Click **Add**.

 ![Client Credentials](../images/sharepoint/generate-secret.png "Client Credentials")

* Save the client secret generated. The client secret cannot be seen again on switching the tabs. 

![Client Credentials](../images/sharepoint/save-secret.png "Client Credentials")

* The next step is to set up the application's required permissions. Go to **API Permissions** and click **Add a permission**.

![API Permissions](../images/sharepoint/api-permissions.png "API Permissions")

* Add the following delegated permissions found under **Microsoft Graph**.
    * User.ReadBasic.All
    * Group.Read.All
    * Directory.AccessAsUser.All
    * Files.Read
    * Files.Read.All
    * Sites.Read.All
    * Offline_access
    
    ![Request Permissions](../images/sharepoint/request-permissions.png "Request Permissions")

* After adding all the permissions, click **_Grant Admin Consent_** to grant the permissions to the application.

![Grant Permissions](../images/sharepoint/grant-permissions.png "Grant Permissions")

* To configure the SharePoint connector in SearchAssist, use the client ID, client secret, and tenant ID generated above. For more details, refer to [this](https://learn.microsoft.com/en-us/azure/active-directory/develop/quickstart-register-app).


## Configuration of the SharePoint connector 

Go to the **Connectors** under **Sources** and select **SharePoint**. On the Authorization page, enter the **Client ID**, **Tenant ID**, and **Client Secret** generated during the application registration in the Azure portal. Choose the desired content type—**All, Articles,** or **Files**. Assign a name for the connector, then click **Connect**.

This will authenticate with the SharePoint application. Once the authorization process is complete and the connector is configured, the next step is to select the SharePoint sites from which you want to ingest the content and make it searchable. Go to the **Configure** section, click the **Select Content** link, select the sites from which you want to ingest content, and click **Save**. Click on **Sync Now** to start content ingestion. 
