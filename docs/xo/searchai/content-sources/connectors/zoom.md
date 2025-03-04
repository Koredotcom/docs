<!-----



Conversion time: 0.318 seconds.


Using this Markdown file:

1. Paste this output into your source file.
2. See the notes and action items below regarding this conversion run.
3. Check the rendered output (headings, lists, code blocks, tables) for proper
   formatting and use a linkchecker before you publish this page.

Conversion notes:

* Docs to Markdown version 1.0β44
* Wed Feb 26 2025 18:49:55 GMT-0800 (PST)
* Source doc: Zoom Connector
* This is a partial selection. Check to make sure intra-doc links work.
* Tables are currently converted to HTML tables.

WARNING:
You have 4 H1 headings. You may want to use the "H1 -> H2" option to demote all headings by one level.

----->


<p style="color: red; font-weight: bold">>>>>>  gd2md-html alert:  ERRORs: 0; WARNINGs: 1; ALERTS: 0.</p>
<ul style="color: red; font-weight: bold"><li>See top comment block for details on ERRORs and WARNINGs. <li>In the converted Markdown or HTML, search for inline alerts that start with >>>>>  gd2md-html alert:  for specific instances that need correction.</ul>

<p style="color: red; font-weight: bold">Links to alert messages:</p>
<p style="color: red; font-weight: bold">>>>>> PLEASE check and correct alert issues and delete this message and the inline alerts.<hr></p>



# Zoom Connector

Zoom is a versatile communication platform widely utilized for video conferencing, online meetings, webinars, and team collaboration. The integration of Search AI facilitates the ingestion of meeting content from the Zoom application, enabling users to search and access relevant data easily. This feature enhances productivity by allowing teams to quickly locate important discussions, decisions, and action items from past meetings.

**<span style="text-decoration:underline;">Zoom Connector Specifications</span>**


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
   <td>Past Meetings with Summary
   Note that if the summary is unavailable for a meeting, meeting details will not be ingested into Search AI.  
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

Search AI interacts with Zoom through its APIs. Registering Search AI as an OAuth app in the Zoom application is required to enable this communication. Follow the steps listed below to register the app. 


## Prerequisites

* A Zoom account with admin privileges on a Business or higher plan is needed. 
* The dashboard feature is enabled on the Zoom account.  
* A meeting summary is generated only if the Meeting Summary with AI Companion feature in the host's account is enabled. The summary cannot be generated for end-to-end-encrypted meetings. 


## OAuth Set up in Zoom

Search AI uses server-to-server OAuth configuration to access Zoom APIs and fetch meeting recordings. 

* Refer to [this ](https://developers.zoom.us/docs/internal-apps/create/)to create a server-to-server OAuth app. 
* Select the following OAuth scopes while creating the app. 
    * user:read:list_users:admin
    * user:read:user:admin 
    * meeting:read:summary:admin 
    * cloud_recording:read:list_recording_files:admin
    * dashboard:read:list_meetings:admin
*  Get your app credentials, including account ID, client ID, and client secret, on your [app details](https://developers.zoom.us/docs/internal-apps/create/) page.


## Zoom Connector Configuration in Search AI

On the **Authorization** tab of the Zoom connector, provide the app credentials generated above. Search AI internally uses those credentials to create an access token and invokes required APIs to get meeting details. Click on **Connect** to authenticate and set up a connection with Zoom. 


## Content Ingestion

On the **Configuration** tab, click **Sync Now** to immediately sync with the Zoom account. Sync only ingests meetings with AI-generated summaries from the application. You can also schedule a sync to run in the background at regular intervals or sometime in the future using the scheduler. 

Currently, Search AI only fetches data for the past 30 days during sync. The connector ingests the meeting summary along with the other meeting details. 

Note that the summary is generated only if the Meeting Summary with AI Companion feature in the host's account is enabled. End-to-end encrypted meetings do not have a summary at all. 


## RACL Support in ZOOM

In Zoom, all **meeting invitees** can access the **meeting summary and other metadata**. Hence, the `sys_racl` field includes both the **host's email address** and the **email addresses of all invitees**.

When a meeting is conducted using a **personal meeting link or by directly sharing the meeting link with the attendees**, the `sys_racl` field is set to `*`, which allows for broader access.
