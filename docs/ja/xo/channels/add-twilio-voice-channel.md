# Adding the Twilio Voice Channel

To add Twilio Voice as a channel to your Kore.ai assistant, you must get a Twilio phone number and set up a webhook integration to communicate with the VA. Adding the Twilio Voice channel to your Kore.ai VA allows end users to interact with it using their 


## Important Consideration

Twilio Voice must be enabled for assistants that are specifically built to work on voice-based channels. Review the following constraints before enabling Twilio Voice as a channel:
* Enterprise VAs that require user's authorization to communicate with it are not supported on Twilio Voice.

* Tasks that require user's authorization to communicate with external systems must not be included.
* Webhook Nodes work asynchronously and are currently not supported on Twilio Voice.
* Use only dialog tasks for best user experience on Twilio Voice channel.
* Ensure that the responses you configure for Twilio Voice are brief, plain text messages only.
* The VA receives the user's voice response from Twilio Voice only after a few moments of silence at the user's end and this can appear as a lag to the end-user.


## Prerequisites

[Log in to your Twilio Voice account](https://www.twilio.com/){:target="_blank"} to create a new Twilio number to associate with your assistant. You can buy a number by going to the **Main Menu > Phone Numbers > Buy a Number**. If you already have a Twilio phone number that you want to associate with this VA, then you can proceed to the next steps.


## Step 1: Configure the Integration in Twilio

To set up the integration:

1. From Twilio’s main menu, select **Phone Numbers > Manage > TwiML Apps**, then click **Create New TwiML App**.
2. Enter a name for the app and copy the **Webhook URL** from the **Configurations** tab of the Twilio Voice Channel page (**Automation AI** > **Channels & Flows** > **Channels** > **Third Party Voice** > **All** > **Twilio Voice**) and enter in the **Request URL** for **Voice**.
3. Click **Save** to complete the app creation.  
<img src="../images/twilio-voice-img1.png" alt="Create new TwiML App" title="Create new TwiML App" style="border: 1px solid gray; zoom:70%;">


## Step 2: Associate a Phone Number

To associate the TwiML App with your Twilio Phone Number:

1. From the main menu, go to **Phone Numbers > Manage > Active Numbers**.
2. From the Active Numbers section, **select the number** you want to associate with the TwiML App.
3. Under the **Voice & Fax** section, select **TwiML App** as the choice in the **Configure With** field.
4. A new field called **TWIML APP** is displayed. Select the app you have configured in the previous steps.
5. Click **Save** to complete this app association.  
<img src="../images/twilio-voice-img2.png" alt="Associate app to phone number" title="Associate app to phone number" style="border: 1px solid gray; zoom:70%;">


## Step 3: Set Up Agent Transfer (Optional)

Optionally, you can also set up **Agent Transfer** functionality to transfer the user’s call conversation to another Twilio number. For this, you must configure the Kore.ai Agent Transfer SDK. Download the **Agent Transfer SDK** from the [Kore.ai GitHub repository](https://github.com/Koredotcom/BotKit){:target="_blank"} and define **data.message, transferCallToAgent** and **agentPhonenumber** parameters.

1. **data.message**: Define the message to be read out to the end-user when the _call is transferred to agent_ is initiated.
2. **transferCallToAgent**: Set this flag to **True** to enable Agent Transfer and **False** to disable.
3. **agentPhonenumber**: Provide your Twilio phone number to which the user call conversation is transferred.


## Step 4: Enable the Twilio Voice Channel

To enable the Twilio Voice Channel, follow the below steps:

1. In the XO Platform, start by selecting the assistant you want to work with.

2. Go to **Channels & Flows** > **Channels** > **Third Party Voice** > **All** > **Twilio Voice**.


3. To complete the Channel setup, go to the **Configurations** tab.  

    1.  Enter your Twilio Number to associate with the Kore.ai assistant.
    2. Select a **Language** to communicate with the VA by end-users.
    3. In the **Enable Channel** section, select **Yes**, and then click **Save** to complete the user creation process and channel activation.  
    <img src="../images/twilio-voice-img3.png" alt="Enable channel" title="Enable channel" style="border: 1px solid gray; zoom:70%;">


4. From the **Voice Call Properties** tab, enter the details to configure the channel level voice properties, [click here for more details](../automation/use-cases/dialogs/node-types/voice-call-properties.md#channel-settings){:target="_blank"}.

5. Once you have enabled the Twilio channel, it is recommended to configure the **Telephony Welcome Event** for Voice Call Settings. This plays a welcome message for users when they connect to the VA through the Twilio channel. For this:  

    1. Go to **Virtual Assistant** > **Conversation Intelligence** > **Events** > **Conversation Events** and configure **Telephony Welcome Event**. 
    2. Click **Use Voice Call Properties** to open the Voice Call settings section.
    3. Under the **Initial Prompts** text box, enter the message that needs to be played when the user connects to the VA.

For details regarding the configuration of voice properties at the Dialog Task level, please , refer to [Configuring Voice Call Settings for a Node](../automation/use-cases/dialogs/node-types/voice-call-properties.md#dialog-node-settings).

After the channel is enabled and all configurations are verified, you can optionally publish the assistant to make it available for end-users, with the new channel.Learn more about[ Publishing your Virtual Assistant](../deploy/publishing-bot.md).

To learn more about working with Channels within the Kore.ai XO Platform, please see [Channel Enablement.](../channels/adding-channels-to-your-bot.md)


