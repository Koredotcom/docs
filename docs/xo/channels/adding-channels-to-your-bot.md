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
      <p>
      <a href="../add-cisco-jabber-channel" target="_blank"><img src="../images/logo1-jabber.png"></a>
   </td>

   <td><a href="../add-cisco-channel" target="_blank">Cisco Webex Teams (formerly Cisco Spark)</a>
      <p>
      <a href="../add-cisco-channel" target="_blank"><img src="../images/logo2-cisco-webex-teams.png"></a>
   </td>

   <td><a href="../add-cisco-tropo-channel" target="_blank">Cisco Tropo</a>
      <p>
      <a href="../add-cisco-tropo-channel" target="_blank"><img src="../images/logo3-tropo.png"></a>
   </td>

   <td><a href="../add-google-assistant-channel" target="_blank">Google Assistant</a>
      <p>
      <a href="../add-google-assistant-channel" target="_blank"><img src="../images/logo4-google-assistant.png"></a>
   </td>

   <td>
   </td>
  </tr>
  
  <tr>
   <td><a href="../add-genesys-chat-channel" target="_blank">Genesys Cloud CX Messaging</a>
      <p>
      <a href="../add-genesys-chat-channel" target="_blank"><img src="../images/logo5-genesys-chat-new-logo.png"></a>
   </td>

   <td><a href="../add-google-business-messaging-channel" target="_blank">Google Business Messaging</a>
      <p>
      <a href="../add-google-business-messaging-channel" target="_blank"><img src="../images/logo6-gbm.png"></a>
   </td>

   <td><a href="../add-google-chat" target="_blank">Google Chat</a>
      <p>
      <a href="../add-google-chat" target="_blank"><img src="../images/logo7-google-chat.png"></a>
   </td>

   <td><a href="../add-kore-channel" target="_blank">Kore.ai</a>
      <p>
      <a href="../add-kore-channel" target="_blank"><img src="../images/logo8-kore-ai.png"></a>
   </td>

   <td><a href="../add-live-person-channel" target="_blank">Live Person</a>
      <p>
      <a href="../add-live-person-channel" target="_blank"><img src="../images/logo9-live-person.png"></a>
   </td>
  </tr>
  
  <tr>
   <td><a href="../add-mattermost-channel" target="_blank">Mattermost<p><img src="../images/logo10-mattermost.png"></a>
   <p>

   </td>
   <td><a href="../adding-the-microsoft-teams-channel" target="_blank">Microsoft Teams</a>
<p>


<p id="gdcalert14" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image14.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert15">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


<img src="images/image14.png" width="" alt="alt_text" title="image_tooltip">

   </td>
   <td><a href="../adding-the-naver-works-channel" target="_blank">Naver Works</a>
<p>


<p id="gdcalert15" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image15.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert16">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


<img src="images/image15.png" width="" alt="alt_text" title="image_tooltip">

   </td>
   <td><a href="../adding-nice-incontact-as-a-channel" target="_blank">Nice inContact</a>
<p>


<p id="gdcalert16" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image16.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert17">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


<img src="images/image16.png" width="" alt="alt_text" title="image_tooltip">

   </td>
   <td><a href="../rcs-business-messaging/">RCS Business Messaging</a>
<p>


<p id="gdcalert17" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image17.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert18">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


<img src="images/image17.png" width="" alt="alt_text" title="image_tooltip">

   </td>
  </tr>
  <tr>
   <td><a href="../adding-ringcentral-glip-channel" target="_blank">Glip by RingCentral</a>
<p>


<p id="gdcalert18" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image18.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert19">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


<img src="images/image18.png" width="" alt="alt_text" title="image_tooltip">

   </td>
   <td><a href="../add-ringcentral-engage-as-a-channel" target="_blank">Ringcentral Engage</a>
<p>


<p id="gdcalert19" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image19.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert20">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


<img src="images/image19.png" width="" alt="alt_text" title="image_tooltip">

   </td>
   <td><a href="../adding-the-skype-for-business-channel" target="_blank">Skype for Business</a>
<p>


<p id="gdcalert20" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image20.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert21">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


<img src="images/image20.png" width="" alt="alt_text" title="image_tooltip">

   </td>
   <td><a href="../adding-the-slack-channel" target="_blank">Slack</a>
<p>


<p id="gdcalert21" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image21.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert22">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


<img src="images/image21.png" width="" alt="alt_text" title="image_tooltip">

   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td><a href="../adding-the-sunshine-conversations-channel" target="_blank">Sunshine Conversations</a>
<p>


<p id="gdcalert22" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image22.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert23">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


<img src="images/image22.png" width="" alt="alt_text" title="image_tooltip">

   </td>
   <td><a href="../add-the-syniverse-channel" target="_blank">Syniverse</a>
<p>


<p id="gdcalert23" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image23.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert24">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


<img src="images/image23.png" width="" alt="alt_text" title="image_tooltip">

   </td>
   <td><a href="../adding-the-unblu-channel" target="_blank">Unblu</a>
<p>


<p id="gdcalert24" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image24.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert25">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


<img src="images/image24.png" width="" alt="alt_text" title="image_tooltip">

   </td>
   <td><a href="../adding-the-whatsapp-business-messaging-channel" target="_blank">WhatsApp Business Messaging</a>
<p>


<p id="gdcalert25" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image25.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert26">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


<img src="images/image25.png" width="" alt="alt_text" title="image_tooltip">

   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td><a href="../adding-the-workplace-by-facebook-channel" target="_blank">Workplace By Facebook</a>
<p>


<p id="gdcalert26" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image26.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert27">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


<img src="images/image26.png" width="" alt="alt_text" title="image_tooltip">

   </td>
   <td><a href="../adding-the-yammer-channel" target="_blank">Yammer</a>
<p>


<p id="gdcalert27" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image27.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert28">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


<img src="images/image27.png" width="" alt="alt_text" title="image_tooltip">

   </td>
   <td><a href="../adding-the-zoom-contact-center-channel" target="_blank">Zoom Contact Center</a>
<p>


<p id="gdcalert28" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image28.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert29">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


<img src="images/image28.png" width="" alt="alt_text" title="image_tooltip">

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
   <td><a href="../adding-the-facebook-channel" target="_blank">Facebook Messenger</a>
<p>


<p id="gdcalert29" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image29.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert30">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


<img src="images/image29.png" width="" alt="alt_text" title="image_tooltip">

   </td>
   <td><a href="../adding-the-line-channel" target="_blank">Line</a>
<p>


<p id="gdcalert30" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image30.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert31">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


<img src="images/image30.png" width="" alt="alt_text" title="image_tooltip">

   </td>
   <td><a href="../adding-the-skype-channel" target="_blank">Skype</a>
<p>


<p id="gdcalert31" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image31.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert32">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


<img src="images/image31.png" width="" alt="alt_text" title="image_tooltip">

   </td>
   <td><a href="../adding-the-telegram-channel" target="_blank">Telegram</a>
<p>


<p id="gdcalert32" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image32.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert33">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


<img src="images/image32.png" width="" alt="alt_text" title="image_tooltip">

   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td><a href="../adding-the-twitter-channel" target="_blank">Twitter</a>
<p>


<p id="gdcalert33" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image33.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert34">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


<img src="images/image33.png" width="" alt="alt_text" title="image_tooltip">

   </td>
   <td><a href="../adding-the-wechat-channel" target="_blank">WeChat</a>
<p>


<p id="gdcalert34" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image34.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert35">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


<img src="images/image34.png" width="" alt="alt_text" title="image_tooltip">

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
   <td><a href="../adding-the-amazon-alexa-channel" target="_blank">Amazon Alexa</a>
<p>


<p id="gdcalert35" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image35.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert36">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


<img src="images/image35.png" width="" alt="alt_text" title="image_tooltip">

   </td>
   <td><a href="../adding-the-ivr-audiocodes-channel-2/">IVR – AudioCodes</a>
<p>


<p id="gdcalert36" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image36.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert37">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


<img src="images/image36.png" width="" alt="alt_text" title="image_tooltip">

   </td>
   <td><a href="https://developer.kore.ai/docs/bots/advanced-topics/ivr-integration/ivr-integration/">IVR</a>
<p>


<p id="gdcalert37" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image37.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert38">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


<img src="images/image37.png" width="" alt="alt_text" title="image_tooltip">

   </td>
   <td><a href="../adding-the-twilio-voice-channel" target="_blank">Twilio Voice</a>
<p>


<p id="gdcalert38" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image38.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert39">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


<img src="images/image38.png" width="" alt="alt_text" title="image_tooltip">

   </td>
   <td><a href="../adding-the-smartassist-gateway-channel" target="_blank">SmartAssist Gateway</a>
<p>


<p id="gdcalert39" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image39.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert40">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


<img src="images/image39.png" width="" alt="alt_text" title="image_tooltip">

   </td>
  </tr>
  <tr>
   <td colspan="4" ><strong>Other Channels</strong>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td><a href="../adding-the-email-channel" target="_blank">Email</a>
<p>


<p id="gdcalert40" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image40.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert41">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


<img src="images/image40.png" width="" alt="alt_text" title="image_tooltip">

   </td>
   <td><a href="../adding-the-sms-channel" target="_blank">Twilio SMS</a>
<p>


<p id="gdcalert41" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image41.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert42">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


<img src="images/image41.png" width="" alt="alt_text" title="image_tooltip">

   </td>
   <td><a href="../adding-the-webmobile-client-channel" target="_blank">Web / Mobile Client</a>
<p>


<p id="gdcalert42" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image42.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert43">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


<img src="images/image42.png" width="" alt="alt_text" title="image_tooltip">

   </td>
   <td><a href="../adding-webhook-channel" target="_blank">Webhook</a>
<p>


<p id="gdcalert43" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image43.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert44">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


<img src="images/image43.png" width="" alt="alt_text" title="image_tooltip">

   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td><a href="../adding-the-widget-sdk-channel" target="_blank">Widget SDK</a>
<p>


<p id="gdcalert44" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image44.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert45">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


<img src="images/image44.png" width="" alt="alt_text" title="image_tooltip">

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

