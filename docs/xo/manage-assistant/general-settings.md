
# General Settings

	

		

			

To modify the general settings of a bot:



1. Select the **Build** tab from the top.
2. Click **Configuration > General Settings**.



    ![alt_text](images/gs1.png "image_tooltip")



## General Bot Settings

Modify one or more of the settings described in the following table.


<table>
  <tr>
   <td><strong>Field</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td>Bot Name
   </td>
   <td>The name of the Bot. When a Bot is published, the <strong>Name</strong> cannot be changed. This field is required.
   </td>
  </tr>
  <tr>
   <td>Description
   </td>
   <td>The description of the Bot. This field is required.
   </td>
  </tr>
  <tr>
   <td>Icon
   </td>
   <td>The icon image for the Bot is displayed in Bot Builder, Bots Marketplace, and the end-user interface as shown in the previous illustration. The image format must be .png and best results are obtained using a 200 x 200-pixel image. This field is required.
   </td>
  </tr>
  <tr>
   <td>Target Audience
   </td>
   <td>
<ul>

<li>Select <strong>General Public</strong> if the bot is for public use for both managed and unmanaged users in your domain. Bot assignments are not required and when the Bots Admin deploys the bot, it is available for use by all domain users. Use this option to make a bot widely available for all user types.

<li>Select <strong>Enterprise Users</strong> if the bot is for managed users only in a domain, for example, for your employees or paid customers. After the Bots Admin approves and deploys this bot, it is not available to any managed users unless explicitly assigned by the Bots Admin. Use this option when you want to control which managed users in your domain can access and set up this bot on their devices.
Once the <strong>Target Audience</strong> is defined and saved, you cannot change them.
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>Default Bot Language
   </td>
   <td>This is uneditable and is set at the time of Bot creation.
   </td>
  </tr>
  <tr>
   <td>Bot Id
   </td>
   <td>Non-editable, assigned by the platform. Can be copied for use in API calls etc...
   </td>
  </tr>
  <tr>
   <td>Variable Namespaces
   </td>
   <td>You can categorize variables using Namespaces and map them to various components. The XO Platform will load the variables only from the mapped namespaces while executing specific components.<a href="https://developer.kore.ai/docs/bots/bot-settings/bot-management/managing-namespace/"> Learn more</a>.
   </td>
  </tr>
  <tr>
   <td>Subdomain (Tenancy)
   </td>
   <td>Click <strong>Yes</strong> to enable the use of tenancy. When the tenancy is defined, the end-user is prompted to enter a tenant name as part of the URL for the Bot, for example, <em>kore</em>, for the www.<strong><em>kore</em></strong>.someWebService.com tenant-specific URL. When enabled define the following properties:
<ul>

<li><strong>Help Hint</strong> – The text displayed to the end user prompts the user to enter a tenant-specific URL for the Bot.

<li><strong>Base URL</strong> – The base URL for the Bot that the end-user must specify their company to complete the tenant-specific URL using the following syntax: https://{tenant}.someWebService.com where {tenant}, including the braces, represents the tenant name. 
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>Show a link for task setup/execution
   </td>
   <td>
<ul>

<li>Select <strong>Yes</strong> to display a link to enable the choice for a user to input information used to execute a task in a user interface form or input the data directly into the message input field, for example, <em>Enter the title for new Asana task. To make edits, click here. </em>where <em>here</em> is a link to a form with fields.

<li>When <strong>No</strong> is selected, the user can only input information for the task in the message input field. For example, <em>Enter the title for new Asana task</em>.
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>Error Message(s)
   </td>
   <td>Edit or add custom <strong>HTTP Status Codes</strong> and error messages for your Bot. For more information, see<a href="https://developer.kore.ai/docs/bots/bot-settings/customizing-error-messages/"> Customizing Error Messages</a>.
   </td>
  </tr>
</table>


To save the Bot settings, click **Save**. The _&lt; **Bot Name** > updated successfully_ message is displayed.

		

	

	

		

			


## Customizing Error Messages

In Bot Builder, each Bot and task contains a set of predefined error messages along with actions for standard HTTP Status codes returned for an HTTP Request method. In most cases, the default response and action are sufficient for an end-user response, however, you may need to handle other HTTP Status codes not defined by default, or customize the error message itself, or change the default response by Kore.ai in the event of an error. This topic describes how to customize and create error messages for Kore.ai Bots and tasks. When you create a Bot or a task, you can add or customize error messages for HTTP Status codes in the **Error Messages** section of the Bot or task settings.[ ](https://kore-wordpress.s3.us-east-2.amazonaws.com/developer.kore.ai/wp-content/uploads/20230215113143/general-settings-error-messages.png)




![alt_text](images/gs2.png "image_tooltip")
[ 
](https://kore-wordpress.s3.us-east-2.amazonaws.com/developer.kore.ai/wp-content/uploads/20230215113143/general-settings-error-messages.png)

		

### Custom Status Codes

There are approximately 25 HTTP Status codes defined by default for a Bot or task. **To customize an HTTP Status code**.



1. Open the Bot or task in Bot Builder.
2. Select the **Build** tab from the top menu.
3. From the left menu click **Configurations > General Settings**.
4. Scroll down to locate the **Error Messages** section.
5. Click the **Edit** icon for the code that you want to customize to open the **Setup Error Message** dialog.
    ![alt_text](images/gs3.png "image_tooltip")

6. In the **Message Type** field, select one of:
    * **Custom** – Displays a **Custom Message** field to define an error-specific message for the end-user.
    * **Source** – Displays the **Error Paths** field where you can define the JSON path from the JSON response payload for HTTP Status codes other than those in the 2XX range (success messages).

7. In the **Action** field, specify the action to take when the number of consecutive errors defined in the **Error Recurrence** field is reached. Select one of:
    * **Disable** – The task is set to **Inactive** when the error occurs. The end-user can activate the task when needed.
    * **Reschedule** – Displays the **Retry Interval** field used to define the elapsed time in minutes after which to retry the task when the error occurs.
    * **Disable Auth** – When the error occurs, the authorization mechanism defined for the task is disabled. Any other task that uses the same authorization mechanism is also disabled.
    * **Notify** – Displays the error message in the end-user interface.
    ![alt_text](images/gs4.png "image_tooltip")

8. In the **Message** field (available only for the default messages), enter the text message displayed to the end user.
9. In the **Error Recurrence** field, specify the number of consecutive error codes that must be returned before the action is executed. By default, the **Error Recurrence** field is set to ” 1 “.
10. Click **Add** to save and close the **Setup Error Message** dialog for your custom error message.

To create a new HTTP Status code, click **Add Error Message**, define the fields for your new code as described in the preceding section, and then click **Add**.


		
