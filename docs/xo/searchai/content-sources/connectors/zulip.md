# Zulip Connector

**Zulip** is a team communication platform that organizes conversations using **topic-based** threading within **streams or channels**, ensuring structured and efficient discussions. Search AI enables message ingestion, making search fast and efficient across all conversations. 

<span style="text-decoration:underline;">Zulip Connector Specifications</span>


<table>
  <tr>
   <td>Type of Repository 
   </td>
   <td>Cloud
   </td>
  </tr>
  <tr>
   <td>Content Supported
   </td>
   <td>Messages inside Topics in Channels
   </td>
  </tr>
  <tr>
   <td>RACL Support
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td>Content Filtering
   </td>
   <td>No
   </td>
  </tr>
</table>



## Prerequisites

Search AI establishes communication and fetches relevant content from Zulip through its APIs. An API Key is required to authenticate these API requests from Search AI. 


## Generate API Key in Zulip



1. Click on your **profile picture** (top right corner).
2. Go to Personal Settings.
3. Go to the API Key section on the Account and Privacy page and generate your API Key. 


## Configure the Zulip Connector in Search AI

Go to the Connectors home page in Search AI. Select Zulip Connector. Provide the following details in the **Authorization** tab and click **Connect** to set up the connection. 



* Name: Unique name for the connector. 
* API Key: API Key generated above. 
* Host URL: Host URL for the organization in Zulip.
* Email ID: Email address used for generating API Key in Zulip. 


## Content Ingestion

Search AI ingests messages on different topics from streams or channels. At every sync operation, it currently ingests content for the past 30 days. Any existing content in the connector older than this timeframe is automatically deleted from the Search AI app. 

Depending upon the size of a message, up to three messages can be concatenated in a single ingested document. The content field in each doc mentions the channel, topic, and message text along with the message's author. Additional information about the content is ingested in separate fields in the document. 


## RACL Support

The access control is implemented in Zulip at the Channel Level. Streams can be **Public**, **Private**, or **Web-public**, defining who can access them:

* **Public Channels**: Anyone in the organization can join and view messages. The sys_racl field is set to the organization name. 
* **Private Channels**: Only invited members can access and participate. The sys_racl field is set to channelId in this case. 
* **Web-public Channels**: Accessible to anyone with the link, even without logging in. The sys_racl field is set to * in this case. 