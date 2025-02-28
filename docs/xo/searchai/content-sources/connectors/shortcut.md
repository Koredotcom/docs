# Shortcut Connector

Shortcut is a project management tool that brings planning and development into one application. It offers features like sprint planning, roadmaps, kanban boards, and integrations with development tools to streamline collaboration. It helps teams create and track stories, tasks, and tickets efficiently. Search AI enables users to search through **Stories** efficiently within the application.

**<span style="text-decoration:underline;">Shortcut Connector Specifications</span>**


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
   <td>Stories
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

Search AI interacts and fetches the stories-related content from the application using APIs. To authenticate the API requests, the connector requires an API token generated in the Shortcut application. 

## Generate API Token in Shortcut

* Access your user profile. 
* Click on Settings. 
* Navigate to API Tokens. 
* Enter a name for the new token. 
* Generate the token. 
* Save the token, as it is necessary for configuring the connector in Search AI.


## Shortcut Configuration in Search AI

Go to the Shortcut COnnector in Search AI, provide the following information, and click **Connect**.

* **Name**- Unique name for the connector. 
* **API Key** - API Token generated in the Shortcut app. 


## Content Ingestion

Upon Sync, the connector ingests **Stories from all the Spaces** accessible to the user/account used for ingesting content. 

It fetches the description of a story and metadata of a story, such as epic name, status, team, owner, requester, due date, priority, and skill set, and ingests into the content field. All the metadata is also captured individually in respective fields. 


## RACL Support

A story is accessible to all the members of a team or group associated with the story. Hence the `sys_racl` field is set to the **groupID **of the group related to the story. Use the Permission Entity APIs to associate a user email ID with this groupID. 
