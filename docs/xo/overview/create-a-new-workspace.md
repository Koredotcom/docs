# **Create a new workspace**

You can create a new workspace from scratch or join an existing workspace.

**To create a new workspace, do any one of the following:**



* From the All-Workspaces icon
* From the left panel corresponding to the workspace name
* From the Workspace landing page


## All-Workspaces icon

**To create a workspace from the All-Workspaces icon, follow these steps:**



1. Hover over the icon on the primary navigation panel and All workspaces pop-up is displayed.
2. Click the + icon on the All workspaces pop-up. The Create Workspace dialog box is displayed.
3. Enter a workspace name in the Give it a name field.
4. Select the icon to select an emoji for your workspace. The list of emojis is displayed and you can select.
5. Select **Visibility** from the drop-down box. You can select from one of the following: 
Private: Your workspace is discoverable by members only if they are invited. 
Public: Anyone in the organization can join this workspace.
6. Select **Discoverability** from the drop-down box. You can select from one of the following: 
Other members can request to join the workspace. 
Other members cannot find your workspace.
7. Type and add members in the Add members field.
8. Click **Create workspace**. Your workspace is live now and you can start adding boards from this space.


## Left panel 

**To create a workspace from the left panel, follow these steps:**



1. Click the three dots icon corresponding to the &lt;Workspace name>on the left panel of the Workspace landing page. A pop-up with a list of options is displayed.
2. Click **+Create workspace**. The **Create Workspace** dialog box is displayed. 

!!! note 
    Repeat the process that is documented from step 3 of the preceding procedure to continue.

## Workspace landing page

**To create a workspace from the Workspace landing page, follow these steps:**



1. Click the icon on the primary navigation panel. The Workspaces page is displayed.
2. Click **Create new**. The **Create Workspace** dialog box is displayed. 

!!! note
    Repeat the process that is documented from step 3 of the preceding procedure to continue.
    


<table>
  <tr>
   <td>
<strong>COLUMN TYPE</strong>
   </td>
   <td><strong>OPERATOR</strong>
   </td>
   <td><strong>AUTOMATION EXAMPLE</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Date</strong>
   </td>
   <td>
<ul>

<li><strong>is</strong>

<li><strong>is not</strong>

<li><strong>is on or before</strong>

<li><strong>is on or after</strong>

<li><strong>is before</strong>

<li><strong>is after</strong>

<li><strong>is within</strong>

<li><strong>is updated from</strong>
<strong> </strong>
</li>
</ul>
   </td>
   <td><strong>When a new row is created and if is before 19/09/2022 then update the status to “Create an approval task”</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Drop-down</strong>
   </td>
   <td>
<ul>

<li><strong>is</strong>

<li><strong>is not</strong>

<li><strong>is updated from</strong>
</li>
</ul>
   </td>
   <td><strong>When a record is updated and if it is not “Satish” then “Send an email”</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Multi select</strong>
   </td>
   <td>
<ul>

<li><strong>has any of</strong>

<li><strong>has all</strong>

<li><strong>has none of</strong>

<li><strong>Is updated from</strong>
</li>
</ul>
   </td>
   <td><strong>When a new row is created and has any of “Release 1.0” and “Dev complete” then update status to “Ready for QA”</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Number</strong>
   </td>
   <td>
<ul>

<li><strong>is greater than</strong>

<li><strong>is less than</strong>

<li><strong>is greater than or equals to</strong>

<li><strong>is less than or equals to</strong>

<li><strong>is equals to</strong>

<li><strong>is not equals to</strong>

<li><strong>Is updated from</strong>
</li>
</ul>
   </td>
   <td><strong>When a new row is created and if it is equal to 400 then “Send a reminder notification”</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Simple text or multi line text or URL</strong>
   </td>
   <td>
<ul>

<li><strong>contains</strong>

<li><strong>does not contain</strong>

<li><strong>is</strong>

<li><strong>is not</strong>

<li><strong>is empty</strong>

<li><strong>is not empty</strong>

<li><strong>is updated from</strong>
</li>
</ul>
   </td>
   <td><strong>When a record is updated and if contains “projects” then update status to “Update a record”</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Attachment</strong>
   </td>
   <td>
<ul>

<li><strong>is available</strong>

<li><strong>is not available</strong>

<li><strong>filename contains</strong>

<li><strong>value to be provided</strong>

<li><strong>type is</strong>
</li>
</ul>
   </td>
   <td><strong>When a new row is created and if is available then update status to “Send an email”</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Person</strong>
   </td>
   <td>
<ul>

<li><strong>is</strong>

<li><strong>is not</strong>

<li><strong>is any of</strong>

<li><strong>is none of</strong>

<li><strong>Is updated from</strong>
</li>
</ul>
   </td>
   <td><strong>When a new row is created and if it is “Daniel” then update status to “Create an approval task”</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Checkbox</strong>
   </td>
   <td>
<ul>

<li><strong>is</strong>

<li><strong>Is updated</strong>
</li>
</ul>
   </td>
   <td><strong>When a new row is created and if it is checked then update the status to “Update status to done”</strong>
   </td>
  </tr>
</table>

