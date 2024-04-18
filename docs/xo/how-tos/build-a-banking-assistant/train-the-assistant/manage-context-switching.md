# Manage Context Switching

In this post, we explore a Banking Bot scenario where sharing the context across intents, and FAQs helps improve the user experience and efficiency of the Bot. Also, we look at how the context can be used within a dialog flow to determine the sequence of events.

For details on what Context Management is and how it is implemented in the XO platform, click <a href="https://docsinternal-kore.github.io/docs/xo/automation/intelligence/context-management/" target="_blank">here</a>.

## Problem Statement

Consider a Banking Bot trying to address the following scenarios:

* **Sharing content across intents** – Once the user has entered his/her account number, they should not be prompted again in the course of the conversation. 

<div class="admonition note">
<p><b>User</b>: I want to transfer $200 from my account.</p>
<p><b>Bot</b>: Sure, may I have your account number?
// (initiating Transfer Amount task)</p> 
<p><b>User</b>: It's 2343544</p>
<p><b>Bot</b>: What is the payee account number.</p>
<p><b>User</b>: Wait, do I have sufficient funds.
// (transferring to Get Balance task)</p>
<p><b>Bot</b>: What is your account number?</p></div>

Ideally, Get Balance should not be asking for the account number.

* <strong>Context-based dialog flow</strong> – Based on the context, the flow of a given task might change with the Bot making an explicit call to another task as a sub-dialog.

The extended version of the above example is given below:

<div class="admonition note">
<p><b>User</b>: I want to transfer $200 from my account.</p>
<p><b>Bot</b>: Sure, may I have your account number?
// (initiating Transfer Amount task)</p>
<p><b>User</b>: It's 2343544.</p>
<p><b>Bot</b>: What is the payee account number?</p>
<p><b>User</b>: 4355403</p> 
<p><b>Bot</b>: What is your account number?
// (transferring to Get Balance task to check for sufficient funds)</p>
<p><b>User</b>: It's 2343544.</p>
<p><b>Bot</b>: Current balance is $1200.</p>
<p><b>Bot</b>: Amount $200 has been debited from your account. 
//(resuming Transfer Amount task)</p>
</div>

Ideally, **Get Balance** should not ask for the account number and should not display the balance message. It should happen in the background between the two tasks, without the user's knowledge.

* **Follow-up Intents** – Access to certain tasks could be restricted due to security reasons or business requirements. For example, updating account balances should be restricted to **Transfer Amount** flow. Update Account task should not be available directly to the User nor any other task in the Bot.
* **Sharing context between intent and FAQs** – During a task, the user might ask a generic question but within the context. For example, while transferring an amount, the user might ask about rates and the Bot needs to respond with the FAQ related to funds transfer rates.
* **Sharing content across FAQs** – A specific question might be a follow up of a previous query.For example, “*What are the interest rated for credit cards?*” followed by “*What are the charges?*”, the charges reference is to the credit cards.

This document gives a step-by-step approach to achieving all the above-mentioned scenarios using – context tags and variables, input pre-conditions and output context, and emit entity value features of the platform.

## Prerequisites

* Bot building knowledge
* A <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/design-conversation-skills/create-a-sample-banking-assistant/" target="_blank">Banking Bot</a> with the dialogs as mentioned below:
    * <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/design-conversation-skills/create-a-sample-banking-assistant/#get-balance-intent" target="_blank">Get Balance</a> – Dialog task prompting the user for their Account Number and displaying the available balance in the account.
    <img src="../images/get-balance-context-switching.png" alt="get balance context switching" title="get balance context switching" style="border: 1px solid gray; zoom:75%;">

    * <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/design-conversation-skills/create-transfer-funds-task/" target="_blank">Transfer Funds</a> – Dialog task prompting the user for Payer and Payee account numbers and the amount to be transferred and transferring the specified amount from the payer account to the payee account.
    <img src="../images/transfer-funds-context-switching.png" alt="transfer funds context switching" title="transfer funds context switching" style="border: 1px solid gray; zoom:75%;">

    * <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/design-conversation-skills/create-balance-task/" target="_blank">Update Account</a> – Dialog task prompting the user for Account Number that needs to be updated, the Amount to be updated and whether the amount needs to be credited or debited and updating the Account balance accordingly.
    <img src="../images/update-account-context-switching.png" alt="update account context switching" title="update account context switching" style="border: 1px solid gray; zoom:75%;">

    * <a href="https://docsinternal-kore.github.io/docs/xo/answers/knowledge-ai/build-a-knowledge-graph/" target="_blank">Knowledge Collection</a> – Frequently asked questions related to the bank.
    <img src="../images/faq-knowledge-collection.png" alt="FAQ knowledge collection" title="FAQ knowledge collection" style="border: 1px solid gray; zoom:75%;">

## Implementation Steps

Let us consider each of the above scenarios one by one.

### Sharing content across intents

Sharing content needs to be handled differently in the two cases mentioned:

* **Bot-driven transition** – This can be handled at the time of Bot development by invoking the corresponding intent and passing the data through entity pre-assignment.
* **User-driven transition** – This is a bit complex since we have no way of knowing when, during the current task flow, the user would make such a request and it requires a combination of tags, entity emission, and extraction.

### Task-driven Context switching

The following is the scenario where the **Transfer Amount** dialog invokes the **Get Balance** task to check if the Payer Account has sufficient funds for the transfer.
<img src="../images/task-driven-context-switching-scenario.png" alt="task driven context switching" title="task driven context switching" style="border: 1px solid gray; zoom:75%;">

We will be using the Bot scoped Context Variables and Entity pre-assignments to achieve this.

**Steps to Check Funds and Transfer**

We need to invoke Get Balance from Transfer Amount, check for funds and proceed accordingly

1. Open the **Transfer Amount** dialog.
2. Add a _Dialog Node_, _Bot Action Node_ with a _Script Node_, and a _Message Node_ as follows:
<img src="../images/add-dialog-node-context-switching.png" alt="add dialog node" title="add dialog node" style="border: 1px solid gray; zoom:75%;">

* **Dialog Node** will invoke the Get Balance using the Entity Pre-Assignments to populate:
    * **Account Number** – entity required in the Get Balance dialog set to _Payer Account_ number
    * **Add Key/Value** – pair `context.type` and _transfer_ identifying the Transfer Amount intent. This will be checked in the Get Balance dialog as shown in the next step to modify the flow.
    * Ensure that the **Transition Option** is set to Initiate **Get Balance**, once complete return to this node.

    <img src="../images/transition-option.png" alt="transition option" title="transition option" style="border: 1px solid gray; zoom:75%;">

    * **Script Node** – _CheckBalance_ to check the balance in the payer account with the amount to be transferred and proceed accordingly. Balance in the payer account is obtained from a BotContext variable that will be populated by the Get Balance dialog.

```js
var nextStep = "";
if (context.session.BotUserSession.Balance >= context.entities.Amount)
nextStep = "update";
context.nextStep = nextStep;
```

<img src="../images/script-node-properties.png" alt="script node properties" title="script node properties" style="border: 1px solid gray; zoom:75%;">

* **Connection Settings**: Bot Action Connections should indicate to proceed to UpdateBalance in case of sufficient funds (if the `context.nextStep` is _update_ from the above script) else go to message node.
<img src="../images/bot-connections.png" alt="bot connections" title="bot connections" style="border: 1px solid gray; zoom:75%;">

* **Message Node** to display the insufficient funds message

Next, let us modify the **Get Balance** dialog to check for transfer tag and populate the Bot Context variable if needed with the steps below:

1. Open the **Get Balance** dialog.
2. Open the **BalanceMessage** (the final message node) node.
3. Under **Bot Responses** section open the **Manage Responses** dialog.
4. Add the following **JavaScript**. This script populates the Bot Context variable with Account Balance if the request comes from Transfer Amount task else displays the usual balance message. 

```js
if (context.type == "transfer");
BotUserSession.put('Balance', context.GetAccountBalance.response.body.Balance);
else
print ('The Balance in your account is ' + context.GetAccountBalance.response.body.Balance);
```

<ol start="5"><li>Test the Bot to see the changes in action.</li></ol>

### User triggered context switching

The following is an example of this use case. Users can at any point and time during the Transfer Amount check account balance before proceeding with the transfer.

<img src="../images/user-triggered-cs.png" alt="user triggered context switching" title="user triggered context switching" style="border: 1px solid gray; zoom:75%;">

Let us see how this can be achieved. We will be using historic tags – system generated and custom tags. The historic tags get transmitted from one intent to another automatically.

**Steps to Check Funds Balance During Transfer**

First, modify the Transfer Amount to populate the appropriate tags and configure the Hold and Resume settings:

1. Open the **Transfer Amount** dialog.
2. Open the properties panel of **PayerAccount** entity.
3. From the **NLP** tab, set the _Auto emit the entity values captured_ flag. This will ensure that the Payer Account number is saved in the context. Since it is the first value being emitted by this intent, it would be positioned next to the intent name in the tags array.
4. Next, open the **Manage Interruptions** dialog from the **more** (vertical ellipses) option.
5. Customize the settings for this task as **Allow hold and resume** and set the **Hold Options** to _Hold the current task and resume back once the new task is completed_ and the **Resume Options** to _Resume the on hold task without any specific message to the user_.

Next, modify the **Get Balance** dialog to capture the data sent by the Transfer Amount with the steps below:

1. Open the **Get Balance** dialog.
2. Add a **Script node** – _CheckAcId_ to check if the Account Number is available in the context, after the Intent node.
3. Add the following **script**. This script checks for the Intent “*Transfer Amount*." Captures the account number and populates the AccountNumber entity with that value.

```js
var i = koreUtil._.indexOf(context.historicTags[0].tags, 'Transfer Amount')
context.entities.AccountNumber = context.historicTags[0].tags[i+1]
```

<ol start="4"><li>Run the Bot and see the changes taking effect.</li></ol>

### Follow up Intents

The **Update Account** intent should be invoked only through **Transfer Amount**. There are two things that can be done:

1. Restricting user access:

    * Open the **Update Account** dialog.
    * Access **Dialog Settings** from the **more** (vertical ellipses) option.
    * Set **Options** to _Sub intent only_ dialog.
    * This will restrict user access to this dialog, this dialog will not be available either directly or from the Help option.

2. Restricting task access:

    * Open the **Update Balance** dialog.
    * Open the **UpdateBalance** intent, **NLP Properties** tab.
    * Under the **Manage Context** section add.“_Transfer_” to the **Intent Preconditions**.

    This will ensure that this dialog is executed only if **Transfer** exists in context.

    * Open **Transfer Amount** dialog.
    * Open the **TransferAmount** intent node, **NLP Properties** tab.
    * Under the **Manage Context** section add“_Transfer_” to the **Context Output** as expected by the Update Balance dialog.
    * Now the Update Balance can not be triggered by any other dialog.

### Sharing context across FAQs

The following Knowledge Collection is used in this scenario:

**Primary Question**: *What are the interest rates for credit cards?*

**Primary Question**: *What are the charges for credit cards?*

**Alternate**: *What are the charges?*

<img src="../images/sharing-context-across-faqs.png" alt="sharing context across faqs" title="sharing context across faqs" style="border: 1px solid gray; zoom:75%;">

The use case is as follows:

<img src="../images/use-case-sharing-context-faq.png" alt="use case sharing context faq" title="use case sharing context faq" style="border: 1px solid gray; zoom:75%;">

In the second question, the word _charges_ is in the context of the credit card. To enable it, all you need is set a flag, rest the platform takes care. For each question answered the Context tags are set automatically, we just instruct the platform to use them appropriately.

1. Go to **Natural Language** > **NLU Config**.
2. Expand the **Knowledge Collection** tab.
3. Scroll down and set the **Qualify Contextual Paths** tag. With this setting, the KG engine will qualify a question if any of the available context tags are part of that particular FAQ path.
4. Run the bot and see the effect.

### Sharing context between intents and FAQs

The following Knowledge Collection is used in this scenario:

**Primary Question**: *What are your transfer rates?* 

**Alternate**: *What are the rates?*

The use case here is that the user might, during the transfer amount, ask about the rates. This should result in the appropriate FAQ being triggered to answer the query.

<img src="../images/context-switching-test.png" alt="context switching test" title="context switching test" style="border: 1px solid gray; zoom:75%;">

The default setting for the Interruption Behavior for FAQs will ensure that the FAQs are attended to while a Dialog Task is in progress.

But this will not solve the use case described. It would answer the direct question – “_What are the transfer rates_” but not “_What are the rates_”. The reason being the FAQ not picking the context. To ensure that the context is picked by the FAQ:

1. The **Transfer Amount** task is already emitting the _transfer_ tag, the same will be used in this case.
2. Go to **Natural Language** > **NLU Config**.
3. Expand the **Knowledge Collection** tab.
4. Scroll down and set the **Qualify Contextual Paths** tag (if not already set as per previous use case).
5. Run the Bot and see the changes taking effect.