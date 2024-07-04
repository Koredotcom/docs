# Events

Events are triggered when specific actions occur during a conversation with the Virtual Assistant  or when specific events are triggered on any active channels.

To access **Events**, navigate to **Automation AI > Virtual Assistant > Conversation Intelligence > Events**.


<img src="../images/access-event-handlers-window.png" title="access event handlers" style="border: 1px solid gray; zoom:75%;">

## Event Actions

Developers can define what action the VA should take when an event is triggered using one of the following options:

### Initiate a Task

Select a Dialog task (Standard or Hidden) to be invoked when the event triggers. Once the event is triggered, the dialog starts executing. If it is interrupted by other intent detections, the Hold and Resume settings come into play. During execution, the event is discarded if the selected Dialog is not published in the VA.

In some cases, the Dialog may not be available to the user during a conversation for various reasons, such as the task not being published, suspended, or simply not having been assigned to the user. In such cases, the VA shows an error message that the task is not currently available for execution.

Developers can preempt such situations by testing the VA in Debug mode. The Debug Console shows full details about the error, including why the task is not available.

### Run a Script

Define a JavaScript to run when the event triggers. The script can use all applicable components, such as session, context objects, variables, and functions. You can also fix the code using the Debug mode.

### Show a Message

When the event triggers, define a simple or advanced message for the user. It supports all messaging formatting features available in the XO Platform, including multiple messages with channel override options.  
<img src="../images/show-a-message.gif" alt="show a message" title="show a message" style="border: 1px solid gray; zoom:75%;">

#### Multilingual VA Behavior for Messages

* You can define language-specific messages;
* If a message is deleted from an Event for a specific language, then it will be removed from all other languages of the VA;
* If a message is added for a language, then the message would be added in all other languages using the same content;
* If a message is modified in a language, the modifications will be applied only to that language. [Learn more](../../sdk/web-mobile-sdk-message-formatting-and-templates.md).

## Event Types

Events are classified as **Intent Events**, **Conversation Events**, and **Sentiment Events**. 
<img src="../images/event-types-window.png" alt="event types" title="event types" style="border: 1px solid gray; zoom:75%;">

You can configure the following events to trigger responses:
<table border="1.5">
<tr bgcolor="#ECECEC">
   <td><strong>EVENT</strong>
   </td>
   <td><strong>TRIGGER</strong>
   </td>
  </tr>
  <tr>
   <td colspan="2" ><strong>Intent Events</strong>
   </td>
  </tr>
  <tr>
   <td>Intent not Identified
   </td>
   <td>Runs every time the VA cannot understand the user’s intent.
   </td>
  </tr>
  <tr>
   <td>Ambiguous Intents Identified
   </td>
   <td>On identifying ambiguous intents from the user utterance
   </td>
  </tr>
  <tr>
   <td colspan="2" ><strong>Conversation  Events</strong>
   </td>
  </tr>
  <tr>
   <td>End of Task
   </td>
   <td>On completing a task (Dialog Task or FAQ)
   </td>
  </tr>
  <tr>
   <td>Task Execution Failure
   </td>
   <td>On encountering an error in dialog task execution like:
<ul>

<li>An error in the execution of the VA,

<li>Service call failure,

<li>Unable to reach the server

<li>Error in invoking agent node in case of agent transfer,

<li>Knowledge Graph Task failures,

<li>Webhook node failures,

<li>Dialog related to a sub-dialog node is not available,

<li>Exceptions in parsing the VA message.
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>RCS Opt-in Event
   </td>
   <td>On receiving the message that a user has opted for the RCS Messaging channel.
   </td>
  </tr>
  <tr>
   <td>RCS Opt-out Event
   </td>
   <td>On receiving the message that a user has opted out of the RCS Messaging channel.
   </td>
  </tr>
  <tr>
   <td>Repeat Bot Response Event
   </td>
   <td>On identifying the user's request to repeat the bot responses.
   </td>
  </tr>
  <tr>
   <td colspan="2" ><strong>Sentiment Events</strong>
   </td>
  </tr>
  <tr>
   <td>
   </td>
   <td>You can define multiple sentiment events. Click<strong> + New Event</strong> to define an event based on which to capture the user’s emotion.
   </td>
  </tr>
</table>

## Event Configuration

### Intent Events

#### Intent not Identified 

When the VA cannot understand the user’s intent, this event determines the subsequent behavior. You can choose one of the following options:

* **Show a standard message from the standard responses**. [Learn more](../intelligence/conversation-management/standard-responses.md){target="_blank"}.
* **Automatically run a dialog task**. You can use the dropdown to select the task you want to run.
    <img src="../images/intent-not-available-event.png" alt="intent not available" title="intent not available" style="border: 1px solid gray; zoom:75%;">

#### Ambiguous Intents Identified 

When the NLP engine identifies ambiguous intents from user utterances, by default, the virtual assistant displays a list of those intents during the conversation and requests the user to make a selection.

This default behavior is ideal for most of the use cases. However, using the Ambiguous Intents Identified event, you can customize this behavior for specific use cases. The event is triggered in the following scenarios:

* Two or more ‘definite’ intents are identified.
* Two or more ‘possible’ intents are identified and their scores lie within the defined proximity thresholds.
* Only low-confidence intents are identified from the Knowledge Graph, and no other intents are identified from other engines.

You can build custom business logic to analyze ambiguous intents, define appropriate conversation flow using a Dialog Task, and associate it with the Ambiguous Intents Identified event. 

By customizing the flow, you can avoid displaying ambiguous intents to the end user and redirect the conversation to the desired task. You can use the `koreUtil.getAmbiguousIntents()` function to retrieve the list of ambiguous intents and their confidence scores. For more information on the function, click [here](../../apis/automation/koreutil-libraries.md#koreutilgetambiguousintents).

<img src="../images/ambiguous-intents-event-window.png" alt="ambiguous intents event" title="ambiguous intents event" style="border: 1px solid gray; zoom:75%;">

##### Event Configuration

To configure the Ambiguous Intents Identified event follow these steps:

1. Go to **Conversation Intelligence > Events > Intent Events**. By default, this event is disabled for all existing and new VA..
2. Click **Configure** to enable the event.
    <img src="../images/configure-intent-events.png" alt="configure intent events" title="configure intent events" style="border: 1px solid gray; zoom:75%;">

    !!!note
        If not enabled, the list of ambiguous intents is presented to the user during the conversation.

3. You can select the following options in the Configuration panel:
    * **Present all the qualified intents to the end-user for disambiguation**: This is the default selection in which the standard response related to the ambiguous intent(s) is presented. [Learn more](../intelligence/conversation-management/standard-responses.md).

    * **Automatically run a Dialog Task**: This option lets you select a Dialog Task. Select this option if you want to build custom business logic to analyze the ambiguous intents, define appropriate conversation flow using a Dialog Task, and associate it with the Ambiguous Intents Identified event. [Learn more](../intelligence/conversation-management/conversation-driven-dialog-builder.md).

    <img src="../images/ambiguous-intents-identified.png" alt="ambiguous intents identified" title="ambiguous intents identified" style="border: 1px solid gray; zoom:75%;"></li></ul>

4. Click the button **Save & Enable** to enable the event.

!!!note 
    During the conversation with your Virtual Assistant, if there are ambiguous intents, a message is displayed in the Debug Log that Multiple intents are identified, and the **Ambiguous Intents Identified event is initiated**.

<img src="../images/multiple-intents-identified.png" alt="multiple intents identified" title="multiple intents identified" style="border: 1px solid gray; zoom:75%;">

##### Interruption Management

When the event is enabled, interruption behavior is handled as defined at the node, dialog, or VA level for ambiguous intents.

The only exception is when you select the Continue the current task and add a new task to the follow-up task list option. The conversation continues as is with the current task, and any interrupting task will not be added to the follow-up list. [Learn more](../intelligence/conversation-management/manage-interruptions.md){target="_blank"}.

### Conversation Events

#### End of Task

*End of Task* is triggered when the VA is not expected to send any message to the user or receive any message from the user.

A new flag indicating the reason for ending the task, added to the _end of task_ event, will help decide the end of the conversation behavior. Client-side implementations of BotKits, RTM, and Webhook channels can use this reason for the task completion flag to determine an appropriate course of action.

On triggering this event, the context will be updated with the following details:

* Reason for triggering event (see the table below).
* Name of the task that has just ended. If it’s an FAQ, then the task name will be set to ‘FAQ’.

<table border="1.5">
<tr bgcolor="#ECECEC">
   <td>
<strong>SCENARIO</strong>
   </td>
   <td><strong>END OF TASK FLAG</strong>
   </td>
  </tr>
  <tr>
   <td>Reached the last node of the dialog
   </td>
   <td>Fulfilled
   </td>
  </tr>
  <tr>
   <td>The task is canceled by the user
   </td>
   <td>Canceled
   </td>
  </tr>
  <tr>
   <td>Error in a task or FAQs execution (without Task Failure Event, no hold tasks)
   </td>
   <td>Failed
   </td>
  </tr>
  <tr>
   <td>Linked dialog completed without returning to the parent dialog
   </td>
   <td>Fulfilled_LinkedDialog
   </td>
  </tr>
  <tr>
   <td>On answering a FAQ
   </td>
   <td>Fulfilled
   </td>
  </tr>
  <tr>
   <td>Successful event execution with Run Script or Show Message (no tasks on hold)
   </td>
   <td>Fulfilled_Event
   </td>
  </tr>
  <tr>
   <td>Error in executing an event with Run Script or Show Message (no tasks on hold)
   </td>
   <td>Failed_Event
   </td>
  </tr>
  <tr>
   <td>The user declines to resume the on-hold task (when no other task is on hold)
   </td>
   <td>Canceled
   </td>
  </tr>
</table>

#### Task Execution Failure Event

* By default, this event is always enabled with the _Show Message_ option. This event cannot be disabled.
* This VA-level behavior can be overridden for specific tasks by defining task-specific failure events from the dialog task settings. [Learn more](../../automation/use-cases/dialogs/using-the-dialog-builder-tool.md#dialog-settings).

    <img src="../images/task-execution-failure-event.png" alt="task execution failure event" title="task execution failure event" style="border: 1px solid gray; zoom:75%;">
    
#### RCS Opt-In / Opt-Out Events

These events trigger on receiving **_opt-in_** or **_opt-out_** requests from users via the RCS channel. These events allow you to configure a response to be sent to the user as a follow-up for their action.
<img src="../images/rcs-opt-in.png" alt="rcs opt-in" title="rcs opt-in" style="border: 1px solid gray; zoom:75%;">

#### Repeat Bot Response Event

The **Repeat Bot Response** event is triggered to repeat the last bot response when certain predefined or custom-trained utterances are detected in voice channels such as IVR, Audiocodes, or Twilio Voice. 

To enable this event, the developer must define the context object as a precondition for triggering the event. This context object contains the specific set of utterances that should be recognized to repeat the bot’s most recent or last response.

By configuring the context object with appropriate utterances, the bot can understand specific phrases or keywords from the user to trigger the **Repeat Bot Response** event. When one of these utterances is detected, the bot will repeat the last response.

A developer can activate the **Repeat Bot Response** event and custom-train when this event can be triggered with conditions at any point in the conversation and can ask the bot to repeat its recent responses.

!!!note

    The Repeat Bot Response event uses the NLU multilingual model for non-English languages.

The following are some of the scenarios and the repeat bot response event behavior in those scenarios:

<table border="1.5">
<tr bgcolor="#ECECEC">
   <td><strong>SCENARIO</strong>
   </td>
   <td><strong>REPEAT BOT RESPONSE EVENT BEHAVIOR</strong>
   </td>
  </tr>
  <tr>
   <td>In the middle of the conversation
   </td>
   <td>Repeat event gets triggered.
   </td>
  </tr>
  <tr>
   <td>Conflict between Intent and Repeat event
   </td>
   <td>Intent gets prioritized.
   </td>
  </tr>
  <tr>
   <td>Conflict between Sub-Intent and Repeat
   </td>
   <td>Sub-intent gets prioritized.
   </td>
  </tr>
  <tr>
   <td>Conflict between FAQ and Repeat event
   </td>
   <td>FAQ gets prioritized.
   </td>
  </tr>
  <tr>
   <td>Conflict between group node sub-intent and repeat event
   </td>
   <td>Group node sub-intent gets prioritized.
   </td>
  </tr>
  <tr>
   <td>If the repeat event is enabled in a Standard VA and disabled in the Universal Bot (UB)
   </td>
   <td>UB settings take precedence, and the event defined in UB is triggered even if the current conversation context is in a Linked Bot.
   </td>
  </tr>
</table>

##### Use Case Scenario

**Problem Statement**

In the Flight Booking VA, the user couldn’t hear the last response on an IVR channel, and the user said, `"Sorry, I can't hear you. Can you please repeat it again?"`

In this conversation, the dialog has reached the end, and the last response says, `"Thank you. Your flight has been booked successfully. Your booking reference number is XYZ789 and you will receive a message shortly "`(Dialog reached to END).

**Solution**

If the conversation session is not closed or the call is not disconnected after the end of the dialog, the Repeat Bot Response event is triggered, and the last message of the dialog task is repeated when you configure a task in the End of Task event with a message that says `"Is there anything else I can help you with?"`. For more information, see the [End of Task](../../automation/intelligence/event-handling.md#end-of-task) section.

Now the ‘Repeat Bot Responses’ event considers the end of dialog after the ‘Last User Input’ configuration, the repeat response will say, `"Thank you. Your flight has been booked successfully. Your booking reference number is XYZ789 and you will receive a message shortly. Is there anything else I can help you with?".`

##### Enabling the Repeat Bot Response Event

The developer uses the **Repeat Bot Response** to allow you to repeat the responses that users might have missed or if it is not clear during the conversation on an IVR channel.

**Steps to Enable the Repeat Bot Response Event**

1. Navigate to **Conversation Intelligence > Events**.
2. Turn on the toggle to enable the to enable the **Repeat Bot Response Event**.
<img src="../images/repeat-bot-responses-window.png" alt="repeat bot responses" title="repeat bot responses" style="border: 1px solid gray; zoom:75%;">

3. Click **Manage Utterance** to review the pre-trained utterances that are added to the VA by default.
<img src="../images/manage-utterances-event.png" alt="manage utterances" title="manage utterances" style="border: 1px solid gray; zoom:75%;">

4. You can add more utterances and click the **Train** link.
<img src="../images/click-train-link.png" alt="click train link" title="click train link" style="border: 1px solid gray; zoom:75%;">

5. Once Utterances are trained, you can add the following preconditions:

    * **Channels** – Allows you to add voice channels such as IVR, IVR Audiocodes, or Twilio Voice.
    * **Context Tags** – Allows you to add the context objects to trigger the Repeat Bot Response event. For more information, read the [Context Object](../intelligence/context-object.md){target="_blank"} article.
    <img src="../images/channels-and context-tags.png" alt="channels and context tags" title="channels and context tags" style="border: 1px solid gray; zoom:75%;">
 
!!!note

    The context tags are added to trigger the repeat bot responses whenever the dialog task with that particular context is executed. For example, when a book a flight dialog task is executed, then the context tag will trigger the repeat bot response event for that particular dialog task.

<ol start="6"><li>Select the <b>Event Configuration</b> options to define how to repeat the response:</li>
<ul><li><b>Repeat Only Last Bot Response</b> – By default, this option is selected with a filler message: "<i>Sure, I will repeat it for you.</i>"
<img src="../images/repeat-bot-response-event.png" alt="repeat bot response event" title="repeat bot response event" style="border: 1px solid gray; zoom:75%;">

You can edit or add the filler message for the repeat bot response event before it is triggered.
<img src="../images/add-filler-message.png" alt="add filler message" title="add filler message" style="border: 1px solid gray; zoom:75%;"></li></ul>

<li>Click <b>+Add Filler Message</b>, select the <b>IVR</b> channel, enter the filler messages and then click <b>Done</b>.
<img src="../images/add-filler-to-ivr.png" alt="add filler to ivr" title="add filler to ivr" style="border: 1px solid gray; zoom:75%;">

<ul><li>When the Repeat Bot Response event is triggered, these filler messages are used in the IVR channel conversation before repeating the response.
<img src="../images/use-filler-message.png" alt="use filler message" title="use filler message" style="border: 1px solid gray; zoom:75%;"></li></ul>

<ul><li><b>Auto-generate Response</b> – When you select this option, you are redirected to enable the Advanced NLU model, if not enabled, to generate the bot response using the LLM and Generative AI engine.</li></ul>   
<img src="../images/auto-generate-response.png" alt="auto-generate responses" title="auto-generate responses" style="border: 1px solid gray; zoom:75%;">  

<li>Click <b>Enable Now</b> to define the Advanced NLU Settings for the <b>LLM and Generative</b> model and enable the Repeat Responses feature.</li></ul></ol>

!!!note

    When the Auto-generate response option is enabled, the repeat bot response event will not use the filler messages that were defined in the previous step. The responses are automatically sent from the LLM and Generative model when the event is triggered.

<ol start="9"><li>Expand the Advanced Settings and define the following options to repeat the response:</li>
<ul><li><b>Repeat Attempts Limit</b> – Set the number of retry attempts to repeat a response. The accepted value is between <b>1</b> and <b>10</b>. The default is <b>5</b>.</li>
<li><b>Behavior on Exceeding Repeat Attempts</b> – Define what VA must do after exceeding the number of retry attempts to repeat the response. You can choose either the <b>End of Dialog</b> or <b>Initiate Dialog</b> option.

<img src="../images/behavior-on-exceeding-repeat-attempts.png" alt="behavior on exceeding repeat responses" title="behavior on exceeding repeat responses" style="border: 1px solid gray; zoom:75%;">

When you select the <b>Initiate Dialog</b> option, you can choose the task to which the conversation must be redirected after a number of retry attempts to repeat.</li></ul></ol>

<ol start="10"><li>Click <b>Save & Enable</b> to trigger the Repeat Bot Response event with the configurations.</li></ol>

### Sentiment Events

Refer to [Sentiment Events](../intelligence/sentiment-management/sentiment-management-overview.md) for Sentiment Management.

## Variable Namespaces

You can configure Variable Namespaces for Events by going to **More Options** > **Manage Variable Namespaces** at the top of the **Events** screen.

You can use the _Manage Variable Namespaces_ to associate the Variable Namespaces to be used with the Events. This option will be visible only when the Variable Namespace is enabled for the VA. For more information. [Learn more](../../app-settings/managing-namespace.md){target="_blank"}.

<img src="../images/manage-namespaces-event-handling-window.png" alt="manage namespaces" title="manage namespaces" style="border: 1px solid gray; zoom:75%;">
