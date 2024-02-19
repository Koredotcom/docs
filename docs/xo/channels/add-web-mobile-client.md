# Adding the Web/Mobile Client Channel

To use any Kore.ai Bot SDKs, you must first register your app to get the authentication credentials to communicate between the Kore.ai bot and your application hosting the bot. The Kore.ai bot SDKs can be used to add a chat widget to your company application that enables users to chat with the application using natural language input. The Kore.ai bots platform interprets the user input, processes the request, and responds to the user.

The bots Platform accepts requests only from authorized clients for connection and exchanging messages. To authorize the connection, you must register your app and get the required client credentials. The credentials authorize the client app and provide for user assertion.
This topic describes how to register your application and generate credentials for your clients that are required to exchange messages between your application and the Kore.ai bots Platform and then configure and add the Web/Mobile Client Channel to your bot.

To add the Web/Mobile Client Channel to your bot, you must first register or create an app in Bot Builder. When you create an app, you are provisioning credentials for your application to communicate securely with Kore.ai servers. After you create an app, you can use that app registration in the configuration to add the Web/Mobile Client Channel to your bot.


## Add Web/Mobile Client Channel

The Web/Mobile Client channel can be configured using the following options:

**Associate an App**

* When you choose to enable Web/Mobile client, an app is automatically created for you
* You can choose to replace this app with any other app that you may want to use

To create your own app, follow these steps:


1. Open the bot on which you want to add the Web/Mobile Client channel.
2. On the bots menu, click **Channels & Flows** > **Channels** > **Digital** > **All** > **Web/Mobile** **Client**.
3. In the **Select App** drop-down list, select your existing app registration or click **Add App** to create a new app.
<img src="../images/Web_Mobile.png" alt="Web Mobile Client channel" title="Web Mobile client channel" style="border: 1px solid gray; zoom:70%;">
4. In the **Name** field, enter the name for the app registration used in Bot Builder. For example, **weather app**.
5. Select one of these scopes for the app:
    * **Allow anonymous users to chat with the bot**: Enables anonymous users to interact with the bot.
    * **Auto register new users on Kore.ai Bots Platform**: Select to control the auto-user registration in Kore.ai if the user assertion is unknown.
6. In the **JWT Signing Algorithms Used For Client App Authentication** drop-down list, select one of the following security algorithms:
    * **RS256/RS512**: Select to enable the **Public Key.** _The Private key, used for encryption, is provided by the user, and the Public key, used for decryption, is provided by the Platform_. Both the keys have to be used for generating the token. The Public Key is used by the XO Platform to authenticate the client application.
    * **HS256/HS512**: Select to generate a **Secret Key** and a **Client ID**. The **Client ID** is required for app initialization, and the **Secret Key** is used by the XO Platform to authenticate the client application.
7. (Optional) In the **Push Notifications** section, click **Enable** and then specify a URL to send the notifications.
<img src="../images/Web_Mobile1.png" alt="Web Mobile client configuration" title="Web Mobile client configuration" style="border: 1px solid gray; zoom:70%;">
8. When you Enable the Push Notifications, you can select one of the following options to manage the notifications:
    * **All Messages** – Sends push notifications for all conversation messages to the client app.
    * **Message Delivery Failures** – Sends push notifications for failure scenarios such as WebSocket Disconnected, App is Killed, and Message Delivery Failure.
    <img src="../images/Web_Mobile2.png" alt="Web Message Delivery configuration" title="Web Message Delivery configuration" style="border: 1px solid gray; zoom:70%;">

9. To customize the display messages for the push notifications messages sent to the client app, select one of the following options:
    * **Send Original Messages** – Sends the actual conversation message as part of the push notification.
    * **Show a standard message from standard responses** – Sends a generic message instead of the original message.
    <img src="../images/Web_Mobile2_New.png" alt="Web Push Notifications   configuration" title="Web Push Notifications configuration" style="border: 1px solid gray; zoom:70%;">

    * Click **Manage Responses** to add custom messages in the push notification. To learn more about adding responses, see [Default Standard Responses](https://developer.kore.ai/docs/bots/bot-intelligence/default-standard-responses/) and [Default Conversations](https://developer.kore.ai/docs/bots/bot-intelligence/default-dialog/).
    <img src="../images/Web_Mobile3.png" alt="manage responses" title="manage responses" style="border: 1px solid gray; zoom:70%;">
10. Click **Save** and then **Create**. The app registration details appear.
 <img src="../images/Web_Mobile4.png" alt="create web app" title="create web app" style="border: 1px solid gray; zoom:70%;">
11. To copy the app registration details to the clipboard for your application, you can click **Copy** for **Bot Name**, **Bot ID**, and **Client ID**. For **Client Secret**, click **View**, and then click **Copy**.

12. In the **Allow Alert Task Setup** section, select **Yes** to enable your application users to set up their own alert tasks using the web client. By default, this setting is disabled for web client users, but mobile client users can always set up their own alerts.

13. In the **Enable Channel** section, select **Yes** to enable the channel immediately after saving.

14. Click **Save** to save the settings and close the **Web/Mobile Client Channel** page.

The _Channel Information updated successfully_ message is displayed on the top-right of the page.

Once enabled [click here](https://developer.kore.ai/docs/bots/sdks/kore-ai-web-sdk-tutorial/) for steps to integrate your bot into your web application.


## Choose Deployment Options

There are two different ways of deploying the Web/mobile client. You can either use the Kore.ai hosted Client or set up your own client and host it.

If you are using the Kore.ai hosted client, then there are two different approaches:

* Share the URL with users
* Embed code in your website

To choose deployment options, follow these steps:


1. In the **Web Client Details** section, copy the URL to share this URL with users to interact with your virtual assistant.
<img src="../images/Web_Mobile5.png" alt="Web Client details" title="Web Client details" style="border: 1px solid gray; zoom:70%;">
2. In the **Embed Code** section, copy the code to embed this Channel in your application pages where you want to display this virtual assistant widget.
 <img src="../images/Web_Mobile6.png" alt="embed code" title="embed code" style="border: 1px solid gray; zoom:70%;">
3. In the **Whitelist Domains** section, click **+Add Domain** to add URLs which want to include in the whitelist for your assistant.
4. Click the **Download SDK** link to download, setup and configure the Web/Mobile SDK using the prebuilt SDK libraries.
5. Select an appropriate option to Allow Alert Task setup. You can choose either **Yes** or **No** to let users to set up Alerts using Web Client.
6. Click **Save** to save the settings and close the Web/Mobile Client Channel page.
 <img src="../images/Web_Mobile7.png" alt="whitelist domains" title="whitelist domains" style="border: 1px solid gray;">



## Edit Web/Mobile Channel

To edit the Web/Mobile Client channel, follow the below steps:


1. Hover over the channel to modify, and then click the **Settings** icon displayed to view the command menu, as shown in the screenshot below.
<img src="../images/Web_Mobile9.png" alt="whitelist domains" title="whitelist domains" style="border: 1px solid gray;">

2. Select one of the following commands to modify the channel:
  *  **Edit** – Click to open the Web/Mobile Client channel setup page.
  *  **Disable/Enable** – Click **Disable** to temporarily disable the use of the Web/Mobile Client channel for your bot. When the channel is disabled, click **Enable** to enable the use of the Web/Mobile Client channel.

  * **Delete** – Click **Delete**, and then click **OK** in the **Delete Confirmation** dialog to permanently delete the bot channel configuration.

!!! warning

      This operation is permanent, and cannot be undone.
