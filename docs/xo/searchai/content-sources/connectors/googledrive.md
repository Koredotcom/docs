# Google Drive Cloud Storage Connector

By setting up the Google Drive connector in SearchAssist, you can extend the search capabilities to your Google Drive cloud storage-managed content and provide a seamless experience.

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
   <td>Google Drive API v3
   </td>
  </tr>
  <tr>
   <td>File type Support
   </td>
   <td>.doc, .docx, .ppt, .pptx, .pdf, .txt, .html \
Note: Password-protected files in any format are not supported
   </td>
  </tr>
</table>


Integrating Google Drive as a content source involves:

* Setting up and enabling access to the Google Drive Cloud storage
* Configuring the Google Drive connector in SearchAI


## Step 1: Setting up and enabling access to the Google Drive Cloud storage

Follow the steps listed below to set up and enable access to the content on your Google Drive Cloud storage to the Search AI application. 

1. Login to your[ Google developer console](https://console.cloud.google.com/) and [Create a Google Cloud project](https://developers.google.com/workspace/guides/create-project). If you are using an existing project, skip this step.
2. [Find Google Drive API and enable it](https://developers.google.com/workspace/guides/enable-apis) in your Google Cloud project.
3. To enable OAuth 2.0 authentication, [configure OAuth consent](https://developers.google.com/workspace/guides/configure-oauth-consent). Provide the name of the application, email address, app logo, and developer contact information. 
![OAuth Consent](../images/googledrive/oauth-consent.png "OAuth Consent")

4. Set up permissions for the application. Under Scopes, click on _ADD OR REMOVE SCOPES_. Select the following scopes for Google Drive API and click on _UPDATE _at the bottom of the page.

    * …/auth/drive.file
    * …/auth/drive.appdata
    * …/auth/drive 

    ![Permissions](../images/googledrive/permissions.png "Permissions")
    ![Scopes](../images/googledrive/scope.png "Scopes")

5. Set the user type for the application as external. Go to the _OAuth Consent screen_ and click on _MAKE EXTERNAL_ to change the user type to External. 

    ![User Type](../images/googledrive/user-type.png "User Type")

6. While you are still in development or testing mode, you can set the publishing status of the application to Testing. In testing mode, only the users added can access the application while in production mode, the application is available publicly to everyone with a Google account. 
![Publishing Status](../images/googledrive/publishing-status.png "Publishing Status")
If the publishing status is set to Testing, you can add your test users by clicking on _ADD USERS_ on the same page. 
![Add Users](../images/googledrive/add-users.png "Add Users")

7. [Create OAuth access credentials](https://developers.google.com/workspace/guides/create-credentials) to authenticate the client (SearchAI). Enter the _Application type_ as _Web Application_ and give it a name. Add the URL of your  SearchAssist deployment as _Authorized redirect URIs_ and click _CREATE_.

You can use one of the following URLs as per your region.

    * JP Region Callback URL: https://jp-bots-idp.kore.ai/workflows/callback
    * DE Region Callback URL: https://de-bots-idp.kore.ai/workflows/callback
    * Prod Region Callback URL: [https://idp.kore.com/workflows/callback](https://idp.kore.com/workflows/callback)

![OAuth Credentials](../images/googledrive/oauth-credentials.png "OAuth Credentials")

   This will generate the client ID. Download your credentials. The downloaded file is in JSON format and has **client id and client secret** amongst other fields. 

![Download Credentials](../images/googledrive/download-credentials.png "Download Credentials")


## Step 2: Configuring the Google Drive connector in SearchAI

1. To configure the Google Drive connector, go to the **Connectors** under **Sources**and select **Google Drive**.
2. Configure the authorization parameters for the connector and click **Connect**.
    * **Name**- Unique name for the connector.
    * **Authorization Type** - Search AI supports **OAuth 2.0 for Google Drive.** Set this field accordingly.
    * **Grant Type** - Method of obtaining access token in OAuth 2.0 authentication. SearchAI supports **Authorization Code Grant Type for Google Drive**. Refer to [this for more information on Grant types](https://docs.google.com/document/d/1U-fxzFd9f2sGUZYq7HmI4HO1Tu3p9AvXBwSVRrVNDkw/edit#heading=h.gtcwm1lgykmp).
    * **Client ID** - The client ID generated after registering SearchAI for OAuth authentication. 
    * **Client Secret**- The secret generated while configuring the OAuth authentication.  
    * **Username**- Username for authorization.
    * **Password**- Password for authorization. 


![Authorization](../images/googledrive/auth-tab.png "Authorization")

Once the connection is successfully established, to synchronize the content at any time, go to the **Configurations** tab and click **Sync Now.** Go to the **Content** tab to view the content ingested into the application. 

![Content](../images/googledrive/content-tab.png "Content")

