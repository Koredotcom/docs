# Voice Call Properties

You can enable voice interaction with your virtual assistant, i.e., users can talk to the virtual assistant. For this, you need to enable one of the voice channels like [IVR](https://developer.kore.ai/docs/bots/advanced-topics/ivr-integration/ivr-integration/), [Twilio](https://developer.kore.ai/docs/bots/channel-enablement/adding-the-twilio-voice-channel/), [IVR-AudioCodes](https://developer.kore.ai/docs/bots/channel-enablement/adding-the-ivr-audiocodes-channel/),[SmartAssist Gateway](https://developer.kore.ai/docs/bots/channel-enablement/adding-the-smartassist-gateway-channel/), etc and publish the VA on those channels.

There are some Voice Properties you can configure to streamline the user experience across the above-mentioned channels. These configurations can be done at multiple levels:



* VA level – at the time of channel enablement;
* Component level – once you enable the voice properties at the VA level, then you can define the behavior for various components like:
    * Entity Node
    * Message Node
    * Confirmation Node
    * Standard Responses
    * Welcome Message

IVR Properties are accessible by going to a Dialog Task, selecting an _Entity, Message_ or _Confirmation _Node, then by accessing the IVR Properties section.



![access IVR properties](../../../../images/access-ivr.png )

This document details the voice call properties and how they vary across various channels.


## Channel Settings


<table>
  <tr>
   <td><strong>FIELD</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
   <td><strong>APPLICABLE</strong>
<p>
<strong>TO</strong>
<p>
<strong>CHANNEL</strong>
   </td>
  </tr>
  <tr>
   <td>IVR Data Extraction Key
   </td>
   <td>Specify the syntax to extract the filled data
<p>
For Entity and Confirmation nodes, you can define the extraction rule overriding the channel level setting. This is particularly helpful with ASR engines that provide transcription results in a different format based on the input type. For example, VXML can contain the word format of the credit card in one key and the number format in another key
   </td>
   <td>IVR
   </td>
  </tr>
  <tr>
   <td>End of Conversation Behavior
   </td>
   <td>This property can be used to define the VA behavior at the end of the conversation. The options are:
<ul>

<li>Trigger End of Conversation Behavior and configure the Task, Script or Message to be initiated. <a href="https://developer.kore.ai/docs/bots/bot-intelligence/event-based-bot-actions/#End_of_Conversation">See here for details</a>.

<li>Terminate the call.

<p>
!!! note

    Selecting the <strong>Terminate call</strong> option under <strong>IVR Channel – Voice Call Properties – End of Task Behavior</strong> no longer turns off the End of Task event at the bot level.

</li>
</ul>
   </td>
   <td>IVR,
<p>
Twilio,
<p>
IVR-AudioCodes,
<p>
SmartAssist Gateway
   </td>
  </tr>
  <tr>
   <td>Call Termination Handler
   </td>
   <td>Select the name of the Dialog task that you want to use as the call termination handler when the call ends in error.
   </td>
   <td>IVR,
<p>
Twilio,
<p>
IVR-AudioCodes,
<p>
SmartAssist Gateway
   </td>
  </tr>
  <tr>
   <td>Call Control Parameters
   </td>
   <td>Click <strong>Add Parameter</strong>. Enter property names and values to use in defining the call behavior.
<p>
!!! note

  You should use these properties and values in the VXML files for all call flows in the IVR system and Session Parameters in AudioCodes channel.

   </td>
   <td>IVR,
<p>
IVR-AudioCodes
   </td>
  </tr>
  <tr>
   <td colspan="3" >ASR Confidence Threshold
   </td>
  </tr>
  <tr>
   <td>Threshold Key
   </td>
   <td>This is the variable where the ASR confidence levels are stored. This field is pre-populated, do not change it unless you are aware of the internal working of VXML.
   </td>
   <td>IVR
   </td>
  </tr>
  <tr>
   <td>Define ASR threshold confidence
   </td>
   <td>In the range between 0 to 1.0 which defines when the IVR system hands over the control to the VA.
   </td>
   <td>IVR
   </td>
  </tr>
  <tr>
   <td>Timeout Prompt
   </td>
   <td>Enter the default prompt text to play when the user doesn’t provide the input within the timeout period. If you do not specify a Timeout Prompt for any node, this prompt takes its place.
   </td>
   <td>IVR,
<p>
Twilio,
<p>
IVR-AudioCodes,
<p>
SmartAssist Gateway
   </td>
  </tr>
  <tr>
   <td>Grammar
   </td>
   <td>Define the grammar that should be used to detect user’s utterance
<ul>

<li>The input type can be Speech or DTMF

<li>Source of grammar can be Custom or Link
<ul>

<li>For Custom, write VXML grammar in the textbox.

<li>For Link, enter the URL of the grammar. Ideally, the URL should be accessible to the IVR system so that the resource can be accessed while executing the calls at runtime

<p>
<a href="https://developer.kore.ai/docs/bots/bot-builder-tool/dialog-task/voice-call-properties/#Configuring_Grammar">See below for a detailed configuration for Grammar syntax</a>. \
!!! note

    If the <strong>Enable Transcription </strong>option is enabled for the VA along with specifying the source of the transcription engine, defining grammar isn’t mandatory.
</li>
</ul>
</li>
</ul>
   </td>
   <td>IVR
   </td>
  </tr>
  <tr>
   <td>No Match Prompt
   </td>
   <td>Enter the default prompt text to play when user input is not present in the defined grammar. If you do not specify a <em>No Match Prompt</em> for any node, this prompt takes its place.
   </td>
   <td>IVR
   </td>
  </tr>
  <tr>
   <td>Barge-In
   </td>
   <td>Select whether you want to allow a user input while a prompt is in progress. If you select no, the user cannot provide input until IVR completes the prompt.
   </td>
   <td>IVR,
<p>
Twilio,
<p>
IVR-AudioCodes,
<p>
SmartAssist Gateway
   </td>
  </tr>
  <tr>
   <td>Timeout
   </td>
   <td>Select the maximum wait time to receive user input from the drop-down list, from 1 second up to 60 seconds.
   </td>
   <td>IVR,
<p>
Twilio,
<p>
IVR-AudioCodes,
<p>
SmartAssist Gateway
   </td>
  </tr>
  <tr>
   <td>No. of Retries
   </td>
   <td>Select the maximum number of retries to allow. You can select from just 1 retry up to 10 retries.
   </td>
   <td>IVR,
<p>
Twilio,
<p>
IVR-AudioCodes
   </td>
  </tr>
  <tr>
   <td>Log
   </td>
   <td>Select <strong>Yes </strong>if you want to send the chat log to the IVR system.
   </td>
   <td>IVR
   </td>
  </tr>
</table>



## Dialog Node Settings

On the Voice Call Properties panel for a node, you can enter node-specific prompts, grammar, as well as parameters for call-flow behavior such as time-out and retries.

Voice Call Properties apply only for the following nodes and message types:

* Entity Node
* Message Node
* Confirmation Node
* Standard Responses
* Welcome Message
!!! note

    Most settings are the same for all nodes, with a few exceptions.



![timeout prompts](../../../../images/timeout_prompts.png )



**Voice Call Settings Field Reference**

The following sections provide detailed descriptions of each IVR setting, including descriptions, applicability to nodes, default values, and other key information.
!!! notes on prompts

    * You can enter prompts in one of these formats: Plain text, Script, File location of an audio file. If you want to define JavaScript or attach an audio file, click the icon before the prompt text message box and select a mode. By default, it is set to Text mode.
    * You can enter more than one prompt message of different types. You can define their order of sequence by dragging and dropping them.
    * Multiple prompts are useful in scenarios where the prompt has to be played more than once, to avoid repetition, since the prompts are played in order.



<table>
  <tr>
   <td>
<strong>FIELD</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
   <td><strong>APPLICABLE</strong>
<p>
<strong>TO</strong>
<p>
<strong>NODES</strong>
   </td>
   <td><strong>APPLICABLE</strong>
<p>
<strong>TO</strong>
<p>
<strong>CHANNEL</strong>
   </td>
  </tr>
  <tr>
   <td>Initial Prompts
   </td>
   <td>Prompts that are played when the IVR first executes the node. If you do not enter a prompt for a node, the default user prompt for the node plays by default. If you do not enter a prompt for Standard Responses and Welcome Message, the default Standard Response and Welcome Message are played by default.
   </td>
   <td>Entity,
<p>
Confirmation,
<p>
Message nodes;
<p>
Standard Responses and
<p>
Welcome Message
   </td>
   <td>IVR,
<p>
Twilio,
<p>
AudioCodes,
<p>
SmartAssist Gateway
   </td>
  </tr>
  <tr>
   <td>Timeout Prompts
   </td>
   <td>Prompts that are played on the IVR channel when the user has not given any input within the specified time. If you do not enter a prompt for a node, the default Error Prompt of the node is played. Standard Responses and Welcomes have a default Timeout Prompt that plays if you don’t define No Match Prompts.
<p>
You can <strong>Customize Retries Behavior</strong> for the Timeout Prompts and define the number of retries to configure the number of times the user would be prompted for this entity value by setting the number of <strong>Allowed Retries</strong> to any value between 1 and 10. The default is 3.
<p>
Further, you can define the VA’s <strong>Behavior on Exceeding Retries</strong>; this can be set to trigger <em>Invoke Call Termination Handler</em>, <em>Initiate Dialog Task</em>, or <em>Jump to specific node in current task</em>. When you select <em>Initiate Dialog</em> or <em>Jump to specific node in the current task</em> option, you are prompted to select the dialog task or task within the node.
   </td>
   <td>Entity,
<p>
Confirmation;
<p>
Standard Responses
<p>
and Welcome Message
   </td>
   <td>IVR,
<p>
Twilio,
<p>
AudioCodes,
<p>
SmartAssist Gateway
   </td>
  </tr>
  <tr>
   <td>No Match Prompts
   </td>
   <td>Prompts that are played on the IVR channel when the user’s input has not matched any value in the defined grammar. If you do not enter a prompt here or select <strong>No Grammar</strong> option for an Entity or Confirmation node, the default Error Prompt of the node is played. Standard Responses and Welcomes have a default No Match Prompt that plays if you do not enter it.
<p>
You can <strong>Customize Retries Behavior</strong> for the No Match Prompts and define the number of retries to configure the number of times the user would be prompted for this entity value by setting the number of <strong>Allowed Retries</strong> to any value between 1 and 10. The default is 3.
<p>
Further, you can define the VA’s <strong>Behavior on Exceeding Retries</strong>; this can be set to trigger <em>Invoke Call Termination Handler</em>, <em>Initiate Dialog Task</em>, or <em>Jump to specific node in current task</em>. When you select <em>Initiate Dialog</em> or <em>Jump to specific node in the current task</em> option, you are prompted to select the dialog task or task within the node.
   </td>
   <td>Entity,
<p>
Confirmation;
<p>
Standard Responses and
<p>
Welcome Message
   </td>
   <td>IVR
   </td>
  </tr>
  <tr>
   <td>Error Prompts
   </td>
   <td>Prompts that are played on the IVR channel when user input is an invalid Entity type. If you do not enter a prompt here, the default Error Prompt of the node is played.
<p>
You can <strong>Customize Retries Behavior</strong> for the Error Prompts and define the number of retries to configure the number of times the user would be prompted for this entity value by setting the number of <strong>Allowed Retries</strong> to any value between 1 and 10. The default is 3.
<p>
Further, you can define the VA’s Behavior on Exceeding Retries, this can be set to trigger <em>Invoke Call Termination Handler</em>, <em>Initiate Dialog Task</em>, or <em>Jump to specific node in current task</em>. When you select <em>Initiate Dialog</em> or <em>Jump to specific node in the current task</em> option, you are prompted to select the dialog task or task within the node.
   </td>
   <td>Entity,
<p>
Confirmation;
   </td>
   <td>IVR,
<p>
Twilio,
<p>
AudioCodes,
<p>
SmartAssist Gateway
   </td>
  </tr>
  <tr>
   <td>Grammar
   </td>
   <td>Define the grammar that should be used to detect a user’s utterance
<ul>

<li>The input type can be Speech or DTMF

<li>Source of grammar can be Custom or Link
<ul>

<li>For Custom, write VXML grammar in the textbox.

<li>For Link, enter the URL of the grammar. Ideally, the URL should be accessible to the IVR system so that the resource can be accessed while executing the calls at runtime

<p>
<a href="https://developer.kore.ai/docs/bots/bot-builder-tool/dialog-task/voice-call-properties/#Configuring_Grammar">See below for a detailed configuration for Grammar syntax</a>.

!!! note

    If the <strong>Enable Transcription </strong>option is enabled for the VA along with specifying the source of the transcription engine, defining grammar isn’t mandatory.

</li>
</ul>
</li>
</ul>
   </td>
   <td>Confirmation;
<p>
Standard Responses and
<p>
Welcome Message
   </td>
   <td>IVR,
<p>
Twilio
   </td>
  </tr>
  <tr>
   <td colspan="4" ><strong>Advanced Controls</strong>
   </td>
  </tr>
  <tr>
   <td colspan="4" >These properties override the properties set in the VA IVR Settings page and apply to the Dialog Task that you are currently working with.
   </td>
  </tr>
  <tr>
   <td>Timeout
   </td>
   <td>Select the maximum wait time to receive user input from the drop-down list, from 1 second up to 60 seconds. The default value is the same as defined in the VA IVR Settings page.
   </td>
   <td>N/A
   </td>
   <td>IVR,
<p>
Twilio,
<p>
AudioCodes,
<p>
SmartAssist Gateway
   </td>
  </tr>
  <tr>
   <td>No. of Retries
   </td>
   <td>Select the maximum number of retries to allow. You can select from just 1 retry up to 10 retries.
<p>
The default value is the same as defined in the VA IVR Settings page.
   </td>
   <td>N/A
   </td>
   <td>IVR,
<p>
Twilio,
<p>
AudioCodes,
<p>
SmartAssist Gateway
   </td>
  </tr>
  <tr>
   <td>Behavior on Exceeding Retries
<p>
(applies only to <span style="text-decoration:underline;">entity node</span>)
   </td>
   <td>Define behavior when either the timeout or number of retry attempts exceed the specified limit. Options include:
<ul>

<li>Invoke Call Termination Handler

<li>Initiate Dialog: Select a Dialog task from the list of VA tasks.

<li>Jump to a specific node in the current task: Select a node from the list of nodes in the current Dialog task.

<p>
Post v7.3, this feature has been enhanced so that on exceeding entity error count, the platform will trigger the Behavior on Exceeding Retries behavior, when the transcription is enabled.
</li>
</ul>
   </td>
   <td>N/A
   </td>
   <td>IVR,
<p>
Twilio,
<p>
AudioCodes,
<p>
SmartAssist Gateway
   </td>
  </tr>
  <tr>
   <td>Barge-In
   </td>
   <td>Select whether you want to allow a user input while a prompt is in progress. If you select no, the user input is not considered until the prompt is completed. The default value is <strong>No</strong>.
   </td>
   <td>N/A
   </td>
   <td>IVR,
<p>
Twilio,
<p>
AudioCodes,
<p>
SmartAssist Gateway
   </td>
  </tr>
  <tr>
   <td>Call Control Parameters
   </td>
   <td>Click <strong>Add Property. </strong>Enter property names and values to use in defining the VXML definition in the IVR system and Session Parameters in AudioCodes channel. These values defined for a node or a standard response override the global Call Control Parameters defined in the VA IVR /AudioCodes settings page.
   </td>
   <td>N/A
   </td>
   <td>IVR,
<p>
AudioCodes,
<p>
SmartAssist Gateway
   </td>
  </tr>
  <tr>
   <td>Log
   </td>
   <td>Select <strong>Yes </strong>if you want to send the chat log to the IVR system. The default value is <strong>No</strong>.
   </td>
   <td>N/A
   </td>
   <td>IVR
   </td>
  </tr>
  <tr>
   <td>Locale Definition
   </td>
   <td>Enable the<strong> Locale Definition </strong>property to define the <strong><em>(xml:lang = “&lt;value>”) </em></strong>attribute in the VXML file by enabling the <strong>Locale Definition</strong> property. Automatic Speech Recognition engines use the language attribute to enhance speech recognition.
<p>
Once the property is enabled, you can see one or more language codes corresponding to the bot languages.  Enter the locale code for a specific bot language in the <strong>Locale Value</strong> field. For example, enter ‘<strong>US</strong>‘ or ‘<strong>UK</strong>‘ as the Locale Value for the English (EN) bot language.

<img src="../../../../images/locale_definition.png" alt="Locale Definition" >


!!! note

    By default, the <strong>Locale Definition</strong> property is disabled for all virtual assistants.


   </td>
   <td>N/A
   </td>
   <td>IVR
   </td>
  </tr>
  <tr>
   <td>Document Type Definitions
   </td>
   <td>The Document Type Definition (DTD) typically refers to a specific syntax used to define the structure and constraints of a Voice Extensible Markup Language (VXML) document. The DTD settings help the VXML to understand the response.
<p>
You can use the <strong>Default </strong>DTD settings defined in the Status, Public ID, and System ID fields for the VXML. If you want to modify settings, click <strong>Customize </strong>to change the values.
<p>

!!! note

    If the <strong>Status </strong>field is set to <em>Include</em>, you can enter the Public and System ID. If it is set to <em>Exclude</em>, you cannot view those fields.


   </td>
   <td>N/A
   </td>
   <td>IVR
   </td>
  </tr>
  <tr>
   <td>Fallback Redirection
   </td>
   <td>A Fallback Redirection is an alternative path that the IVR system uses to handoff the conversation whenever the call hangs up
<p>
You can add an URL to redirect the conversation whenever the call hangs up.
<p>
By default, the <strong>Fallback Redirection</strong> is disabled. If you want to enable the Fallback Redirection, click <strong>Customize</strong>.
<p>

!!! note

    The Fallback Redirection is supported by both standard and universal bots.


   </td>
   <td>N/A
   </td>
   <td>IVR
   </td>
  </tr>
  <tr>
   <td>Propagate Values to Link Bots
   </td>
   <td>Enable this option to propagate the Voice Call Properties from the Universal Bot to all its linked bots. It helps you to leverage the UB properties when a linked bot’s execution is in progress. The Voice Call Properties of the linked bot are used when the conversation is happening directly with the bot as a Standard bot.
<p>
By default this option is disabled.
   </td>
   <td>N/A
   </td>
   <td>IVR
   </td>
  </tr>
  <tr>
   <td>Recording
   </td>
   <td>Define the state of recording to be initiated. The default value is <strong>Stop</strong>.
   </td>
   <td>N/A
   </td>
   <td>IVR
   </td>
  </tr>
</table>


Below is a demo of the IVR Properties section, within the Component Properties panel of a Dialog Task node.


![Component Properties](../../../../images/ivr-properties.gif )



## Configuring Grammar

You will need to define at least one Speech Grammar to the IVR system. \
There is no default Grammar that will be considered by the system. In this section, we will walk you through the steps needed to configure a Grammar system for the VA to function on the IVR system.

Typically for an IVR-enabled VA, the speech utterance of the user will be vetted and parsed by the Grammar syntax at the IVR system before being diverted to the VA.

Kore.ai supports the following Grammar systems:



* Nuance
* Voximal
* UniMRCP

Each one requires its own configuration.


#### Nuance

In case you want to use grammar syntax rules from Nuance Speech Recognition System, you need to get a license for the same. Once you register and obtain a license from Nuance, you will be given access to two files – **dlm.zip** & **nle.zip**. Ensure that the path to this VXML is accessible to the VA.

**Configurations**:



1. Set **Enable Transcription** to _no_
2. In the **Grammar** section:
    1. Select the **Speech** or **DTMF **option as per your requirement.
    2. In the text box to define vxml enter the vxml path to dlm.zip file. The url will be of the format: `http://nuance.kore.ai/downloads/kore_dlm.zip?nlptype=krypton&dlm_weight=0.2&lang=en-US`
    3. Replace the above path according to your setup
    4. The language code “_lang=en-US_” will be based on your setup
3. **Add Grammar** to add another path to `nle.zip`. Follow the above-mentioned steps.
4. **Save** the settings.


#### Voximal/UniMRCP

In case you want to use grammar syntax rules from Voximal or UniMRCP, you need to specify the transcription source.

**Configurations**:



1. Set **Enable Transcription** to _yes_
2. In the **Transcription engine source** text box that appears:
    1. for Voximal, enter _“builtin:grammar/text”_
    2. for UniMRCP, enter _“builtin:grammar/transcribe”_
3. You can leave the **Grammar** section blank, the above transcription source URL will handle the syntax and grammar vetting of the speech.
4. **Save** the settings.
