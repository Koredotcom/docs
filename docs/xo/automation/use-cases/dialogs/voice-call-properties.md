# Voice Call Properties

You can enable voice interaction with your virtual assistant, i.e., users can talk to the virtual assistant. For this, you need to enable one of the voice channels like [IVR](../../../../channels/ivr-integration){:target="_blank"}, [Twilio](../../../../channels/add-twilio-voice-channel){:target="_blank"}, [IVR-AudioCodes](../../../../channels/ivr-audio-codes){:target="_blank"}, [kore.ai Voice Gateway](../../../../channels/kore.ai-voice-gateway/kore-voice-gateway){:target="_blank"} etc and publish the VA on those channels.

There are some Voice Properties you can configure to streamline the user experience across the above-mentioned channels. These configurations can be done at multiple levels:

* VA level – at the time of channel enablement;
* Component level – once you enable the voice properties at the VA level, then you can define the behavior for various components like:
    * Entity Node
    * Message Node
    * Confirmation Node
    * Standard Responses
    * Welcome Message

IVR Properties are accessible by going to a Dialog Task, selecting an _Entity, Message_ or _Confirmation_ Node, then by accessing the IVR Properties section.

<img src="../images/access-ivr.png" alt="IVR Properties" title="IVR Properties" style="border: 1px solid gray; zoom:70%;">

This document details the voice call properties and how they vary across various channels.


## Channel Settings

| **Field** | **Description** | **Applicable**<br>**to**<br>**Channel** |
| --- | --- | --- |
| IVR Data Extraction Key | Specify the syntax to extract the filled data<br><br>For Entity and Confirmation nodes, you can define the extraction rule overriding the channel level setting. This is particularly helpful with ASR engines that provide transcription results in a different format based on the input type. For example, VXML can contain the word format of the credit card in one key and the number format in another key | IVR |
| End of Conversation Behavior | This property can be used to define the VA behavior at the end of the conversation. The options are:<br><br>* Trigger End of Conversation Behavior and configure the Task, Script or Message to be initiated. [See here for details](../../../intelligence/event-handling.md#end-of-conversation).<br>* Terminate the call.<br>    <br>    **Note**: Selecting the **Terminate call** option under **IVR Channel – Voice Call Properties – End of Task Behavior** no longer turns off the End of Task event at the bot level. | IVR,<br>Twilio,<br>IVR-AudioCodes,<br>Kore.ai Voice Gateway |
| Call Termination Handler | Select the name of the Dialog task that you want to use as the call termination handler when the call ends in error. | IVR,<br>Twilio,<br>IVR-AudioCodes,<br>Kore.ai Voice Gateway |
| Call Control Parameters | Click **Add Parameter**. Enter property names and values to use in defining the call behavior.<br><br>**Note**: You should use these properties and values in the VXML files for all call flows in the IVR system and Session Parameters in AudioCodes channel. | IVR,<br>IVR-AudioCodes |
| ASR Confidence Threshold |     |     |
| Threshold Key | This is the variable where the ASR confidence levels are stored. This field is pre-populated, do not change it unless you are aware of the internal working of VXML. | IVR |
| Define ASR threshold confidence | In the range between 0 to 1.0 which defines when the IVR system hands over the control to the VA. | IVR |
| Timeout Prompt | Enter the default prompt text to play when the user doesn’t provide the input within the timeout period. If you do not specify a Timeout Prompt for any node, this prompt takes its place. | IVR,<br>Twilio,<br>IVR-AudioCodes,<br>Kore.ai Voice Gateway |
| Grammar | Define the grammar that should be used to detect user’s utterance<br><br>* The input type can be Speech or DTMF<br>* Source of grammar can be Custom or Link<br>    * For Custom, write VXML grammar in the textbox.<br>    * For Link, enter the URL of the grammar. Ideally, the URL should be accessible to the IVR system so that the resource can be accessed while executing the calls at runtime<br>        <br>        [See below for a detailed configuration for Grammar syntax](#configuring-grammar). <br>  **Note**: If the **Enable Transcription** option is enabled for the VA along with specifying the source of the transcription engine, defining grammar isn’t mandatory. | IVR |
| No Match Prompt | Enter the default prompt text to play when user input is not present in the defined grammar. If you do not specify a _No Match Prompt_ for any node, this prompt takes its place. | IVR |
| Barge-In | Select whether you want to allow a user input while a prompt is in progress. If you select no, the user cannot provide input until IVR completes the prompt. | IVR,<br>Twilio,<br>IVR-AudioCodes,<br>Kore.ai Voice Gateway |
| Timeout | Select the maximum wait time to receive user input from the drop-down list, from 1 second up to 60 seconds. | IVR,<br>Twilio,<br>IVR-AudioCodes,<br>Kore.ai Voice Gateway |
| No. of Retries | Select the maximum number of retries to allow. You can select from just 1 retry up to 10 retries. | IVR,<br>Twilio,<br>IVR-AudioCodes |
| Log | Select **Yes** if you want to send the chat log to the IVR system. | IVR |






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


<img src="../images/timeout_prompts.png" alt="Timeout Prompts" title="Timeout Prompts" style="border: 1px solid gray; zoom:70%;">





**Voice Call Settings Field Reference**

The following sections provide detailed descriptions of each IVR setting, including descriptions, applicability to nodes, default values, and other key information.

!!! notes on prompts

    * You can enter prompts in one of these formats: Plain text, Script, File location of an audio file. If you want to define JavaScript or attach an audio file, click the icon before the prompt text message box and select a mode. By default, it is set to Text mode.
    * You can enter more than one prompt message of different types. You can define their order of sequence by dragging and dropping them.
    * Multiple prompts are useful in scenarios where the prompt has to be played more than once, to avoid repetition, since the prompts are played in order.

<table border="1">
  <tr>
   <td><strong>Field</strong>
   </td>
   <td><strong>Description</strong>
   </td>
   <td><strong>Applicable</strong>
<br>
<strong>to</strong>
<br>
<strong>Nodes</strong>
   </td>
   <td><strong>Applicable</strong>
<br>
<strong>to</strong>
<br>
<strong>Channel</strong>
   </td>
  </tr>
  <tr>
   <td>Initial Prompts
   </td>
   <td>Prompts that are played when the IVR first executes the node. If you 
do not enter a prompt for a node, the default user prompt for the node 
plays by default. If you do not enter a prompt for Standard Responses 
and Welcome Message, the default Standard Response and Welcome
 Message are played by default.
   </td>
   <td>- Entity,
<br>
- Confirmation,
<br>
Message nodes;
<br>
- Standard Responses<br>and Welcome Message
   </td>
   <td>- IVR,
<br>
- Twilio,
<br>
- AudioCodes,
<br>
- Kore.ai Voice Gateway
   </td>
  </tr>
  <tr>
   <td>Timeout Prompts
   </td>
   <td>Prompts that are played on the IVR channel when the user has not 
given any input within the specified time. If you do not enter a prompt
 for a node, the default Error Prompt of the node is played. Standard
 Responses and Welcomes have a default Timeout Prompt that plays if
 you don’t define No Match Prompts.
You can <strong>Customize Retries Behavior</strong> for the Timeout Prompts and
 define the number of retries to configure the number of times the user
 would be prompted for this entity value by setting the number of
 <strong>Allowed Retries</strong> to any value between 1 and 10. The default is 3.
<br><br>
Further, you can define the VA’s <strong>Behavior on Exceeding Retries</strong>; this
 can be set to trigger <em>Invoke Call Termination Handler, Initiate Dialog</em>
<em> Task,</em> or <em>Jump to specific node in current task</em>. When you select
 <em>Initiate Dialog</em> or <em>Jump to a specific node in the current task</em> option,
 you are prompted to select the dialog task or task within the node.
<br><br>
<strong>Note</strong>: The <strong>Customize Retries Behavior</strong> function is supported only for
 the <strong>IVR</strong> channel at the Entity, Confirmation, and Message nodes.
   </td>
   <td>- Entity,
<br>
- Confirmation,
<br>
- Standard Responses<br>and Welcome Message
   </td>
   <td>- IVR,
<br>
- Twilio,
<br>
- AudioCodes,
<br>
- Kore.ai Voice Gateway
   </td>
  </tr>
  <tr>
   <td>No Match Prompts
   </td>
   <td>Prompts that are played on the IVR channel when the user’s input has
 not matched any value in the defined grammar. If you do not enter a
 prompt here or select <strong>No Grammar</strong> option for an Entity or
 Confirmation node, the default Error Prompt of the node is played.
 Standard Responses and Welcomes have a default No Match Prompt
 that plays if you do not enter it.
 <br><br>
You can <strong>Customize Retries Behavior</strong> for the No Match Prompts and
 define the number of retries to configure the number of times the user
 would be prompted for this entity value by setting the number of
 <strong>Allowed Retries</strong> to any value between 1 and 10. The default is 3.
<br><br>
Further, you can define the VA’s <strong>Behavior on Exceeding Retries</strong>; this
 can be set to trigger <em>Invoke Call Termination Handler, Initiate Dialog</em>
<em> Task,</em> or <em>Jump to specific node in current task</em>. When you select
 <em>Initiate Dialog</em> or <em>Jump to a specific node in the current task</em> option,
 you are prompted to select the dialog task or task within the node.
<br><br>
<strong>Note</strong>: The <strong>Customize Retries Behavior</strong> function is supported only for
 the <strong>IVR</strong> channel at the Entity, Confirmation, and Message nodes.
   </td>
   <td>- Entity,
<br>
- Confirmation,
<br>
- Standard Responses<br>and Welcome Message
   </td>
   <td>IVR
   </td>
  </tr>
  <tr>
   <td>Error Prompts
   </td>
   <td>Prompts that are played on the IVR channel when user input is an
 invalid Entity type. If you do not enter a prompt here, the default Error
 Prompt of the node is played.
<br><br>
You can <strong>Customize Retries Behavior</strong> for the Error Prompts and
 define the number of retries to configure the number of times the user
 would be prompted for this entity value by setting the number of
 <strong>Allowed Retries</strong> to any value between 1 and 10. The default is 3.
<br><br>
Further, you can define the VA’s <strong>Behavior on Exceeding Retries</strong>, this
 can be set to trigger <em>Invoke Call Termination Handler, Initiate Dialog</em>
<em> Task,</em> or <em>Jump to specific node in current task</em>. When you select
 <em>Initiate Dialog</em> or <em>Jump to a specific node in the current task</em> option,
 you are prompted to select the dialog task or task within the node.
<br><br>
<strong>Note</strong>: The <strong>Customize Retries Behavior</strong> function is supported only for
 the <strong>IVR</strong> channel at the Entity, Confirmation, and Message nodes.
   </td>
   <td>- Entity,
<br>
- Confirmation,
   </td>
   <td>- IVR,
<br>
- Twilio,
<br>
- AudioCodes,
<br>
- Kore.ai Voice Gateway
   </td>
  </tr>
  <tr>
   <td>Grammar
   </td>
   <td>Define the grammar that should be used to detect a user’s utterance
<br>
   * The input type can be Speech or DTMF
   <br>
   * Source of grammar can be Custom or Link
   <br>
   * For Custom, write VXML grammar in the textbox.
   <br>
   * For Link, enter the URL of the grammar. Ideally, the URL should be
 accessible to the IVR system so that the resource can be accessed
 while executing the calls at runtime
<br>
[See below for a detailed configuration for Grammar syntax](#configuring-grammar).
<br>
<strong>Note</strong>: If the <strong>Enable Transcription</strong> option is enabled for the VA along
<br>
 with specifying the source of the transcription engine, defining
<br>
 grammar isn’t mandatory.
   </td>
   <td>Confirmation;
<br>
- Standard Responses<br>and Welcome Message
   </td>
   <td>- IVR,
<br>
- Twilio
   </td>
  </tr>
  <tr>
   <td><strong>Advanced Controls</strong>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>These properties override the properties set<br> in the VA IVR Settings page and apply to the<br> Dialog Task that you are currently working with.
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Timeout
   </td>
   <td>Select the maximum wait time to receive user input from the
<br>
 drop-down list, from 1 second up to 60 seconds. The default value is
<br>
 the same as defined in the VA IVR Settings page.
   </td>
   <td>N/A
   </td>
   <td>- IVR,
<br>
- Twilio,
<br>
- AudioCodes,
<br>
- Kore.ai Voice Gateway
   </td>
  </tr>
  <tr>
   <td>No. of Retries
   </td>
   <td>Select the maximum number of retries to allow. You can select from
<br>
 just 1 retry up to 10 retries.
<br>
The default value is the same as defined in the VA IVR Settings page.
   </td>
   <td>N/A
   </td>
   <td>- IVR,
<br>
- Twilio,
<br>
- AudioCodes,
<br>
- Kore.ai Voice Gateway
   </td>
  </tr>
  <tr>
   <td>Behavior on Exceeding Retries
   </td>
   <td>Define behavior when either the timeout or number of retry attempts
<br>
 exceed the specified limit.
<br>
You can <strong>Customize Retries Behavior</strong> for the standard number of
<br>
 retries to configure the number of times the user would be prompted
<br>
 for this entity value by setting the number of <strong>Allowed Retries</strong> to any
<br>
 value between 1 and 10. The default is 3.
<br>
Further, you can define the VA’s <strong>Behavior on Exceeding Retries</strong>, this
<br>
 can be set to trigger <em>Invoke Call Termination Handler, Initiate Dialog</em>
<br>
<em> Task,</em> or <em>Jump to specific node in current task</em>. When you select
<br>
 <em>Initiate Dialog</em> or <em>Jump to a specific node in the current task</em> option,
<br>
 you are prompted to select the dialog task or task within the node.
<br>
<strong>Note</strong>: The <strong>Customize Retries Behavior</strong> function is supported only for
<br>
 the <strong>IVR</strong> channel at the Entity, Confirmation, and Message nodes.
   </td>
   <td>N/A
   </td>
   <td>- IVR,
<br>
- Twilio,
<br>
- AudioCodes,
<br>
- Kore.ai Voice Gateway
   </td>
  </tr>
  <tr>
   <td>Barge-In
   </td>
   <td>Select whether you want to allow a user input while a prompt is in
<br>
 progress. If you select no, the user input is not considered until the
<br>
 prompt is completed. The default value is <strong>No</strong>.
   </td>
   <td>N/A
   </td>
   <td>- IVR,
<br>
- Twilio,
<br>
- AudioCodes,
<br>
- Kore.ai Voice Gateway
   </td>
  </tr>
  <tr>
   <td>Call Control Parameters
   </td>
   <td>Click <strong>Add Property.</strong> Enter property names and values to use in
<br>
 defining the VXML definition in the IVR system and Session
<br>
 Parameters in AudioCodes channel. These values defined for a node
<br>
 or a standard response override the global Call Control Parameters
<br>
 defined in the VA IVR /AudioCodes settings page.
   </td>
   <td>N/A
   </td>
   <td>- IVR,
<br>
- AudioCodes,
<br>
- Kore.ai Voice Gateway
   </td>
  </tr>
  <tr>
   <td>Log
   </td>
   <td>Select <strong>Yes</strong> if you want to send the chat log to the IVR system. The
<br>
 default value is <strong>No</strong>.
   </td>
   <td>N/A
   </td>
   <td>IVR
   </td>
  </tr>
  <tr>
   <td>Locale Definition
   </td>
   <td>Enable the <strong>Locale Definition</strong> property to define the <strong><em>(xml:lang =</em></strong>
<br>
<strong><em> “&lt;value>”)</em></strong> attribute in the VXML file by enabling the <strong>Locale</strong>
<br>
<strong> Definition</strong> property. Automatic Speech Recognition engines use the
<br>
 language attribute to enhance speech recognition.
<br>
Once the property is enabled, you can see one or more language
<br>
 codes corresponding to the bot languages. Enter the locale code for a
<br>
 specific bot language in the <strong>Locale Value</strong> field. For example, enter
<br>
 ‘<strong>US</strong>‘ or ‘<strong>UK</strong>‘ as the Locale Value for the English (EN) bot language.
<br>


<img src="../images/locale_definition.png alt="Locale Definition" style="border:1px solid gray;zoom:50%;">


<br>
<strong>Note</strong>: By default, the <strong>Locale Definition</strong> property is disabled for all
<br>
 virtual assistants.
   </td>
   <td>N/A
   </td>
   <td>IVR
   </td>
  </tr>
  <tr>
   <td>Document Type Definitions
   </td>
   <td>The Document Type Definition (DTD) typically refers to a specific
<br>
 syntax used to define the structure and constraints of a Voice
<br>
 Extensible Markup Language (VXML) document. The DTD settings
<br>
 help the VXML to understand the response.
<br>
You can use the <strong>Default</strong> DTD settings defined in the Status, Public ID,
<br>
 and System ID fields for the VXML. If you want to modify settings,
<br>
 click <strong>Customize</strong> to change the values.
<br>
<strong>Note</strong>: If the <strong>Status</strong> field is set to <em>Include</em>, you can enter the Public and
<br>
 System ID. If it is set to <em>Exclude</em>, you cannot view those fields.
   </td>
   <td>N/A
   </td>
   <td>IVR
   </td>
  </tr>
  <tr>
   <td>Fallback Redirection
   </td>
   <td>A Fallback Redirection is an alternative path that the IVR system uses
<br>
 to handoff the conversation whenever the call hangs up
<br>
You can add an URL to redirect the conversation whenever the call
<br>
 hangs up.
<br>
By default, the <strong>Fallback Redirection</strong> is disabled. If you want to enable
<br>
 the Fallback Redirection, click <strong>Customize</strong>.
<br>
<strong>Note</strong>: The Fallback Redirection is supported by both standard and
<br>
 universal bots.
   </td>
   <td>N/A
   </td>
   <td>IVR
   </td>
  </tr>
  <tr>
   <td>Propagate Values to Link Bots
   </td>
   <td>Enable this option to propagate the Voice Call Properties from the
<br>
 Universal Bot to all its linked bots. It helps you to leverage the UB
<br>
 properties when a linked bot’s execution is in progress. The Voice Call
<br>
 Properties of the linked bot are used when the conversation is
<br>
 happening directly with the bot as a Standard bot.
<br>
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

<img src="../images/ivr-properties.gif" alt="IVR Properties" title="IVR Properties" style="border: 1px solid gray; zoom:70%;">





## Configuring Grammar

You will need to define at least one Speech Grammar to the IVR system. 
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
    1. Select the **Speech** or **DTMF** option as per your requirement.
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