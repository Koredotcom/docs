# Common Configuration Scenarios in Voice Gateway

Kore.ai Voice Gateway offers several essential configuration options to customize and optimize voice interactions. These configurations enable administrators to fine-tune voice interactions, manage response delays, and create more natural conversational experiences across different languages and use cases.

The common configuration scenarios include: 

* Speech engine configuration (ASR/TTS) at global, experience flow, and node levels. 
* Continuous ASR for handling digit strings and identifiers.
* Bot delay management for response timing.
* Barge-in controls for handling user interruptions.
* Automated language detection for multilingual support. 


## Configure ASR/TTS

Speech Engines (ASR/TTS engines) can be configured at various levels in SmartAssist or the XO Platform.

1. Global level (Channel level)
2. Experience Flow level
3. Node level

**Setting ASR/TTS at the Global level**  

The ASR/TTS engines configured at this level are applicable for all the experience flows (unless a separate speech engine is configured at the experience flow).

Steps to configure ASR/TTS at the global level:

1. Go to **CONFIGURATION** > **SYSTEM SETUP** > **Language & Speech** > **Voice Preferences**.  
   <img src="../images/language-and-speech.png" alt="Voice Preferences" title="Voice Preferences" style="border: 1px solid gray; zoom:80%;">

2. The Voice Preferences window is displayed. Select the Language from the dropdown.
3. Select the **Automatic Speech Recognition Engine** and the **Dialect** from the dropdowns.
4. Click **Show advanced settings** and select the **Primary** and **Fallback ASR Configurations**.
5. Select the **Text to Speech Engine** and the **Voice** from the dropdowns.
6. Click **Show advanced settings** and select the **Primary** and **Fallback TTS Configurations**.
7. To listen to the voice, enter a sample text into the **Sample Text** dialog box and click **Preview Text**.
8. Click **Done**.  
   <img src="../images/save-voice-preference.png" alt="Save Voice Preference" title="Save Voice Preference" style="border: 1px solid gray; zoom:80%;">

**Configure ASR/TTS at the Experience Flow level**

The speech engine configured in an Experience Flow applies to the entire flow and any bot called from within that flow.

Steps to configure ASR/TTS at the Experience Flow Level:

1. Go to **CONFIGURATION** > **EXPERIENCES** > **Experience Flows**.  
   <img src="../images/experience-flows.png" alt="Experience Flows Page" title="Experience Flows Page" style="border: 1px solid gray; zoom:80%;">

2. Click **Edit** on the experience flow to assign a speech engine.  
   <img src="../images/edit-experience-flow.png" alt="Edit Experience Flow" title="Edit Experience Flow" style="border: 1px solid gray; zoom:80%;">

3. On the Edit Experience Flow window, select the **Language** from the dropdown.
4. Select the **Automatic Speech Recognition Engine** and the **Dialect** from the dropdowns.
5. Click **Show advanced settings** and select the **Primary** and **Fallback ASR Configurations**.
6. Select the **Text to Speech Engine** and the **Voice** from the dropdowns.
7. Click **Show advanced settings** and select the **Primary** and **Fallback TTS Configurations**.
8. Click **Update & Continue to Flow Design** to save the configurations.  
   <img src="../images/edit-flow-experience.png" alt="Continue to Flow Design" title="Continue to Flow Design" style="border: 1px solid gray; zoom:80%;">

**Configure ASR/TTS at a node at the Entity level inside a dialog**  

Speech engines (ASR/TTS) can be configured at any Entity or Message node inside a dialog. Once a speech engine is set at an Entity or Message node, it will be used until the end of the call unless a different speech engine is assigned at another Entity or Message node.

The corresponding Call Control Parameter must be set to configure a speech engine at an Entity or Message node.

Steps to set call control parameters:

1. Click the [Entity Node](../../automation/use-cases/dialogs/node-types/working-with-the-entity-node.md)/[Message Node](../../automation/use-cases/dialogs/node-types/working-with-the-message-nodes.md) in the [Dialog Task](../../automation/use-cases/dialogs/node-types/working-with-the-dialog-node.md) where the ASR/TTS will be configured.
   
2. Click **Voice Call Properties** and then click **Advanced Controls**.  
   <img src="../images/advanced-controls.png" alt="Advanced Controls" title="Advanced Controls" style="border: 1px solid gray; zoom:80%;">

3. Click **Add** in the Call Control Parameters section to add a call control parameter.  
   <img src="../images/add-call-control-parameters.png" alt="Add Call Control Parameters" title="Add Call Control Parameters" style="border: 1px solid gray; zoom:80%;">

4. Enter the **Parameter Name** and **Value** and click **Confirm** to add the parameter.    
   <img src="../images/parameter-value.png" alt="Parameter-Value" title="Parameter-Value" style="border: 1px solid gray; zoom:80%;">

5. The parameter is added successfully.  
   <img src="../images/parameter-added.png" alt="Parameter Added" title="Parameter Added" style="border: 1px solid gray; zoom:80%;">

### Continuous ASR

Continuous ASR (Automatic Speech Recognition) is a feature that allows Speech-to-Text (STT) recognition to be tuned for the collection of things like phone numbers, customer identifiers, and other strings of digits or characters, which, when spoken, are often spoken with pauses in between utterances. Two parameters to enable it are:

<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Supporting STT/TTS</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td>continuousASRTimeoutInMS
   </td>
   <td>Number in millisecond
Example-5000 for  5 sec
   </td>
   <td>STT - Google and Microsoft
TTS - Not Required
   </td>
   <td>This is a duration of silence (in seconds) to wait after a transcript is received from the STT vendor before returning the result. If another transcript is received before this timeout elapses, the transcripts are combined, and recognition continues. The combined transcripts are returned once a timeout between utterances exceeds this value.
   </td>
  </tr>
  <tr>
   <td>continuousASRDigits
   </td>
   <td>Any digit  Example- *,%,&;,#
   </td>
   <td>STT - Google and Microsoft
TTS - Not Required
   </td>
   <td>DTMF key, if entered, will also terminate the gather operation and immediately return the collected results.
   </td>
  </tr>
</table>

### Handling Bot Delay

If the bot takes time to respond to a message, you can configure VoiceAI Connect to take action.

### Handle Bot Delay After User Input

The delay is only applied when Kore VG sends a response to the bot and is waiting for the bot's reply. This includes delays at the Entity Node, Confirmation Node, or Message Node with an "On Intent" (User-Bot delay).  
<img src="../images/handle-bot-delay.png" alt="Handle Bot Delay" title="Handle Bot Delay" style="border: 1px solid gray; zoom:80%;">

If a delay occurs between two Message nodes, the bot developer must handle it manually by playing audio and stopping it after the delay.

By setting timeout properties, the following actions can be configured:

* Play a textual prompt to the user
* Play an audio file to the user
* Disconnect the call

**Use Case**:

* To play a message to the user, configure a timeout on the botNoInputTimeoutMS parameter and define the action:
* To play a textual prompt, set the prompt on the botNoInputSpeech parameter.
* To play an audio file, set the file URL using the botNoInputUrl parameter.
* To replay the message if the timeout is exceeded multiple times, configure the number of retries using the botNoInputRetries parameter.
* A separate timeout for disconnecting the call can be configured using the botNoInputGiveUpTimeoutMS parameter, which is set to 30 seconds by default.

**Parameters description**

The following table lists the bot parameters that are used to configure this feature:

<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
   </td>
   <td><strong>Required</strong>
   </td>
  </tr>
  <tr>
   <td>botNoInputGiveUpTimeoutMS
   </td>
   <td>Number
   </td>
   <td>IDefines the timeout (in milliseconds) for the bot response before the call is disconnected.
If no response is received when the timeout expires, Kore VG Will disconnect the Call.
The default is 30 Sec (that is, timeout for bot response).
   </td>
   <td>Yes
The default is 30 sec
   </td>
  </tr>
  <tr>
   <td>botNoInputTimeoutMS
   </td>
   <td>Number
   </td>
   <td>Defines the timeout (in milliseconds) before a prompt is played to the user.
If no input is received from the bot when this timeout expires, Kore VG can either play a textual prompt (see the botNoInputSpeech parameter) or an audio file (see the botNoInputUrl parameter) to the user.
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td>botNoInputRetries
   </td>
   <td>Number
   </td>
   <td>Defines the maximum number of recurring timeouts (configured by the botNoInputTimeoutMS parameter) for bot response.
If this parameter is configured, the timer will be triggered again after playing the no-bot input prompt to the user.
For example, if the parameter is set to 2, the timeout is set to 1000 ms, and no response is received from the bot, Kore VG  will play the prompt 2 times.
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td>botNoInputSpeech
   </td>
   <td>String/Array
String - Single message
Array - Multiple messages including audio URL.
Example: [“<a href="https://audiourl">https://audiourl</a>” ,” This is Second Message”]
   </td>
   <td>Defines the textual prompt to play to the user when no input has been received from the bot when the timeout expires (configured by botNoInputTimeoutMS).
The prompt can be configured in plain text or Speech Synthesis Markup Language (SSML) format (see Using SSML for more details).
botNoInputSpeech can contain Multiple Messages, including AudioUrl.
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td>botNoInputUrl
   </td>
   <td>String
   </td>
   <td>Defines the URL from where the audio file is played to the user when no input has been received from the bot when the timeout expires.
   </td>
   <td>Yes
   </td>
  </tr>
</table>

Example:  
<img src="../images/message-node-paremeters.png" alt="Example Configuration" title="Example Configuration" style="border: 1px solid gray; zoom:80%;">

!!! Note

      `botNoInputSpeech` can contain multiple messages, including audio URLs.

Example: `botNoInputSpeech` = [“this is first delay Msg”, “[https://](https://this)dummy.wav”,” this is third textual Message”].

### Handle Delay Between Two Message Nodes

Kore VG can only handle delays when it sends a response to the bot and waits for the bot's reply. If a delay occurs, Kore VG can handle it. If a delay occurs between a Message node or Script node where the user hasn’t spoken, Kore VG won’t be aware of the delay, and the bot developer must handle it manually.

If a Service Node is placed between two Message nodes (delay observed between two Message nodes):
This must be managed manually, as the gateway has already received a command to play a message and is not waiting for user input. The gateway will not initiate a delay timer and will wait for the next bot message.

To handle this scenario:

   * Play music before the API call in the Message node.
   * Configure the Service node.
   * Deliver the message after the Service node.

!!! Note

      If you receive a response from the API and don’t want to play the full music, immediately abort the music and play the Message node prompt using the channel override utility function:

   `print(voiceUtils.abortPrompt(“Dummy message“))` → (The message parameter is optional).  
      <img src="../images/optional-message-parameter.png" alt="Optional Message Parameter" title="Optional Message Parameter" style="border: 1px solid gray; zoom:80%;">

### Barge-In

The Barge-In feature controls KoreVG behavior in scenarios where the user starts speaking or dials DTMF digits while the bot is playing its response to the user. In other words, the user interrupts ("barges-in") the bot.

<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Supporting STT/TTS</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td>listenDuringPrompt
   </td>
   <td>Boolean - True or false
Similar to Barge-In
   </td>
   <td>STT - Google and Microsoft
TTS - Not Required
   </td>
   <td>If false, do not listen for user speech until the bot has finished playing its response to the user. Defaults to true.
   </td>
  </tr>
  <tr>
   <td>bargeInMinWordCount
   </td>
   <td>Number
   </td>
   <td>STT - Google and Microsoft
TTS - Not Required
   </td>
   <td>if Barge-In is true, only kill speech when these many words are spoken. Defaults to 1.
   </td>
  </tr>
  <tr>
   <td>bargeInOnDTMF
   </td>
   <td>Boolean
   </td>
   <td>STT - Google and Microsoft
TTS - Not Required
   </td>
   <td>Press any key to enable DTMF,
kill audio playback if the caller enters DTMF, then you can tell your utterance or speech.
   </td>
  </tr>
  <tr>
   <td>dtmfCollectInterDigitTimeoutMS
   </td>
   <td>Number - Time in milliseconds
   </td>
   <td>STT - Google and Microsoft
TTS - Not Required
   </td>
   <td>This defines the timeout during which KoreVG waits for the user to press another digit before sending all the digits to the bot.
   </td>
  </tr>
  <tr>
   <td>dtmfCollectSubmitDigit
   </td>
   <td>Number
   </td>
   <td>STT - Google and Microsoft
TTS - Not Required
   </td>
   <td>Defines a special DTMF "submit" digit; when received from the user, KoreVG immediately sends all the collected digits to the bot (as a DTMF message) without waiting for the timeout to expire or the maximum number of expected digits.
   </td>
  </tr>
  <tr>
   <td>dtmfCollectMaxDigits
   </td>
   <td>Number
   </td>
   <td>STT - Google and Microsoft
TTS - Not Required
   </td>
   <td>Maximum number of DTMF digits expected to gather.
For example, If maxDigit = 5, the bot will allow a maximum of 5 digits Input. If 1234567 is entered, the bot takes only 12345.
   </td>
  </tr>
  <tr>
   <td>dtmfCollectminDigits
   </td>
   <td>Number
   </td>
   <td>STT - Google and Microsoft
TTS - Not Required
   </td>
   <td>The minimum number of DTMF digits is expected to be gathered. It defaults to 1.
   </td>
  </tr>
  <tr>
   <td>dtmfCollectnumDigits
   </td>
   <td>Number
   </td>
   <td>STT - Google and Microsoft
TTS - Not Required
   </td>
   <td>The exact number of DTMF digits is expected to be gathered.
   </td>
  </tr>
  <tr>
   <td>input
   </td>
   <td>Array of string
['digits', 'speech'].
   </td>
   <td>STT - Google and Microsoft
TTS - Not Required
   </td>
   <td>Array, specifying allowed types of input: ['digits'], ['speech'], or ['digits', 'speech'].
Default: ['digits']
   </td>
  </tr>
</table>

### Language Detection

In this setup, developers do not need to use DTMF or other methods to switch the bot's language. Instead, the bot will automatically detect the language based on the user's utterance.

For example, if a user speaks in English, the conversation will continue in English. If the user switches to Spanish, the language will switch to Spanish. [Learn more](../../app-settings/language-management/managing-languages-for-multilingual-vas.md#adding-a-language-to-a-virtual-assistant).

**Configuration Steps**:

1. In Bot Builder (on the child bot), navigate to **Languages,** add a new language (for example, Spanish), and enable it.
2. Select English as the default language from the language dropdown menu.
3. Create a new dialog titled "Language Detection" (or choose a suitable name).
4. Inside this dialog, add an **entity node** to capture user intent input.
5. Set the entity precedence to **'Intent over Entity'** in the advanced controls.
6. Add the **AlternativeLanguage** call control parameter.
7. Switching languages mid-conversation isn't supported; doing so can cause the bot to lose context. Language detection should happen at the beginning of the conversation (for example, in the welcome task), with the switch based on the user's first utterance.
8. Opt for **'Intent over Entity'** to prioritize intent detection in the user's language.
9. Create another dialog with a specific intent (for example, "book flight") and add relevant entities (for example, selecting source and destination).
10. In the entity configuration, include the following call parameters:
    * **Name**: alternativeLanguages
    * **Value**: [] (Leave it empty if no further language switching is needed).
11. Add utterances in the desired language and train the bot.
12. Change the language to Spanish in the bot language dropdown.
13. Open the intent and update utterances and intent details in Spanish.
14. Update entity details in Spanish as well.
15. Publish the bot.

These steps will ensure the bot can detect the user's language at the start and adjust the conversation flow accordingly.