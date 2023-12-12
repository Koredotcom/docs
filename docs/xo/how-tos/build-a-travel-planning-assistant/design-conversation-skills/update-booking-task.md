# Create an Update Booking Task

This document is part of the documentation that shows you the steps in creating a sample Travel Planning Assistant. 

## Assistant Capabilities

The assistant we build will perform basic travel booking tasks, as follows:

* Check the status of a flight, based on the flight number provided by the user, as seen <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-travel-planning-assistant/create-a-travel-virtual-assistant/#create-a-dialog-task" target="_blank">here</a>.
* Update a flight booking, as discussed in <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-travel-planning-assistant/design-conversation-skills/update-booking-task/ target="_blank">this article</a>.
* Perform a flight change, based on the current flight and new flight preference provided by the user, as seen <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-travel-planning-assistant/design-conversation-skills/change-flight-task/" target="_blank">here</a>.

In this article, therefore, we will be configuring the assistant to update a booking, by configuring an Update Booking Intent. For the purpose of this use case, we will work with a Name update.

### Update Booking Dialog Task/Intent

* The Update booking task will prompt the user to enter the booking number corresponding to the booking that they want to update. 
* It would then prompt for the type of update – e.g. Name or Passport Number. 
* A service call will be made to fetch the details, and then another service call to update the booking.
* The success/failure message will be displayed.

To create an Update Booking Dialog Task/Intent:

1. Open the Travel Planning Assistant  with the Get Flight Status task already configured.
2. Navigate to **Build > Conversational Skills > Dialog Tasks**.
3. Click **Create Dialog** from the top right. The **Create Dialog** screen will open.
4. Enter the following details:
    * **Intent Name** – Enter the Intent name, this is the phrase that triggers the dialog. The intent name should be simple and not more than 3-4 words. For example, _Update Booking_.
    * You can add a **description** and under **More Options** other dialog-related details. Let’s retain the default settings without any changes.
    * You can also include utterances to train this intent.
    * Select **Try Conversation Driven Dialog Builder** option.
5. Click **Proceed**.

The Property Panel for User Intent will be displayed. We will retain the default properties.

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>For instructions related to the <b>Legacy Dialog Builder</b>, click <a href="https://docsinternal-kore.github.io/docs/xo/automation/natural-language/nlp-guidelines/" target="_blank">here</a>.</p></div>

<ol start="6"><li>Close the <b>User Intent</b> Property Panel.</li></ol>
<img src="../images/close-user-property-panel.png" alt="user property panel" title="user property panel" style="border: 1px solid gray; zoom:75%;"> 

### Add Entity Nodes (Booking Number & Update Type)

The Entity Node is typically used to gather information from the user.

Here we will be using it to capture the user input for Booking Number and type of update. 

**Add an Entity node that retrieves the Booking Number** with the following steps:

1. Click the **+** icon below the **User Intent** node.
2. Select the **Entity** option and click **+New Entity**.
3. The **Property Panel** for the Entity Node is displayed, if not click on the newly created entity to open it.
4. Enter the following details:
    * **Name**: _BookingNumber_
    * **Display Name**: _Booking Number_
    * **Type**: _Number_

**Add an Entity Node that retrieves the Update Type** with the following steps:

1. Click the **+** icon below the **Booking Number** node.
2. Select the **Entity** option.
3. Click **+ New entity**.
4. The **Property Panel** for the Entity Node is displayed, if not click on the newly created entity to open it.
    * Enter the following details:
        * **Name**: _UpdateType_
        * **Display Name**: _Update Type_
        * **Type**: Select _List of Items(enumerated)_ from the drop-down. We need to provide the list of values that the user can select.
            * Click the **Settings (gear) icon** that appears next to the field.
            * Opt for **Static List.**
            * Enter the following options under separate rows as the **Display name** – _Name_ and _Passport Number_. _Value_ and _Synonym_ columns will auto-populate, leave them as is.
            * Define the percentage of **Auto-correction** to be applied to match the user’s input to a value in the list.
            <img src="../images/define-auto-correction.png" alt="define autocorrection" title="define autocorrection" style="border: 1px solid gray; zoom:75%;"> 
            * Click **Save**.
            * Navigate back to the Entity Property Panel.
            * **User Prompts:** Enter the following text and hit enter to save:`What would you like to update?`
            * **Display List Of Values**: Mark as _Yes, use channel specific standard formatting for default messages and show the available list of values to the end user_‘. This will present the list of values in a button template for the supported channels.
5. Close the **UpdateType** Entity Property Panel.
<img src="../images/entity-update-type.png" alt="entity update type" title="entity update type" style="border: 1px solid gray; zoom:75%;"> 

**Add an Entity Node that retrieves the Updated Name** with the following steps: 

1. Click the **+** icon below the **UpdateType** node.
2. Select the **Entity** option and click **+New Entity**.
3. The **Property Panel** for the Entity Node is displayed, if not click on the newly created entity to open it. 
4. Enter the following details:
    * **Name**: _Name_
    * **Display Name**: _Name_
    * **Type**: _String_
    * **User Prompts:** Enter the following text and hit enter to save: `Please enter your full name.`

### Add a Bot Action – Service Node (Get Booking Details)

A Service Node allows you to make a backend API call. It is included in the Bot Actions node.

Here the service node is used to call an API to get the booking details  for the user entered booking number.

We will be using a dummy API setup for this tutorial. We will be using a mock API created specifically for this purpose with the following fields – FirstName, LastName, Address, City, Country, ZipCode, BookingNumber.

1. Click the **+** icon below the **UpdateType** Entity node.
2. Select **Bot Action**, click to open properties, name it GetBooking, and close the properties window.
3. To add a service node, click the **+** icon next to the **Get Booking** Bot Action node to expand it.
4. Click the **+** icon within the **Bot Action** layout.
5. Select **Service** – Service node is used to make a backend API call to get booking information.
    * Click **+ New Service**
    * The **Property Panel** for the Service Node is displayed, if not click on the newly created entity node to open it.
    * Enter the following details:
        * **Name**: _GetBooking_
        * **Display Name**: _Get Booking_
    * Under _Request Definition_: click **Define Request** and enter it.

### Add a Bot Action – Service Node (Update Balance)

Here the service node is used to call an API to update the account balance for the user entered booking number.

We will be using a dummy API setup for this tutorial.

1. Click the **+** icon below the **GetBooking** Service node.
2. Select **Service** – Service node is used to make a backend API call to update booking information.
3. Click **+ New service**.
4. The **Property Panel** for the Service Node is displayed, if not click on the newly added service node to open
5. Enter the following details:
    * **Name**: _UpdateBooking_
    * **Display Name**: _Update Booking_
    * **Service Type**: _Custom Service_
    * **Type**: _Webservice_
    * **Sub Type**: _REST_
    * Click **DEFINE REQUEST**
        * In the **Define Request Page**, enter the following details:
            * **Request type** – _PUT_
            * **Request URL** –`https://5c3c633d29429300143fe4d2.mockapi.io/AccountDetails/{{context.entities.BookingNumber}}.`
            This API does not require any Auth Parameters.
            * In the **Body** tab, select the type as _application/json._
            * Select the **Test Request** tab.
            * Enter an account number and balance in the **Sample Context Values** section.
            * Click the **Test** button.
            * Wait for the test to be completed and you get a Status: 200.
        * Click **Save as Sample Response.**
        * Click **Save.**
    * On the **Service Node** Property window, click the **Connections** tab.
        * Under the **Connection Rules** section, ensure that the **Default** connection is set to **End of Bot Action**.

6. Close the **Service** Property Panel.
7. Click **Next** to the **Bot Action** node to collapse it.

### Add a Message Node

A Message Node is used to display a message from the assistant to the user.

Here we will be using the Message node to show the success message.

1. Click the **+** icon below the **GetBooking** Bot Action.
2. Select **Message** and click the **+ New message**.
3. **Property Panel** for the Message Node is displayed
4. Enter the following details:
    * **Name**: _BookingUpdated_
    * **Display Name**: _Booking Updated_
    * **Bot Responses:** Enter "*Your booking has been updated*".
5. On the **Message Property** Panel, click the **Connections** icon.
    * Change the **Default** connection from _Not Connected_ to _End of Dialog_‘.
    * Click **Save**.
6. Close the **Property** Panel.

When completed, your task may look similar to the one shown below:
<img src="../images/add-a-message-node.png" alt="add a message node" title="add a message node" style="border: 1px solid gray; zoom:75%;">

## Test the Assistant

To test the **Dialog** task, follow the steps below:

1. Use the **Talk to bot** feature, at the bottom right corner of the Platform.

2. Enter the utterance (intent name) “_Update Booking_”

3. Follow the Bot instructions given below:

    * Enter Booking Number – 29565731.
    * Select the Update Type – Choose Name.
    * Enter the Name: e.g. Anne Smith.
    * See the success message.

<img src="../images/test-update-booking.png" alt="test update booking" title="test update booking" style="border: 1px solid gray; zoom:75%;">



