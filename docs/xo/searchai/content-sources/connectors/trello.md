# **Trello Connector**

Trello is a project management and collaboration tool that utilizes **boards** and **cards** to organize tasks, projects, and workflows. Integrating **Search AI** with Trello enhances the accessibility of the content, making project management and team collaboration more streamlined and effective.

<span style="text-decoration:underline;">Specifications</span>


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
   <td>Cards and Boards
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



## Authorization Support

Trello connector interacts with Trello via the REST APIs. To enable this communication, it is required to generate an API key and Token on Trello. 

## Generate API Key and Token on Trello

1. Create a [Trello Power-Up](https://trello.com/power-ups/admin). 
2. Generate a [new API Key for the power-up](https://developer.atlassian.com/cloud/trello/guides/power-ups/managing-power-ups/#generating-an-api-key). Ensure the Search AI host URL is added to the **Allowed origins.**
3. Generate [API Token](https://developer.atlassian.com/cloud/trello/guides/rest-api/authorization/#authorizing-a-client). This uses the Trello account to grant access to Search AI application. 
4. Save the API Key and Token. This is required to configure the corresponding connector in Search AI. 


## Configure Trello Connector in Search AI

Go to the **Authorization page** of the Trello Connector, provide the following configuration fields, and click **Connect**.



* **Name**- Unique name for the connector.
* **Authorization Type**- Set this to Token. 
* **Grant Type** - Set this to Token. 
* **Access Key**- Provide the API Key here. 
* **Access Token**- Provide the API Token here.  


## Ingesting Content

After successfully connecting the Search AI connector to the Trello account, go to the **Configuration** tab and set up content synchronization. For immediate sync, use the **Sync Now** option and the **Schedule Sync** option to set up a scheduler to sync the content in the future. 

Upon sync, Search AI ingests details from the **boards** and the **cards** into the Search AI application. 

The **‘type’** field in the ingested content suggests whether the data is related to a board or a card. For both cards and boards, the content field includes description, due date, author, and comments on the cards. The card details also have a field ‘board’ under meta fields that indicates the board to which it belongs. 


## RACL Support

A **board** in Trello can have the following visibility values:

* **Private**: Only board members can see this board, and Workspace admins can make changes to the board, such as adding members to the board. In this case, the sys_racl field is set to the board ID. Use the Permission Entity APIs to associate the board members with the board ID and set up appropriate user access. 
* **Workspace**: All the members of the Workspace can see and edit the board. Currently, Search AI sets the board ID as the sys_racl field for this type of visibility. 
* **Organization**: All the members of the organization can see the board. Currently, this visibility is not supported by the Search AI connector. 
* **Public: **Anyone with the link to the board can view the board; hence, the sys_racl field is set to *. 

The **cards** in a board are always accessible to all the board members. Hence, for cards, sys_racl is set to the **board ID** of the board to which it belongs.  
