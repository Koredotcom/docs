# LumApps Connector

**LumApps** is a digital workplace platform that enhances internal communication, collaboration, and employee engagement within organizations. It serves as a centralized hub where employees can access company news, documents, and tools, and collaborate effectively.

LumApps organizes content into key types, such as pages, news, and custom objects. It also enables the creation of communities and the sharing of content as community posts.

**<span style="text-decoration:underline;">LumApps Connector Specifications</span>**


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
   <td>Pages, News, Custom Objects, and Community Posts
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



## Connector Configuration

Search AI interacts with LumApps through its APIs. To set up this communication, you need to create an OAuth application and generate client credentials. 


## Create an OAuth application

In the LumApps back office, go to Extensions > Installed extensions page and do the following configuration. 



1. Select Oauth Application Manager > Details.
2. Go to the Settings tab.
3. Click Add an OAuth application.
4. Enter a name in the Application name field.
5. In the Scopes field, select the following. 
    1. All.read
6. Leave the Authorized User ID field blank.
7. Click Save.
8. Copy the Application ID and Application secret.


## LumApps Connector Configuration in Search AI

On the **Authorization** tab of the connector, provide the following details.



* Name - Unique name for the connector. 
* Authorization Type: Select Token as the type.
* Grant Type: Select Client Credentials. 
* Client ID: Provide the Application ID generated above. 
* Client Secret: Provide the Application Secret generated above. 
* Organization ID: Unique identifier assigned to your organization’s platform. This ID is present in your platform URL after the word, ‘org-’. For example, in this instance, [https://org-3731839993107899.app.lumapps.com](https://org-3731839993107899.app.lumapps.com/), the organization ID is [3731839993107899](https://org-3731839993107899.app.lumapps.com/). You can also find this information in the debug dialog in the customer platform. **To view the debug dialog, press CTRL + SHIFT + ?.**
* User ID: User ID used to access the content from LumApps. This user will be impersonated to fetch the content. Find this info from the debug dialog. 
* Host URL: This is the URL of the LumApps API host. This is also referred to as the **Haussmann cell.** This host varies depending on the LumApps environment your platform is hosted on. Use the debug dialog to find this information. 
* Content-Type: Select the type of content to be ingested from LumApps. You can select all the content or specifically Pages or community posts.  

Click on **Connect** to authenticate and set up a connection with the LumApps account. 


## Content Ingestion

In LumApps, content is managed using various content types. Search AI enables the ingestion of Pages, News, and Custom content objects from LumApps. Additionally, it also enables the ingestion of posts from communities created in the LumApps. 

Each page, post, news item, or custom content item is ingested as a separate document in Search AI. The doc_source_type field in the ingested content suggests the type of content. The content field contains the textual content from the ingested record. Other details like title, URL, creation and updation date are captured in respective meta data fields.


## RACL Support


### **Content Objects**



* In **LumApps**, various content objects such as **Pages, Custom Content, and News** can be shared with different user groups. This is controlled through the **Visible By** field in the UI, which determines accessibility. 

![alt_text](images/lumapps/visibility.png "image_tooltip")

* For **Pages, Custom Content objects, and News**, the sys_racl field stores the groupID associated with the user group that has access to the content. The groupID is managed as a **Permission Entity**. Administrators can use **Permission Entity APIs** to map users to their respective groupID, ensuring controlled access to content.


### **Community Posts**



* **Community Posts** are accessible **only to the members** of the respective community. \

* The sys_racl field for community posts contains the **Community ID**, ensuring that posts remain visible exclusively to authorized community members. Use the permission entity APIs and associate community members with the community ID. 