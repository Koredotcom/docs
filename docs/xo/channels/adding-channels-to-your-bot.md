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

### Enterprise Channels

<table>
  
  <tr>
   <td><a href="../add-cisco-jabber-channel" target="_blank">Cisco Jabber</a>
   <br><br><br>
   <a href="../add-cisco-jabber-channel" target="_blank"><img src="../images/logo1-jabber.png"></a>
   </td>


   <td><a href="../add-cisco-channel" target="_blank">Cisco Webex Teams (formerly Cisco Spark)</a>
   <br>
   <a href="../add-cisco-channel" target="_blank"><img src="../images/logo2-cisco-webex-teams.png"></a>
   </td>


   <td><a href="../add-cisco-tropo-channel" target="_blank">Cisco Tropo</a>
   <br><br><br>  
   <a href="../add-cisco-tropo-channel" target="_blank"><img src="../images/logo3-tropo.png"></a>
   </td>


   <td><a href="../add-google-assistant-channel" target="_blank">Google Assistant</a>
   <br>  
   <a href="../add-google-assistant-channel" target="_blank"><img src="../images/logo4-google-assistant.png" zoom=60%></a>
   </td>
   <td>
   </td>
  </tr>

  <tr>
   <td><a href="../add-genesys-chat-channel" target="_blank">Genesys Cloud CX Messaging</a>
   <br><br>  
   <a href="../add-genesys-chat-channel" target="_blank"><img src="../images/logo5-genesys-chat-new-logo.png"></a>
   </td>


   <td><a href="../add-google-business-messaging-channel" target="_blank">Google Business Messaging</a>
   <br><br><br>  
   <a href="../add-google-business-messaging-channel" target="_blank"><img src="../images/logo6-gbm.png"></a>
   </td>


   <td><a href="../add-google-chat" target="_blank">Google Chat</a>
     
      <a href="../add-google-chat" target="_blank"><img src="../images/logo7-google-chat.png" width="50"></a>
   </td>


   <td><a href="../add-kore-channel" target="_blank">Kore.ai</a>
   <br><br>  
   <a href="../add-kore-channel" target="_blank"><img src="../images/logo8-kore-ai.png"></a>
   </td>


   <td><a href="../add-live-person-channel" target="_blank">Live Person</a>
   <br><br>  
   <a href="../add-live-person-channel" target="_blank"><img src="../images/logo9-live-person.png"></a>
   </td>
  </tr>

  <tr>
   <td><a href="../add-mattermost-channel" target="_blank">Mattermost</a>
   <br><br> 
   <a href="../add-mattermost-channel" target="_blank"><img src="../images/logo10-mattermost.png"></a>
   </td>


   <td><a href="../add-microsoft-teams-channel" target="_blank">Microsoft Teams</a>
   <br><br>  
   <a href="../add-microsoft-teams-channel" target="_blank"><img src="../images/logo11-ms-teams.png"></a>
   </td>


   <td><a href="../add-naver-works-channel" target="_blank">Naver Works</a>
   <br><br>  
   <a href="../add-naver-works-channel" target="_blank"><img src="../images/logo12-naver.png" width="50"></a>
   </td>


   <td><a href="../add-nice-incontact-channel" target="_blank">Nice inContact</a>
   <br><br>  
   <a href="../add-nice-incontact-channel" target="_blank"><img src="../images/logo13-nice.png"></a>
   </td>


   <td><a href="../add-google-rcs-channel" target="_blank">RCS Business Messaging</a>
   <br>  
   <a href="../add-google-rcs-channel" target="_blank"><img src="../images/logo14-rcs.png"></a>
   </td>
  </tr>
  
</table>