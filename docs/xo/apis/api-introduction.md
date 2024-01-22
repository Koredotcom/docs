# **Using XO Platform APIs**

The XO Platform allows you to develop Virtual Assistants using secured APIs. All key developer activities like creation, import and export, training, and publishing are available using these APIs. Key account management activities like managing XO Platform access, managing admin, and roles can also be performed via secured public APIs. For a complete list of APIs and usage instructions, [refer here](../api-list).

Authentication of the API requests involves the following two steps:


1. **Create an App**: An App helps you create secure authentication credentials to access the XO Platform features. You can associate the app for enabling BotKit, APIs, SDKs, and Channels.
2. **Assign API Scopes to an App**: Assigning API scopes to the app allows the app to access the Platform APIs securely:
    * **Unified XO Platform API Scopes**: Developers can assign appropriate API Scopes to the app to access respective Platform features for a virtual assistant.
    * **Bot Admin Console API Scopes**: Account administrators can assign API Scopes to the app to access respective features in any virtual assistants built into their accounts on the Platform.


## Creating and Managing Apps in XO Platform

Steps to create a Client App from the XO Platform:



1. Go to **App Settings** > **Dev Tools** > **Web/Mobile SDK**.
![Create APP](../images/devtoolshome.png "create app")

2. If you are creating an app for the first-time, click the **Create App** button. Otherwise, click the **New App** button.
3. On the Create Client App page, enter a **name** for the app.
4. Select **Enforce JTI**, **JWE**, or both as per your requirements to secure the connections with the Platform:
    * **Enforce JTI (JWT ID) Claim** – Once enabled, the Platform accepts the requests only from calls with the JTI Claim in the requests and those without JTI Claim are rejected.
    * **Enforce JWE Encryption** (Generating JWT token) – To access the XO Platform’s public APIs, the application making the API request requires authentication. Kore.ai uses the JWT (JSON Web Token) mechanism to handle the authentication. For a quick overview of the JWT token, read [Introduction to JWT tokens](https://jwt.io/introduction/).
    ![alt_text](images/image2.png "image_tooltip")

5. Click **Next** and **Done**. You are directed to the Manage Apps page, which lists all the apps associated with this virtual assistant. 
6. Click the app name or anywhere in the row to see the app’s details, such as **Bot Name**, **Bot ID**, **Client ID**, and **Client Secret**. Also, the App Usage column lists where this app is used – Web SDK, BotKit, APIs, WebHook and IVR Channels. 

!!!note
    Use the **Client ID** and **Client Secret** of the client app from above to generate a JWT token. This token must be passed as a part of each API request for authorization.
7. To delete apps, click the **Delete** icon against the respective app. 
**Note:** Only the Bot Owner can delete an app.


## Creating and Managing Apps in Bots Admin Console

Steps to create a Client App from the Bot Admin Console:



1. Log in to the Admin Console.
2. Go to **Security & Control** > **API Scopes**.
3. On the API Scopes page, click **New**.
4. Click the **Manage Apps** link to create a new app. 
![alt_text](images/image3.png "image_tooltip")

5. Click **New App** and then do the following:
    1. Enter a name.
    2. Select **Enforce JTI**, **JWE**, or both as per your requirements.
6. Click **Save**.

## Data Tables

Access control from the Data Tables module is different from the XO Platform and Bot Admin Console access controls.

You can define apps to securely access the data from data tables and data views.

* You can create one or more apps, [Learn more](https://developer.kore.ai/docs/bots/advanced-topics/data-as-a-service/#App_Definition).
* These apps can be used for:
    * Accessing the data tables and views over public APIs.
    * Accessing the data tables and views using Service Node.
    * Accessing the export and import API for the definition of data table and views.
* You can grant this app read, write, and delete permissions to each table and view separately, [Learn more](https://developer.kore.ai/docs/bots/advanced-topics/data-as-a-service/#Assignments).





![alt_text](images/image4.png "image_tooltip")



## Associating API Scopes

Once you create a client app, you can associate it with API scopes.


### Adding API Scopes in the XO Platform

Steps to associate API Scopes to a Client App from the XO Platform:



1. Go to **Deploy** > **API & EXTENSIONs** > **API Scopes** and click **Create API Scope**.
![alt_text](images/image5.png "image_tooltip")

2. On the New API Scope Mapping page, from the **App** drop-down list, select an existing client app for authentication.
3. The app’s **Client ID** and **Client Secret** are displayed on the screen. Copy these values. 
![alt_text](images/image6.png "image_tooltip")

4. Under the Scopes section, select the appropriate scopes to allow the client app to access the respective APIs. (If appropriate scopes are not selected, then the client apps cannot access the APIs).
5. Click **Save**.

### Adding API Scopes in the Bots Admin Console

Steps to associate API Scopes to a Client App from the Bot Admin Console:

1. Log in to the Admin Console.
2. Go to **Security & Control** > **API Scopes**.
3. On the API Scopes page, click **New**.
4. On the New API Scope Mapping page, from the **App** drop-down list, select an existing client app for authentication.
5. Click the **Manage Apps** link to create a new app.
6. Once you select an app, the **Client ID** and **Client Secret** appear. Copy these values.
7. Under the Scopes section, select the appropriate Scopes to allow the client app to access the respective APIs.[Learn more](https://developer.kore.ai/docs/bots/bot-admin/security-control/security-module-overview/#API_Scopes).
8. Click **Save**. The app and associated scopes are listed on the API Scopes page. 
![alt_text](images/image7.png "image_tooltip")

9. If you want to delete an app and its associated API Scope, click the **Delete** icon against the respective app.


## List of Available API Scopes


<table>
  <tr>
   <td><strong>SCOPE</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
  </tr>
  <tr>
   <td>Intent and Entity Detection
   </td>
   <td>Assign this scope to allow intent and entity detection from an utterance using secured APIs.
   </td>
  </tr>
  <tr>
   <td>User Engagement Trend
   </td>
   <td>To retrieve the user engagement trend.
   </td>
  </tr>
  <tr>
   <td>Batch Tests Execution
   </td>
   <td>To execute Batch Test Suites and get results.
   </td>
  </tr>
  <tr>
   <td>Batch Tests Management
   </td>
   <td>To create, modify and delete Batch Test Suites and results.
   </td>
  </tr>
  <tr>
   <td>Chat History
   </td>
   <td>Assign this scope to retrieve chat transcripts of this assistant using secured APIs.
   </td>
  </tr>
  <tr>
   <td>Debug Logs
   </td>
   <td>Assign this scope to retrieve debug logs of this assistant using secured APIs.
   </td>
  </tr>
  <tr>
   <td>Bot Export
   </td>
   <td>Export definition of a selected assistant.
   </td>
  </tr>
  <tr>
   <td>Import Variables
   </td>
   <td>Assign this scope to import variables of this assistant using secured APIs.
   </td>
  </tr>
  <tr>
   <td>Export Variables
   </td>
   <td>Assign this scope to export variables of this assistant using secured APIs.
   </td>
  </tr>
  <tr>
   <td>Proactive Messages
   </td>
   <td>To proactively send messages to the end-users via the supported channels.
   </td>
  </tr>
  <tr>
   <td>Train ML
   </td>
   <td>To match a given utterance against the NL model to identify possible intents and entities present in the utterance.
   </td>
  </tr>
  <tr>
   <td>Train FAQ
   </td>
   <td>To match a given FAQ against the FAQ model.
   </td>
  </tr>
  <tr>
   <td>Utterances Import
   </td>
   <td>To import utterances for a task.
   </td>
  </tr>
  <tr>
   <td>Utterances Export
   </td>
   <td>To export utterances for a task.
   </td>
  </tr>
  <tr>
   <td>Logs History
   </td>
   <td>To retrieve the change logs for the particular assistant.
   </td>
  </tr>
  <tr>
   <td>Bot Sessions
   </td>
   <td>Assign this scope to retrieve conversation sessions.
   </td>
  </tr>
  <tr>
   <td>Billing Sessions
   </td>
   <td>Assign this scope to retrieve billing sessions.
   </td>
  </tr>
  <tr>
   <td>Custom Reports
   </td>
   <td>To retrieve the data associated with custom widgets and reports.
   </td>
  </tr>
  <tr>
   <td>RCS Message Events
   </td>
   <td>Assign this scope for opting in users to RCS Business Messaging channel and sending broadcast messages.
   </td>
  </tr>
  <tr>
   <td>Metrics
   </td>
   <td>Assign this scope to retrieve Metrics information related to Intents Found, Intents not Found, Failed Tasks, Successful Tasks and Performance Logs.
   </td>
  </tr>
  <tr>
   <td>Manage Knowledge Graph
   </td>
   <td>To export the complete definition of the Knowledge Graph of this assistant.
   </td>
  </tr>
  <tr>
   <td>NLP Configurations
   </td>
   <td>Assign this scope to update the NLP thresholds and configurations.
   </td>
  </tr>
  <tr>
   <td>Update FAQs
   </td>
   <td>Assign this scope to update the FAQ Responses and FAQ Status.
   </td>
  </tr>
</table>


!!!note
    Once enabled, the API Scopes must be Published. [Follow the Publish](/deploy/publishing-bot) process to ensure that the API Scopes are selected.

## Generating the JWT Token

Once you have associated the API scopes with a client app, you must generate the JWT token for API requests.

Steps to generate the token:

1. Visit [https://developer.kore.ai/tools/jwt/](https://developer.kore.ai/tools/jwt/).
2. In the **Algorithm** drop-down list, select **HS256**.
3. Scroll down to the **Decoded** section, and update the **Payload** and the **Secret**.
        1. Replace the content of the **Payload** field with the code block shown below, and add the Client ID of the app copied in the previous section.
        ```json
        {
            "sub": "1234567890",
            "appId": "add-Client-ID-here"
        }```
        Note that the XO Platform validates the token only when it is entered exactly as “appId”. Don’t use “App ID”, “appid”, or “app ID”.

4. In the **Verify Signature** field, replace **your-256-bit-secret** with the Client Secret copied in the previous section.
5. Click **Copy JWT** to copy the generated token. You can pass this token as a part of the API request for authorization.