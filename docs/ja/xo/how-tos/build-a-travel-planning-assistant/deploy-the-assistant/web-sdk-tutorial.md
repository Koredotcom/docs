# Travel VA: Web SDK Tutorial

This tutorial provides a comprehensive walkthrough for setting up and running an instance of the Kore.ai assistants Web SDK is a collection of libraries that you can use to integrate Kore.ai assistants with your own web applications.

## Web SDK Tutorial Overview

Here, you will install a Kore.ai sample assistant, a test application to host the assistant, and then a JSON Web Token (JWT) generation web service using your local host server to communicate between the assistant on your local server and the Kore.ai XO Platform. The following list describes the general steps you will take to install and configure the Web SDK.

1. **Build the assistant to be integrated** – For this tutorial, you will install the _Travel Planning Sample_ assistant that uses open APIs to get flight and location information, along with weather reports.
2. **Configure Web/Mobile Client channel** – To use the _Travel Planning Sample Virtual Assistant_ with the Web SDK, you must configure the assistant for the Web/Mobile Client channel.
3. **Create a new Client App** – When you configure the Web/Mobile Client channel for the _Travel Planning Sample Virtual Assistant_, you must create a client app and select the JWT signing algorithm used to generate the authentication tokens.
4. **Publish the assistant**– After you have configured the _Travel Planning Sample Virtual Assistant_, you must publish the assistant which sends the bot to the Bots Admin for approval.
5. **Approve and Deploy the assistant**– In the Bots Admin Console, the published assistant and tasks must be approved to deploy.
6. **Download and install Node.js** – You will need to install Node.js used to host the JWT token generation web service for the Web SDK to communicate between the assistant in the test application and the Kore.ai XO Platform.
7. **Download and uncompress the test application** –  The test application, <a href="https://s3.amazonaws.com/static-kore/downloads/SDKApp.zip" target="_blank">SDKApp</a> is used to simulate your application that will host the Kore.ai assistant as a channel on a web page using your computer local host server.
8. **Download and uncompress the Kore.ai Web SDK** – The Web SDK contains the libraries used to communicate and run the assistant in the test application using the Web/Mobile Client channel. You will need to configure settings in the index.html file for your computer.
9. **Start your application and view the assistant in a web browser** – In a **Terminal** window, you will start the JWT service, and then view the assistant in a web browser.

Now let us see detailed step by step implementation.

### Installing and Running the Kore.ai Web SDK

This section provides detailed steps on how to run a Kore.ai Sample Virtual Assistant using the Web SDK and a test application running on your computer local host server. _To get started, you will need to build a assistant to run in the test application, and then configure the assistant to run in the Web/Mobile Client channel. For this tutorial, we will be installing a sample assistant._

1. Log in to XO Platform, and click the **down-arrow** next to the  **+New Bot** and select **Install Sample Virtual Assistants.**
2. Hover over **Travel Planning Sample**, and then click **Install**.
3. The _Travel Planning Sample installed successfully_ message is displayed and the Sample Virtual Assistant is added to your **Bots** left-hand navigation menu.

In this next section, you will define the Web/Mobile Client channel for the Travel Planning Sample Virtual Assistant by creating a new client app and defining channel settings. Click <a href="https://developer.kore.ai/docs/bots/channel-enablement/adding-the-webmobile-client-channel/" target="_blank">here</a> for a detailed explanation of the steps given below:

1. On the XO Platform top menu, select the **Build** tab.
2. From the left menu, click **Integrations** > **BotKit**.
3. In the **Select App** drop-down list, click **Create App**. The **Create Client App** dialog is displayed.
4. In the **Name** field, enter a name for your app, for example, My SDK Client App.
5. In the **JWT Signing Algorithms** section, select **HS256** to generate the authentication tokens.
6. Click **Next -> Done**.
7. The **Web/Mobile Client Channel** page is displayed with the following JWT credentials, make a note of all these details:
    * Bot Name
    * Bot ID
    * Client ID
    * Client Secret 
We will be using them later in the Web SDK setup.
8. Click **Save**.

_Now that the assistant is created and defined for the Web/Mobile Client channel, you are ready to publish and deploy it._

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>By default, the Travel Sample Planning assistant is configured with <b>Target Audience</b> set to <i>Enterprise Users</i> on the <b>Build</b> tab in the <b>Configurations</b> -> <b>General Settings</b>. Optionally, you can define this assistant for <b>General Public</b> use. Once this assistant is published, the <b>Target Audience</b> cannot be changed.</p></div>

<ol start="9"><li> On the <b>Deploy</b> tab, click <b>Publish</b>.</li>
<li>On <b>Publish</b> page, select all tasks, and then click <b>Proceed</b>.</li>
<li>Enter a comment and <b>Confirm</b> publish.

<i>After an enterprise developer publishes a assistant, it must be approved and assigned to the users for use.</i></li>

<li>Complete one of the following assistant deployments in the Bots Admin Console depending if your bot <b>Target Audience</b> is set to <b>Enterprise Users</b> or <b>General Public</b>. Complete one of the following:</li></ol>

* In the Bots Admin Console, in the **Bots Management** module, on the **Enterprise Bots** page, click the **Ellipses**  icon for the _Travel Planning Sample Virtual Assistant_ that you want to deploy, and then click **Manage bot tasks**. The **Manage Bot Tasks** dialog is displayed.
* In the **Bot tasks** field, click the **Expand** the **>** icon to display the available and deployed tasks, select all tasks for this bot, and then click **Confirm**.
* In the **Manage bots tasks** dialog, click **Confirm**. The _Bot status changed successfully_ message is displayed.
* On the **Enterprise Bots** page, click the **Ellipses** icon for the _Travel Planning Sample Virtual Assistant_ that you want to assign the users to, and then click **Bot & task assignments**.
* The **Bot & task assignments** dialog is displayed. Assign the assistant to your users, for all tasks, including yourself.

Now it is time to download, uncompress, install and configure the software packages required for the Web SDK and a test application to run the assistant locally on your local host server with the steps below:

1. To download and install _node.js_ on your computer, go to <a href="https://nodejs.org/en/download/" target="_blank">Node JS Download</a> link, and select your OS as `.pkg` for Mac, and `.msi` for Windows.
2. In a **Terminal** window, run the `node -v` command to verify installation and version, for example, `v6.10.2`.
3. Locate the **SDKApp/sdk** folder of your web server hosting the app where you want to integrate the Kore assistant. For this tutorial, to download the test application and JWT web service, click <a href="https://s3.amazonaws.com/static-kore/downloads/SDKApp.zip" target="_blank">SDKApp</a> and unzip it.
4. To download the Kore.ai Web SDK, go to <a href="https://github.com/Koredotcom/web-kore-sdk" target="_blank">Kore Web SDK</a>. In the **master** dropdown, select the required **Branch/Tag** and then in the **Code** dropdown, click **Download ZIP**. Extract all files to the _…/SDKApp/sdk_ folder mentioned in step above. Check for the release compatibility from the <a href="https://developer.kore.ai/docs/bots/whats-new/whats-new-in-this-release-bot-builder/#SDK_Versions" target="_blank">release notes</a>.
5. From the XO Platform **Web/Mobile Client Channel** page on the **Deploy -> Channels** menu, copy the following (as mentioned in step 8 above):
    * clientSecret
    * clientId
    * Bot Name
For ver7.2 of the platform, the Web SDK repo structure has undergone a major change. The steps would vary based on which repo you are using.
6. Follow this step for the latest Web SDK file downloaded **after ver7.2** of the platform.
7. Open the `index.html` file from the `/SDKApp/sdk/UI` folder using a text editor. Update the following lines to add the path to the _UI_ folder:

```js    
<script src="libs/jquery.js" type="text/javascript"></script>
<script src="libs/jquery.tmpl.min.js" type="text/javascript"></script>
<script src="libs/jquery-ui.min.js" type="text/javascript"></script>
<link href="libs/jquery-ui.min.css" rel="stylesheet"></link>
<script src="chatWindow.js" type="text/javascript"></script>
<link href="chatWindow.css" rel="stylesheet"></link>
```

<ol start="8"><li>Open the <code>kore-config.js</code> and update the <i>botOptions</i> parameters botInfo, clientId and clientSecret, and your email id as userIdentity.</li></ol>

```js
“clientSecret”: “{client secret}”
$.ajax({
url: “http://localhost:3000/api/users/getJWT”,
//this is sample url of a localhost. 
//This should include the url where you are hosting the bot.
botOptions.userIdentity = ‘ ‘;
// Provide users email id here
botOptions.clientId= "{client id} ";
// secure client-id
botOptions.botInfo= {name:"{bot name}","id":"{bot id"};
// Kore bot name is case sensitive
})
```

<p>The JWTUrl refers to the location where your app (where you want the Kore.ai assistant to be integrated) is hosted. For this tutorial, we are using the JWT server (as setup in step 19) and hence using the same here.</p>

<p>Ensure that in <code>kore-config.js</code> you set the audience for your assistant. Choose one of the following:</p>

* <code>"isAnonymous": < <em>false</em> >;</code> if the assistant is deployed for the <strong>enterprise users</strong>, and then set <code>botOptions.userIdentity = '<strong>&lt;</strong> <strong><em>Your email ID</em> ></strong>';</code> <strong>
– or –</strong>
* <code>"isAnonymous": &lt; <strong><em>true</em> </strong>>;</code> if bot is deployed for <strong>Consumer Use</strong>.
This step is valid for older Web SDK file downloaded **before ver7.2** of the platform.
* Open the `index.html` file from the `…/SDKApp/sdk/UI` folder using a text editor:
<ul><li>Update the following lines to add the path to the <em>UI</em> folder:</li></ul>

```js
<script src="libs/jquery.js" type="text/javascript"></script>
<script src="libs/jquery.tmpl.min.js" type="text/javascript"></script>
<script src="libs/jquery-ui.min.js" type="text/javascript"></script>
<link href="libs/jquery-ui.min.css" rel="stylesheet"></link>
<script src="chatWindow.js" type="text/javascript"></script>
<link href="chatWindow.css" rel="stylesheet"></link>
```
<ul><li>Update the following parameters to run as local host:</li></ul>

<code>"clientSecret": "{client secret}"</code>

```js
$.ajax({
url: "http://localhost:3000/api/users/getJWT",
//this is sample url of a local host. 
//This should include the url where you are hosting the bot.
botOptions.userIdentity = ' ';
// Provide users email id here
botOptions.clientId= "{client id} ";
// secure client-id
_botOptions.botInfo= {name:"{bot name}","id":"{bot id"};
// Kore bot name is case sensitive
}
)
```

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>The URL mentioned in the above code snippet, refers to the location where your app (where you want the Kore.ai Bot to be integrated) is hosted. For this tutorial, we are using the JWT server (as setup i step 18) and hence using the same here.</p></div>

<ol start="9"><li>Choose one of the following:</li>
<ul><li><code>"isAnonymous": &lt; <strong><em>false</em> </strong>>;</code> if the assistant is deployed for the <strong>enterprise users</strong>, and then set <code>botOptions.userIdentity = '<strong>&lt;</strong> <strong><em>Your email ID</em> ></strong>';</code></li> – or –
<li><code>"isAnonymous": &lt; <strong><em>true</em> </strong>>;</code> if the assistant is deployed for <strong>Consumer Use</strong>.</li></ul>
<li>Save your changes. <em>You are ready to start the JWT token generation service and access the test application with the configured Web SDK in your local web browser.</em></li>
<li>Go to home directory<code>cd SDKApp</code>.</li>
<li>Install dependencies using the following command <code>npm install</code>.</li>
<img src="../images/web-sdk-json.png" alt="web sdk json" title="web sdk json" style="border: 1px solid gray; zoom:75%;"> 
<li>Start SDKApp <code>node startServer.js</code>.</li>
<li>Access the application in any browser using <em>localhost:3000</em>.</li></ol>

### Passing data via webSDK

You can pass additional information of the user accessing the channel by adding the custom data at **botInfo** inside the _index.html_ file.

```js
botOptions.botInfo = {
                        name: "Banking Bot", 
                              "_id": "<bot_id>", 
                        customData: "value"
              };
```

Details like phone number, address, or location, etc., are examples of data that can be passed inside the _customData_. <code><em>customData</em></code> can be accessed from <code>lastMessage</code> under the <code>BotUserSession</code> of the context object. This data will be specific to the user using webSDK and will last for the user session. Multiple values can also be added to the <code>customData</code> in the <code>index.html</code> file as key-value pairs:


```js
botOptions.botInfo = {name:"<bot_name>",
                      "_id":"<bot_id",
                      customData:{"name":"John",
                                  "age":30,
                                   "cars": {"car1":"Ford",
                                            "car2":"BMW",
                                            "car3":"Fiat"
                                             }
                                   }
                           };
```

<img src="../images/install-deendencies.png" alt="install dependencies" title="install dependencies" style="border: 1px solid gray; zoom:75%;"> 

### Passing Mapped Identities

The Web/Mobile SDKs support the passing of mapped identities of the users when they switch from one identity to another while interacting with the assistant. This process allows the users to continue any ongoing conversation initiated using a previous identity. For example, a user may have started the conversation with the assistant using an anonymous or randomly generated identity. After exchanging a few messages, the user may become an authenticated or known user by logging into your website or any application. At this point, the user’s known identity can be passed to the bot from the SDK as part of the <a href="https://developer.kore.ai/docs/bots/sdks/user-authorization-and-assertion/#About_JWT" target="_blank">JWT Grant API</a> call using the parameter identityToMerge. The Platform uses this information to merge the user identities and allows the user to resume an ongoing conversation using the new known identity.

```js
{
 "iat": 1611810186883,
 "exp": 1611813786.883,
 "aud": "https://idproxy.kore.com/authorize",
 "iss": "cs-d3042d3e-7da4-55da-a94d-783349270cc0",
 "sub": "knowuser1@test.com",
 "isAnonymous": "false",
 "identityToMerge": "anonymoususer1@test.com"
}
```


The following scenarios describe the bot behavior when dealing with the new identity and merged identity:



* When both the new and merged identities are not present in the system, then the new identity is created and a new conversation is started using new identity.
* When the new identity is present but the merged identity is not present in the system, then the conversation is started or continued (in case of an active session) using new identity.
* When the merged identity is present but the new identity is not present in the system, then the new identity is created and the conversation is continued using the new identity. All references to the merged identity are replaced with the new identity and the merged identity is removed.
* When both the merged identity and the new identity are present in the system and the new identity does not have an active session, then the conversation is continued using the new identity. All references to the merged identity are replaced with the new identity and the merged identity is removed.
* When both the merged identity and the new identity are present in the system and both have an active session, then the merged identity’s conversation is continued using the new identity. All references to the merged identity are replaced with the new identity and the merged identity is removed. The active session of the new identity is marked as “Drop-off” and closed.

Due to the above-mentioned behavior in the user identity following changes can be seen:



* Analytics and Chat History will be updated associating all the sessions related to the merged identity with the new identity.
* The sessions data is updated replacing the merged identity with the new identity.
* The Billing Session tracking merged identity’s conversation will be marked as new identity.


### Custom Meta Tags via webSDK

With the release of ver8.0 of the platform, you can directly add Custom Meta Tags from all supported internal channels (Web SDK/IVR / IVRVoice / Webhook channels). You can define Session, User, and Message level meta-tags. These tags will be added to the Conversation Session as soon as it is created.

```js
botOptions.botInfo = {name:"<bot_name>", "_id":"<bot_id",
                           customData :{
                            "name":"John"},
                            "metaTags": { 
                            "messageLevelTags": [{ "name": "tag1", value: "message"}],
                            "sessionLevelTags": [{ "name": "tag2", value: "session"}],
                            "userLevelTags": [{ "name": "tag3", value: "user"}]
                                 }  
                          };
```

## Common Errors

Some commonly encountered errors are:



* _A wrong URL_ is given in index.html, users see a 404 error. Double check the URL. URL changes depending on whether you are hosting the assistant on your own web SDK or on Kore’s web SDK. If its Kore web SDK, then the URL is `http://demo.kore.net:3000/users/sts 7`. If you are hosting on your in-house web SDK, then provide the respective URL.
* _missing/Invalid jwt.sub():_ This error occurs for enterprise assistants, when the user’s email id is not given in the index.html file. Provide users identity as shown below in index.html `botOptions.userIdentity = 'x@gmail.com';// Provide users email id here.`
* _Not found_: User sees this error when either wrong clientID or no clientID is given. Check the correct ClientID from Bot – API Extensions option `botOptions.clientId = "{clientID}"; // secure client-id`.
* _error verifying the jwt_: the _Wrong clientSecret_ is given in index.html: Check the correct clientSecret you get from Bot – API Extensions option `"clientSecret": "{clientSecret}" //provide clientSecret here`.

After you install and test the Web SDK using the test application and your local host server, you can use the same concept to install and configure the Web SDK in your own enterprise application. You will just need to reconfigure the file paths and URLs in the index.html file of the Web SDK to point to your website and servers, and configure a Kore.ai assistant for the Web/Mobile Client channel with JWT credentials for your enterprise.
