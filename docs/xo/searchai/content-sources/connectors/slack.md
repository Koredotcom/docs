# Slack Connector

Slack is a widely used communication and collaboration platform designed to enhance team productivity and virtual collaboration. It serves as a centralized app for messaging and file sharing, enabling teams to stay connected and work efficiently.

Slack can be easily integrated with Search AI to search through conversations in **private and public channels in Slack** using the Slack Connector. The Slack Connector enables seamless integration between the Slack workspace and Search AI, allowing teams to search, retrieve, and analyze conversations, files, and other shared content efficiently. This ensures a comprehensive search experience and optimized team productivity.


## Why Use the SearchAI Connector for Slack?

1. **Comprehensive Search Across Channels:** Seamlessly search messages, files, and conversations across public and private Slack channels, ensuring no important detail is missed.
2. **Enhanced Productivity:** Saves time by quickly surfacing relevant messages, files, and discussions without the need to manually sift through channels.
3. **Permission-Based Access**: Users can only access the content they are authorized to view.
4. **Direct Links to Context:** Provides citations and direct links to Slack threads or messages, making it easy to dive into the original context. 
5. **File attachment:** Provides precise searches for files or attachments shared in Slack using its metadata.

<span style="text-decoration:underline;">Specifications</span>

<table>
  <tr>
   <td> <b>Type of Repository </b>
   </td>
   <td>Cloud
   </td>
  </tr>
  <tr>
   <td><b>Content Supported</b>
   </td>
   <td>Conversations from Public and Private Slack Channels
   </td>
  </tr>
  <tr>
   <td><b>RACL Support</b>
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td><b>Content Filtering</b>
   </td>
   <td>No
   </td>
  </tr>
</table>

## Slack Connector Configuration

Search AI interacts with Slack through its APIs. To enable this communication, it is required to register Search AI as an OAuth client in the Slack application and then provide the same credentials while configuring the connector in Search AI.

* Set up the OAuth app in Slack
* Configure Slack Connector in Search AI. 


## Set up OAuth App in Slack

* Go to the [Apps page on Slack](https://api.slack.com/apps) and create a new app. 
* Enter the App Name and select the Workspace from which the content is to be ingested. 
* Select Create App.  This creates the app. 
* Go to the App details and select Basic Information. This page provides the App credentials, including the client ID and client Secret. These credentials are used to generate Bot-level Tokens through the APIs. Hence, these credentials are required to configure the Search AI connector for Slack. 
* Next, go to the OAuth & Permissions page for the app and set one of the following as the Redirect URL, depending on your region or deployment. 
    * JP Region Callback URL: [https://jp-bots-idp.kore.ai/workflows/callback](https://jp-bots-idp.kore.ai/workflows/callback)
    * DE Region Callback URL: [https://de-bots-idp.kore.ai/workflows/callback](https://de-bots-idp.kore.ai/workflows/callback)
    * Prod Callback URL: [https://idp.kore.com/workflows/callback](https://idp.kore.com/workflows/callback)
* The app is ready for use. 

*Note:*

* *The app requires the following read access to fetch the content from Slack Channels.*
    * *Content and Info about Channels & Conversations*
    * *Content and Info about your Workspace*
* *Currently, Search AI can ingest content only from Slack channels(public or private) where the OAuth app is invited as a member. To do so, invite the app to interact with users in any public or private Slack channel using the **/invite @&lt;app-name>** command in any channel. Alternatively, click the channel name, go to the **Integrations** tab, select the **Add Apps** link, and select the **OAuth app.***


## Configuring Slack Connector in Search AI


* Go to the **Connectors** home page in Search AI. Click on **Add Connector** and select Slack. Provide the following details in the **Authorization **tab and click** Connect** to set up the connection. 
    * **Name**: Provide a unique name for the connector. 
    * **Authorization Type**: Currently, OAuth 2.0 is used as the auth mechanism. 
    * **Grant Type**: Set the Grant type to Authorization Code. 
    * **Client ID**: Client credentials generated in Slack for this integration.
    * **Client Secret**: Client credentials generated in Slack for this integration.


## Content Ingestion

After successfully connecting the Search AI connector to the Slack app, go to the **Configuration** tab and set up content synchronization. For immediate sync, use the **Sync Now** option and the **Schedule Sync** option to set up a scheduler to sync the content in the future. 

Upon sync, Search AI ingests **conversations of the past 30 days** from the Slack channels. 

When messages from a Slack channel are ingested into SearchAI, two or more consecutive messages may be grouped together based on their context and size. If a message includes attachments, the attachment’s name and URL are also captured as part of the ingested content. Each ingested message always includes the following details in the **content** field:

* **Channel’s Name:** The name of the channel where the message was sent. 
* **Sender's Name**: The name of the person who sent the message.
* **Timestamp**: The exact date and time when the message was sent.
* The **textual content** of the message. 
* **Attachment URL**, if present. 

**Sample Content**

```json
"content": "In the searchai-dev channel, at 2024-12-26T13:20:07.170Z, john.smith messaged: The latest build is available for testing. Please find the release notes attached. This includes an attachment with the file name: release-notes.pdf and its URL: https://files.slack.com/files-pri/T082AFBJX27-F088SA71R4G/download/release-notes.pdf"
```


Other details of the ingested messages are captured as metadata in the respective fields or as metadata. This ensures that the ingested content is comprehensive and retains key information for accurate and contextual search results.

Go to the **Content** tab to view the ingested content. 


## RACL Support

* **Public Channels**: 
For content ingested from public channels, the `sys_racl` field contains the workspace ID. This ensures that the content is accessible to all users within the workspace, as public channels are open to everyone.
* **Private Channels**: 
For content ingested from private channels, the `sys_racl` field contains the channel ID. This restricts access to the content, as private channels are only accessible to users who have been explicitly invited to join the channel.

This approach ensures that content permissions are aligned with Slack's access control policies.
