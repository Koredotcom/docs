# Copy of Channel Enablement - DO NOT PUBLISH

By default, your Virtual Assistant is not available to users unless you define one or more channels through which it can communicate. So, after creating a Virtual Assistant, you can add delivery channels that end-users can use to access and interact with it when deployed. For example, you can enable your assistant for use in the Kore.ai Messaging application, or allow interaction with your VA through an email address or a _Twilio_ SMS account. You can also enable your VA in third-party applications such as _Facebook_ or _Slack_. This topic describes how to add one or more delivery channels to your VA.

You can add channels to your VA from the **Channels & Flows > Channels > Digital > All** section. Channels supported by the Kore.ai XO Platform are categorized based upon their functionality and usage.

<img src="../images/digital-channels.png" alt="digital-channels" title="digital-channels" style="border: 1px solid gray; zoom:70%;">

## Enable a Channel

To enable one or more channels for your VA, follow the below steps:

1. Open the assistant for which you want to add the channels.
2. Go to **Channels & Flows** > **Channels** > **Digital** > **All**.
3. Click the channel you want to add. This opens the instructions page to install the channel.
4. Click **Next** or the **Configuration** tab to open the configuration page for the channel. This image below shows the configuration page of the Skype for Business channel.  
<img src="../images/channel-enablement-img2-instructions.png" alt="Channel Configuration page" title="Channel Configuration page" style="border: 1px solid gray; zoom:70%;">

    !!! Note

        After adding the channel, the bot needs to be published for approval and the Bot Admin needs to approve the bot (with new channels). The new channel is not available to users until the Bot Admin explicitly approves that channel for your assistant.

## Editing, Testing,  Disabling or Deleting Channels

To **edit a channel** configuration, go to **Channels & Flows** > **Channels** > **Digital** > **Configured** list, the channel, make your changes and save.

To **test**, **disable or delete the channel**, go to **Channels & Flows** > **Channels** > **Digital** > **Configured** list, hover over the channel and click more option in the top right corner. The Test, Disable, or Delete as required and follow the instructions.


!!! Warning

    Deletion is permanent and cannot be undone. You will be asked to confirm your choice, so make sure this is exactly what you want to do.

!!! note

    Please also note that channel edits will only take effect within your live assistant after publishing the In Development version of the VA with the channel enabled. For more information, please see Publishing your Virtual Assistant.

<img src="../images/test-channel.png" alt="Delete/Disable channel" title="Delete/Disable channel" style="border: 1px solid gray; zoom:70%;">

## Available Channels

Below is a list of all channels you can connect to via the Kore.ai XO Platform:

Click the icon of the channel you want to add, and then configure the channel to work with your Kore.ai bot. The page with Instructions and Configuration settings will slide out.

### Enterprise Channels






<table style="table-layout: fixed; width: 100%;">
  
  <tr>
   <td style="width:25%;"><a href="../add-cisco-jabber-channel" target="_blank">Cisco Jabber</a>
   <br><br><br><br>
   <a href="../add-cisco-jabber-channel" target="_blank"><img src="../images/logo1-jabber.png" width="50"></a>
   </td>

   <td style="width:25%;"><a href="../add-cisco-channel" target="_blank">Cisco Webex<br>Teams<br>(formerly<br>Cisco Spark)</a>
   <br>
   <a href="../add-cisco-channel" target="_blank"><img src="../images/logo2-cisco-webex-teams.png" width="50"></a>
   </td>


   <td style="width:25%;"><a href="../add-google-assistant-channel" target="_blank">Google<br>Assistant</a>
   <br><br><br>
   <a href="../add-google-assistant-channel" target="_blank"><img src="../images/logo4-google-assistant.png" width="50"></a>
   </td>
   <td>
   </td>
   
   <td style="width:25%;">
   </td>
  </tr>

  <tr>
   <td><a href="../add-genesys-chat-channel" target="_blank">Genesys Cloud<br>CX Messaging</a>
   <br><br>
   <a href="../add-genesys-chat-channel" target="_blank"><img src="../images/logo5-genesys-chat-new-logo.png" width="90"></a>
   </td>

   <td><a href="../add-google-business-messaging-channel" target="_blank">Google Business<br>Messaging</a>
   <br>
   <a href="../add-google-business-messaging-channel" target="_blank"><img src="../images/logo6-gbm.png" width="50"></a>
   </td>

   <td><a href="../add-google-chat" target="_blank">Google<br>Chat</a>
   <br><br>  
   <a href="../add-google-chat" target="_blank"><img src="../images/logo7-google-chat.png" width="50"></a>
   </td>

   <td><a href="../add-kore-channel" target="_blank">Kore.ai</a>
   <br><br><br>  
   <a href="../add-kore-channel" target="_blank"><img src="../images/logo8-kore-ai.png" width="50"></a>
   </td>

   <td><a href="../add-live-person-channel" target="_blank">Live Person</a>
   <br><br>  
   <a href="../add-live-person-channel" target="_blank"><img src="../images/logo9-live-person.png" width="50"></a>
   </td>
  </tr>

  <tr>
   <td><a href="../add-mattermost-channel" target="_blank">Mattermost</a>
   <br><br><br>
   <a href="../add-mattermost-channel" target="_blank"><img src="../images/logo10-mattermost.png" width="50"></a>
   </td>

   <td><a href="../add-microsoft-teams-channel" target="_blank">Microsoft Teams</a>
   <br><br>
   <a href="../add-microsoft-teams-channel" target="_blank"><img src="../images/logo11-ms-teams.png" width="50"></a>
   </td>

   <td><a href="../add-naver-works-channel" target="_blank">Naver Works</a>
   <br><br><br>
   <a href="../add-naver-works-channel" target="_blank"><img src="../images/logo12-naver.png" width="50"></a>
   </td>

   <td><a href="../add-nice-incontact-channel" target="_blank">Nice inContact</a>
   <br><br><br>
   <a href="../add-nice-incontact-channel" target="_blank"><img src="../images/logo13-nice.png" width="50"></a>
   </td>

   <td><a href="../add-google-rcs-channel" target="_blank">RCS Business<br>Messaging</a>
   <br>
   <a href="../add-google-rcs-channel" target="_blank"><img src="../images/logo14-rcs.png" width="50"></a>
   </td>
  </tr>

  <tr>
   <td><a href="../add-ringcentral-glip-channel" target="_blank">Glip by<br>RingCentral</a>
   <br>
   <a href="../add-ringcentral-glip-channel" target="_blank"><img src="../images/logo15-glip.png" width="50"></a>
   </td>

   <td><a href="../add-ringcentral-engage-channel" target="_blank">Ringcentral<br>Engage</a>
   <br>
   <a href="../add-ringcentral-engage-channel" target="_blank"><img src="../images/logo16-ring-central.png" width="50"></a>
   </td>

   <td><a href="../add-skype-business-channel" target="_blank">Skype for<br>Business</a>
   <br>  
   <a href="../add-skype-business-channel" target="_blank"><img src="../images/logo17-skype-business.png" width="50"></a>
   </td>

   <td><a href="../add-slack-channel" target="_blank">Slack</a>
   <br><br>
   <a href="../add-slack-channel" target="_blank"><img src="../images/logo18-slack.png" width="50"></a>
   </td>

   <td>
   </td>
  </tr>

  <tr>
   <td><a href="../add-sunshine-conversations-channel" target="_blank">Sunshine<br>Conversations</a>
   <br><br>  
   <a href="../add-sunshine-conversations-channel" target="_blank"><img src="../images/logo19-sunshine-conversations.png" width="65"></a>
   </td>

   <td><a href="../add-syniverse-channel" target="_blank">Syniverse</a>
   <br><br><br>
   <a href="../add-syniverse-channel" target="_blank"><img src="../images/logo20-syniverse.png" width="65"></a>
   </td>

   <td><a href="../add-unblu-channel" target="_blank">Unblu</a>
   <br><br><br>
   <a href="../add-unblu-channel" target="_blank"><img src="../images/logo21-unblu.png" width="50"></a>
   </td>

   <td><a href="../add-whatsapp-business-channel" target="_blank">WhatsApp<br>Business<br>Messaging</a>
   <br>  
   <a href="../add-whatsapp-business-channel" target="_blank"><img src="../images/logo22-whatsapp-business.png" width="50"></a>
   </td>

   <td>
   </td>
  </tr>
  
  <tr>
   <td><a href="../add-workplace-by-facebook-channel" target="_blank">Workplace By<br>Facebook</a>
   <br>
   <a href="../add-workplace-by-facebook-channel" target="_blank"><img src="../images/logo23-wp-facebook.png" width="50"></a>
   </td>

   <td><a href="../add-microsoft-yammer-channel" target="_blank">Yammer</a>
   <br><br>  
   <a href="../add-microsoft-yammer-channel" target="_blank"><img src="../images/logo24-yammer.png" width="50"></a>
   </td>

   <td><a href="../add-zoom-contact-center-channel" target="_blank">Zoom Contact<br>Center</a>
   <br>  
   <a href="../add-zoom-contact-center-channel" target="_blank"><img src="../images/logo25-zoom.png" width="50"></a>
   </td>

   <td>
   </td>

   <td>
   </td>
  </tr>
  
</table>




### Social Channels

<table style="table-layout:fixed; width:100%;">
  <tr>
   <td style="width:25%;"><a href="../add-facebook-messenger-channel" target="_blank">Facebook<br>Messenger</a>
   <br>  
   <a href="../add-facebook-messenger-channel" target="_blank"><img src="../images/logo26-fb-messenger.png" width="50"></a>
   </td>

   <td style="width:25%;"><a href="../add-line-messenger-channel" target="_blank">Line</a>
   <br><br>  
   <a href="../add-line-messenger-channel" target="_blank"><img src="../images/logo27-line.png" width="50"></a>
   </td>

   <td style="width:25%;"><a href="../add-skype-channel" target="_blank">Skype</a>
   <br><br>  
   <a href="../add-skype-channel" target="_blank"><img src="../images/logo28-skype.png" width="50"></a>
   </td>

   <td style="width:25%;"><a href="../add-telegram-channel" target="_blank">Telegram</a>
   <br><br>  
   <a href="../add-telegram-channel" target="_blank"><img src="../images/logo29-telegram.png" width="50"></a>
   </td>
  </tr>

  <tr>
   <td><a href="../add-twitter-channel" target="_blank">Twitter</a>
   <br>  
   <a href="../add-twitter-channel" target="_blank"><img src="../images/logo30-twitter.png" width="50"></a>
   </td>

   <td><a href="../add-wechat-channel" target="_blank">WeChat</a>
   <br>  
   <a href="../add-wechat-channel" target="_blank"><img src="../images/logo31-we-chat.png" width="50"></a>
   </td>

   <td>
   </td>

   <td>
   </td>
  </tr>
</table>


### Other Channels

<table style="table-layout: fixed; width: 100%;">
<tr>
   <td style="width:20%;"><a href="../add-email-channel" target="_blank">Email</a>
   <br><br>
   <a href="../add-email-channel" target="_blank"><img src="../images/logo37-email.png" width="50"></a>
   </td>

   <td style="width:20%;"><a href="../add-twilio-sms-channel" target="_blank">Twilio SMS</a>
   <br>
   <a href="../add-twilio-sms-channel" target="_blank"><img src="../images/logo35-twilio.png" width="50"></a>
   </td>

   <td style="width:20%;"><a href="../add-web-mobile-client" target="_blank">Web/Mobile<br>Client</a>
   <br>
   <a href="../add-web-mobile-client" target="_blank"><img src="../images/logo39-webmobile.png" width="50"></a>
   </td>

   <td style="width:20%;"><a href="../add-webhook-channel" target="_blank">Webhook</a>
   <br><br>
   <a href="../add-webhook-channel" target="_blank"><img src="../images/logo40-webhook.png" width="50"></a>
   </td>

   <td style="width:20%;"><a href="../add-widget-sdk-channel" target="_blank">Widget SDK</a>
   <br>
   <a href="../add-widget-sdk-channel" target="_blank"><img src="../images/logo39-webmobile.png" width="50"></a>
   </td>
  
  </tr>
</table>



### Third Party Voice Channels

<table style="table-layout: fixed; width: 100%;">
 <tr>
   <td style="width:20%;"><a href="../amazon-alexa" target="_blank">Amazon Alexa</a>
   <br>
   <a href="../amazon-alexa" target="_blank"><img src="../images/logo32-alexa.png" width="50"></a>
   </td>

   <td style="width:20%;"><a href="../ivr-audio-codes" target="_blank">IVR–AudioCodes</a>
   <br>
   <a href="../ivr-audio-codes" target="_blank"><img src="../images/logo33-audiocodes.png" width="50"></a>
   </td>

   <td style="width:20%;"><a href="../IVR-integration" target="_blank">IVR</a>
   <br><br>
   <a href="../IVR-integration" target="_blank"><img src="../images/logo34-ivr.png" width="50"></a>
   </td>

   <td style="width:20%;"><a href="../add-twilio-voice-channel" target="_blank">Twilio Voice</a>
   <br><br>
   <a href="../add-twilio-voice-channel" target="_blank"><img src="../images/logo35-twilio.png" width="50"></a>
   </td>

   <td style="width:20%;"><a href="../smart-assist-gateway" target="_blank">SmartAssist<br>Gateway</a>
   <br>  
   <a href="../smart-assist-gateway" target="_blank"><img src="../images/logo36-smart-assist.png" width="90"></a>
   </td>
  </tr>
  
</table>

