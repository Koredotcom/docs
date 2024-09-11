# Agent Transfer Integrations


## Introduction

Kore.ai’s Agent Transfer allows you to configure the most popular integrations to hand over conversations seamlessly without the need to use BotKit. These agent transfer integrations are hosted by the Kore.ai XO Platform, and there is no need to host any custom BotKit.

Agent transfer refers to the process of handing over a customer’s conversation from one agent to another within a conversational virtual assistant (VA) platform. This is typically done when the current agent is unable to assist the customer with their issue or request, or if the customer requests to speak with a different agent.

**Agent Transfer** integrations are available under the **App Settings > Integration** menu. You can enable any integration by providing the required configurations. You can also enable multiple agent integrations as per your business requirement. For example, if you have a Custom integration, i.e., BotKit, and an integration with Genesys chat. You can make one of them as default and map channels to agent systems. 

You can also find these configurations as part of the Agent Transfer node. The Kore.ai XO platform hands over the conversation to an agent during the dialog execution when the conversation reaches the agent node.

Agent Transfer node now allows you to define the IVR properties required to hand off the call back to the IVR system. Instead of using entity or message nodes to define the transfer tags, you can now configure them as part of the agent node. This ensures that the agent hand-offs on the IVR channel are tracked appropriately for containment purposes.


## Supported Agent Transfers

Pre-built agent transfer integrations with contact center or agent desktop systems like Genesys or Salesforce are configured based on your channel configurations. 

The platform supports the following agent transfer integrations.


<table border="1">
  <tr>
   <td><strong>Agent Transfer</strong>
   </td>
   <td><strong>Descriptions</strong>
   </td>
   <td><strong>Doc Link</strong>
   </td>
  </tr>
  <tr>
   <td>Custom
   </td>
   <td>The BotKit SDK agent provided by the Kore.ai XO Platform.
   </td>
   <td><a href="../how-to-configure-agent-transfer/" target="_blank">Learn more</a>
   </td>
  </tr>
  <tr>
   <td>Drift
   </td>
   <td>The Drift agent transfer for marketing and sales teams to connect with customers easily through the Drift conversation chat module.
   </td>
   <td><a href="../configuring-the-drift-agent/" target="_blank">Learn more</a>
   </td>
  </tr>
  <tr>
   <td>Genesys
   </td>
   <td>The Genesys agent transfer for Voice, Web and VoIP telephony networks.
   </td>
   <td><a href="../configuring-the-genesys-agent/" target="_blank">Learn more</a>
   </td>
  </tr>
  <tr>
   <td>Intercom
   </td>
   <td>The Intercom agent transfer for Customer Communications Platform.
   </td>
   <td><a href="../configuring-the-intercom-agent/" target="_blank">Learn more</a>
   </td>
  </tr>
  <tr>
   <td>NiceInContact
   </td>
   <td>The NiceInContact agent transfer for Nice Customer Experience Platform.
   </td>
   <td><a href="../configuring-the-niceincontact/" target="_blank">Learn more</a>
   </td>
  </tr>
  <tr>
   <td>Salesforce
   </td>
   <td>The Salesforce agent transfer is used by different teams in an organization, such as marketing, sales, commerce, service, and IT work as one from anywhere using the chat module.
   </td>
   <td><a href="../configuring-the-salesforce-agent/" target="_blank">Learn more</a>
   </td>
  </tr>
  <tr>
   <td>ServiceNow (Tokyo and Lower versions)
   </td>
   <td>The ServiceNow agent (Tokyo and Lower versions) transfer for digital workflows on a single, unified platform.
   </td>
   <td><a href="../servicenow/configuring-the-servicenow-agent/" target="_blank">Learn more</a>
   </td>
  </tr>
  <tr>
   <td>ServiceNow (Utah and Higher versions)
   </td>
   <td>The ServiceNow agent (Utah and Higher versions) transfer for digital workflows on a single, unified platform.
   </td>
   <td><a href="../servicenow/configuring-the-servicenow-agent-utah-and-vancouver/" target="_blank">Learn more</a>
   </td>
  </tr>
  <tr>
   <td>Unblu
   </td>
   <td>The Unblu agent transfer for a conversational platform to perform financial services.
   </td>
   <td><a href="../adding-the-unblu-channel/" target="_blank">Learn more</a>
   </td>
  </tr>
</table>



## Limitations

The following limitations apply to all supported agent transfers and the XO Platform integration:

* Currently, the attachments are only supported for ServiceNow integration.
* Sharing end-user details with agents is not directly supported. For example, populating the customer (end-user) information directly on _ServiceNow_ is not supported.
* There is no in-built provision for customers to end the conversation/chat with the agent.


## Deleting an Agent Transfer Integration

You can delete an external agent transfer integration that is configured but no longer in use. Deleting an agent transfer integration will remove the agent system from the _Configured_ list and you cannot use that agent. You can configure the removed agent again from the _Available_ list.

**Important Notes**:

* When you delete the default Agent Transfer integration for the channels, the XO platform will ask for the confirmation if you wish to use the other configured agent as the default agent system.
* If you delete the only Agent Transfer integration that was configured, all configurations are removed from the agent transfer node in all dialog tasks where this agent node is added.

Steps to delete a configured agent transfer integration:

1. To delete a configured Agent Transfer integration, go to **App Settings > Integration > Agent Transfer > Configured** hover over it in the **Configured** list and click the **Delete** icon.

    <img src="../images/agent-transfer-integrations-img1-delete-agent.png" alt="Delete agent" title="Delete agent" style="border: 1px solid gray;zoom:80%;">

    !!! Warning
    
        Once an action is Deleted, all configurations related to that particular agent transfer integration are deleted. You will be prompted to confirm if you want to use the default Agent Transfer integration that is configured.

2. Click **Proceed** to delete.

    <img src="../images/agent-transfer-integrations-img2-delete-agent-confirmation.png" alt="Delete agent" title="Delete agent" style="border: 1px solid gray;zoom:80%;">


## User-Bot Chat Transcript Link to Live Agents


When the platform transfers a user conversation to a live agent, the agent receives a link to view the conversation the user had with the bot before the transfer. This provides context for what the user might expect from the live agent. This link can be accessed 10 times.

!!! note

    Links generated after the v11.4.1 release can be accessed 10 times.



## Attachment Sharing with Live Agent

Users can now send files to agents during conversations. This improves communication and helps solve issues faster. This feature is currently available only for ServiceNow agent integration.

The user and agent can share multiple files up to 25 MB each in over 22 file formats. The user and agent can download attachments up to five times within forty-eight hours of sharing.

!!! note

    Currently, this feature is available only with ServiceNow (Tokyo, Utah, and Vancouver) agent integration with the mobile SDK channel. 


### Supported File Formats

The VA supports sharing the following file formats.


<table>
  <tr>
   <td><strong>Category</strong>
   </td>
   <td><strong>File Formats</strong>
   </td>
  </tr>
  <tr>
   <td>Document Formats
   </td>
   <td>.pdf, .doc, .docx, .txt, .xml
   </td>
  </tr>
  <tr>
   <td>Spreadsheet Formats
   </td>
   <td>.xls, .xlsx, .csv
   </td>
  </tr>
  <tr>
   <td>Presentation Formats
   </td>
   <td>.ppt, .pptx
   </td>
  </tr>
  <tr>
   <td>Image Formats
   </td>
   <td>.jpg, .jpeg, .png, .gif
   </td>
  </tr>
  <tr>
   <td>Archive Formats
   </td>
   <td>.zip, .rar
   </td>
  </tr>
  <tr>
   <td>Audio Formats
   </td>
   <td>.mp3, .wav
   </td>
  </tr>
  <tr>
   <td>Video Formats
   </td>
   <td>.mp4, .avi
   </td>
  </tr>
  <tr>
   <td>Web Formats
   </td>
   <td>.html, .htm
   </td>
  </tr>
</table>



### Enable Attachment Sharing


To enable attachment sharing for Tokyo, see [Enable Attachment Sharing with Live Agent](../agents/servicenow/configuring-the-servicenow-agent.md#enable-attachment-sharing-with-live-agents).

To enable attachment sharing for Utah and Vancouver, see [Enable Attachment Sharing with Live Agent](../agents/servicenow/configuring-the-servicenow-agent-utah-and-vancouver.md#enable-attachment-sharing-with-live-agents).