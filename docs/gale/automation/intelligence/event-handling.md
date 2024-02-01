# Event Handling

Events are triggered when specific actions occur during conversation with the Virtual Assistant  or when specific events are triggered on any active channels.

For example, when a user clicks the **Get Started** button to initiate a chat with your FB Messenger VA, it triggers the Facebook Welcome event. 

You can use this event to customize the welcome greeting such as personalizing it with the user’s first and last names, capturing additional information from users, and updating the back-end systems.

To generate the **Get Started** button, please use the following Curl code:

```json
curl –location -g –request POST ‘https://graph.facebook.com/v2.6/me/messenger_profile?access_token={{page access token}}’ 
–header ‘Content-Type: application/json’ 
–header ‘Cookie: fr=0DjuarxRV9YWitxAN..BfXHzR…1.0.BfXHzR.’ 
–data-raw ‘{ 
“get_started”: {“payload”: “Facebook”} 
}’
```

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>You must provide <code>access_token</code>, the Page access token for the specific Facebook page in the curl to run the API.</p></div>

To access **Event Handlers**, navigate to **Build** > 
**Intelligence** > **Events**.

<img src="../images/access-event-handlers.png" alt="access event handlers" title="access event handlers" style="border: 1px solid gray; zoom:75%;">

## Event Actions

Developers can define the VA should take when an event is triggered using one of the following options:

### Run a Task

Select a Dialog task (Standard or Hidden) to be invoked when the event triggers. Once the event is triggered, the dialog starts executing. If it is interrupted because of other intent detections, the _Hold and Resume settings_ come into play. During execution, if the selected Dialog is not published in the VA, the event is discarded.

In some cases, the Dialog may not be available to the user during a conversation for various reasons such as the task not yet being published, being suspended, or simply not having been assigned to the user. In such cases, the VA  shows an error message that the task is not currently available for execution. 

Developers can preempt such situations by testing the VA in Debug mode. The Debug Console shows full details about the error, including the reason why the task is not available.

### Run a Script

Define a JavaScript to run when the event triggers. The script can make use of all applicable components such as session, context objects, variables, and functions. You can also fix the code using the Debug mode.

### Show a Message

Define a simple or advanced message to the user when the event triggers. It supports all messaging formatting features available in the XO Platform, including multiple messages with channel override options.
<img src="../images/show-a-message.gif" alt="show a message" title="show a message" style="border: 1px solid gray; zoom:75%;">

#### Multilingual VA Behavior for Messages

* You can define language-specific messages;
* If a message is deleted from an Event for a specific language then it will be removed from all other languages of the VA;
* If a message is added for a language then the message would be added in all other languages using the same content;
* If a message is modified in a language, then the modifications will be applied for that language alone. <a href="https://docsinternal-kore.github.io/docs/xo/web-mobile-SDK-message-formatting-and-templates/" target="_blank">Learn more</a>.

## Event Types

Event Handlers are classified as **Conversation Events**, **Intent Events**, and **Channel Events**.
<img src="../images/event-types.png" alt="event types" title="event types" style="border: 1px solid gray; zoom:75%;">

You can configure the following events to trigger responses:

<table border="1.5">
<tr bgcolor="#ECECEC">
   <td><strong>EVENT</strong>
   </td>
   <td><strong>TRIGGER</strong>
   </td>
  </tr>
  <tr>
   <td colspan="2" ><strong>Conversation Events</strong>
   </td>
  </tr>
  <tr>
   <td>Welcome Event
   </td>
   <td>On receiving the first message from the user from any channel.
   </td>
  </tr>
  <tr>
   <td>End of Conversation
   </td>
   <td>On reaching the end of conversation. <a href="https://docsinternal-kore.github.io/docs/xo/automation/intelligence/event-handling/#end-of-conversation">Learn more</a>.
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

<li>Dialog related to a sub-dialog node not available,

<li>Exceptions in parsing the VA message.</li>
</ul>
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
   <td colspan="2" ><strong>Channel Events</strong>
   </td>
  </tr>
  <tr>
   <td>Facebook Welcome Event
   </td>
   <td>On receiving a Welcome Event from Facebook Messenger. This event takes precedence over Welcome Event if both are configured.
   </td>
  </tr>
  <tr>
   <td>Telephony Welcome Event
   </td>
   <td>On receiving a user’s call from a voice channel like IVR, Twilio, or Audio Codes. <a href="https://docsinternal-kore.github.io/docs/xo/automation/intelligence/event-handling/#telephony-welcome-event">See</a> details below.
<p>
(previously called Twilio Voice Welcome Event)
   </td>
  </tr>
  <tr>
   <td>Telegram Welcome Event
   </td>
   <td>On receiving the Welcome Event from Telegram. This event takes precedence over Welcome Event if both are configured.
   </td>
  </tr>
  <tr>
   <td>On Connect
   </td>
   <td>Every time a user converses over Web / Mobile SDK channels. The event will be triggered irrespective of whether the user has started the conversation or not.
<p>
<strong>Note</strong>: This event applies ONLY for Web/Mobile SDK channel and takes precedence over the Welcome event if both are configured.
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
</table>

## Event Configuration

### Conversation Events

#### Welcome / On Connect Event

Users can initiate VA conversations in varied ways, from a simple greeting to directly expressing an intent or asking an FAQ. 

To facilitate a scope for the developer to customize the response based on the user choice, the Welcome event comes with additional options when you choose _Initiate Task_ or _Show Message_ as the event configurations. For example, if the first user utterance maps to a task, should the VAexecute the event-based task or the user intent first?

Post ver9.0, you can use the <code>isReturningUser</code> parameter in the **BotUserSession** context object to identify returning users and send an appropriate welcome message. <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/context-object/" target="_blank">Learn more</a>.

As a developer, you can define the VA’s priority when the user starts the conversation with a greeting, task, or FAQ from the options listed below:

<img src="../images/welcome-event.gif" alt="welcome event" title="welcome event" style="border: 1px solid gray; zoom:75%;">

<table border="1.5">
<tr bgcolor="#ECECEC">
   <td><strong>EVENT CONFIGURATION</strong>
   </td>
   <td><strong>OPTIONS</strong>
   </td>
  </tr>
  <tr>
   <td>Initiate Task
   </td>
   <td>
<ul>

<li>Greetings / Small Talk 
<ul>
 
<li>Respond to greetings or small talk and initiate Welcome Event dialog.
 
<li>Discard the user message and initiate the Welcome Event dialog.
</li> 
</ul>

<li>FAQ 
<ul>
 
<li>Respond to FAQ and initiate the Welcome Event dialog.
 
<li>Discard the user message and initiate the Welcome Event dialog.
</li> 
</ul>

<li>Task 
<ul>
 
<li>Initiate the user-requested task and discard the Welcome Event dialog.
 
<li>Initiate the Welcome Event dialog and add the user-requested task to Follow-up Intents.
If the Task is unavailable to the user for any reasons, such as not yet published or suspended or simply not assigned to the user, the VA shows an error message that the task is not currently available for execution.
</li> 
</ul>
</li> 
</ul>
   </td>
  </tr>
  <tr>
   <td>Show Message
   </td>
   <td>
<ul>

<li>Greetings / Small Talk 
<ul>
 
<li>Respond to greetings or small talk and display the Welcome Event message.
 
<li>Respond to greetings or small talk and discard the Welcome Event message.
</li> 
</ul>

<li>FAQ 
<ul>
 
<li>Respond to FAQ and display the Welcome Event message.
 
<li>Respond to FAQ and discard the Welcome Event message.
</li> 
</ul>

<li>Task 
<ul>
 
<li>Display the Welcome Event message and run the user-requested task
 
<li>Discard the Welcome Event message and run the user-requested task
</li> 
</ul>
</li> 
</ul>
   </td>
  </tr>
</table>

!!!note

    The XO Platform no longer supports Welcome Messages. If you have defined a Welcome Message in previous versions, the upgraded version automatically creates a corresponding Welcome event and On Connect event to ensure backward compatibility.

#### End of Conversation

*End of Conversation* is triggered when the VA is not expected to send any message to the user or receive any message from the user.

A new flag indicating the reason for ending the task, added to the _end of task_ event, will help decide the end of the conversation behavior. Client-side implementations of BotKits, RTM, and Webhook channels can use this reason for the task completion flag in the context to determine an appropriate course of action.

On triggering this event, the context will be updated with the following details:

* Reason for triggering event (see the table below).
* Name of the task that has just ended. If it’s an FAQ, then the task name will be set to ‘FAQ’.

<table border="1.5">
<tr bgcolor="#ECECEC">
   <td>
<strong>SCENARIO</strong>
   </td>
   <td><strong>END OF CONVERSATION FLAG</strong>
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
   <td>Error in task or FAQs execution (without Task Failure Event, no hold tasks)
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
   <td>User declines to resume on-hold task (when no other task is on hold
   </td>
   <td>Canceled
   </td>
  </tr>
</table>

#### Repeat Bot Response Event

The **Repeat Bot Response** event is triggered to repeat the last bot response when certain predefined or custom-trained utterances are detected in voice channels such as IVR, Audiocodes, or Twilio Voice. 

To enable this event, a bot developer must define the context object as a precondition for triggering the event. This context object contains the specific set of utterances that should be recognized to repeat the bot’s most recent or last response.

By configuring the context object with appropriate utterances, the bot can understand specific phrases or keywords from the user to trigger the **Repeat Bot Response** event. When one of these utterances is detected, the bot will repeat the last response

A bot developer can activate the **Repeat Bot Response** event and custom-train when this event can be triggered with conditions at any point in the conversation and can ask the bot to repeat its recent responses.

!!!note

    The Repeat Bot Response event uses the NLU multilingual model for Non-English languages.

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

#### Use Case Scenario

**Problem Statement**

In the Flight Booking VA, the user couldn’t hear the last response on an IVR channel, and the user said, `"Sorry, I can't hear you. Can you please repeat it again?"`

In this conversation, the dialog has reached the end, and the last response says, `"Thank you. Your flight has been booked successfully. Your booking reference number is XYZ789 and you will receive a message shortly "`(Dialog reached to END).

**Solution**

If the conversation session is not closed or the call is not disconnected after the end of the dialog, the Repeat Bot Response event is triggered, and the last message of the dialog task is repeated when you configure a task in the End of Task event with a message that says `"Is there anything else I can help you with?"`. For more information, see the <a href="https://docsinternal-kore.github.io/docs/xo/automation/intelligence/event-handling/#end-of-conversation" target="_blank">End of Conversation</a> section.

Now the ‘Repeat Bot Responses’ event considers the end of dialog after the ‘Last User Input’ configuration, the repeat response will say, `"Thank you. Your flight has been booked successfully. Your booking reference number is XYZ789 and you will receive a message shortly. Is there anything else I can help you with?".`

##### Enabling the Repeat Bot Response Event

A bot developer uses the **Repeat Bot Response** to allow you to repeat the responses that users might have missed or if it is not clear during the conversation on an IVR channel.

**Steps to Enable the Repeat Bot Response Event**

1. Navigate to **Build > Intelligence > Events**.
2. Click **Configure** to enable the **Repeat Bot Response Event**.
<img src="../images/repeat-bot-responses.png" alt="repeat bot responses" title="repeat bot responses" style="border: 1px solid gray; zoom:75%;">

3. Click **Manage Utterance** to review the pre-trained utterances that are added to the VA by default.
<img src="../images/manage-utterances-event.png" alt="manage utterances" title="manage utterances" style="border: 1px solid gray; zoom:75%;">

4. You can add more utterances and click the **Train** link.
<img src="../images/click-train-link.png" alt="click train link" title="click train link" style="border: 1px solid gray; zoom:75%;">

5. Once Utterances are trained, you can add the following preconditions:

    * **Channels** – Allows you to add voice channels such as IVR, IVR Audiocodes, or Twilio Voice.
    * **Context Tags** – Allows you to add the context objects to trigger the Repeat Bot Response event. For more information, read the <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/context-object/" target="_blank">Context Object</a> article.
    <img src="../images/channels-and context-tags.png" alt="channels and context tags" title="channels and context tags" style="border: 1px solid gray; zoom:75%;">
 
!!!note

    The context tags are added to trigger the repeat bot responses whenever the dialog task with that particular context is executed. For example, when a book a flight dialog task is executed, then the context tag will trigger the repeat bot response event for that particular dialog task.

<ol start="6"><li>Select the <b>Event Configuration</b> options to define how to repeat the response:</li>
<ul><li><b>Repeat Only Last Bot Response</b> – By default, this option is selected with a filler message: "<i>Sure, I will repeat it for you.</i>"
<img src="../images/repeat-bot-response-event.png" alt="repeat bot response event" title="repeat bot response event" style="border: 1px solid gray; zoom:75%;">

You can edit or add the filler message for the repeat bot response event before it is triggered.
<img src="../images/add-filler-message.png" alt="add filler message" title="add filler message" style="border: 1px solid gray; zoom:75%;"></li></ul>

<li>Click <b>+Add Filler Message</b> and select the <b>IVR</b> channel and enter the filler messages and then click <b>Done</b>.
<img src="../images/add-filler-to-ivr.png" alt="add filler to ivr" title="add filler to ivr" style="border: 1px solid gray; zoom:75%;">

When the Repeat Bot Response event is triggered, these filler messages are used in the IVR channel conversation before repeating the response.
<img src="../images/use-filler-message.png" alt="use filler message" title="use filler message" style="border: 1px solid gray; zoom:75%;"></li>

<ul><li><b>Auto-generate Response</b> – When you select this option, you are redirected to enable the Advanced NLU model, if not enabled, to generate the bot response using the LLM and Generative AI engine.

<img src="../images/auto-generate-response.png" alt="auto-generate responses" title="auto-generate responses" style="border: 1px solid gray; zoom:75%;"></li></ul>

<li>Click <b>Enable Now</b> to define the Advanced NLU Settings for the <b>LLM and Generative</b> model and enable the Repeat Responses feature.</li></ul></ol>

!!!note

    When the Auto-generate response option is enabled, the repeat bot response event will not use the filler messages that were defined in the previous step. The responses automatically sent from the LLM and Generative model when the event is triggered.

<ol start="9"><li>Expand the Advanced Settings and define the following options to repeat the response:</li>
<ul><li><b>Repeat Attempts Limit</b> – Set the number of retry attempts to repeat a response. The accepted value is between <b>1</b> and <b>10</b>. The default is <b>5</b>.</li>
<li><b>Behavior on Exceeding Repeat Attempts</b> – Define what VA must do after exceeding the number of retry attempts to repeat the response. You can choose either the <b>End of Dialog</b> or <b>Initiate Dialog</b> option.

<img src="../images/behavior-on-exceeding-repeat-attempts.png" alt="behavior on exceeding repeat responses" title="behavior on exceeding repeat responses" style="border: 1px solid gray; zoom:75%;">

When you select the <b>Initiate Dialog</b> option, you can choose the task to which the conversation must be redirected after a number of retry attempts to repeat.</li></ul></ol>

<ol start="10"><li>Click <b>Save & Enable</b> to trigger the Repeat Bot Response event with the configurations.</li></ol>

#### Task Execution Failure Event

* This event is available starting with the v6.40 release.
* By default, this event is always enabled with the _Show Message_ option. This event cannot be disabled.
* This VA-level behavior can be overridden for specific tasks by defining task-specific failure events from the dialog task settings. <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/dialogs/using-the-dialog-builder-tool/#dialog-settings" target="_blank">Learn more</a>.

    <img src="../images/task-execution-failure-event.png" alt="task execution failure event" title="task execution failure event" style="border: 1px solid gray; zoom:75%;">

### Intent Events

#### Intent Not Available Event

When the VA cannot understand the user’s intent, this event determines the subsequent behavior. You can choose one of the following options:

* **Show a standard message from the standard responses**. <a href="https://docsinternal-kore.github.io/docs/xo/automation/intelligence/conversation-management/standard-responses/" target="_blank">Learn more</a>.
* **Automatically run a dialog task**. You can use the dropdown to select the task you want to run.
    <img src="../images/intent-not-available-event.png" alt="intent not available" title="intent not available" style="border: 1px solid gray; zoom:75%;">

#### Ambiguous Intents Identified Event

When the NLP engine identifies ambiguous intents from user utterances, by default, the virtual assistant displays a list of those intents during the conversation and requests the user to make a selection.

This default behavior is ideal for most of the use cases. However, you can customize this behavior for specific use cases using the Ambiguous Intents Identified event. The event is triggered in the following scenarios:

* Two or more ‘definite’ intents are identified.
* Two or more ‘possible’ intents are identified and their scores lie within the defined proximity thresholds.
* Only low confidence intents are identified from the Knowledge Graph and no other intents are identified from other engines.

You can build custom business logic to analyze ambiguous intents, define appropriate conversation flow using a Dialog Task, and associate it with the Ambiguous Intents Identified event. 

By customizing the flow, you can avoid displaying ambiguous intents to the end user and redirect the conversation to the desired task. You can use the `koreUtil.getAmbiguousIntents()` function to retrieve the list of ambiguous intents and their confidence scores. For more information on the function, click <a href="https://docsinternal-kore.github.io/docs/xo/apis/koreutil-libraries/" target="_blank">here</a>.

<img src="../images/ambiguous-intents-event.png" alt="ambiguous intents event" title="ambiguous intents event" style="border: 1px solid gray; zoom:75%;">

##### Event Configuration

To configure the Ambiguous Intents Identified event follow these steps:

1. Go to **Build** → **Intelligence** → **Events** on the Platform. By default, this event is disabled for all existing and new bots.
2. Click **Configure** to enable the event.
    <img src="../images/configure-intent-events.png" alt="configure intent events" title="configure intent events" style="border: 1px solid gray; zoom:75%;">

!!!note

    If not enabled, the list of ambiguous intents is presented to the user during the conversation.

<ol start="3"><li>You can select the following options in the Configuration panel:</li>

<ul><li><b>Present all the qualified intents to the end-user for disambiguation</b>: This is the default selection in which the standard response related to the ambiguous intent(s) is presented. <a href="https://docsinternal-kore.github.io/docs/xo/automation/intelligence/conversation-management/standard-responses/" target="_blank">Learn more</a>.
<li><b>Automatically run a Dialog Task</b>: This option lets you select a Dialog Task. Select this option if you want to build custom business logic to analyze the ambiguous intents, define appropriate conversation flow using a Dialog Task, and associate it with the Ambiguous Intents Identified event. <a href="https://docsinternal-kore.github.io/docs/xo/automation/intelligence/conversation-management/conversation-driven-dialog-builder/" target="_blank">Learn more</a>.

<img src="../images/ambiguous-intents-identified.png" alt="ambiguous intents identified" title="ambiguous intents identified" style="border: 1px solid gray; zoom:75%;"></li></ul>

<li>Click the button <b>Save & Enable</b> to enable the event.</li></ol>

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>During the conversation with your Virtual Assistant, in case of ambiguous intents, a message is displayed in the <b>Debug Log</b> that <b>Multiple intents are identified</b> and the <b>Ambiguous Intents Identified event is initiated</b>.</p></div>

<img src="../images/multiple-intents-identified.png" alt="multiple intents identified" title="multiple intents identified" style="border: 1px solid gray; zoom:75%;">

##### Interruption Management

When the event is enabled, the interruption behavior is handled as defined at the node level, dialog level, or bot level for ambiguous intents. 

The only exception is – when you select the **Continue the current task and add new task to the follow-up task list** option, the conversation continues as is with the current task, and any interrupting task will not be added to the follow-up list. <a href="https://docsinternal-kore.github.io/docs/xo/automation/intelligence/conversation-management/manage-interruptions/" target="_blank">Learn more</a>.

### Channel Events

#### Facebook & Telegram Welcome Events

This event triggers on receiving a Welcome Event from Facebook Messenger or Telegram. Once it is triggered, you can configure the Platform to perform the following actions:

* **Initiate a Task**: Select from the available Dialog Tasks to run once the event is triggered.
* **Run a Script**: You are shown a Javascript editor where you can add your script, which will run once the Facebook Welcome Event is triggered.
* **Show a Message**: This option lets you add VA responses to be sent to users once this event triggers.
<img src="../images/facebook-welcome-event.png" alt="facebook welcome event" title="facebook welcome event" style="border: 1px solid gray; zoom:75%;">

#### Telephony Welcome Event

This event is triggered upon receiving a voice call to the Platform from any voice channel. This event will be triggered every time a user’s call reaches the Platform, and not just for the first time.

It provides the following two options:

* **Initiate Task**  – Select a task to be triggered from the drop-down list provided
* **Voice Call Properties** can be set as follows:
    * Define at least one ‘Initial Prompts’
    * Prompts for _Timeout_, and _No Match_ can be defined.
    * Under _Advanced Controls_, settings for _Timeout, No. of Retries_, and _Barge-in_ can be defined. <a href="https://docsinternal-kore.github.io/docs/xo/channels/call-properties/" target="_blank">Learn more</a>.

    <img src="../images/voice-call-properties-event-handlers.gif" alt="voice call properties" title="voice call properties" style="border: 1px solid gray; zoom:75%;">

##### IVR Impact

You may also use this event to define how and when the calls should be terminated for voice-based channels. The IVR implementation allows session/call closure only when the ‘end of conversation’ is completed. <a href="https://docsinternal-kore.github.io/docs/xo/channels/IVR-integration/" target="_blank">Learn more</a>.

#### RCS Opt-In / Opt-Out Events

These events trigger when receiving _opt-in_ or _opt-out_ requests from users via the RCS channel. These events allow you to configure a response to be sent to the user as a follow-up for their action.
<img src="../images/rcs-opt-in.png" alt="rcs opt-in" title="rcs opt-in" style="border: 1px solid gray; zoom:75%;">

## Variable Namespaces

You can configure Variable Namespaces for Events by going to **More Options** > **Manage Variable Namespaces** at the top of the **Events** screen.

You can use the _Manage Variable Namespaces_ to associate the Variable Namespaces to be used with the Event Handler. This option will be visible only when the Variable Namespace is enabled for the VA. For more information. <a href="https://docsinternal-kore.github.io/docs/xo/app-settings/managing-namespace/" target="_blank">Learn more</a>.

<img src="../images/manage-namespaces-event-handling.png" alt="manage namespaces" title="manage namespaces" style="border: 1px solid gray; zoom:75%;">

