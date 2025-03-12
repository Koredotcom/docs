# Hive Connector 

**Hive** is a project management and collaboration tool designed to help teams efficiently organize tasks, projects, and workflows. The Hive Connector allows for the seamless integration of **Hive Actions** into the Search AI application, facilitating easy search operations on these actions.

**<span style="text-decoration:underline;">Hive Connector Specifications</span>**


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
   <td>Actions and Sub-Actions
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
   <td>Yes
   </td>
  </tr>
</table>



## Prerequisites 

* Hive Account
* API Key


## Generate API Key on Hive

Search AI interacts with Hive via APIs. To authorize the Search AI API requests, generate an API key in the Hive application. To create an API Key, follow the steps listed below.

* Go to Edit profile on the Hive application. 
* Go to API Info and copy the API Key and workspace ID. 


## Configure Hive Connector in Search AI

On the **Auth** page of the connector, provide the following details and click **Connect**.

* **Name**- Unique name of the connector
* **API Key** - The API Key generated in Hive. 
* **Workspace ID**- Workspace ID for which actions are to be ingested. 


## Content Ingestion

Currently, Search AI supports the ingestion of Actions from designated projects within your Workspace. It also includes any sub-actions that may exist under the main Actions. 

To start content ingestion,

* Navigate to the **Configuration** tab of the connector and select the **Sync Specific Content**. 
* Click the **configure** link and select the projects from which actions are to be ingested. Note that currently, only the actions under a certain project are ingested, and actions from sub-projects under a project are not ingested. 
* To ingest content from both a project and its sub-projects, select all relevant projects within the hierarchy.
* Click **Save**. 

Click **Sync Now** to start the ingestion process immediately. Alternatively, you can also schedule sync at regular intervals using the scheduler. 

You can view the ingested content under the **Content** tab. 

Each Action and Sub Action in Hive is ingested as a separate individual document in Search AI. For each action, the description, comments, status, priority, deadline, milestones, assignees, and checked date are added to the content field of the ingested document. Other details are captured as metadata. 


## RACL Support

Each Action is accessible to the following set of users:

* Creator of the action
* Followers of the action
* Assignees of the action

Search AI adds all the users associated with an action as creator, follower or assignee to the sys_racl field in the ingested content. 

Additionally, access rules for an action also depend on the project to which it belongs. Each project in Hive can be public or private. For each project, the sharingType further explains who can access the project and who cannot. Depending on the project type and the sharing type, the following are also added to the sys_racl field as permission entities. Use the Permission Entity APIs to associate users with the entity. 


<table>
  <tr>
   <td>Type of Project
   </td>
   <td>Sharing Type
   </td>
   <td>sys_racl (added as permission entities)
   </td>
  </tr>
  <tr>
   <td>Public
   </td>
   <td>Everyone
   </td>
   <td>Workspace ID
   </td>
  </tr>
  <tr>
   <td>Public
   </td>
   <td>Custom
   </td>
   <td>projectID, Workspace ID
   </td>
  </tr>
  <tr>
   <td>Private
   </td>
   <td>Everyone 
   </td>
   <td>Workspace ID
   </td>
  </tr>
  <tr>
   <td>Private
   </td>
   <td>Custom 
   </td>
   <td>projectID
   </td>
  </tr>
  <tr>
   <td>Private
   </td>
   <td>Me
   </td>
   <td>projectID
   </td>
  </tr>
</table>


!!!note
    Currently, client mode is not supported via Search AI. 