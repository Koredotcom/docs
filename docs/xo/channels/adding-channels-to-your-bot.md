# Channel Enablement

By default, your Virtual Assistant is not available to users unless you define one or more channels through which it can communicate. So, after creating a Virtual Assistant, you can add delivery channels that end-users can use to access and interact with it when deployed. For example, you can enable your assistant for use in the Kore.ai Messaging application, or allow interaction with your VA through an email address or a _Twilio_ SMS account. You can also enable your VA in third-party applications such as _Facebook_ or _Slack_. This topic describes how to add one or more delivery channels to your VA.

You can add channels to your VA from the **Deploy > Channels** section. Channels supported by the Kore.ai XO Platform are categorized based upon their functionality and usage.

<img src="../images/channel-enablement-img1-channels-list.png" alt="Channels supported by the Kore.ai XO Platform" title="Channels supported by the Kore.ai XO Platform" style="border: 1px solid gray; zoom:70%;">


## Enable a Channel

To enable one or more channels for your VA, follow the below steps:

1. Open the assistant for which you want to add the channels.
2. Go to **Deploy > Channels**.
3. Click the name of the channel you want to add. This opens the instructions page to install the channel.
4. Click **Next** or the **Configuration** tab to open the configuration page for the channel. This image below shows the configuration page of the Skype for Business channel.  
<img src="../images/channel-enablement-img2-instructions.png" alt="Channel Configuration page" title="Channel Configuration page" style="border: 1px solid gray; zoom:70%;">

    !!! Note
    
        After adding the channel, the bot needs to be published for approval and the Bot Admin needs to approve the bot (with new channels). The new channel is not available to users until the Bot Admin explicitly approves that channel for your assistant.


## Editing, Disabling or Deleting Channels

**To edit a channel** configuration, click on it in the channels list, make your changes and save.

To enable/disable or delete the channel, hover over it in the channels list and click the **Settings** icon in the top right corner. 

* If the channel is enabled, you will have the option to **Disable** it, and vice versa.
* There is also the option to **Delete** the channel integration.

!!! Warning

    Deletion is permanent and cannot be undone. You will be asked to confirm your choice, so make sure this is exactly what you want to do.


!!! note ""

    Please also note that channel edits will only take effect within your live assistant after publishing the In Development version of the VA with the channel enabled. For more information, please see Publishing your Virtual Assistant.


<img src="../images/channel-enablement-img3-delete-disable-channel.png" alt="Delete/Disable channel" title="Delete/Disable channel" style="border: 1px solid gray; zoom:70%;"> 


## Available Channels

Below is a list of all channels you can connect to via the Kore.ai XO Platform:

Click the icon of the channel you want to add, and then configure the channel to work with your Kore.ai bot. The page with Instructions and Configuration settings will slide out.


<table border="1">
  <tr>
   <td colspan="4" ><strong>Enterprise Channels</strong>
   </td>
   <td>
   </td>
  </tr>

  <tr>
   <td><a href="../add-cisco-jabber-channel" target="_blank">Cisco Jabber</a>

   <a href="../add-cisco-jabber-channel" target="_blank"><img src="../images/logo1-jabber.png"></a>
   </td>

   <td><a href="../add-cisco-channel" target="_blank">Cisco Webex Teams (formerly Cisco Spark)</a>
      
   <a href="../add-cisco-channel" target="_blank"><img src="../images/logo2-cisco-webex-teams.png"></a>
   </td>

   <td><a href="../add-cisco-tropo-channel" target="_blank">Cisco Tropo</a>
      
   <a href="../add-cisco-tropo-channel" target="_blank"><img src="../images/logo3-tropo.png"></a>
   </td>

   <td><a href="../add-google-assistant-channel" target="_blank">Google Assistant</a>
      
   <a href="../add-google-assistant-channel" target="_blank"><img src="../images/logo4-google-assistant.png"></a>
   </td>

   <td>
   </td>
  </tr>
  
  <tr>
   <td><a href="../add-genesys-chat-channel" target="_blank">Genesys Cloud CX Messaging</a>
      
   <a href="../add-genesys-chat-channel" target="_blank"><img src="../images/logo5-genesys-chat-new-logo.png"></a>
   </td>

   <td><a href="../add-google-business-messaging-channel" target="_blank">Google Business Messaging</a>
      
   <a href="../add-google-business-messaging-channel" target="_blank"><img src="../images/logo6-gbm.png"></a>
   </td>

   <td><a href="../add-google-chat" target="_blank">Google Chat</a>
      
      <a href="../add-google-chat" target="_blank"><img src="../images/logo7-google-chat.png" style="zoom:50%;"></a>
   </td>

   <td><a href="../add-kore-channel" target="_blank">Kore.ai</a>
      
   <a href="../add-kore-channel" target="_blank"><img src="../images/logo8-kore-ai.png"></a>
   </td>

   <td><a href="../add-live-person-channel" target="_blank">Live Person</a>
      
   <a href="../add-live-person-channel" target="_blank"><img src="../images/logo9-live-person.png"></a>
   </td>
  </tr>
  
  <tr>
   <td><a href="../add-mattermost-channel" target="_blank">Mattermost</a>
      
      <a href="../add-mattermost-channel" target="_blank"><img src="../images/logo10-mattermost.png"></a>
   </td>

   <td><a href="../add-microsoft-teams-channel" target="_blank">Microsoft Teams</a>
      
      <a href="../add-microsoft-teams-channel" target="_blank"><img src="../images/logo11-ms-teams.png"></a>
   </td>

   <td><a href="../add-naver-works-channel" target="_blank">Naver Works</a>
      
      <a href="../add-naver-works-channel" target="_blank"><img src="../images/logo12-naver.png"></a>
   </td>

   <td><a href="../add-nice-incontact-channel" target="_blank">Nice inContact</a>
      
      <a href="../add-nice-incontact-channel" target="_blank"><img src="../images/logo13-nice.png"></a>
   </td>

   <td><a href="../add-google-rcs-channel" target="_blank">RCS Business Messaging</a>
      
      <a href="../add-google-rcs-channel" target="_blank"><img src="../images/logo14-rcs.png"></a>
   </td>
  </tr>
  <tr>
   <td><a href="../add-ringcentral-glip-channel" target="_blank">Glip by RingCentral</a>
      
      <a href="../add-ringcentral-glip-channel" target="_blank"><img src="../images/logo15-glip.png"></a>
   </td>

   <td><a href="../add-ringcentral-engage-channel" target="_blank">Ringcentral Engage</a>
      
      <a href="../add-ringcentral-engage-channel" target="_blank"><img src="../images/logo16-ring-central.png"></a>
   </td>

   <td><a href="../add-skype-business-channel" target="_blank">Skype for Business</a>
      
      <a href="../add-skype-business-channel" target="_blank"><img src="../images/logo17-skype-business.png"></a>
   </td>

   <td><a href="../add-slack-channel" target="_blank">Slack</a>
      
      <a href="../add-slack-channel" target="_blank"><img src="../images/logo18-slack.png"></a>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td><a href="../add-sunshine-conversations-channel" target="_blank">Sunshine Conversations</a>
      
      <a href="../add-sunshine-conversations-channel" target="_blank"><img src="../images/logo19-sunshine-conversations.png"></a>
   </td>

   <td><a href="../add-syniverse-channel" target="_blank">Syniverse</a>
      
      <a href="../add-syniverse-channel" target="_blank"><img src="../images/logo20-syniverse.png"></a>
   </td>

   <td><a href="../add-unblu-channel" target="_blank">Unblu</a>
      
      <a href="../add-unblu-channel" target="_blank"><img src="../images/logo21-unblu.png"></a>
   </td>

   <td><a href="../add-whatsapp-business-channel" target="_blank">WhatsApp Business Messaging</a>
      
      <a href="../add-whatsapp-business-channel" target="_blank"><img src="../images/logo22-whatsapp-business.png"></a>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td><a href="../add-workplace-by-facebook-channel" target="_blank">Workplace By Facebook</a>
      
      <a href="../add-workplace-by-facebook-channel" target="_blank"><img src="../images/logo23-wp-facebook.png"></a>
   </td>
   
   <td><a href="../add-microsoft-yammer-channel" target="_blank">Yammer</a>
      
      <a href="../add-microsoft-yammer-channel" target="_blank"><img src="../images/logo24-yammer.png"></a>
   </td>

   <td><a href="../add-zoom-contact-center-channel" target="_blank">Zoom Contact Center</a>
      
      <a href="../add-zoom-contact-center-channel" target="_blank"><img src="../images/logo25-zoom.png"></a>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td colspan="4" ><strong>Social Channels</strong>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td><a href="../add-facebook-messenger-channel" target="_blank">Facebook Messenger</a>
      
      <a href="../add-facebook-messenger-channel" target="_blank"><img src="../images/logo26-fb-messenger.png"></a>
   </td>

   <td><a href="../add-line-messenger-channel" target="_blank">Line</a>
      
      <a href="../add-line-messenger-channel" target="_blank"><img src="../images/logo27-line.png"></a>
   </td>

   <td><a href="../add-skype-business-onpemise-channel" target="_blank">Skype</a>
      
      <a href="../add-skype-business-onpemise-channel" target="_blank"><img src="../images/logo28-skype.png"></a>
   </td>

   <td><a href="../add-telegram-channel" target="_blank">Telegram</a>
      
      <a href="../add-telegram-channel" target="_blank"><img src="../images/logo29-telegram.png"></a>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td><a href="../add-twitter-channel" target="_blank">Twitter</a>
      
      <a href="../add-twitter-channel" target="_blank"><img src="../images/logo30-twitter.png"></a>
   </td>

   <td><a href="../add-wechat-telegram" target="_blank">WeChat</a>
      
      <td><a href="../add-wechat-telegram" target="_blank"><img src="../images/logo31-we-chat.png"></a>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td colspan="4" ><strong>Voice Channels</strong>
   </td>
   
   <td>
   </td>
  </tr>
  
  <tr>
   <td><a href="../amazon-alexa" target="_blank">Amazon Alexa</a>
      
   <a href="../amazon-alexa" target="_blank"><img src="../images/logo32-alexa.png"></a>
   </td>

   <td><a href="../ivr-audio-codes">IVR – AudioCodes</a>
      
   <a href="../ivr-audio-codes"><img src="../images/logo33-audiocodes.png"></a>
   </td>

   <td><a href="../IVR-integration">IVR</a>
      
   <a href="../IVR-integration"><img src="../images/logo34-ivr.png"></a>
   </td>

   <td><a href="../add-twilio-voice-channel" target="_blank">Twilio Voice</a>
      
   <a href="../add-twilio-voice-channel" target="_blank"><img src="../images/logo35-twilio.png"></a>
   </td>

   <td><a href="../smart-assist-gateway" target="_blank">SmartAssist Gateway</a>
      
   <a href="../smart-assist-gateway" target="_blank"><img src="../images/logo36-smart-assist.png"></a>
   </td>
  </tr>

  <tr>
   <td colspan="4" ><strong>Other Channels</strong>
   </td>

   <td>
   </td>
  </tr>

  <tr>
   <td><a href="../add-email-channel" target="_blank">Email</a>
      
   <a href="../add-email-channel" target="_blank"><img src="../images/logo37-email.png"></a>
   </td>

   <td><a href="../add-twilio-sms-channel" target="_blank">Twilio SMS</a>
      
   <a href="../add-twilio-sms-channel" target="_blank"><img src="../images/logo35-twilio.png"></a>
   </td>

   <td><a href="../add-web-mobile-client" target="_blank">Web / Mobile Client</a>
      
   <a href="../add-web-mobile-client" target="_blank"><img src="../images/logo39-webmobile.png"></a>
   </td>

   <td><a href="../add-webhook-channel" target="_blank">Webhook</a>
      
   <a href="../add-webhook-channel" target="_blank"><img src="../images/logo40-webhook.png"></a>
   </td>

   <td>
   </td>
  </tr>
  
  <tr>
   <td><a href="../add-widget-sdk-channel" target="_blank">Widget SDK</a>
      
   <a href="../add-widget-sdk-channel" target="_blank"><img src="../images/logo39-webmobile.png"></a>
   </td>

   <td>
   </td>
   
   <td>
   </td>
   
   <td>
   </td>
   
   <td>
   </td>
  </tr>
</table>