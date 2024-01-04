# Create a Banking Assistant

This document helps you create a sample banking bot. This bot is used in various use case scenarios presented in the How-Tos section of the developer documentation.

## Prerequisites

The following are the prerequisites:

* You must have <a href="https://developer.kore.ai/docs/bots/getting-started/how-to-open-bot-builder/" target="_blank">signed up</a> with the XO Platform.
* You must be aware of the basics concepts of bot-building (refer to <a href="https://developer.kore.ai/docs/bots/chatbot-overview/getting-started-bots/" target="_blank">this link</a>).
* You must have created a simple bot (<a href="https://developer.kore.ai/docs/bots/chatbot-overview/creating-a-simple-bot/" target="_blank">refer here</a>) for an example).

## Bot Overview

The bot we build will perform the basic banking transactions. This bot will:

* Get account balance based on the user’s _Account Number_ and _Account Type_.
* Update accounts with the balance. For more information, <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/design-conversation-skills/create-balance-task/" target="_blank">click here</a>.
* Transfer a specified amount from the user account to a payee account. For more information, <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/design-conversation-skills/create-transfer-funds-task/" target="_blank">click here</a>.

Let us start building the bot and add _Get Balance_ task to it.

## Create a Bot

This document helps you to create a Standard Bot for banking activities. To create a standard bot, follow the below steps:

1. Log in to your XO Platform with valid credentials.
2. On the bots landing page, click **New Bot** on the top-right and select **Start from Scratch** from the list.
3. On the **Create New Bot** window, enter the bot details:
    * **Bot Name** – Provide a name to your bot. For example, _Banking Bot_. If the name is already used, provide a different name.
    * Set the **Default Bot Language** to _English._
    * Select the **Bot Type** as _Standard Bot_.
4. Click **Create**.
    
    <img src="../images/create-new-bot.png" alt="create new bot" title="create new bot" style="border: 1px solid gray; zoom:75%;">

## Get Balance Intent

* The _Get Balance_ task prompts the user to enter an _account number_ and the account type (Savings/Current).
* It makes a service call to fetch the details.
* The balance for the requested account is displayed.
<img src="../images/get-balance-intent.png" alt="get balance intent" title="get balance intent" style="border: 1px solid gray; zoom:75%;">

### Dialog Task

Successful creation of the bot directs you to the Bot Summary page. We need to add a Dialog Task as the first step in the Bot. Intent Dialog is the first step in the user-bot conversation flow.

1. On the Bot Summary page, click **+ New Task** on the **Tasks** widget.
2. Select **Dialog Task** from the list.
<img src="../images/new-dialog-task.png" alt="new dialog task" title="new dialog task" style="border: 1px solid gray; zoom:75%;">

3. On the Create Dialog window, enter the following details:
    * Enter a name in the **Intent Name** field. This is the phrase that triggers the dialog. The intent name must be simple and not more than 3-4 words. For example, _Get Balance_.
    * Enter a description in the **Description** field.
    * In the **Intent Training** field, add unique utterances to improve the user intent recognition.
    * Under **More Options**, you can add other dialog-related details. Let us retain the default settings.
    * Select **Try Conversation Driven Dialog Builder** option.
4. Click **Proceed**.

    <img src="../images/proceed-create-dialog.png" alt="proceed create dialog" title="proceed create dialog" style="border: 1px solid gray; zoom:75%;"> 

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>For instructions with the older Dialog Builder,  <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/design-conversation-skills/create-a-sample-banking-assistant/" target="_blank">refer here</a></p>
</div>

### Entity Node

Entity Node is typically used to gather information from the user. Here, it is used to capture the user input for _Account Number_ and _Account Type_.

1. Click the **+** icon below the User Intent (Get Balance) node.
2. Select **Entity** from the list and click **+ Entity**.
<img src="../images/select-entity-from-list.png" alt="select entity from list" title="select entity from list" style="border: 1px solid gray; zoom:75%;"> 

3. Click on the newly created Entity node to open the **Property** window.
4. Under the **General Settings** section, enter the following details:
    * **Name**: _AccountNumber_.
    * **Display Name**: _Account Number_.
    * **Type**: _Number_.
    * **User Prompts:** Enter the following text and press **Enter** to save: `Enter the account number.
    <img src="../images/set-user-prompts.png" alt="set user prompts" title="set user prompts" style="border: 1px solid gray; zoom:75%;"> 

5. Close the _AccountNumber_ Entity Property window.
6. Repeat the above steps to add another entity with the following details:
    * **Name**: _AccountType_
    * **Display Name**: _Account Type_.
    * **User Prompts**: Enter the following text and press **Enter** to save:`Enter the account type.`
    * **Display List Of Values**: Select _Yes, use channel-specific standard formatting for default messages and show the available list of values to the end-user_. This presents the list of values in a button template for the supported channels.
    * **Type**: Select _List of Items (enumerated_ from the drop-down list.
    <img src="../images/set-type.png" alt="set type" title="set type" style="border: 1px solid gray; zoom:75%;"> 

    * Provide the list of values that the user can select.
        * Click the **Settings** icon that appears next to the field.
        * Under the **Account Type** section, select the **Static List** radio button.
        * Under the **Keys & values to use** section, enter
            * the **Display Name** as _Savings_ and _Current_.
            * **Value** and **Synonym** columns will auto-populate. Change the Value to _savings_ and _current_, since our mockapi has the account type saved in lowercase.
        * Click **Save** on the top-right of the page.
        <img src="../images/save-value-synonym.png" alt="save value synonym" title="save value synonym" style="border: 1px solid gray; zoom:75%;"> 

    * Close the _AccountType_ Entity Property window.

### Bot Action – Service Node

Service Node allows you to make a backend API call and is under Bot Action.

Here, the service node is used to call an API to fetch the account balance for the user-entered account number. You can find a dummy API setup for this tutorial. A mock API is created specifically for this purpose with the following fields – FirstName, LastName, Address, City, Country, ZipCode, AccountNumber, AccountType, Balance.

1. From the left pane, drag and drop the **Bot Action** node below the _Account Type_ entity node.

    <img src="../images/drop-below-action-type-entity-node.png" alt="drop below action type node" title="drop below action type node" style="border: 1px solid gray; zoom:75%;"> 

<ol start="2"><li>The newly created <b>Bot Action</b> node would be expanded. If not, click the <b>+</b> icon to expand.</li>
<li>From the left pane, drag and drop the <b>Service</b> node to the <b>Bot Action</b> node layout,
or on the <b>Bot Action</b> node layout, click the <b>+</b> icon and select <b>Service</b> from the list, and click <b>+ New Service</b>.</li>

<img src="../images/bot-action-new-service.png" alt="new service" title="new service" style="border: 1px solid gray; zoom:75%;"> 

<li> A <i>Service</i> node is added to the <i>Bot Actions</i> node layout.</li>
<li>Click the Service node to open its <b>Property</b> window.</li>
<li>Under the <b>General Settings</b> section, enter the following details:</li></ol>

* **Name**: GetAccountBalance
* **Display Name**: Get Account Balance
* **Description**: Enter a description to describe the service node.
<img src="../images/describe-service-node.png" alt="describe service node" title="describe service node" style="border: 1px solid gray; zoom:75%;">  

* Click **DEFINE REQUEST**.
    * On the **Define Request** page, enter the following details:
        * **Request type** – _GET_
        * **Request URL** – `https://5c3c633d29429300143fe4d2.mockapi.io/AccountDetails?filter={{context.entities.AccountNumber}}`

        Due to the limitations of the dummy API service, instead of fetching the record for the given account number, the response is filtered for the required account number.
        
    <ul><li>This API does not require any Auth, or Header Parameters.</li>
    <li>Click the <b>Test Request</b> tab.
    <li>Enter an account number in the <b>Sample Context Values</b> section. This is the filter parameter needed by the API, you can use the following account number <i>02929664</i>.
    <li>Click <b>Test</b> on the top-right of the page. Wait for the test to be completed and you get a <i>Status Code: 200</i>.</li>
    <li>You can see an array of records returned by the API call. In the next step, values are parsed using JavaScript.</li>
    <li>Click <b>Save as Sample Response</b>.</li>
    <li>Click <b>Save</b> on the top-right of the page.</li>
      <img src="../images/save-sample-response.png" alt="save sample response" title="save sample response" style="border: 1px solid gray; zoom:75%;"></ul>

<ol start="7"><li>On the <b>Service</b> node Property window, click the <b>Connections</b> tab.</li></ol>
    
<ul><li>Under the <b>Connection Rules</b> section, ensure that the <b>Default</b> connection is set to <b>End of Bot Action</b>.</li>

<img src="../images/end-of-bot.png" alt="end of bot" title="end of bot" style="border: 1px solid gray; zoom:75%;"></ul>

<ol start="8"><li>Close the Service Property window.</li>
<li>Click the <b>–</b> icon next to the Bot Action node to collapse the bot action node.</li></ol>

### Message Node

A Message node displays a message from the bot to the user. Here, the Message node is used to show the balance.

1. From the left pane, drag and drop the **Message** node below the **Bot Action** node, or click the **+** icon below the **Bot Action** node.
2. Select **Message** from the list and click **+ New Message**.
3. Click the Message node to open its **Property** window.
4. Enter the following details:
    * **Name**: _BalanceMessage_.
    * **Display Name**: _Balance Message_.
    * **Bot Responses**: Define a standard message to send to the user.
        * Click **Manage**.
          
          <img src="../images/manage-bot-response.png" alt="manage bot response" title="manage bot response" style="border: 1px solid gray; zoom:75%;"> 

        * On the **Manage User Prompts** page, you can find the user prompt.
        * Open the user prompt to define JavaScript to parse the message for all channels.
        * Under the **Channels** section, select **All** from the drop-down list. Refer to the image below.
            * Under the **Message** section, click the **Advanced** tab.
            <img src="../images/message-advanced-settings.png" alt="advanced settings" title="advanced settings" style="border: 1px solid gray; zoom:75%;"> 

            * Add the following **JavaScript**. The JavaScript is written to compare all the records filtered for the _AccountType_ as entered by the user and then display the _Balance_, and click **Save**.

```js
var balance, i;
for (i=0; i < context.GetAccountBalance.response.body.length; i++ )
{ if (context.GetAccountBalance.response.body[i].AccountType == context.entities.AccountType)
   { balance = context.GetAccountBalance.response.body[i].Balance;
   }
}
if (balance === undefined)
    { print ('Invalid Account, try again ');
    }
else
    {
    print ('The Balance in your account is ' + balance)
}
```

<ol start="5"><li>Go back to the Dialog Builder.</li>
<li>On the <b>Message</b> node Property window, click the <b>Connections</b> tab.</li>
<li>Under the <b>Connection Rules</b> section, change the <b>Default</b> connection from <b>Not Connected</b> to <b>End of Dialog</b>.</li>
<img src="../images/connection-rules-banking-bot.png" alt="connection rules" title="connection rules" style="border: 1px solid gray; zoom:75%;"></ol>

<ol start="8"><li>Close the Property window.</li></ol>

### Test

To test the dialog task, you can use the **Talk to bot** option at the bottom-right.

1. Enter the following utterance (intent name) **Get Balance**.
2. Follow the bot instructions:
    * Enter Account Number – 67846279
    * Select Account Type – Savings
3. See the Account Balance.
    
    <img src="../images/test-banking-bot.png" alt="test banking bot" title="test banking bot" style="border: 1px solid gray; zoom:75%;"> 

## Next Steps

Now that you have added the _Get Balance_ dialog task to the Banking bot, the next step is to add the Update Balance task. For convenience, the steps for _Update Balance_ are split into different documents. Click <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/design-conversation-skills/create-balance-task/" target="_blank">here</a> to continue.
