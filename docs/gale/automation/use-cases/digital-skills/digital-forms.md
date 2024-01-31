# Digital Forms

Virtual Assistants engage end-users primarily using a conversational interface that typically includes an exchange of a series of messages. But oftentimes, there is a need to gather information from the end-user to proceed further. Examples include providing delivery address while interacting with an eCommerce agent, details of an issue while reporting to ITSM agent, opportunity details while creating a CRM opportunity, capturing customer details to book a flight, etc.

In a standard Dialog Task, this scenario is designed by placing a series of Entity Nodes connected back-to-back and the user is asked for values for each of these entities sequentially, which is quite tedious and frustrating. Digital Forms mitigate this issue by presenting users with an interactive interface that they can use to provide the information they are asked for in one go.

**Digital Forms** provide a range of input fields that allow your assistant to capture the required details from end-users. After the users complete the form, the input is submitted to the VA to proceed with the task at hand.

In this article, we discuss the features and implementation of Digital Forms in the XO Platform. For a use case example and a step-by-step implementation of a Digital Form click <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/digital-skills/configure-digital-forms/" target="_blank">here</a>.

## Features
* Improved user experience with a single interface for input collection.
* Easy form creation using simple drag and drop actions.
* Vast component library to cater to all your form requirements.
* Provision to define rules for input validations and visibility suiting your use case.
* Automatic dialog task generation from the _Form_ enabling switching between Form or Conversation experience based on the channel of interaction.

## General Setup

You can access **Digital Forms** from the **Build** top menu under **Digital Skills > Digital Forms**.

<img src="../../images/access-digital-forms.png" alt="Access Digital Forms" title="Access Digital Forms" style="border: 1px solid gray; zoom:75%;">

Here is the overall usage process for Digital Forms within the XO Platform

* **Form Creation**: Define a Digital Form by adding components and configuring their properties.
* **Form Invocation**: Forms are invoked from inside a task or process:
    * A form is included as a component in the task. The dialog task offers a Form Experience and Conversation Experience based on the channel of interaction. Learn more by reading about the <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/dialogs/node-types/working-with-the-form-node/" target="_blank">Form Node</a>.
    * A Digital Form is added to a Digital View with a dialog task triggered when a form is submitted from there.
* **Form Submission**: When it is submitted, the component values are validated and any errors are highlighted. Based on the mode of invocation, post successful validation:
    * The VA execution proceeds as per dialog flow in case of dialog task invocation.
    * The selected task is triggered.

## Create a Form
A Digital Form includes a definition and various components to capture user input.

To create forms, follow the steps below:

1. Under the **Build** top menu, select **Digital Skills**.

2. Click **Digital Forms > New Form**.

3. On the **New Form** page, enter the following:
    * **Name** of the Form.
    * **Display Name** for the Form.
    * **Description** of the Form.

      <img src="../../images/create-new-form.png" alt="Create New Form" title="Create New Form" style="border: 1px solid gray; zoom:75%;">

4. **Select form’s Header Style**: You can choose a specific header style from the listed illustrations – the circle indicates the position of logo/icon with respect to the title of the form in the header. Click the card to select the style. If it has a logo, you can upload an image file (jpg or png) for the logo.
<div class="admonition note">
<p class="admonition-title">Note</p>
<p>During the Export of the Bot, the logo is not exported along with Digital Forms. So, when importing this Bot, you need to separately copy the logo image file and then manually reupload the logo.</p>
</div>

<ol start="5"><li>Turn on the <b>Description</b> toggle if you want to show a description of the form in the header.
<img src="../../images/description-toggle-turn-on.png" alt="Description Toggle" title="Description Toggle" style="border: 1px solid gray; zoom:75%;"></li>
<li><b>Form Security</b> – Enable <b>Secure Form Data</b> to redact form data from the Bot Context, Debug Logs, Service Calls, Agent Transfer, and the Bot Kit.
<img src="../../images/secure-form-data.png" alt="secure form data" title="secure form data" style="border: 1px solid gray; zoom:75%;"></li>
   <p>While enabling, you can also choose whether to display the <b>Secure Form icon</b> to your end users.</p>
   <img src="../../images/enable-redact-form-data.png" alt="enable redact form data" title="enable redact form data" style="border: 1px solid gray; zoom:75%;">
   <p>Once enabled, the Platform will replace the user input with a unique random system-generated alphanumeric value in all the modules. Also, the <b>Secure Form</b> icon and a tip will be displayed, notifying the user that the form is secure.</p>
   <img src="../../images/secure-form-icon.png" alt="secure form icon" title="secure form icon" style="border: 1px solid gray; zoom:75%;">
<li>Click <b>Save & Proceed</b>.
<img src="../../images/save-digital-form.png" alt="save digital form" title="save digital form" style="border: 1px solid gray; zoom:75%;"></li></ol>

### Add Components

Once you configure the basic details for your form, the Platform takes you to the form builder, where you can add the components you require.

You can drag and drop the components available on the left pane to the canvas and configure their properties to build the form. For details of the available components & their properties.

<img src="../../images/drag-component.gif" alt="Drag and drop component" title="Drag and drop component" style="border: 1px solid gray; zoom:75%;">

You can search for a given component, or scroll through the list to find what you require.

<img src="../../images/search-component.gif" alt="search component" title="search component" style="border: 1px solid gray; zoom:75%;">

You can view the components list in a grid format by clicking the icon on the top right of the list.

If you hover in-between components within the form itself, you can find an in-form **Add Component** button which also allows you to search and add new components without having to navigate to the left-side list.

<img src="../../images/add-component-in-form.png" alt="add component" title="add component" style="border: 1px solid gray; zoom:75%;">

### Add Form Sections

If you are working with a longer and more complex form, you can split it into sections. Hover your cursor in-between form components to reveal an **Add Section** button. Clicking it will add a title and description to your form, which you can use to organize the other fields into sections.

<img src="../../images/add-section.png" alt="add form section" title="add form section" style="border: 1px solid gray; zoom:75%;">

### Form Actions

From the Forms Listing page, you can:

* Create a **New Form**, as seen above.
* <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/digital-skills/digital-forms/#edit" target="_blank">Edit</a> the Form.
* Use the **Branding** option to customize a form.
* **Test** forms.
* **Delete** forms.

<img src="../../images/form-actions.png" alt="form actions" title="form actions" style="border: 1px solid gray; zoom:75%;">

### Edit
You can use the **Edit** option from the form listing to edit the form. The following actions are performed on the Form in edit mode:

<img src="../../images/form-editor.png" alt="form editor" title="form editor" style="border: 1px solid gray; zoom:75%;">

* **_The Component Listing_** is used for selecting and adding components to the Form by simple drag and drop action.
* Use the **View Toggler** to switch between **Desktop View** and **Mobile View**.
* Use the Move Component _Handle Bar_ against each of the components to change its location by a simple drag and drop action;
* Use *Form Actions* to:
    * **Test** the form to see the preview of the Digital Form in the XO Platform.
    * **Delete** the Form. Please keep in mind that deleted forms cannot be restored.
    * Change the Form **Settings** such as name, display name, and description.
* Use the **Component Actions** to access the **Settings**, **Duplicate,** and **Delete** options for each of the form’s components.
* You can change the components’ properties from the **Component Settings** popup:
    * Use the **Component Docker** to dock/undock the settings pane to the screen.
    * Use the **Component Selector** to navigate through the components on the Form.

### Branding

Use the **Branding** option to change the look and feel of the form to reflect your organization’s standards. An instant preview gives you an idea of how the form would look with the new colors and you have the option to **Save** or **Restore Default** scheme.

<img src="../../images/branding-flight-search.png" alt="branding" title="branding" style="border: 1px solid gray; zoom:75%;">

### Test

**Test** the form to see a preview of what it would look like to the end user. You can do this at any point while you work on the form.

<img src="../../images/test-preview.png" alt="test preview" title="test preview" style="border: 1px solid gray; zoom:75%;">

## Invoke a Form

A digital form can be invoked as follows:

1. **From a Task**: You may include a form as a component in a dialog task for defining the task. The dialog task offers _Form Experience_ and the usual _Conversation Experience_ for filling the form data. You can choose the preference based on the _channel of interaction_ or any other criteria based on your requirements.
2. **From a UI flow**: You can add a Digital Form to a pane and choose a dialog task to trigger when the form is submitted from the pane.

In the following sections, we discuss each of the above invocation processes.

### Invocation from Dialog Tasks

Digital Forms are used inside Dialog Tasks for capturing user inputs through a Form Node.

To invoke a form from a dialog task, follow the below steps:

1. Create/open the dialog from where you want to invoke the Digital Form.
2. Click the **+** icon next to the node where you want to add the Form.
3. Select the **Digital Form** option and then the form from the list. You can choose to add a Digital Form directly or use an existing Form Node.
4. You are prompted to select the **Form Experience**, it can be:

   <img src="../../images/configuration-form-node.png" alt="configure form node" title="configure form node" style="border: 1px solid gray; zoom:75%;">

 * **Only Form UI** – This creates a Form Node and associates it with the Digital Form selected. This is the default option.

   <img src="../../images/only-ui.png" alt="only form ui" title="only form ui" style="border: 1px solid gray; zoom:75%;">

* **Both Form UI and Conversation Experience** – This further prompts you to choose a channel. When a user is using one of the selected channels they are presented with a Form UI, the rest of the channel users get a conversation experience. 
This option creates:
* A **Bot Action Node** to determine the transitions to the Form Node and the Sub-dialog Node based on the channels selected.
* A **Form Node** for the Digital Form, same as was generated for the Only Form UI above.
* A **Sub-dialog Node** to capture the required entities (as defined in the Digital Form using components) for the conversational experience. 
* A **Group** encompassing the following nodes. This grouping can be renamed and/or deleted. <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/dialogs/node-connections/grouping-nodes/#add-a-node-group" target="_blank">Learn more</a>.

   <img src="../../images/form-experience-nodes.png" alt="form experience node" title="form experience node" style="border: 1px solid gray; zoom:75%;">

5. You can set the **Properties** for each of the nodes added.
* The <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/dialogs/node-types/working-with-the-form-node/" target="_blank">Form Node</a>. 
Of special interest are the following Component Properties:
* **Submit Message** – Message displayed to the end-user on successful submission of the form
* **Web/Mobile SDK Form Behavior** – Using this option you can either have the form displayed *inline* the chat window or *open on a full page*. Also, you can either go ahead with the default submit prompt or configure the setting to display a custom and more specific message to be shown in chat. <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/dialogs/node-types/working-with-the-form-node/#component-properties" target="_blank">Learn more</a> about the configuration.
* **Bot Action Node,** in case of the conversation experience flow, can also be configured in the <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/dialogs/node-types/working-with-the-logic-node/" target="_blank">Logic Node</a> as follows:

   * **Manage Context Variables** is used to create and set values for the context variables. Remember to use the full path of the variable in the _key_ field ie. ```context.BotUserSession.<variable_name>```

   <div class="admonition note">
   <p class="admonition-title">Note</p>
   <p>We urge you not to make changes to the connection settings as this affects the V's performance.</p></div>

* **Sub-dialog Node** is configured as a normal <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/dialogs/node-types/working-with-the-dialog-node/" target="_blank">Dialog Node</a> as follows:

 * Use the **Entity Post-assignment** to capture the user input.
* In case you modify the sub-dialog or the source form, you are presented with an option to **Regenerate Dialog**. This ensures that the changes are reflected in the task without having to rebuild the entire task. Be aware that the changes are reflected in all places this sub-dialog is used.

   <img src="../../images/subdialog-node-configuration.png" alt="sub dialog node" title="sub dialog node" style="border: 1px solid gray; zoom:75%;">

6. The user input can be accessed as follows:
    * Form component values are accessed from the Context Object using ```{{context.forms.form_name.component_name}}```
    * In the case of the sub-dialog, the variables used in the post-assignment settings as ```{{context.<variable_name>}}```
7. You can continue with the Dialog Task as per your business needs. For example, you can use the Form Component values as input to a **Service Node** to update the data or use the **Script Node** to process it further. If you are using the conversation experience too, remember to connect the auto-generated sub-dialog to the process flow.

### Invocation from Panels

Digital Forms are rendered in Digital Views by configuring Widgets & Panels. <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/digital-skills/digital-views/" target="_blank">Learn more</a>.

To invoke a form using Widgets and Panels, follow the below steps:

1. Create a widget to invoke the Digital Form from **Build -> Digital Skills -> Digital Views** option.
2. Enter the name.
3. Select _Digital Forms_ as the **Source.**
4. **Add a Form** by selecting it from the drop-down list.
5. Select the **Dialog to Invoke on Submit** from the drop-down list.
6. Click **Save**.

   <img src="../../images/invoke-form-in-widget.png" alt="invoke form in widget" title="invoke form in widget" style="border: 1px solid gray; zoom:75%;">

7. **Add the Widget** to an existing panel or create a new panel. 
You can add a form directly to a panel, it creates a widget by default.
8. You can **Test** the panel.
9. Follow the steps provided <a href="https://docsinternal-kore.github.io/docs/xo/app-settings/dev-tools/kore-ai-web-sdk-tutorial/" target="_blank">here</a> to publish and host the panels.

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>While a Digital Form is used to define multiple Widgets and also add to multiple panels, it will be associated with a single Dialog Task across all Widgets and Panels.</p></div>

## The User Experience
When the end-user initiates the dialog and reaches the node connecting to the Form node, the following events take place. Depending upon the experience selected at design time and the channel of invocation, the flow is the following:

### Form Experience
A **link to the form** is presented to the user. Note that for a synchronous WebHook channel, instead of a link the complete form definition is sent <a href="https://docsinternal-kore.github.io/docs/xo/channels/add-webhook-channel/" target="_blank">here</a>.

<img src="../../images/UIForms-linkmessage.png" alt="link to form message" title="link to form message" style="border: 1px solid gray; zoom:75%;">

Clicking the link opens the form in either full-screen or inline mode, based on the selection. Please note the following details about the link:

* The link is active only for a certain duration of time, it becomes inactive after that.
* Even within the active period, it can be used only a limited number of times.

End-users can fill in the values for the components/fields.

<img src="../../images/test-preview-fill-form.png" alt="test preview" title="test preview" style="border: 1px solid gray; zoom:75%;">

Every form comes with a default **Submit** button. This validates the form entries, prompts for any missing values. 

<img src="../../images/validation-form.png" alt="form validation" title="form validation" style="border: 1px solid gray; zoom:75%;">

Once the form is validated and submitted, the values are available in the context variable and accessed using the following code: `context.forms.<form_name>.<component_name>`

Here we are capturing the user entry and displaying it using a message node.

<img src="../../images/user-bot-form-experience.png" alt="form experience" title="form experience" style="border: 1px solid gray; zoom:75%;">

### Conversation Experience

From the channel of operation, the end-user is prompted to enter values for every component in the form.

The values are available in the sub-dialog context and are captured using Entity Post Assignment as mentioned above.

Following is the user experience in Conversation mode:

<img src="../../images/conversation-experience.png" alt="user experience" title="user experience" style="border: 1px solid gray; zoom:75%;">

### Exceptions
When exceptions are encountered during the dialog execution with a Form Node, they are handled as follows:
<table border="1.5">
  <tr bgcolor="#ECECEC">
   <td><strong>EXCEPTION</strong>
   </td>
   <td><strong>EXCEPTION BEHAVIOR</strong>
   </td>
  </tr>
  <tr>
   <td>The user tries to continue the conversation without opening the form link.
   </td>
   <td>The Virtual Assistant asks if the user wants to switch to a new task.
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td>The user tries to continue the conversation (in the chat window) without submitting the form responses.
   </td>
   <td>The Virtual Assistant asks if the user wants to switch to a new task.
   </td>
  </tr>
  <tr>
   <td>The user closes the form or browser without submitting responses.
   </td>
   <td>If the bot is configured to cancel the ongoing task, the form displays a warning message that the task will be canceled. If the user accepts, the form will be closed, and a message is displayed saying that the previous task is canceled.
<p>
Otherwise, the ongoing task goes on, and based on the configuration, the user is taken to the next step of the task.
   </td>
  </tr>
   <tr bgcolor="#FAFAFA">
   <td>The user tries to relaunch the form while the form is already open.
   </td>
   <td>The form link will not open the form and a message will be displayed saying that the form link is no longer valid.
   </td>
  </tr>
  <tr>
   <td>The user tries to relaunch the form after moving ahead in the conversation.
   </td>
   <td>The form link will not open the form and a message will be displayed saying that the form link is no longer valid.
   </td>
  </tr>
</table>

### Panel Flow

Users can access the form using **Panels & Widgets**. The experience is the same as for the Process Flow with Form experience.

Once the form is validated and submitted, the values are available in the context variable and accessed using the following code: context.forms.<form_name>.<component_name>

## **Manage VAs with Digital Forms**
### Publish

The publishing flow for a VA with Digital Forms has the following special cases:

As with any assistant, the Digital Forms exist in the following states:

* **_In-development_** when a form is created.
* **_Awaiting approval_** when a form is submitted to Publish and the request is waiting for the admin to take action.
* **_Rejected_** when the Publish request is rejected by the admin.
* **_Published_** In the XO Platform, the status of a Digital Form remains In Development even after publishing.

   <img src="../../images/publish-status.png" alt="publish status" title="publish status" style="border: 1px solid gray; zoom:75%;">

   On publishing the form, you can see the form listed under **Publish Status → View Publishing Summary**, but the status on the Digital Forms main page remains as _In Development_.

   <img src="../../images/form-status.png" alt="form status" title="form status" style="border: 1px solid gray; zoom:75%;">

   The _In Development_ and _Published_ versions of the VA can be viewed by toggling between the respective statuses in the top search-bar.

   <img src="../../images/va-status-search.png" alt="va status search" title="va status search" style="border: 1px solid gray; zoom:75%;">
 

   <div class="admonition note">
   <p class="admonition-title">Note</p>
   <p>If any edits are done to the Digital Form while it is In Development, the changes would be reflected in the Published version as soon as you publish the form.</p></div>

* **_Suspended_** when a published form is suspended by the admin.

### Pre-publishing Validations

The following validations are performed before a Publish request is processed:

A Dialog Task that contains a Digital Form can be published only if:

* The corresponding Digital Form is already published, or
* The corresponding Digital Form is also selected for publishing.

A Digital Form that is configured to trigger a Dialog Task is published only if:

* The corresponding Dialog Task is already published, or
* The corresponding Dialog Task is selected for publishing.

While the dependencies are published together, chances are that all the dependencies might not be available at run-time, in such cases:

* If the Dialog Task is in a published state, but the Digital Form is not in a published state this triggers:
* The Task Failure Event and the corresponding behavior is invoked or
* A relevant Standard Response is displayed and
* Logged as Failed Task in Analytics.
    * Digital Form is in a published state, but the Dialog Task is not available then on Form submission, the end-user is presented with the Form’s Error Message.

### Import

Digital Forms are included in the full and incremental import of the assistant.

For Full Import:

* As with all other VA components, the full import replaces the entire Digital Forms and form details.

For Incremental Import:

* You can choose to include/exclude the Digital Forms in the import.
* This import fully replaces the Digital Forms that are common to the import file and the VA.
* Additional forms in the file are imported into the VA.
* Additional forms in the VA are retained.
* Post import, any invalid Digital Form integration details are disassociated with the corresponding forms.

### Export

The Bot Export option is available for Digital Forms with a status of *In Development* or *Published*.

* Digital Forms can be selected/deselected from the **Bot Export** page under the **Bot Tasks** category.
* Choose the option to _Include dependent dialogs_ to export Dialog Tasks that are integrated with the selected Digital Forms to define widgets. 
**_Note that this does not include the Sub-dialog Tasks generated using Digital Forms._**
* Complete information for each of the selected forms are available in the export file and this includes:
    * Fields
    * Field properties
    * Form integrations

# **Form Component Details**

### Components List

Following is a list of the available components.

**BASIC**

**Text Field** – used for single-line input.

<img src="../../images/text-field-input.png" alt="text field" title="text field" style="border: 1px solid gray; zoom:75%;">

**Text Area** – used for multi-line entry.

<img src="../../images/text-area.png" alt="text area" title="text area" style="border: 1px solid gray; zoom:75%;">

**Number** – used for numerical entries.

<img src="../../images/number-field.png" alt="number field" title="number field" style="border: 1px solid gray; zoom:75%;">

**Radio Button** – used as a selection option from a given list.

<img src="../../images/radio-button.png" alt="radio button" title="radio button" style="border: 1px solid gray; zoom:75%;">

**Dropdown** – Used as a selection option from a given list; can be multi-select.

<img src="../../images/dropdown-list.png" alt="dropdown list" title="dropdown list" style="border: 1px solid gray; zoom:75%;">

**Checkbox** – Used for multi-select option from a given list.

<img src="../../images/checkbox.png" alt="checkbox" title="checkbox" style="border: 1px solid gray; zoom:75%;">

**Date** – Used for date entries, gives a date picker for the user to choose the date.

<img src="../../images/date-calendar.png" alt="date" title="date" style="border: 1px solid gray; zoom:75%;">

**Date & Time** – Used for date & time entries. The system displays a date and time picker for the user to choose the date and time.
Use the **Date component** and set the <em>Time option</em> to <em>yes</em>; choose from <em>12</em> or <em>24-hour</em> format.

<img src="../../images/date-time.png" alt="date and time" title="date and time" style="border: 1px solid gray; zoom:75%;">

**Phone Number** – Used for phone number entries, allows the user to choose the country code.

<img src="../../images/phone-number.png" alt="phone number" title="phone number" style="border: 1px solid gray; zoom:75%;">

**Email** – Used for email address entries, validates for <em>xxx@uuu.com</em> format.

<img src="../../images/email-field.png" alt="email" title="email" style="border: 1px solid gray; zoom:75%;">

**Toggle** – Used for switching between two values, ideal for yes/no type of inputs.

<img src="../../images/toggle-field.png" alt="toggle" title="toggle" style="border: 1px solid gray; zoom:75%;">

**Address** – Used for address entries.

<img src="../../images/address-field.png" alt="address" title="address" style="border: 1px solid gray; zoom:75%;">

**URL** – Used for web URL entries, validates for <em>xxx.com</em> format.

<img src="../../images/url-field.png" alt="url" title="url" style="border: 1px solid gray; zoom:75%;">

**Range Slider** – Value selection between specified min and max values; can be represented as a percentage.

<img src="../../images/range-slider.png" alt="range slider" title="range slider" style="border: 1px solid gray; zoom:75%;">

**Password** - Used to display passwords in their masked form ```*****```

**ADVANCED**

**Button** – Used as a clickable component to submit reset, or open an external URL the form. Choose from <em>Primary</em>, <em>Secondary</em>, <em>Tertiary</em>, <em>Ghost,</em> or <em>Danger</em>.

<img src="../../images/button-field.png" alt="button" title="button" style="border: 1px solid gray; zoom:75%;">

**Label** – Used to display a static text box, no action required from the user.

<img src="../../images/label-field.png" alt="label" title="label" style="border: 1px solid gray; zoom:75%;">

**Protip** – Used to mark important information for the end-user, no user action required.

<img src="../../images/protip-field.png" alt="protip" title="protip" style="border: 1px solid gray; zoom:75%;">

**Note** - Used to mark information for the end-user, no user action required.

<img src="../../images/note-field.png" alt="note" title="note" style="border: 1px solid gray; zoom:75%;">

### Component Properties

The following are the properties that can be set for each of the components.

<div class="admonition note">
<p class="admonition-title">Note</p>
<p> Not all the properties are valid for all the components, refer to the <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/digital-skills/digital-forms/#component-properties">Property Matrix</a> for the mapping.</p>
</div>

<table border="1.5">
  <tr bgcolor="#ECECEC">
   <td><strong>PROPERTY</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Display Name</strong>
   </td>
   <td>This is the text which appears against the component for the end-users.
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td><strong>Name</strong>
   </td>
   <td>This is the reference name that can be used for referencing the component in the other components of the form and form level operations
   </td>
  </tr>
  <tr>
   <td><strong>Description</strong>
   </td>
   <td>Help information about a field to be displayed to the end-user.
   </td>
  </tr>
   <tr bgcolor="#FAFAFA">
   <td><strong>Placeholder Text</strong>
   </td>
   <td>A prompt message for the end-user
   </td>
  </tr>
  <tr>
   <td><strong>Button Style</strong>
   </td>
   <td>For button component, can be:
<ul>

<li>Primary,

<li>Secondary,

<li>Tertiary,

<li>Ghost, or

<li>Danger
</li>
</ul>
   </td>
  </tr>
   <tr bgcolor="#FAFAFA">
   <td><strong>Button Action</strong>
   </td>
   <td>For button component, can be:
<ul>

<li>Submit,

<li>Reset, or

<li>Go to URL – in this case, you need to enter a URL in the corresponding field.
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td><strong>Read Only</strong>
   </td>
   <td>To mark the component value is not changeable
   </td>
  </tr>
   <tr bgcolor="#FAFAFA">
   <td><strong>Required</strong>
   </td>
   <td>To define whether input for this field is necessary or optional for the end-user entry.
   </td>
  </tr>
  <tr>
   <td><strong>Tool-tip</strong>
   </td>
   <td>Additional information about a field to be shown on demand to the end-user. Has three entries:
<ul>

<li>Tip Text – text message for the additional information about the component

<li>Tool-tip Type – whether the tip appears on hover or click

<li>Tool-tip Position – where the tooltip should be displayed
</li>
</ul>
   </td>
  </tr>
   <tr bgcolor="#FAFAFA">
   <td><strong>Date Format</strong>
   </td>
   <td>Time format to be presented to the end-user can be
<ul>

<li>mm/dd/yyyy – default

<li>dd/mm/yyyy

<li>yyyy/mm/dd

<li>yyyy/dd/mm
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td><strong>Time</strong>
   </td>
   <td>To enable the end-user to enter Time along with Date
   </td>
  </tr>
   <tr bgcolor="#FAFAFA">
   <td><strong>Time Format</strong>
<p>
Used in conjunction with the above Time property
   </td>
   <td>Time format to be presented to the end-user can be 12 hrs or 24 hrs
   </td>
  </tr>
  <tr>
   <td><strong>Default Country Code</strong>
   </td>
   <td>Choose the desired default country code that should be shown to the end-user. Default is United States +1
   </td>
  </tr>
   <tr bgcolor="#FAFAFA">
   <td><strong>Secure Field Data</strong>
   </td>
   <td>To Secure the user information collected by this field.
   </td>
  </tr>
  <tr>
   <td><strong>Masking Type</strong>
<p>
Available only when Secure Field Data is enabled
   </td>
   <td>Choose how to display the redacted data in the Bot Context, Debug Logs, Service Calls, Agent Transfer and the Bot Kit. Following actions are available:
<ul>

<li>Redaction – The platform will replace the user input with a unique random system-generated alphanumeric value. This is the default setting when the Secure Field Data is enabled

<li>Replacement – The platform will replace the user input with a static value or reference to a context object as entered in the replacement value field.

<li>Mask with Character – The platform will replace the first few and last few characters of the user input with symbols. You can specify the number and position of characters to mask, symbol for masking (+ or #).
</li>
</ul>
   </td>
  </tr>
   <tr bgcolor="#FAFAFA">
   <td><strong>Mask Input</strong>
<p>
Available only when Secure Field Data is enabled
   </td>
   <td>Enable this option to mask the end-user’s input for this field in the chat window.
   </td>
  </tr>
  <tr>
   <td><strong>Checkbox Layout</strong>
   </td>
   <td>Choose the number of columns to present the checkbox values in the grid view. You can select a minimum of 1 and a maximum of 4 columns, with 4 columns being the default selection.
   </td>
  </tr>
   <tr bgcolor="#ECECEC">
   <td colspan="2" ><strong>Data Settings</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Default Value</strong>
   </td>
   <td>In case the component needs to be pre-populated with a default value
   </td>
  </tr>
   <tr bgcolor="#FAFAFA">
   <td><strong>Values</strong>
   </td>
   <td>For Radio Button, Dropdown and Checkbox, add values to be given for selection by the end-user. You can mark one value as a default value
   </td>
  </tr>
  <tr>
   <td><strong>Multi-Select</strong>
   </td>
   <td>For Dropdown, if the user can select multiple values.
   </td>
  </tr>
   <tr bgcolor="#ECECEC">
   <td colspan="2" ><strong>Validation Settings</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Default Error Message</strong>
   </td>
   <td>To be displayed in case user entry fails validation
   </td>
  </tr>
   <tr bgcolor="#FAFAFA">
   <td><strong>Validate</strong>
   </td>
   <td>To define when the validations defined for a field are to be checked. Options are:
<ul>

<li>On blur – Validations would be done when the end-user moves away from the component

<li>On change – Validations would be done when the component value is changed
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td><strong>Validation Rule</strong>
   </td>
   <td>Rules in the following format can be added
<ul>

<li>Operator – choose from the list

<li>Comparison Type – set to either value or field/component or value type

<li>Comparison  With – the value or component name or type, as per the above selection

<p>
Multiple rules added to an existing rule would be taken as an AND condition, whereas a new rule would be an OR condition. You can add multiple Simple rules or a single Advanced rule by toggling between Simple and Advanced Modes
</li>
</ul>
   </td>
  </tr>
   <tr bgcolor="#FAFAFA">
   <td><strong>Custom Error Message</strong>
   </td>
   <td>This would be displayed when a particular validation fails
   </td>
  </tr>
   <tr bgcolor="#ECECEC">
   <td colspan="2" ><strong>Visibility Settings</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Is Visible</strong>
   </td>
   <td>Whether the given component is visible to the end-user or not
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td><strong>Visibility Rules</strong>
   </td>
   <td>You can define conditions when a particular component would be visible or hidden
<ul>

<li>Hide or Visible

<li>Add Visibility Rules by defining the following: 
<ul>
 
<li>Component/Field which determines this component behavior- choose from the list
 
<li>Operator – choose from the list
 
<li>Comparison Type – set to either value or field/component or value type
 
<li>Comparison  With – the value or component name or type, as per the above selection

<p>
Multiple rules added to an existing rule would be taken as an AND condition, whereas a new rule would be an OR condition. You can add multiple Simple rules or a single Advanced rule by toggling between Simple and Advanced Modes
</li> 
</ul>
</li> 
</ul>
   </td>
  </tr>
   <tr bgcolor="#ECECEC">
   <td colspan="2" ><strong>Auto Populate</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Auto Population</strong>
   </td>
   <td>Whether the given component should be auto-populated or not
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td><strong>Auto population rules</strong>
   </td>
   <td>
<ul>

<li>Field or Value from which to auto-populate

<li>Field name or the actual value based on the above selection
</li>
</ul>
   </td>
  </tr>
</table>

### Component Mappings

### Properties

#### Basic

<table border="1.5">
  <tr bgcolor="#ECECEC">
   <td><strong>PROPERTY</strong>
   </td>
   <td><strong>TEXT FIELD</strong>
   </td>
   <td><strong>TEXT AREA</strong>
   </td>
   <td><strong>NUMBER</strong>
   </td>
   <td><strong>RADIO BUTTON</strong>
   </td>
   <td><strong>CHECK</strong>
<p>
<strong>BOX</strong>
   </td>
   <td><strong>DROP</strong>
<p>
<strong>DOWN</strong>
   </td>
   <td><strong>DATE</strong>
   </td>
   <td><strong>PHONE NUMBER</strong>
   </td>
   <td><strong>EMAIL</strong>
   </td>
   <td><strong>ADDRESS</strong>
   </td>
   <td><strong>URL</strong>
   </td>
   <td><strong>TOGGLE</strong>
   </td>
   <td><strong>RANGE SLIDER</strong>
   </td>
  </tr>
   <tr bgcolor="#ECECEC">
   <td colspan="12" ><strong>General Settings</strong>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td><strong>Display Name</strong>
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td><strong>Name</strong>
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td><strong>Description</strong>
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td><strong>Placeholder Text</strong>
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td><strong>Read Only</strong>
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td><strong>Required</strong>
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
  </tr>
   <tr bgcolor="#ECECEC">
   <td colspan="12" ><strong>Tool-tip</strong>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td><strong>Tip Text</strong>
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td><strong>Tool-tip Type</strong>
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td><strong>Tool-tip Position</strong>
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td><strong>Date Format</strong>
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td><strong>Time &</strong>
<p>
<strong>Time Format</strong>
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td><strong>Default Country Code</strong>
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td><strong>Checkbox Layout</strong>
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td><strong>Secure Data</strong>
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td><strong>Masking Type</strong>
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td><strong>Mask Input</strong>
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
   <tr bgcolor="#ECECEC">
   <td colspan="12" ><strong>Data Settings</strong>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td><strong>Data Source</strong>
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td><strong>Default Value</strong>
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td><strong>Multiselect</strong>
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr bgcolor="#ECECEC">
   <td colspan="12" ><strong>Auto Fill</strong>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td><strong>Auto Populate</strong>
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td><strong>Auto Populate Settings</strong>
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
  </tr>
  <tr bgcolor="#ECECEC">
   <td colspan="12" ><strong>Visibility Settings</strong>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td><strong>Is Visible</strong>
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td><strong>Visibility Settings</strong>
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
  </tr>
  <tr bgcolor="#ECECEC">
   <td colspan="12" ><strong>Validations</strong>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td><strong>Default Error Message</strong>
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td><strong>Validate</strong>
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td><strong>Equals To</strong>
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>TBD
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td><strong>Not equal to</strong>
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td><strong>Contains</strong>
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td><strong>Does not contain</strong>
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td><strong>Regex</strong>
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td><strong>Max Length</strong>
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td><strong>Min Length</strong>
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td><strong>Part of</strong>
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td><strong>Not part of</strong>
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td><strong>Greater than</strong>
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td><strong>Less than</strong>
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>Yes
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td><strong>Greater than or equal to</strong>
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td><strong>Less than or equal to</strong>
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>Yes
   </td>
  </tr>
</table>

### Advanced

<table border="1.5">
  <tr bgcolor="#ECECEC">
   <td><strong>PROPERTY</strong>
   </td>
   <td><strong>BUTTON</strong>
   </td>
   <td><strong>RICHTEXT</strong>
   </td>
   <td><strong>PRO-TIP</strong></td>
   </tr>
  <tr bgcolor="#ECECEC">
   <td colspan="5" ><strong>General Settings</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Display Name</strong>
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td><strong>Name</strong>
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td><strong>Description</strong>
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>Yes
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td><strong>Placeholder Text</strong>
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td><strong>Tool-tip</strong>
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td><strong>Error Message</strong>
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td><strong>Required</strong>
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td><strong>Validate</strong>
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td><strong>Read Only</strong>
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td><strong>Action Type</strong> (Submit, Reset, Clear)
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr bgcolor="#ECECEC">
   <td colspan="5" ><strong>Data Settings</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Data Source</strong>
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td><strong>Default Value</strong>
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr bgcolor="#ECECEC">
   <td colspan="5" ><strong>Auto Fill</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Auto-Populate</strong>
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td><strong>Auto-Populate Settings</strong>
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr bgcolor="#ECECEC">
   <td colspan="5" ><strong>Visibility Settings</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Is Visible</strong>
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td><strong>Visibility Settings</strong>
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
  </tr>
</table>

### Dialog Node

The following mapping gives the type of entities included in the sub-dialog when it is auto-generated from a Digital Form.

<table border="1.5">
  <tr bgcolor="#ECECEC">
   <td><strong>FORM COMPONENT PROPERTY</strong>
   </td>
   <td><strong>DIALOG TASK NODE PROPERTY</strong>
   </td>
  </tr>
  <tr>
   <td>Name
   </td>
   <td>Name
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td>Display Name
   </td>
   <td>Display Name
   </td>
  </tr>
  <tr>
   <td>Placeholder Text
   </td>
   <td>Entity Prompt
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td>Error Message
   </td>
   <td>Error Prompt
   </td>
  </tr>
</table>


<table border="1.5">
  <tr bgcolor="#ECECEC">
   <td><strong>DIGITAL FORM COMPONENT TYPE</strong>
   </td>
   <td><strong>DIALOG TASK</strong>
<p>
<strong>NODE TYPE</strong>
   </td>
  </tr>
  <tr>
   <td>Text Field
   </td>
   <td>String
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td>Text Area
   </td>
   <td>Description
   </td>
  </tr>
  <tr>
   <td>Number
   </td>
   <td>Number
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td>Radio Button
   </td>
   <td>LoI (Enum) with each of the options in the radio button group copied as list items
   </td>
  </tr>
  <tr>
   <td>Dropdown
   </td>
   <td>LoI (Enum) with each of the values in the dropdown list copied as list items.
<p>
Multi-select would be enabled based on the ‘is multi-select’ option of the Form Component
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td>Checkbox
   </td>
   <td>LoI (Enum) with each of the options in the checkbox group copied as list items
<p>
Multi-select is enabled by default
   </td>
  </tr>
  <tr>
   <td>Date
   </td>
   <td>Date
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td>Phone Number
   </td>
   <td>Phone Number
   </td>
  </tr>
  <tr>
   <td>Email
   </td>
   <td>Email
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td>Address
   </td>
   <td>Address
   </td>
  </tr>
  <tr>
   <td>URL
   </td>
   <td>URL
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td>Toggle
   </td>
   <td>LoI (Enum) with each of the options in the toggle copied as list items
   </td>
  </tr>
  <tr bgcolor="#ECECEC">
   <td colspan="2" ><strong>Advanced</strong>
   </td>
  </tr>
  <tr>
   <td>Button
   </td>
   <td>Not Applicable
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td>Label
   </td>
   <td>Not Applicable
   </td>
  </tr>
  <tr>
   <td>Protip
   </td>
   <td>Not Applicable
   </td>
  </tr>
  <<tr bgcolor="#FAFAFA">
   <td>Note
   </td>
   <td>Not Applicable
   </td>
  </tr>
</table>

### Context Object

The following mapping gives the context object to capture the component value along with a sample context object.

<table border="1.5">
  <tr bgcolor="#ECECEC">
   <td><strong>COMPONENT TYPE</strong>
   </td>
   <td><strong>CONTEXT OBJECT</strong>
   </td>
  </tr>
  <tr>
   <td>Text Field
   </td>
   <td><code>context.forms.<form_name>.<component_name></code>
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td>Text Area
   </td>
   <td><code>context.forms.<form_name>.<component_name></code>
   </td>
  </tr>
  <tr>
   <td>Number
   </td>
   <td><code>context.forms.<form_name>.<component_name></code>
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td>Radio Button
   </td>
   <td><code>context.forms.<form_name>.<component_name></code>
   </td>
  </tr>
  <tr>
   <td>Dropdown
   </td>
   <td><code>context.forms.<form_name>.<component_name>[<index>]</code>
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td>Checkbox
   </td>
   <td><code>context.forms.<form_name>.<component_name>[<index>]</code>
   </td>
  </tr>
  <tr>
   <td>Date
   </td>
   <td><code>context.forms.<form_name>.<component_name></code>
<p>
In mm/dd/yyyy format
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td>Date & Time
   </td>
   <td><code>context.forms.<form_name>.<component_name></code>
<p>
In mm/dd/yyyy hh:mm AM/PM format
   </td>
  </tr>
  <tr>
   <td>Phone Number
   </td>
   <td><code>context.forms.<form_name>.<component_name></code>
<p>
prefixed with the area code of the country selected by the user
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td>Email
   </td>
   <td><code>context.forms.<form_name>.<component_name></code>
   </td>
  </tr>
  <tr>
   <td>Address
   </td>
   <td><code>context.forms.<form_name>.<component_name></code>
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td>URL
   </td>
   <td><code>context.forms.<form_name>.<component_name></code>
   </td>
  </tr>
  <tr>
   <td>Toggle
   </td>
   <td><code>context.forms.<form_name>.<component_name></code>
<p>
Yes/No values
   </td>
  </tr>
  <tr bgcolor="#FAFAFA">
   <td>Range Slider
   </td>
   <td><code>context.forms.<form_name>.<component_name></code>
   </td>
  </tr>
</table>

**SAMPLE CONTEXT OBJECT**

```js
"forms": {
    "basicpropertieslist": {
      "TextField": "text",
      "Textarea": "text area",
      "Number": 123,
      "Radio": "Male",
      "Dropbox": [
        "UnderGrad",
        "Other"
      ],
      "Checkbox": [
        "Education",
        "Technology"
      ],
      "Date": "07/08/2020",
      "Date&Time": "07/08/2020 19:00 PM",
      "PhoneNumber": "+919999999999",
      "Email": "test@gmail.com",
      "toggle": "Yes",
      "Adress": "Address",
      "Url": "test.com",
      "rangeSlider": 26.1
    }
  }
```

### Prefill Form

You can specify data that can be used to pre-populate the form fields. Platform will check for the availability of any form prefill information before lauching the form. If any information is available, then the corresponding fields in the form are pre-populated before presenting the form to the user. The values can be static or from a context object.

You can specify pre-fill form data using the following context object: `context.prefillForms`.

You can use the following in Javascript to populate the above-mentioned context object:

```js
context.prefillForms = {
  <form_name>: {
     fields: {
        <form_field1>: "<value1>",
        <form_field2>: <context.session.....>,
        <form_array_field2>: [
             <array_value1&gt,
             <array_value2&gt,
        ],
     },
  },
};
```

## **Limitations**

* Digital Forms will not work as expected on the following channels:
    * Amazon Alexa
    * Cisco Jabber
    * Google Assistant
    * IVR Voice
    * Twilio Voice
* You are advised to choose the Conversation Experience for these channels.
* Digital Forms created in the parent bot are not inherited into **Smart Bots**.
* The Digital Forms functionality is not applicable for **Universal Bots**.