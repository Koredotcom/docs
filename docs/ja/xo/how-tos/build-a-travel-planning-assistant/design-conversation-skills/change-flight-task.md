# Create a Change Flight Task

This document is part of the documentation related to creating a sample travel assistant. 

## Assistant Capabilities

The assistant we build will perform basic travel booking tasks, as follows:

* Check the status of a flight, based on the flight number provided by the user, as seen <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-travel-planning-assistant/create-a-travel-virtual-assistant/#create-a-dialog-task" target="_blank">here</a>.
* Update a flight booking, as discussed <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-travel-planning-assistant/design-conversation-skills/update-booking-task/" target="_blank">here</a>.
* Perform a flight change, based on the current flight and new flight preference provided by the user. as discussed in this present article.

### Add the Change Flight Dialog Task / Intent

* The Change Flight  task will prompt the user to enter their *Current* and *New Flight Numbers*.
* Next it would prompt for the Seat preference.
* It will then make a service call to update the booking appropriately.
* The message indicating success or failure is displayed before the end of the dialog.

To add this Dialog Task, follow the steps below:

1. Open the **Travel Planning Assistant**, with the two pre-configured tasks – *Check Flight Status* and *Update Booking*.
2. Navigate to the **Build >** **Conversational Skills** > **Dialog Task** page from the left menu.
3. Click **Create Dialog** from the top right. The **Create Dialog** screen will open.
4. Enter the following details:
    * **Intent Name** – Enter the Intent name, this is the phrase that triggers the dialog. The intent name should be simple and not more than 3-4 words. For example, _Change Flight_.
    * Under **More Options**, you can add a **description** and other dialog-related details. Let’s retain the default settings.
    * You can also include utterances to train this intent.
    * Select **Try Conversation Driven Dialog Builder** option.
5. Click **Proceed**.

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>For instructions related to the <b>Legacy Dialog Builder</b>, click <a href="https://docsinternal-kore.github.io/docs/xo/automation/natural-language/nlp-guidelines/" target="_blank">here</a>.</p></div>

<img src="../images/add-dialog-task.png" alt="add dialog task" title="add dialog task" style="border: 1px solid gray; zoom:75%;"> 

<ol start="6"><li>Close the <b>User Intent</b> Property Panel.</li></ol>

### Add Entity nodes

An Entity Node is typically used to gather information from the user.

Here we will be using it to capture the user input for the Current Flight (change from) and New Flight (change to). 

### **Add an Entity Node to retrieve the Current Flight to change** with the following steps:

1. Click the **+** icon below the **User Intent** node.
2. Select the **Entity** option.
3. Click the **+ New entity** icon in the **Property Panel**. Alternatively, click on the newly added entity node to open.
4. Enter the following details:
    * **Name**: _CurrentFlight_
    * **Display Name**: _Current Flight_
    * **Type**: _String_
    * **User Prompts:** Enter the text "*Enter the Current Flight that you want to change from*". 
    * Close the **CurrentFlight** Entity Property Panel.

 **Add an Entity Node to retrieve the New Flight to change** with the following steps:

1. Repeat the above steps to add another entity with the following details:
    * **Name**: _NewFlight_
    * **Display Name**: _New Flight_
    * **Type**: _String_
    * **User Prompts:** Enter the text "*Enter the New Flight that you want to change to*".
2. Close the **NewFlight** Entity Property Panel.

 **Add a Seat Selection Entity Node** with the following steps:

1. Repeat the above steps to add another entity with the following details:
    * **Name**: _Seat_
    * **Display Name**: _Seat_
    * **Type**: _List of items (Enumerated)_. We need to provide the list of values that the user can select.
        * Click the **Settings (gear)** icon that appears next to the field.
        * Opt for **Static List.**
        * Enter the following options under separate rows as the **Display name**– e.g.: _21A, 25C, 32F_ _Value_ and _Synonym_ columns will auto-populate, leave them as is.
        * Define the percentage of **Auto-correction** to be applied to match the user’s input to a value in the list.
2. Click **Save**.
<img src="../images/add-seat-selection-entity-node.png" alt="add seat selection entity node" title="add seat selection entity node" style="border: 1px solid gray; zoom:75%;"> 

3. Under **Display List of Values**, select _Yes, use channel specific standard formatting for default messages and show an available list of values to the end user._
4. **User Prompts**: Enter the text: "_Please select a seat_.

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>You can use Javascript in the User Prompt to display available seats. In this case you would need to set the Type  <code>String</code>. For the purpose of this use case, we have chosen to list fixed values, which is why we have set the Type to <code>List of Items</code>.</p></div>

<ol start="5"><li> Close the <b>Seat</b> Entity Property Panel.</li></ol>

## Add a Bot Action – Service Node

A **Service Node** allows you to make a backend API call. It is included in the **Bot Actions** node. Here the service node is used to call an API to update the provided booking based on the user’s input, with the new flight and the selected seat.

To add a **Bot Action – Service Node**, follow the steps below:

1. Click the **+** icon below the **Seat** Entity node.
2. Select **Bot Action**, click to open properties, name it _UpdateBooking_, and close the **Properties** window.
3. To add a Service Node, click the **+** icon next to the **Update Booking** Bot Action node to expand it.
4. Click the **+** icon within the **Bot Action** layout, and select **Service**.
5. Click **+ New Service**.
6. The **Property Panel** for the Service Node is displayed, if not click on the newly created entity node to open it.
7. Enter the following details:
    * **Name**: _UpdateBookingService_
    * **Display Name**: _Update Booking Service_
8. Under Request Definition: click **Define Request**.

Here is an example request to enter: 
`https://5c3c633d29429300143fe4d2.mockapi.io:{{context.entities.CurrentFlight}}./BookingDetails/{{context.entities.NewFlight}}./BookingDetails/{{context.entities.Seat}}`

## Add a Message Node

A **Message Node** is used to display a message from the VA to the user. Here we will be using the Message node to confirm the update to the user..

1. Click the **+** icon below the _UpdateBooking_ Bot Action node. 
2. Select **Message** and click **+ New message**. The **Property Panel** for the Message Node is displayed. If not click on the newly added dialog node to open.
3. Enter the following details:
    * **Name**: _FlightChangeConfirmation_
    * **Display Name**: _Flight Change Confirmation_
    * **Bot Responses**: <code>The flight {{context.entities.CurrentFlight}} has been changed to flight  {{context.entities.NewFlight}} seat {{context.entities.Seat}}</code></strong>
4. On the **Bot Response** Property Panel, open the connections tab by clicking the <strong>Connections</strong> icon.
5. Change the <strong>Default</strong> connection from <em>Not Connected</em> to <em>End of Dialog</em>.
6. Close the <strong>Property</strong> Panel.

The completed task might look similar to the image below:

<img src="../images/change-flight-task-completed.png" alt="change flight task completed" title="change flight task completed" style="border: 1px solid gray; zoom:75%;"> 

## Test the Assistant

To test the **Dialog** task, follow the steps below:

1. Use the **Talk to Bot** feature at the bottom right corner of the Platform.
2. Enter the utterance (intent name) “_Change Flight._”
3. Follow the instructions below to test:
    * Enter the Current Flight.
    * Enter the New Flight.
    * Select the Seat.
    * See the success message.
    
    <img src="../images/test-bot-change-flight.png" alt="test bot for change flight" title="test bot for change flight" style="border: 1px solid gray; zoom:75%;"> 