# Google Drive Cloud Storage Connector

By setting up the Google Drive connector in Search AI, you can extend the search capabilities to your Google Drive cloud storage-managed content and provide a seamless experience.

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

7. [Create OAuth access credentials](https://developers.google.com/workspace/guides/create-credentials) to authenticate the client (SearchAI). Enter the _Application type_ as _Web Application_ and give it a name. Add the URL of your  Search AI deployment as _Authorized redirect URIs_ and click _CREATE_.

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
    * **Grant Type** - Method of obtaining access token in OAuth 2.0 authentication. SearchAI supports **Authorization Code Grant Type for Google Drive**. Refer to [this for more information on Grant types](../../connectors.md).
    * **Client ID** - The client ID generated after registering SearchAI for OAuth authentication. 
    * **Client Secret**- The secret generated after registering SearchAI for OAuth authentication.  

![Authorization](../images/googledrive/auth-tab.png "Authorization")

Once the connection is successfully established, to synchronize the content at any time, go to the **Configurations** tab and click **Sync Now.** Go to the **Content** tab to view the content ingested into the application. 

![Content](../images/googledrive/content-tab.png "Content")

### Content Ingestion 

After successfully connecting to Google Drive, the next step is to do the Synchronization configuration. This allows the connector to know what content is to be ingested from the drive. To do so, go to the **Configurations** tab and do the following configurations. 

* **Schedule Sync**- Enable this option if you want to set up a scheduler to automatically sync content with Google Drive at regular intervals. When enabled, set the time and frequency of the sync operation. The sync job runs at scheduled intervals in the background and ingests any updated content from the application. 

* **Synchronization** - This field allows you to select the content to be ingested from the drive. You can choose to:
    1. Sync All Content - This option ingests all the data from Google Drive. 
    2. Sync Specific Content - This option allows you to select the content to be ingested into the SearchAI application. Click on the **Configure** option. The following widget allows you to set up rules for filtering content. Set up rules and click **Save and Test**.

![Configuration](../images/googledrive/config-tab.png "Configuration")

### Content Filtering Rules

Each rule gives you the option to choose the location on the drive from where the content is to be ingested. It can take the following values:
    * **User Drive** includes only the locations owned by the account for which the Google Drive connector is configured. 
    * **Shared Drive** includes only the locations shared with the account for which the Google Drive connector is configured. 
    * **All Drives** include all the locations from the user drive as well as the shared drive. 
    * **User Domain** 

Next, define conditions to choose the content from the selected location. To define a condition, specify a parameter, operator, and the value for the parameter.  For example, if you want to ingest all the files in a given folder set up a filter as shown below:

![Example](../images/googledrive/example1.png "Example")

You can define conditions based on the following parameters or add your parameters too. Refer to [this](https://developers.google.com/drive/api/guides/ref-search-terms) for more information on the query parameters and the values that the parameters can take. 

* **Folder Id** - Ingest data specifically from one or more folders.  Provide the folder IDs as value. To find the folder ID, navigate to your folder in Google Drive, the unique ID that comes after “folder/” in the URL is the folder ID. For example, if the URL is “[https://drive.google.com/drive/folders/1dyUEebJaFnWa3Z4n0BFMVAXQ7mfUH11g](https://drive.google.com/drive/folders/1dyUEebJaFnWa3Z4n0BFMVAXQ7mfUH11g)”, then the Folder ID would be “1dyUEebJaFnWa3Z4n0BFMVAXQ7mfUH11g”.

* **Mime Type** - Ingest a specific type of data. For example, use ‘application/pdf’ to ingest only pdf files from the drive.  Supported MIME types include:
    * application/msword
    * application/pdf
    * text/plain
    * application/vnd.google-apps.document
    * application/vnd.google-apps.presentation

* **File Name** - Ingest files with given file names. 

**Points to note**

* You can have any number of rules in a filter. For example, to include all the files from a specific folder and all the files with a keyword in the filename, you can set up a filter as:

![Example](../images/googledrive/example2.png "Example")

* You can define more than one condition to a rule to filter specific content. For example, to ingest only PDF files from a given folder, you can set up a filter as:

![Example](../images/googledrive/example3.png "Example")
