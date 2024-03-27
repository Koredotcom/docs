# Create an Update Balance Task

This is document details steps in creating a sample banking bot. This bot is used in various use case scenarios presented in the How-Tos section of the developer documentation.

## Prerequisites
<ul>
<li>You must have <a href="https://developer.kore.ai/docs/bots/getting-started/how-to-open-bot-builder/" target="_blank">signed up</a> with the XO Platform.</li>
<li>You must be aware of the basics of Bot building (refer to <a href="https://developer.kore.ai/docs/bots/chatbot-overview/getting-started-bots/" target="_blank">this </a>link).</li>
<li>You must have created a simple bot (click<a href="https://developer.kore.ai/docs/bots/chatbot-overview/creating-a-simple-bot/" target="_blank"> here</a> for an example).</li>
<li>You must have created a Banking Bot with Get Balance task (click<a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/design-conversation-skills/create-a-sample-banking-assistant/" target="_blank"> here</a> for example).</li>
</ul>

## Bot Overview

The Bot we will be building will be performing the basic banking transactions. This Bot will do the following:

<ul>
<li>Get account balance based on the Account Number and Account Type entered by the user, as seen <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/design-conversation-skills/create-a-sample-banking-assistant/" target="_blank">here</a>.</li>
<li>Update accounts with the balance, on this page.</li>
<li>Transfer a specified amount from the payer account to a payee account, as given<a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/design-conversation-skills/create-transfer-funds-task/" target="_blank"> here</a>.</li>
</ul>

## Update Balance Intent

<ul>
<li>The Update Balance task will prompt the user to enter the account number and the account type (Savings/Current).</li>
<li>It would then prompt for the type of update – credit or debit and the amount to be updated.</li>
<li>A service call will be made to fetch the details, calculate the balance, and then another service call to update the balance.</li>
<li>The success/failure message will be displayed.</li>

<img src="../images/update-balance-intent.png" alt="update balance intent" title="update balance intent" style="border: 1px solid gray; zoom:75%;"></ul>

### Step 1: Dialog Task

<ol>
<li>Open the Banking Bot with the Get Balance task already configured, click<a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/design-conversation-skills/create-balance-task/" target="_blank"> here </a>for more.</li>
<li>Ensure that the <strong>Build </strong>tab is selected from the top menu.</li>
<li>Navigate to the <strong>Conversational Skills -> Dialog Task</strong> page from the left menu.</li>
<li>Click <strong>Create Dialog</strong> from the top right.</li>
<li><strong>Create Dialog </strong>screen will open.</li>
<li>Enter the following details: 
<ul>
<li><strong>Intent Name</strong> – Enter the Intent name, this is the phrase that triggers the dialog. The intent name should be simple and not more than 3-4 words. For example, ‘<em>Update Balance</em>‘.</li> 
<li>You can add a <strong>description</strong> and under <strong>More Options</strong> other dialog-related details. Let’s retain the default settings without any changes.</li>
<li>You can also include utterances to train this intent.</li>
<li>Select <strong>Try Conversation Driven Dialog Builder</strong> option.</li>
</ul>

<li>Click <strong>Proceed.</strong></li>
<li><strong>Property</strong> Panel for<strong> User Intent</strong> will be displayed. We will retain the default properties.</li>
<li>Close the User Intent Property Panel.</li>
</ol>

### Step 2: Entity nodes

Entity Node is typically used to gather information from the user. Here we will be using it to capture the user input for Account Number and Account Type, Type of transaction, and Amount.

<ol>
<li>Click the <strong>+</strong> below the User Intent node.</li>
<li>Select the <strong>Entity</strong> option.</li> 
<ul>
<li>Select the <strong>Account Number</strong> entity already created while configuring the Get Balance task.</li>
<li>Close the <b>AccountNumber Entity</b> Property Panel.</li> 
</ul>
<li>Click the <strong>+</strong> below the Account Number node.</li>
<li>Select the <strong>Entity</strong> option.</li> 
<ul>
<li>Select the <strong>Account Type</strong> entity already created while configuring the Get Balance task.</li>
<li>Close the <b>AccountType Entity</b> Property Panel.</li> 
</ul>
<li>Click the <strong>+</strong> below the <b>Account Type</b> node.</li>
<li>Select the <strong>Entity</strong> option and follow the steps below:
<ul>
<li>Click the <strong>+ New entity</strong>.</li>
<li><strong>Property Panel</strong> for the Entity Node is displayed, if not click on the newly created entity to open.</li>
<ul>
 <li>Enter the following details:   
<ul>
  <li><strong>Name</strong>: <em>TransactionType</em>.</li>   
<li><strong>Display Name</strong>: <em>Transaction Type </em>.</li>   
<li><strong>Type</strong>: Select ‘<em>List of Items (enumerated)</em>‘ from the drop-down. We need to provide the list of values that the user can select.</li></ul>
<li>Click the <strong>Settings</strong> icon that appears next to the field.</li>
<li>Opt for <strong>Static List</strong>.</li>
<li>Enter the following options under separate rows as the <strong>Display name </strong>– <em>Credit</em> and <em>Debit</em>.

<b>Value</b> and <b>Synonym</b> columns will auto-populate, leave them as is.</li>

<img src="../images/entity-display-name.png" alt="entity display name" title="entity display name" style="border: 1px solid gray; zoom:75%;">
    
<li>Click <strong>Save</strong>.</li></ul></ul>   

<li>Navigate back to <b>Entity Property</b> Panel and enter the following values:</li>
<ul><li><strong>User Prompts:</strong> Enter the following text and hit enter to save:<br><code>Select the transaction type.</code></li>
<li><strong>Display List Of Values</strong>: Mark as ‘<em>Yes, use channel specific standard formatting for default messages and show the available list of values to end user</em>‘. This will present the list of values in a button template for the supported channels.
</li>
<img src="../images/display-list-of-values.png" alt="display list of values" title="display list of values" style="border: 1px solid gray; zoom:75%;"></ul>
</li>  
</ul>
<li>Close the <b>TransactionType Entity</b> Property Panel.
</li>  
</ul>

<li>Click the <strong>+</strong> below the Transaction Type node.</li>
<li>Select the <strong>Entity</strong> option and follow the steps below:</li>
<ul>

<li>Click <strong>+ New entity </strong>.</li>
<li><strong>Property Panel</strong> for the Entity Node is displayed, if not click on the newly created entity node to open.</li>
<li>Enter the following details:  
<ul>
<li><strong>Name</strong>: <em>Amount</em>.</li>
<li><strong>Display Name</strong>: <em>Amount</em>.</li>
<li><strong>Type</strong>: <em>Number</em>.</li>
<li><strong>User Prompts:</strong> Enter the following text and hit enter to save: <code>Enter the amount to {{context.entities.TransactionType}}</code>
</li>  
</ul>
<li>Close the Amount Entity Property Panel.</li> 
</ul>
</li> 
</ul>
</li> 
</ul>
</li> 
</ol>

### Step 3: Bot Action – Service Node (Get Balance)

Service Node allows you to make a backend API call. It is included in the Bot Actions.<br>Here the service node is used to call an API to get the account balance for the user entered account number.

We will be using a dummy API setup for this tutorial. We will be using a mock API created specifically for this purpose with the following fields – FirstName, LastName, Address, City, Country, ZipCode, AccountNumber, AccountType, Balance.

<ol>

<li>Click the <strong>+</strong> below the Amount Entity node.</li>
<li>Select <strong>Bot Action</strong>, click to open properties, name it <em>ToGetBalance</em>, and close the properties window.</li>
<li>To add a service node, click the <strong>+</strong> icon next to the ToGetBalance bot action to expand it.</li>
<li>Click the <strong>+</strong> within the bot action layout.</li>
<li>Select <strong>Service</strong> – Service node is used to make a backend API call to get account balance information.</li>
<li>Select the existing <em>GetAccountBalance </em>service node, created in the <b>Get Balance</b> task.</li>
</ol>

### Step 4(a): Bot Action – Script Node

Script Node allows you to incorporate programming logic into the bot and is part of Bot Action.<br>Here the script node is used to credit/debit the user entered amount to/from the account.

<ol>
<li>Click the <strong>+</strong> below the GetAccountBalance node within the Bot Action layout.</li>
<li>Select <strong>Script</strong> – Script node is used to calculate the balance to be updated.</li>
<li>Click the <strong>+ New Script</strong>.</li>
<li><strong>Property Panel</strong> for the Script Node is displayed, if not click on the newly created script node to open.</li>
<li>Enter the following details:</li> 
<ul>
 
<li><strong>Name</strong>: <em>BalanceCalculation</em>.</li>
<li><strong>Display Name</strong>: <em>Balance Calculation</em>.</li>
<li>Under the <strong>Script Definition</strong> section click the <strong>Define Script</strong> link.
</li> 
</ul>
</li> 
</ol>
<ol start="6"><li>In the <strong>Add Script</strong> window enter the following script. This script first checks the account type to match the user entry and then extracts the balance for that record.</li></ol>

```js
var balance, i;
<pre class="prettyprint">for (i=0; i < context.GetAccountBalance.response.body.length; i++ )
{ if (context.GetAccountBalance.response.body[i].AccountType == context.entities.AccountType)
   { balance = parseFloat(context.GetAccountBalance.response.body[i].Balance);
   }
}
```
<ol start="7"><li>Click <strong>Save</strong>.</li> 
<li>Close the Script Property Panel.</li>

<img src="../images/script-property-panel.png" alt="script property panel" title="script property panel" style="border: 1px solid gray; zoom:75%;"></ol>

### Step 4(b): Bot Action – Service Node (Update Balance)

Here the service node is used to call an API to update the account balance for the user entered account number.<br>We will be using a dummy API setup for this tutorial.

<ol>
<li>Click the <strong>+</strong> icon below the BalanceCalculation script node.</li>
<li>Select <strong>Service</strong> – Service node is used to make a backend API call to update account balance information.</li>
<li>Click the <strong>+ New service</strong>.</li>
<li><strong>Property Panel</strong> for the Service Node is displayed, if not click on the newly added service node to open.</li>
<li>Enter the following details:</li> 
<ul>
<li><strong>Name</strong>: <em>UpdateBalance</em>.</li> 
<li><strong>Display Name</strong>: <em>Update Balance</em>.</li> 
<li><strong>Service Type</strong>: <em>Custom Service</em>.</li> 
<li><strong>Type</strong>: <em>Webservice</em>.</li> 
<li><strong>Sub Type</strong>: <em>REST</em>.</li> 
<li>Click <strong>DEFINE REQUEST</strong>.</li>  
<ul>
<li>In the <strong>Define Request Page,</strong> enter the following details:   
<ul>
 <li><strong>Request type</strong> – <em>PUT</em>.</li>
<li><strong>Request URL</strong>: <code>https://5c3c633d29429300143fe4d2.mockapi.io/AccountDetails/{{context.entities.AccountNumber}}</code>.
This API does not require any Auth Parameters.</li></ul>
<li>In the <strong>Body</strong> tab, select the type as <em>application/json</em>.</li>   
<li>Select the <strong>Test Request</strong> tab.</li>   
<li>Enter an account number and balance in the <strong>Sample Context Values</strong> section.</li>   
<li>Click the <strong>Test</strong> button.</li>   
<li>Wait for the test to be completed and you get a Status: 200.</li>   
<li>Click <strong>Save as Sample Response</strong>.</li>   
<li>Click <strong>Save</strong>.</li>   
</ul>
</li>   
</ul>
 
<li>On the <strong>Service </strong>node Property window, click the <strong>Connections </strong>tab.</li> 
<ul>
  
<li>Under the <strong>Connection Rules</strong> section, ensure that the <strong>Default</strong> connection is set to <strong>End of Bot Action</strong>.</li>  
</ul>
 
<li>Close the <b>Service Property</b> Panel.</li>
<li>Click the <strong>–</strong> icon next to the Bot Action node to collapse the bot action node.
</li> 
</ul>
</li> 
</ol>

### Step 5: Message Node

A Message Node is used to display a message from the Bot to the user.<br>Here we will be using the Message node to show the success message.

<ol>
<li>Click the <strong>+</strong> below the ToUpdateBalance Bot Action.</li>
<li>Select <strong>Message</strong> and click the <strong>+ New message </strong>.
Property Panel</strong> for the Message Node is displayed.</li>
<li>Enter the following details:</li> 
<ul>
<li><strong>Name</strong>: <em>UpdateMessage</em>.</li>
<li><strong>Display Name</strong>: <em>Update Message</em>.</li>
<li><strong>Bot Responses:</strong> Enter <code>Your account balance has been updated</code> and hit enter to save.</li> 
</ul>

<li>On the Bot Response Property Panel, open the connections tab by clicking the ‘<strong>Connections</strong>‘ icon. Then, follow the steps below:</li>
<ul>
<li>Change the <strong>Default</strong> connection from ‘<em>Not Connected</em>‘ to ‘<em>End of Dialog</em>‘.</li>
<li>Click <strong>Save</strong>.
</li> 
</ul>
<li>Close the <b>Property</b> Panel.
</li>
</ol>

### Test

To test the Dialog task, you can use the ‘Talk to bot’ at the bottom right corner.<br>Enter the following utterance (intent name) – “<em>Update Balance.</em>”


Follow the Bot instructions and enter the values for the fields below::

<ul>

<li>Account Number – For example, 29565731.</li>

<li>Account Type – Savings or Current.</li>

<li>Transaction Type – Credit or Debit.</li>

<li>Enter the Amount – For example, 1000.</li>

<img src="../images/test-update-balance.png" alt="update balance intent" title="update balance intent" style="border: 1px solid gray; zoom:75%;"></ul>

## Next Steps

Your Banking Bot is almost complete, you have successfully added Get Balance and Update Balance dialog tasks to the Bot. The next step would be to include the Transfer Funds task. Click<a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/design-conversation-skills/create-transfer-funds-task/" target="_blank"> here </a>to continue.
