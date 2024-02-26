# Create Transfer Funds Task

This is document details steps in creating a sample banking bot. This bot is used in various use case scenarios presented in the How-Tos section of the developer documentation.

## Prerequisites

<ul>
<li>You must have <a href="https://developer.kore.ai/docs/bots/getting-started/how-to-open-bot-builder/" target="_blank">signed up</a> with the XO Platform.

<li>You must be aware of the basics of Bot building (refer to <a href="https://developer.kore.ai/docs/bots/chatbot-overview/getting-started-bots/" target="_blank">this link</a>).

<li>You must have created a simple bot. Click (<a href="https://developer.kore.ai/docs/bots/chatbot-overview/creating-a-simple-bot/" target="_blank">here</a> for an example).

<li>You must have created a Banking Bot. Click (<a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/design-conversation-skills/create-a-sample-banking-assistant/" target="_blank">here</a> for an example).
</li>
</ul>

## Bot Overview

The Bot we will be building will be performing the basic banking transactions like the following:

<ul>
<li>Get account balance based on the Account Number and Account Type entered by the user, as seen <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/design-conversation-skills/create-a-sample-banking-assistant/" target="_blank">here</a>.

<li>Update accounts with the balance, as seen <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/design-conversation-skills/create-balance-task/" target="_blank">here</a>.

<li>Transfer a specified amount from the user account to a payee account.
</li>
</ul>

Let us add the Transfer Funds task.


## Transfer Funds Intent


<ul>
<li>The Transfer Funds task will prompt the user to enter Payee and Payer account number.

<li>Next it would prompt for the amount to be transferred.

<li>It will then make a service call to update the accounts appropriately.

<li>The message indicating success or failure is displayed.</li>

<img src="../images/success-failure-message.png" alt="success failure message" title="success failure message" style="border: 1px solid gray; zoom:75%;"> 
</ul>

### Step 1: Dialog Task

We need to add an Intent Dialog as the first step in the Bot. Intent Dialog is the first step in the user-bot conversation flow.

<ol>
<li>Open the Banking Bot with the two pre-configured tasks – <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/design-conversation-skills/create-a-sample-banking-assistant/" target="_blank">Get Balance</a> and <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/design-conversation-skills/create-balance-task/" target="_blank">Update Balance</a>.

<li>Ensure that the <strong>Build </strong>tab is selected from the top menu.

<li>Navigate to the <strong>Conversational Skills -> Dialog Task</strong> page from the left menu.

<li>Click <strong>Create Dialog</strong> from the top right.

<li><strong>Create Dialog </strong>screen will open.

<li>Enter the following details: 
<ul>
<li><strong>Intent Name</strong> – Enter the Intent name, this is the phrase that triggers the dialog. The intent name should be simple and not more than 3-4 words. For example, ‘Transfer Funds.’
<li>Under <strong>More Options</strong>, you can add a <strong>description</strong> and other dialog-related details. Let’s retain the default settings.
<li>You can also include utterances to train this intent.</li> 
<li>Select <strong>Try Conversation Driven Dialog Builder</strong> option.</li></ul>

<li>Click <strong>Proceed.</strong>

<li>Property Panel for User Intent will be displayed. We will retain the default properties.
<li>Close the User Intent Property Panel.</li>
</ol>

### Step 2: Entity nodes

Entity Node is typically used to gather information from the user.

Here we will be using it to capture the user input for the Payee and Payer Account Number and amount to be transferred.

<ol>
<li>Click the <strong>+</strong> below to the User Intent node.
<li>Select the <strong>Entity</strong> option.
<li>Click the <strong>+ New entity </strong>.
<li><strong>Property Panel</strong> for the Entity Node is displayed. If not click on the newly added entity node to open.
<li>Enter the following details: 
<ul>
<li><strong>Name</strong>: <em>PayerAccount</em>
<li><strong>Display Name</strong>: <em>Payer Account </em>
<li><strong>Type</strong>: <em>Number</em>
<li><strong>User Prompts:</strong> Enter the following text:<br><code>Enter the Account from where you want to transfer funds.</code>
</li> 
</ul>

<li>Close the PayerAccount Entity Property Panel.</li>

<li>Repeat the above steps to add another entity with the following details:
<ul>
 
<li><strong>Name</strong>: <em>PayeeAccount</em>
 
<li><strong>Display Name</strong>: <em>Payee Account </em>
 
<li><strong>Type</strong>: <em>Number</em>
 
<li><strong>User Prompts:</strong> Enter the following text<br><code>Enter the Account to which you want to transfer funds.</code>
</li> 
</ul>
<li>Close the PayeeAccount Entity Property Panel.
<li>Repeat the above steps to add another entity with the following details: 
<ul>
<li><strong>Name</strong>: <em>AmountToTransfer</em>
<li><strong>Display Name</strong>: <em>Amount To Transfer </em>
<li><strong>Type</strong>: <em>Number</em>
<li><strong>User Prompts:</strong> Enter the following text and hit enter to save: <code>Enter the amount to transfer.</code>
</li> 
</ul>
<li>Close the <b>Amount Entity</b> Property Panel.
</li>
</ol>

The next steps would update the balance in both the Payer and Payee accounts. Since we already have <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/design-conversation-skills/create-balance-task/" target="_blank">Update Balance</a> task, we will see how to run it from the current task.

### Step 3: Run Dialog Task

Predefined dialog tasks can be triggered from within another task with the steps below:

<ol>
<li>Click the <strong>+</strong> below to the Amount Entity node.
<li>Select <strong>Dialog Task</strong>.
<li>From the given task list, select the required task – <strong>UpdateBalance</strong>.
<li><strong>Property Panel</strong> for the Dialog Node is displayed. If not click on the newly added dialog node to open.
<li>Navigate to the <strong>Instance Properties</strong> tab and enter the following details:
<li><strong>Entity Pre-Assignments</strong> section – these are the entity values required by the Dialog Task if they are not populated here the user will be prompted to enter the same. Since we have already collected the information through the entities defined in the previous step we will be passing those user-entered values to the UpdateBalance task 
<ul>
<li><strong>AccountType</strong>: <em>savings</em>.</li>
<li><strong>AccountNumber</strong>: <em>context.entities.PayerAccount</em>.</li>
<li><strong>Amount</strong>: <em>context.entities.Amount</em>.</li>
<li><strong>TransactionType</strong>: <em>Debit</em> (payer account needs to be deducted of the transferred amount).</li>

<img src="../images/intent-update-balance.png" alt="update balance intent" title="update balance intent" style="border: 1px solid gray; zoom:75%;"></ul>

<li>Close the UpdateBalance Dialog Properties panel.</li>
<li>Repeat the same steps to Update the Payee Account with the following values in the <strong>Entity Pre-Assignments</strong> section:
<ul>
<li><strong>AccountType</strong>: <em>savings</em>
<li><strong>AccountNumber</strong>: <em>context.entities.PayeeAccount</em>
<li><strong>Amount</strong>: <em>context.entities.Amount</em> 
<li><strong>TransactionType</strong>: <em>Credit</em>
</li></ul>
<li>Close the UpdateBalance Dialog Properties panel.
</li>
</ol>

### Step 4: Message Node

A Message Node is used to display a message from the Bot to the user. Here we will be using the Message node to show the balance.

<ol>
<li>Click the <strong>+</strong> below the UpdateBalance [2] Service node.</li>
<li>Select <strong>Message</strong> and click the ‘+ <strong>New message</strong>'.</li>
<li><strong>Property Panel</strong> for the Message Node is displayed. If not click on the newly added dialog node to open.</li>
<li>Enter the following details:  
    <ul>
    <li><strong>Name</strong>: <em>FinalMessage</em>.</li>  
    <li><strong>Display Name</strong>: <em>Final Message</em></li>  
    <li><strong>Bot Responses: <code>The amount {{context.entities.AmountToTransfer}} has been transferred from {{context.entities.PayerAccount}} to {{context.entities.PayeeAccount}}</code></strong></li>
    </ul>  
<li>On the Bot Response Property Panel, open the connections tab by clicking the ‘<strong>Connections</strong>‘ icon. 
<li>Change the <strong>Default</strong> connection from ‘<em>Not Connected</em>‘ to ‘<em>End of Dialog</em>‘.
<li>Click <strong>Save</strong>.
</li>
<li>Close the <b>Property</b> Panel.</li></ol>

### Test

To test the Dialog task, you can use the ‘Talk to bot’ at the bottom right corner.<br>Enter the utterance (intent name): “<em>Transfer Funds</em>."

Follow the Bot instructions and enter the following values;

<ul>
<li>Payer Account – 02929664;</li>
<li>Payee Account – 44994354;</li>
<li>Transfer Amount – 200</li>
</ul>