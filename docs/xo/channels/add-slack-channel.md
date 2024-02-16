# Adding the Slack Channel

To set up Slack as a channel, you must associate the assistant with a Slack app. Adding the Slack channel to your Kore.ai VA allows end-users to interact with it using their _Slack_ accounts.

To complete this procedure, you must already have a _Slack_ account and be a member of a _Slack_ team.


## Step 1: Create an App on Slack


1. In the XO Platform, select the assistant to which you want to add the Slack Channel.
2. Go to **Channels & Flows** > **Channels** > **Digital** > **All** > **Slack**, and open the **Configuration** tab.

3. In a new browser tab, [Login ](https://api.slack.com/)to the Slack developer portal and go to the Apps section [https://api.slack.com/apps](https://api.slack.com/apps). If this is your first app, click **Create an App** and if you already have some apps, then click **Create New App**.
![slack app](../images/slack.png "slack app")

4. You will now be asked to choose how you’d like to configure your app’s scopes and settings. Select **From Scratch**.
5. On the **Create App** window, enter the **App Name** and select a team from the Development Slack Team drop-down list. Use your assistant’s name as the App Name.
![slack assistant](../images/slack1.png "slack assistant")

6. After you enter the required information, click **Create App**. Slack will now create a new app and you are redirected to the **Basic Information** section of the new app.


## Step 2: Set Redirect URL and Scopes


1. Go to the **OAuth & Permissions** tab and click **Add a new Redirect URL**. Copy the Redirect URL provided in the **Configurations** tab of the Slack channel page within the XO Platform and enter in the **Redirect URLs** field.
2. Click **Add** **a new Redirect URL**, then click **Save URLs**. 
![redirect URL](../images/slack2.png "redirect URL")

3. Proceed to **Scopes >** **Bot Token Scopes** section.
4. Add ‘_incoming-webhook_‘, ‘_chat:write_‘, ‘_users:read.email_‘, and ‘_users:read_‘ scopes.
5. If you would like your users to send attachments to your bot, then select the ‘_files:write_’ scope.
6. If you would like to send Proactive Notifications to your users on Slack, then select the _users:read_, _users:read.email_, _team:read_ scopes. 
![bot token scopes](../images/slack3.png "bot token scopes")

## Step 3: Install the App

1. Next, navigate to the **OAuth Tokens & Redirect URLs** section, and select the **Install to Workspace** option. Choose the required Workspace and complete the process. 
![OAuth tokens](../images/slack4.png "OAuth tokens")

2. Optionally, if you would like to send Proactive Notifications to your users on Slack, copy the **Bot User OAuth Token** from the **OAuth Tokens for Your Workspace** section and provide it in the Slack Channel Configurations tab within the XO Platform.
![slack workspace](../images/slack5.png "slack workspace")


## Step 4 : Enable Interactivity

1. To enable Interactive Components, go to the **Interactivity & Shortcuts** section and enable **Interactivity**. Copy the **Webhook URL** provided in the **Configurations** tab of this page and enter it in the **Request URL** field.

2. Click **Save Changes**.

  !!! note

      The Webhook URL now includes the **_streamid_** in the API request to identify the virtual assistant being accessed. When an incoming request is qualified with this identifier, it helps with traceability, troubleshooting, and remediation at the network level during anomalies like malicious calls or unusual bot activity.

  ![interactivity](../images/slack6.png "interactivity")


## Step 5 : Enable Events

1. Go to the **Event Subscriptions** section and activate the **Enable Events** option.
2. Copy the _Webhook URL_ provided in the _Configurations_ tab of Slack Channel page and enter it in the **Request URL** field.
3. In the **Subscribe to Bot Events** section, add _app_mention_, _message_channels,_ and _message_im_ events.
4. In the **Subscribe to Workspace Events** section, add _message_im_ event.
5. Click **Save Changes**.
![events](../images/slack7.png "events")


## Step 6: Enable Interactions from the Messages tab

1. Navigate to the **App Home** section and under **Show tabs**.
2. Enable the **Messages Tab** and also enable the **Allow users to send Slash commands and messages from the messages tab**.

  This is required to allow your users to directly interact with the app from the Messages tab.

  ![enable interactions](../images/slack8.png "enable interactions")



## Step 7: Configure App Credentials


1. Go to the **Basic Information** section and scroll down to the **App Credentials** section.
2. Capture the values for **Client ID**, **Client Secret**, and **Verification Token** fields.
3. Provide them in the **Configurations** tab of the Slack Channel within the XO Platform.
![app credentials](../images/slack9.png "app credentials")


## Step 8: Manage Distribution

If you want to enable the public distribution of your app on Slack, you must proceed with the following steps.

1. Go to the **Manage Distribution** section and click on **Remove Hard Coded Information**.
2. Select the checkbox **I’ve reviewed and removed any hard-coded information** and click **Activate Public Distribution.**
![manage distribution](../images/slack10.png "manage distribution")


## Step 9: Enable the Channel


1. Go to the **Configurations** tab to review and complete the channel setup.
2. Click **Authorize** under the app credentials area.
3. Under **Enable Channel**, select **Yes** and click on **Save** to enable the Slack channel.
![enable channel](../images/slack11.png "enable channel")

The _Successfully added Slack channel_ message is displayed at the top of the XO Platform. In _Slack_, it is optional to submit your app to the Slack App Directory.

After the channel is enabled and all configurations are verified, you can optionally publish

the assistant to make it available for end-users, with the new channel. Learn more about

[Publishing your Virtual Assistant](https://developer.kore.ai/docs/bots/publish/publishing-bot/).

To learn more about working with Channels within the Kore.ai XO Platform, please see [Channel Enablement.](https://developer.kore.ai/docs/bots/channel-enablement/adding-channels-to-your-bot/)
