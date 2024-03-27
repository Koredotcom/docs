# Travel VA: Manage Context Switching

In this Use Case, we will explore a scenario in a Travel Planning Assistant, where, sharing the context across intents, FAQs help in improving the user experience and the assistant’s efficiency. Also, we will be looking at how the context can be used within a dialog flow to determine the sequence of events.

For details on what Context Management is and how it is implemented in the XO Platform, click <a href="https://docsinternal-kore.github.io/docs/xo/automation/intelligence/context-management/" target="_blank">here</a>.

## Problem Statement

Consider a Travel Planning VA trying to address the following scenarios:

* **Sharing content across intents** – Once the user has entered his/her booking number, they should not be prompted for it again in the course of the conversation.

<div class="admonition note">
<p><b>User</b>: I want to change my seat.</p> 
<p><b>VA</b>: Sure, may I have your booking number? (initiating Change Seat Task)</p>
<p><b>User</b>: It's 2343544</p>
<p><b>VA</b>: What is the new seat you would prefer?</p> 
<p><b>User</b>: I want extra legroom. What options do I have? 
(transferring to Get seat task)</p>
<p><b>VA</b>: What is your booking number?</p>

Ideally, Get Seat should not be asking for the flight number again.</div> 

* <strong>Context-based dialog flow</strong> – Based upon the context, the flow of a given task might change with the assistant making an explicit call to another task as a sub-dialog. 
Extending the above example:

<div class="admonition note">
<p><em>User</em>: I want to change my seat.</p>
<p><b>VA</b>: Sure, may I have your booking number? (initiating Change Seat Task)</p>
<p><b>User</b>: It’s 2343544</p>
<p><b>VA</b>: What is the new seat you would prefer?</p>
<p><b>User</b>: Seat 12A, please. (transferring to Get seat task)</p> 
<p><b>VA</b>: Your current seat is 25B.</p> 
<p><b>VA</b>: I have changed your seat to Seat 12A.</p>
 
Ideally, Get Seat  should not ask for the flight number and should not display the current seat message. It should happen in the background between the two tasks, without user knowledge.</div>

* **Follow-up Intents** – Access to certain tasks could be restricted due to security reasons or business requirements. Additionally, other tasks could be made inaccessible to the user; or even to the assistant.

    For example, updating seats should be restricted to the Change Seat flow. An _Update Booking_ task should not be available directly to the User nor any other task in the assistant.

* **Sharing context between intent and FAQs** – During a task, the user might ask a generic question but within the context. 
For example, while changing seats, the user might ask if there is a fee; and the assistant needs to respond with the FAQ related to seat change  rates.
* **Sharing content across FAQs** – A specific question might be a follow up of a previous query. 
For example, “_Are there any charges for a flight change? ?_” followed by “_What are the charges?_”The charges reference is to the flight change.

    Having this problem statement in view, this document provides a detailed step-by-step approach to achieving all the above-mentioned scenarios using – context tags and variables, input pre-conditions and output context, and emit entity value features of the Platform.

## Prerequisites

* Knowledge on how to <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-travel-planning-assistant/create-a-travel-virtual-assistant/" target="_blank">build a virtual assistant</a>. 
* A Virtual Assistant with the Dialog Tasks mentioned below – See an overview <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-travel-planning-assistant/travel-assistant-overview/" target="_blank">here</a>.
* **Check Flight Status**– This task prompts the user to enter their flight number and displays its status.

    <img src="../images/flightstatus-task.png" alt="flight status task" title="flight status task" style="border: 1px solid gray; zoom:75%;"> 

* **Change Flight** – This task prompts the user for their Current Flight and New Flight, then performs the flight change.

    <img src="../images/changeflight-task.png" alt="change flight task" title="change flight task" style="border: 1px solid gray; zoom:75%;">

* **Update Booking** – A Dialog Task that asks the user for the number of the booking to update and the update that needs to be made, then performs the update.<img src="../images/update-booking.png" alt="update booking" title="update booking" style="border: 1px solid gray; zoom:75%;">

* **Knowledge Graph**– Frequently asked questions that the assistant handles.
<img src="../images/kg-faqs.png" alt="knowledge graph FAQs" title="knowledge graph FAQs" style="border: 1px solid gray; zoom:75%;">

## Implementation

Let us consider each of the above scenarios one by one.

### Sharing content across intents

Sharing content needs to be handled differently in the two cases mentioned:

* **Task-driven transition** – This can be handled at the time of development by invoking the corresponding intent and passing the data through entity pre-assignment.
* **User-driven transition** – This is a bit complex since we have no way of knowing when, during the current task flow, the user would make such a request and it requires a combination of tags, entity emission, and extraction.

### Task-driven Context switching

The following is the scenario where the Change Flight dialog invokes the Check Flight Status task to ensure that the flight is available to book.

<img src="../images/task-driven-context-switching.png" alt="task driven context switching" title="task driven context switching" style="border: 1px solid gray; zoom:75%;">

We will be using the Context Variables and Entity Pre-Assignments to achieve this.

We need to invoke Check Flight Status from Change Flight, check flight availability and follow the steps below:

1. Open the **Change Flight** dialog task.
2. Add a _Dialog Node_, _Bot Action Node_ with a _Script Node_, and a _Message Node_ as follows:
    * **Dialog Node** will invoke the Check Flight Status  using the Entity Pre-Assignments to populate:
        * **Flight Number** – entity required in the Check Flight Status  dialog set to `context.entities.currentflight`
        * **Add Key/Value** – pair `context.type` and _change_ identifying the Change Flight  intent. This will be checked in the Check Flight Status  dialog as shown in the next step to modify the flow.
        * Ensure that the **Transition Option** is set to Initiate _Check Flight Status_,., once complete return to this node.
        
        <img src="../images/transition-node.png" alt="transition node" title="transition node" style="border: 1px solid gray; zoom:75%;">

    * **Message Node** to display a message that the new flight is not available to book. Connect this message back to the **New Flight** Entity node, so that the user be prompted to select a different flight.
    * **Script Node** – _CheckStatus to check the status of the new flight to change to_, and proceed accordingly. The Status of the new flight is obtained from a BotContext variable that will be populated by the Check Flight Status dialog task. 

```js
var nextStep = ""; 
if (context.session.BotUserSession.Status >= context.entities.seat) 
nextStep = "update"; 
context.nextStep = nextStep; 
```

<img src="../images/script-node-check-status.png" alt="script node check status" title="script node check status" style="border: 1px solid gray; zoom:75%;">

* **Connection Settings** Bot Action Connections should indicate to proceed to UpdateBooking in case the new flight is available (if the `context.nextStep` is _updated_ from the above script) else go to the message node.
<img src="../images/connection-settings.png" alt="connection settings" title="connection settings" style="border: 1px solid gray; zoom:75%;">

Next, let us modify the **Check Flight Status** dialog to check for the _change_ tag and populate the Bot Context variable if needed.

1. Open the **Check Flight Status** dialog.
2. Open the **Flight Status Confirmation** (the final message node) node.
3. Under **Bot Responses** section open the **Manage Responses** dialog.

Add the following **JavaScript**. This script populates the Bot Context variable and updates the seat  if the request comes from the Change Flight task, else displays the usual flight status message.

```js
if (context.type == "change")
  BotUserSession.put('Sear', context.CheckFlightStatus.response.body.Seat);
else
  print ('The status of your flight is  ' + context.CheckFlightStatus.response.body.Status);
```


Talk to the Bot to see the changes in action.

### User triggered context switching

While asking to change their flight, users might ask for the status of the flight that they want to switch to.

<img src="../images/user-triggered-context-switching.png" alt="user triggered context switching" title="user triggered context switching" style="border: 1px solid gray; zoom:75%;">

Let us see how this can be achieved. We will be using historic tags – system generated and custom tags. The historic tags get transmitted from one intent to another automatically.

First, modify the Change Flight task to populate the appropriate tags and configure the Hold and Resume settings. Follow the steps below to complete the process:

1. Open the **Change Flight** dialog.
2. Open the properties panel of **CurrentFlight** entity.
3. From the **NLP** tab, set the _Auto emit the entity values captured_ flag. This will ensure that the Current Flight  number is saved in the context. Since it is the first value being emitted by this intent, it would be positioned next to the intent name in the tags array.
4. Next, open the **Manage Interruptions** dialog from the **more** (vertical ellipses) option.
5. Customize the settings for this task as **Allow hold and resume** and set the **Hold Options** to _Hold the current task and resume back once the new task is completed_ and the **Resume Options** to _Resume the on hold task without any specific message to the user_.
6. Next, modify the Check Flight Status dialog to capture the data sent by the **Change Flight** task.
7. Open the **Check Flight Status** dialog.
8. Add a **Script node** – _CheckFlightNumber_ to check if the Flight Number is available in the context, after the Intent node.
9. Add the following **script**. This script checks for the Intent “Change Flight”, captures the flight number and populates the FlightNumber entity with that value.

```js
var i = koreUtil._.indexOf(context.historicTags[0].tags, 'Change Flight');context.entities.FlightNumber = context.historicTags[0].tags[i+1]`
```

<ol start=10"><li>Run the VA and see the changes taking effect.</li></ol>

### Follow-up Intents

The **Update Booking** intent should be invoked only through the Change Flight task. There are two things that can be done:

1. Restricting user access:
    * Open the **Update Booking** dialog.
    * Access **Dialog Settings** from the **more** (vertical ellipses) option.
    * Set **Options** to _Sub intent only_ dialog.
    * This will restrict user access to this dialog, this dialog will not be available either directly or from the Help option.

2. Restricting task access:
    * Open the **Update Booking** dialog.
    * Open the **UpdateBooking** intent, **NLP Properties** tab.
    * Under the **Manage Context** section add “_Change_” to the **Intent Preconditions**.

This will ensure that this dialog will be executed only if Change exists in the context.

* Open **the Change Flight** dialog.
* Open the **ChangeFlight** intent node, **NLP Properties** tab.
* Under the **Manage Context** section add “_Change_” to the **Context Output** as expected by the Update Booking dialog.
* Now the Update Booking can not be triggered by any other dialog.

### Sharing context across FAQs

The following Knowledge Graph is used in this scenario:

**Primary Question**: What are the compensations for a canceled flight?

**Primary Question**: What are the charges for changing flights?

**Alternate**: What are the charges?
<img src="../images/sharing-context-faq.png" alt="sharing context faq" title="sharing context faq" style="border: 1px solid gray; zoom:75%;">

In the second question, the word _charges_ is in the context of changing flights. To enable it, all you need is to set a flag. For each question answered the Context tags are set automatically, we just instruct the Platform to use them appropriately.

1. Go to **Natural Language > NLU Config**.
2. Expand the **Knowledge Graph** tab.
3. Scroll down and set the **Qualify Contextual Paths** tag. With this setting, the KG engine will qualify a question if any of the available context tags are part of that particular FAQ path.
4. Run the assistant and see the effect.

### Sharing context between intents and FAQs

The following Knowledge Graph is used in this scenario:

**Primary Question**: What are your flight change rates?

**Alternate**: what are the rates?

The use case here is that the user might, while changing flights, ask about the rates. This should result in the appropriate FAQ being triggered to answer the query.

The default setting for the Interruption Behavior for FAQs will ensure that the FAQs are attended to while a Dialog Task is in progress.

But this will not solve the use case described. It would answer the direct question – “_What are the flight change rates_” but not “_What are the rates_”. The reason being the FAQ not picking the context. To ensure that the context is picked by the FAQ:

1. The **Change Flight** task is already emitting the _change_ tag, the same will be used in this case.
2. Go to **Natural Language** **>** **NLU Config**.
3. Expand the **Knowledge Graph** tab.
4. Scroll down and set the **Qualify Contextual Paths** tag (if not already set as per the previous use case).
5. Run the assistant and see the changes taking effect.