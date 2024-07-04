# Create a Travel Virtual Assistant

After you have <a href="https://developer.kore.ai/docs/bots/getting-started/how-to-open-bot-builder/" target="_blank">signed up</a> with the XO Platform, the next step is to create a Virtual Assistant. Before you create it, we recommend you to go through the basics of building a VA by reading <a href="https://developer.kore.ai/docs/bots/chatbot-overview/getting-started-bots/" target="_blank">this</a> article.

This article takes you through the creation of a simple travel VA, that gives users the flight status arriving/departing from Los Angeles International Airport. 

## Assistant Capabilities

This assistant can perform the following tasks:

* Ask the user if they want to know about the arrivals or departures.
* Make a service call to an API to fetch the details of flights arriving and departing out of the airport.
* Display the flight numbers based on the user preference of Arrival or Departure.
* Request the user to select a flight number.
* Display the status details of the selected flight.
* Handle any errors.

## Create the Assistant

To build your Travel Virtual Assistant, follow the steps below: 

1. On the landing page, click **New Bot**.
<img src="../images/new-bot-button.png" alt="new bot button" title="new bot button" style="border: 1px solid gray; zoom:75%;">   

2. In the **Create New Bot** window, select **Start from Scratch**.
3. Enter a **Name**. 
4. Select an icon or click the **+** icon to upload your own. Images should be in PNG format and should not exceed 40×40 pixels. The file size is limited to 80kb. 
5. Select **Travel Management** as the **Purpose** of your VA.
6. Choose **Standard Bot** as the **Bot Type**.
7. Select the **Default Language**.
8. Click **Proceed** when ready.
<img src="../images/configure-travel-bot.png" alt="configure new bot" title="configure new bot" style="border: 1px solid gray; zoom:75%;">  

9. Next, you can generate use cases for your new Virtual Assistant. Add a meaningful description and click **Get Use Cases** to generate intents that will be automatically added to the VA. You can update the Bot Name and Purpose and remove use cases. 
10. Click **Create** to create your VA with generated use cases, or click **Create without Use Cases** to create your VA without any generated use cases.
<img src="../images/create-bot.png" alt="create bot" title="create bot" style="border: 1px solid gray; zoom:75%;">  

11. Wait a few moments for your VA to be configured. Once done, you can continue developing it. If you have chosen to generate use cases, you will find them as Dialog Tasks.

### Create a Dialog Task

After creating your assistant, you are directed to the **Bot Summary** page. The first step is to add an _Intent Dialog_ to support various business-specific use cases. The Intent Dialog is the first step in the user-VA conversation flow.

To create a Dialog Task, please follow the steps below:

1. On the **Tasks** widget, click **+ New Task** and select **Dialog Task**.
<img src="../images/travel-planning-assistant-dialog-task.png" alt="add dialog task" title="add dialog task" style="border: 1px solid gray; zoom:75%;"> 

2. On the **Create Dialog** page, enter the following details:
    * **Intent Name** – Enter the Intent name. This is the phrase that triggers the dialog. The intent name must be simple and not more than 3-4 words. For example, _Check flight status_.
    * Under **More Options**, you can add a **description** and other dialog-related details. Let us retain the default settings.
3. Click **Proceed**.
<img src="../images/proceed-dialog-task.png" alt="proceed dialog task" title="proceed dialog task" style="border: 1px solid gray; zoom:75%;"> 

4. When prompted to upgrade to **Conversation Driven Dialog Builder**, select **Upgrade**. For instructions on the Legacy Dialog Builder. <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/design-conversation-skills/create-a-sample-banking-assistant/" target="_blank">Learn more</a>.
5. Once your task has been created, you will see the Dialog Builder Canvas, with the first node displayed – the Intent Node, which receives the name of the task and represents the main node within the Dialog Task. <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/dialogs/using-the-dialog-builder-tool/" target="_blank">Learn more</a>.

### Create a User Preference Entity Node

An Entity node is typically used to gather information from the user. Let us use it to capture the user preference for arrival or departure details.

1. Click the **+** icon next to the **User Intent** node.
2. Select **Entity** > **+ New Entity**.
<img src="../images/add-new-entity-node.gif" alt="add new entity node" title="add new entity node" style="border: 1px solid gray; zoom:75%;"> 

3. You can also drag and drop **Entity** from the node panel on the left.
4. Click the newly added Entity node to open the _Entity_ window.
5. By default, the **Component Properties** tab is selected. Under the **General Settings** section, enter the following details:
    * Name
    * Display Name
    * Type: Select _List of Items (enumerated)_ from the drop-down list. You can provide a list of values that the user can select. To add a list of values, follow the steps below:
        <ul><li>Click the <b>Settings</b> icon next to the field.
        <img src="../images/click-list-settings.png" alt="click list settings" title="click list settings" style="border: 1px solid gray; zoom:75%;"> </li>
        <li>Select the <b>Static List</b> option.</li>
        <li>Under the <b>Keys & Values To Use</b> section, enter the <b>Display Name</b> as <i>Arrival</i> and <i>Departure</i> in separate rows. <b>Value</b> and <b>Synonyms</b> columns auto-populate, leave them as is.</li>
        <li>Define the percentage of <b>Auto Correction</b> to be applied to match the user’s input to a value in the list. Set to 0 if you do not want to apply auto correction at all.</li>
        <li>Click <b>Save</b>.
        <img src="../images/save-list-of-items.png" alt="save list of items" title="save list of items" style="border: 1px solid gray; zoom:75%;"></li></ul>
<ol start="6"><li>Go back to the <b>Entity</b> window.</li>
<li>Under the <b>User Prompts</b> section, enter the following text:

```
Hello {{context.session.UserContext.firstName}}! Welcome to Los Angeles International Airport.
I can help you with flight Arrival/Departure information. Please select your preference.
```

!!!note
    The context variable retrieves the user's first name. Also, markdown is used for the airport name to appear in bold.</li></ol>

<ol start="8"><li>Under the <b>Display List of Values</b> section, select <i>Yes</i>, use channel-specific standard formatting for default messages and show the available list of values to the end-user option. This displays the list of values as a button template in supported channels.
<img src="../images/display-list-values.png" alt="display list values" title="display list values" style="border: 1px solid gray; zoom:75%;"></li>
<li>Close the <b>Entity</b> window.</li></ol>

### Create a Service Node

A Service Bot Action node allows you to make a backend API call. Here the service node is used to call an API to get flight information for flights _From_ and _To_ LAX airport. In this tutorial, a dummy API setup is used.

1. Click the **+** icon below the **Preference Entity** node.
2. Select **Bot Action** > **+ New Bot Action**.
3. Under the **General Settings** section, enter the following details:
    * **Name**: _FlightDetails_
    * **Display Name**: _Flight Details_
4. Click the **+** icon next to the **Bot Action** node to expand the Bot Action.
5. From within the Bot Action node, click **+**.
6. Select **Service** > **+ New service**. The service node is used to make a backend API call to get flight information for flights _From_ and _To_ LAX airport.
7. Click the Service node to open the Service window, by default, the **Component Properties** tab is selected.
8. Under the **General Settings** section, enter the following details:
    * **Name**: _Fetchflightdetails_
    * **Display Name**: _Fetch Flight Details_
    * **Service Type**: _Custom Service_
    * **Type**: _Webservice_
    <img src="../images/general-settings-service-node.gif" alt="general settings service node" title="general settings service node" style="border: 1px solid gray; zoom:75%;">

    * **Sub Type**: _REST_

<ol start="9"><li>Under the <b>Request Definition</b> section, click <b>DEFINE REQUEST</b>.</li>
<li>On the <b>Define Request</b> page, enter the following details:</li>
    <ul><li><b>Request Type</b> – <i>GET</i>
    <li><b>Request URL</b> – <code>https://5e85a56644467600161c6579.mockapi.io/FlightDetails </code>
This API does not require any Auth or Header Parameters.</li></ul>
<li>Click the <b>Test Request</b> tab.</li>
<li>Click <b>Test</b> on the top-right.</li>
<li>Wait for the test to complete and you get a Status Code 200.</li>
<li>Click <b>Save as Sample Response</b>.</li>
<li>Click <b>Save</b>.</li>
<li>Return to the dialog builder.</li>
<li>Under the <b>Connections</b> section, set the <b>Default Connection Rule</b> to <i>End of Bot Action</i>.
<img src="../images/default-connection-rule.png" alt="default connection rule" title="default connection rule" style="border: 1px solid gray; zoom:75%;"></li>
<li>Close the <b>Service</b> window.</li>
<li>Collapse the <b>Bot Action</b> node.</li></ol>


### Create a Flight Selection Entity Node

This Entity node is to capture the Flight Number for which the user wants the status details.

1. Click the **+** icon next to the **Flight Details** **Bot Action** node.
2. Select **Entity** > + **New entity**. The Entity node is required to capture the flight number selected by the user.
3. In the **Entity** window, by default, the **Component Properties** tab is selected.
4. Under the **General Settings** section, enter the following details:
    * **Name**: _SelectFlight_
    * **Display Name**: _Select Flight_
    * **Type**: _String_ (users can write a custom script to convert the API string output to a list of values in the following steps, this is the requirement of the dummy API used)
5. Under the **User Prompts** section, enter the following text: 
`Please provide the flight number.`
**Manage**: Users can define a specific prompt for the Web SDK channel.
6. Click **Manage**. Read more about <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/dialogs/prompt-editor/#prompt-editor" target="_blank">managing user prompts</a>.
<img src="../images/click-manage-user-prompt.png" alt="click manage user prompt" title="click manage user prompt" style="border: 1px solid gray; zoom:75%;">

7. Click **Add User Prompts**.
8. In the **New Prompt Message** window, select _Web/Mobile client_ from the **Channel** drop-down list.
9.  Under the **Message** section, delete all text from the **Plain Text** tab and click the **Advanced** tab.
10. Copy and paste the following **JavaScript** into the Advanced tab. The JavaScript extracts flight numbers matching user preference from the string output from API call and displays them in the _Quick Reply_ format.

```js
var data = context.Fetchflightdetails.response.body.details;
context.flights = [];
context.info;
var msg;
for (var i = 0; i < data.length; i++)
{
    if (context.entities.Preference == data[i].Type)
    {
        var details = {
            "Airlines" : data[i].Airlines,
            "FlightNo" : data[i].FlightNo,
            "Airport" : data[i].Airport,
            "AirportName" : data[i].AirportName,
            "Time" : data[i].Time
        };
        context.flights.push(details);
    }
}
var message = {
    "type" : "template",
    "payload" : {
       "template_type" : "quick_replies",
       "text" : "Here are the flights " + context.entities.Preference + " details for Los Angeles International Airport today. Please select the flight number to see details",
       "quick_replies" : []
    }
};
for (i=0; i < context.flights.length; i++)
{
   var replies = {
        "content_type":"text",
        "title" : context.flights[i].FlightNo,
        "payload" : context.flights[i].FlightNo
    };
message.payload.quick_replies.push(replies);
}
print(JSON.stringify(message));
```

<ol start="11"><li>Click <b>Save</b>.</li>

<img src="../images/save-user-prompt.png" alt="save user prompt" title="save user prompt" style="border: 1px solid gray; zoom:75%;">

<li>Go back to Dialog Builder and close the <b>Entity</b> window.</li></ol>

### Create a Script Node

A Script node is used to write custom JavaScript in the Dialog task. Here, users can use the script to extract the selected flight details. Later, users can add more functionality to this script. To add and configure a script node, follow the steps below:

1. Click the **+** icon below the **Select Flight Entity** node.
2. Select **Bot Action** > **+ New Bot Action**.
3. Under the **General Settings** section, enter the following details:
    * **Name**: _FlightValidation_
    * **Display Name**: _Flight Validation_
4. Click the **+** next to the Bot Action node to expand the Bot Action.
5. From within the Bot Action node click **+**
6. Select **Script** > + **New script**.
7. In the **Script** window, by default, the **Component Properties** tab is selected.
8. Under the **General Settings** section, enter the following details:
    * **Name**: _ValidateFlight_
    * **Display Name**: _Validate Flight_
9. Under the **Script Definition** section, click **Define Script**.
10. On the _Add Script_ dialog box, copy and paste the following JavaScript. This code extracts the details of the selected flight number and also mitigates potential task failures caused by users not selecting a preference and instead manually entering information that is not found within the Context. Learn more about the <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/context-object/" target="_blank">Context Object</a>.

```js
context.valid = false;
context.details;
var x = context.flights.length;
for (var l = 0; l < x; l++)
{
    if (context.entities.SelectFlight == context.flights[l].FlightNo)
    {
         context.valid = true;
         context.details = {
            "Airlines" : context.flights[l].Airlines,
            "FlightNo" : context.flights[l].FlightNo,
            "Airport" : context.flights[l].Airport,
            "AirportName" : context.flights[l].AirportName,
            "Time" :context.flights[l].Time
        };
        break;
    }
}
if (context.valid === false)
{
    delete context.entities.SelectFlight;
}
```

<ol start="11"><li>Click <b>Save</b>.</li>

<img src="../images/save-script-node.png" alt="save script node" title="save script node" style="border: 1px solid gray; zoom:75%;">

<li>Under the <b>Connections</b> section, set the <b>Default Connection Rule</b> to <i>End of Bot Action</i></li>
<li>Close the <b>Script</b> window.</li>
<li>Collapse the <b>Bot Action</b> node.</li></ol>

### Create a Message Node to provide the Flight Status

A Message node is used to display a message from the VA to the user. Here, users can use the Message node to show appropriate flight details, based on user preference. This message node is triggered when the user enters a valid flight number.

1. Click the **+** icon next to the **Validate Flight Script** node.
2. Select **Message** > **New message node +**.
3. In the **Message** window, by default, the **Component Properties** tab is selected.
4. Under the **General Settings** section, enter the following details:
    * **Name**: _FlightStatus_
    * **Display Name**: _Flight Status_
5. Under the **Bot Responses** section, enter the following text: 
`Here are your flight details.`
6. Click **Enter** to save.
7. **Manage Prompts:** Users can define a specific prompt for the Web SDK channel as follows:
    * Click **Manage**. 
    * On the **Manage Bot Responses** page, click **Add User Prompts**.
    * Select _Web/Mobile client_ from the **Channel** drop-down list.
    * Under the **Message** section, delete all text in the **Plain Text** tab and click the **Advanced** tab.
8. Copy and paste the following JavaScript. The JavaScript is written to display the flight details in the _Table_ format. 

```js
var elements = [context.details];`
var message = {
    "type": "template",
    "payload": {
        "template_type": "table",
        "text": "Here are your flight details",
        "columns": [
            ["Airline"],["FlightNo"], ["Airport"], ["Time"]
        ],
        "table_design": "regular",
        speech_hint: "Here are your flight details",
        elements: []
    }
};
var ele = [];
for (var i = 0; i < elements.length; i++) {
    var elementArr = [elements[i].Airlines, elements[i].FlightNo, elements[i].Airport, elements[i].Time];
    ele.push({'Values': elementArr});
}
message.payload.elements = ele;
print(JSON.stringify(message));
```

<ol start="9"><li>Click <b>Save</b>.</li>
<li>Return to the <b>Message</b> window.</li>
<li>In the Message window, click the <b>Connections</b> tab, and follow the steps below:</li>
<ul><li>From the drop-down list, change the default connection from <i>Not Connected</i> to <i>End of Dialog</i>.</li>
<li>Click <b>Save</b>.</li></ul>
<li>Close the <b>Message</b> window.</li></ol>

When you have finished configuring your Dialog Task, it should look something like the illustration below.
<img src="../images/message-node-flight-status.png" alt="message node for flight status" title="message node for flight status" style="border: 1px solid gray; zoom:75%;">

### Create a Conditional Flow for an Error Message

The Conditional Flow is required when, for example, the user provides input that cannot be identified by the VA, rather than selecting from one of the options you have configured (i.e.: either _Arrivals_ or _Departures_.) In such a case, you would want to have the VA respond to the user with an error message.

The following are the steps required in order to add the conditional flow from the **Validate Flight** Script node. A new connection from this Script node to a new Message node is established. This is to display an error message from the VA to the user and redirect to select the flight number again.

### Create the Error Message

1. Hover over the connection between Flight Validation Bot Action node and **Flight Status** message node.
2. You can see the **Add Node** button, click the button and then on the “**+**” to insert a node.
3. Create a new Message node with the steps below:
* Select **Message** > **+ New Message**.
* In the **Message** window, by default, the **Component Properties** tab is selected.
* Under the **General Settings** section, enter the following details:
    * **Name**: _ErrorMessage_
    * **Display Name**: _Error Message_
* Under the **Bot Responses** section, enter the text: 
`The Flight number you entered is incorrect. Let us start again.`
* Click the **Connections** tab.
* From the drop-down list, change the default connection from _FlightStatus_ to _SelectFlight_.
* Close the **Error Message** window.
<img src="../images/add-error-message.gif" alt="add error message" title="add error message" style="border: 1px solid gray; zoom:75%;">

### Add IF Condition

As you can see in the demonstration above, the initial validation message remains disconnected after adding the error message. To fix this, you need to add a conditional connection so that the **Flight Validation** Bot Action Node connects to the _Flight Status_ Message node to provide flight information; or to the Error Message, so the user is asked to provide valid input. The steps to take in order to achieve this are the following:


1. Click the **Flight Validation** Bot Action node.
2. In the **Flight Validation Bot Action** window, click the **Connections** tab, and follow the steps below:
    * Click **+ ADD IF** under **Bot Action Group Connections**.
    * Under the **IF** section, select **Context**.
    * For **If Condition**, enter “**valid**” in the context text field.
    * Select the operator as **Equals To**
    * Enter **true** in the value text field.
    * If this condition is true, then the dialog goes to **FlightStatus**.
    * Under the **ELSE** section,
    * If this condition is false, then the dialog goes to **ErrorMessage**.
    * Close the **Validate Flight** Script window.
    * Click and drag the **ErrorMessage** node to the right to view the flow.
    <img src="../images/if-validation-node.png" alt="if validation node" title="if validation node" style="border: 1px solid gray; zoom:75%;">

When completed, the task might look similar to the illustration below:

<img src="../images/if-validation-complete.png" alt="if validation complete" title="if validation complete" style="border: 1px solid gray; zoom:75%;">

**Add Events**

Currently, the assistant is waiting for user input on the start. However, it can also guide the user at the start of the conversation. 

For this, you can add an Event Handler to initiate this task every time a new connection is established from the Web/Mobile SDK. Learn more about <a href="https://developer.kore.ai/docs/bots/bot-intelligence/event-based-bot-actions/" target="_blank">Event Handlers</a>.

1. Close the Dialog Builder to go back to the **Dialog Tasks** page.
2. From the Left Navigation pane, select **Automation AI** > **Virtual Assistant** > **Conversation Intelligence** > **Events**.
3. On the **Events** page, click **Configure** against the **On Connect** event.
<img src="../images/on-connect-event-configuration.png" alt="on connect event configure" title="on connect event configure" style="border: 1px solid gray; zoom:75%;">

4. In the **On Connect** window, by default, the **Initiate Task** option is selected for _Define how to proceed when this event is detected_.
5. From the drop-down list, select the **Get Flight Status** task.
6. Click **Save**.
<img src="../images/on-connect-window.png" alt="add event" title="add event" style="border: 1px solid gray; zoom:75%;">

## Test the Assistant

To test the Dialog task, you can use the _Talk to bot_ option at the bottom right. Since the _onConnect_ event is configured, the dialog is automatically initiated. Alternately, you can always try the following utterance (intent name) _Get me the flight status._

Follow the instructions below:

1. Select Arrival / Departure.
2. Enter an invalid flight number rather than selecting on of the prompts.
3. You can see the appropriate error message and be prompted to enter the flight number again.
4. Select a flight number from the prompts.
5. You can see the flight details in a tabular format
<img src="../images/test-travel-assistant.png" alt="test travel assistant" title="test travel assistant" style="border: 1px solid gray; zoom:75%;">


You have successfully created and tested your first Virtual Assistant.
