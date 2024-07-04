# Travel VA: Configure Digital Forms

In this document, we will explore a scenario in a Travel Planning assistant, through which a user can book a flight. We will see how Digital Forms can be used to gather all the required information from the user, then make the booking based on that information.

For details on what Digital Forms are and how they are implemented in the XO Platform, click <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/digital-skills/digital-forms/" target="_blank">here</a>.

## Problem Statement

Consider a Travel Planning Assistant helping a user book a flight. There are several information categories that the VA should collect from the user in order to complete this task. Rather than asking the user for each piece of information one by one, the VA can ask the user just once to complete a form that collects all the necessary data. Once the form is successfully submitted, the VA can pull the data and process the booking.

## Prerequisites

To understand these configurations, you need to know at least the basics of the following XO Platform features:

* <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-travel-planning-assistant/create-a-travel-virtual-assistant/" target="_blank">Building a Virtual Assistant</a>: This is because your assistant needs to have been already built when you begin working on your forms.
* <a href="" target="_blank">Working with Digital Forms</a>.

## Configurations

When a user makes a booking, the following needs to happen within your assistant

1. A Digital Form needs to be displayed in order to gather input from the user;
2. A Dialog Task needs to:
    * trigger the above Digital Form; and
    * capture the user-entered booking information.

### Digital Form Configuration

Moving forward, we will be creating a form that gathers some of the necessary information in order to allow the user to book a flight:

* Trip Type – Roundtrip or One Way.
* Departure Airport (From);
* Arrival Airport (To);
* Departure Date;
* Return Date  
* Fare – default selection set to _Premium Economy_;
* Pro Tip – showcases a promotional offer for _Premium Economy_ seats and only displays when the selected Fare is _Economy._
* Passenger First Name and Last Name.

#### Form Creation

1. From the XO Platform, open the **Travel Planning** assistant.
2. Select the **Build** tab from the top menu.
3. From the left navigation menu, select **Digital Skills > Digital Forms**.
4. Click **New Form** and enter the following:
    * **Name** – name to the form, say _BookingForm_
    * **Display Name** for the form, say _Booking Form_
    * **Description** of the form.
    * **Logo and style** for the form header
    * **Description** toggle set to on/off depending on whether you want to display the form description in the header
5. **Save & Proceed** to the next step.
<img src="../images/form-creation-details.png" alt="problem statement weather alert" title="problem statement weather alert" style="border: 1px solid gray; zoom:75%;">

#### The Form Editor

The Form Editor opens with components on the left, and a blank form. You can drag and drop components to the form as per your requirement. 

By default, a **Submit button** is added to the form. This would trigger the submit event which would capture the user input and save in the context object. 

As soon as you drag and drop a component, its property settings panel will be displayed. There are several settings available for each component and you can set them up according to your own requirements. 

Some of these settings include: making a field mandatory, adding tooltips, securing field data, and more. This article takes you through the basic ones.

1. Start by adding a selection field for the **Trip Type**. Drag and drop a **Toggle** component onto the form and set the following values:
    * **Display Name** say _Trip Type._
    * **Name** used for internal reference, say _TripType_.
    * **Description** of the field.
    * **Placeholder** value to be displayed in the field when blank, say, _Please select whether you are booking a roundtrip._
    * **Value** used to display functionality when the toggle is either on or off. When the toggle is _enabled_, set the value to _Roundtrip_. For the _disabled_ state of the toggle, set the value to _One Way_.
        <img src="../images/toggle-component.png" alt="toggle component" title="ptoggle component" style="border: 1px solid gray; zoom:75%;">

2. Drag and Drop a **Dropdown** component onto the form, for the **From** field.
    * **Display Name** say _From._
    * **Name** used for internal reference, say _From._
    * **Description** of the field.
    * **Placeholder** value to be displayed in the field when blank, say, _Select the trip type_.
    * Scroll and locate **Data Settings,** then click **Add Values** to enter the values. You can add a list of airports from which flights are departing.
        <img src="../images/data-settings-form-editor.png" alt="data settings form editor" title="data settings form editor" style="border: 1px solid gray; zoom:75%;">

3. Repeat **Step 2** to add the **To** field, for the arrival airport.
4. Drag and drop a **Date** field onto the form, to add the **Departure Date**. 
    * **Display Name** say _Departure Date_.
    * **Name** used for internal reference, say _DepartureDate_.
    * **Description** of the field.
    * **Placeholder** value to be displayed in the field when blank, say, _Please select the departure date_.
        <img src="../images/departure-date-settings.png" alt="departure date" title="departure date" style="border: 1px solid gray; zoom:75%;">

    * **Default Value** (Optional), you can, for example, mention the Current Date; please note that you can clear (using the ‘x’ option on the field) as well as edit this value at run-time, if the field is not read-only..

5. Add a second Date field, for the Return Date and repeat **Step 4**. 
6. Drag and drop a Radio Button component onto the form for the **Fare** field, and set it up as follows:
    * **Display Name**, say Fare.
    * **Name** used for internal reference, say Fare.
    * **Description** of the field.
    * **Placeholder** value to be displayed in the field when blank, say, Please select the Fare Category.
    * Scroll and locate **Data Settings**, then click **Add Values** to enter the values – Economy, Premium Economy and First Class. You can mark one value, e.g. Premium Economy, as default. This would be selected by default at the time of execution.
    <img src="../images/fare-category.png" alt="fare category" title="fare category" style="border: 1px solid gray; zoom:75%;">

7. Add a **Pro Tip** component. This field will only be visible if the user selects _Economy_ as the _Fare_.
    * **Display Name** say _Pro Tip_
    * **Name** used for internal reference, say _Protip._
    * **Description** of the field, say _Book a Premium Economy seat and get a free hot meal onboard_.
    * **Placeholder** value to be displayed in the field when blank. 
    * Scroll down to **Visibility Settings** and click **Add Visibility Rule**.
    * Now, set the rule by building the following logical expression:_Fare <code>Equal to Value</code> Economy. 
</em>This rule ensures that the <em>Pro Tip </em>will only be visible when the user selects the <em>Economy </em>option under the Fare field.
    <img src="../images/add-visibility-rule.png" alt="add visibility rule" title="add visibility rule" style="border: 1px solid gray; zoom:75%;">

8. Drag and drop a <strong>Text Field</strong> component onto the form, to add the <strong>Passenger First Name</strong> field.
    * <strong>Display Name, </strong>say <em>Passenger First Name.</em>
    * <strong>Name</strong> used for internal reference, say <em>PassengerFirstName.</em>
    * <strong>Description</strong> of the field.
    * <strong>Placeholder</strong> value to be displayed in the field when blank, say, <em>Enter the name of the account holder</em>.
    <img src="../images/add-passenger-first-name.png" alt="add first name" title="add first name" style="border: 1px solid gray; zoom:75%;">

9. Repeat <strong>Step 7</strong> to add the <strong>Passenger Last Name</strong> field. 
10. Use any additional fields that are required for your process. For example, a <em>Select Flight</em> field, as a Radio Button, further fields for flight documents, (as e.g.: Text, Text Area, etc.) onboard meal options (as e.g.: Checkboxes or Radio Buttons), etc.
11. You can select how the VA handles the conversation when the user cancels the form. You can choose from two options:
    * Discard the task and trigger End of Task Event: This is the default option.

        <img src="../images/end-of-task.png" alt="end of task" title="end of task" style="border: 1px solid gray; zoom:75%;">
 
    * Continue with this task and transition to this node: In the <strong>Select Node</strong> drop-down list, you can select any node present in the current dialog task.

        <img src="../images/select-node-dropdown-list.png" alt="select node" title="select node" style="border: 1px solid gray; zoom:75%;">

!!! note

    The target node has to be in the same dialog, you cannot make a jump to a target node outside the current dialog. The list of target nodes only shows the local nodes. If the target node is not present during runtime, the platform presents the error Error in continuing the conversation, and the task should get discarded.

Your form is ready! You can toggle between <strong>Desktop View</strong> and <strong>Mobile View</strong> to see how it looks on each device type.
<img src="../images/desktop-mobile-view.png" alt="desktop mobile view" title="desktop mobile view" style="border: 1px solid gray; zoom:75%;">

Use the **Test** button to see a preview. Below is a demo of the user experience with the form we have built:

<img src="../images/use-test-button.gif" alt="use test button" title="use test button" style="border: 1px solid gray; zoom:75%;">

### Dialog Task Configuration

We will be creating a dialog task and adding a form node to trigger the Digital Form created in the above step and use a service node to make a service call to complete the booking process. Please see <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/dialogs/using-the-dialog-builder-tool/" target="_blank">Using the Dialog Builder</a> for details on working with Dialog Tasks. 

#### Create a Dialog Task

1. Select the **Build** tab from the top menu
2. From the left navigation menu, select **Conversational Skills > Dialog Tasks.**
3. Click **Create Dialog** to create a new Task
    * Enter the **Intent Name**, say, _Book a Flight_
    * **Create & Proceed** to open the **dialog builder** page.
    <img src="../images/create-dialog-task.png" alt="create dialog task" title="create dialog task" style="border: 1px solid gray; zoom:75%;">

#### Add a Digital Form Node

1. Click the **+** next to the intent node and select the **Digital Form** node.
2. From the dropdown list select the _Booking Form_ we created earlier.
3. You will be prompted to select the **Form Experience.** The XO Platform allows you to gather user input both from the form and through conversation based on the channel.
4. For this use case, let us select **Only Form UI** experience.
5. A Form Node would be added, you can customize the form name, etc.
6. We are changing the **Name** to _BookingForm_ and **Display Name** to _Booking Form_.

<img src="../images/booking-form.png" alt="booking form" title="booking form" style="border: 1px solid gray; zoom:75%;">

#### Add a Message Node

Next, we will see how to capture the values returned by the Form Node using a Script and a Message node..

1. Add a **Message Node** to the form node.
2. Set the **Name** to _FormMessage_ and **Display Name** to _Form Message_.
3. Click **Manage** under **Bot Responses** to open the message editor.
4. Select the **JavaScript** tab and enter the following code. This is a simple script that captures some of the data from within the context object, as submitted by the user into the Form, and displays it accordingly.

```js
var message; 
message = 'You have booked a '+context.forms.BookingForm.TripType+' flight in the name of '+context.forms. BookingForm.PassengerLastName; 
message = message + ' and opted for '+ context.forms. BookingForm.Fare; 
print(message); 
```

<img src="../images/javascript-code-block.png" alt="javascript code" title="javascript code" style="border: 1px solid gray; zoom:75%;">

<ol start="5"><li>Your dialog task is ready to use a digital form.</li></ol>
<img src="../images/dialog-task-digital-form.png" alt="dialog task" title="dialog task" style="border: 1px solid gray; zoom:75%;"> 

## Test the Assistant

**Talk to the bot** to trigger the above dialog. The form will be displayed, enter the values and click Submit, the message will be displayed.

You can use the context object as shown above in <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/dialogs/node-types/working-with-the-script-node/" target="_blank">Script</a> or <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/dialogs/node-types/working-with-the-service-node/" target="_blank">Service</a> nodes for further processing of the booking.

Click <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/design-digital-skills/add-data-into-data-tables-from-ui-forms/" target="_blank">here</a> to learn how to add this data into data tables.
<img src="../images/test-bot-configure-form.png" alt="test bot configure form" title="test bot configure form" style="border: 1px solid gray; zoom:75%;">



