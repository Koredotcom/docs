# Advanced Configuration and Customization

This section delves into more advanced configurations and customization options for your Voice Gateway, including node-level settings and utility functions.

## IVR Properties (To be Added)

## Channel Override Templates (To be Added)

## Utility Functions in Voice Gateway

Voice Gateway offers two utility libraries to manage call handling and transfers - Agent Utils and Voice Utils. These utilities provide comprehensive control over call flows, including features like SIP transfers, audio control, DTMF handling, and custom header management. Together, they offer flexible options for implementing both complex agent-assisted scenarios and straightforward external transfers.

### Agent Utils (SmartAssist/Contact Center Library)

The `agentUtils` library allows you to dynamically modify call transfer properties through the bot builder (XO) before transferring the call to a human agent. It provides a wide range of options, including:

* **Dynamic SIP Configuration**: Modify the SIP properties before transferring the call.
* **Transfer Types**: Change the type of transfer (for example, Skill-based, SIP-based).
* **User Information**: Update user-specific information before routing the call to the agent.

With `agentUtils`, you can adjust SmartAssist properties directly from the bot, which is ideal when you need to fine-tune call transfers by modifying parameters like SIP URIs or transfer methods before sending the call to the Outer Source or SmartAssist agent desktop.

**Agent Transfer Node in XO Platform (Used with agentUtils)**

To apply changes made with `agentUtils`, you need to use the **Agent Transfer node** in the XO platform. The Agent Transfer node routes the call back to SmartAssist from the bot, and based on the type of transfer selected in SmartAssist (for example, External, SIP Transfer, SmartAssist Agent Desktop), the call will be appropriately routed.

You can make this process **dynamic** by using `agentUtils` to modify transfer properties (such as SIP URI or transport type) before executing the Agent Transfer node.

**Major Advantage**:  
Unlike `voiceUtils`, the `agentUtils + Agent Transfer Node` flow **supports** **header encoding/decoding and user-to-user (UUI) data transfer**, which is critical when data needs to be passed securely and efficiently during the transfer process. This is one of the **key reasons** to prefer this method for complex call transfers that require encoded headers or UUI support.

**Example Use Case**:  
If you need to dynamically change the SIP transport type or update the SIP URI based on the user's session, `agentUtils` allows you to modify these properties via a script node in the bot builder. The Agent Transfer node will handle the actual routing to the SmartAssist platform. [Learn more](../../flows/node-types/utils.md#script-nodes-call-flows-agent-utils-and-usersessionutils).

### Voice Utils (SmartAssist Library)

The `voiceUtils` library is specifically for the SmartAssist Voice Gateway. It is used for transferring calls to external sources, such as SIP endpoints or phone numbers, **without involving the SmartAssist agent desktop**. This library supports functionalities like:

* Hangup
* Agent Transfer (via Invite and Refer)
* Abort Prompt
* Play and Pause Audio, etc

In the case of agent transfers using `voiceUtils`, the call is directly routed to an external source (such as a SIP endpoint or a phone number), bypassing the SmartAssist platform. There is no interaction with the SmartAssist agent desktop, and it’s best used for scenarios where the call transfer needs to be completed externally.

* **Transfer with Headers**: You can use `voiceUtils.invite()` and `voiceUtils.refer()` to transfer the call with custom headers. However, it is important to note that this does not support header encoding/decoding or user-to-user (UUI) data transfer.

   **Example Use Case**:
If you are transferring the call to an external SIP provider or a phone number directly, `voiceUtils` is the ideal choice. This quick method bypasses SmartAssist and is tailored for simple SIP or phone number transfers.

### When to Use What

* Use `agentUtils` + **Agent Transfer Node**:<br>
This method should be used when **header encoding/decoding** or **user-to-user (UUI) data transfer** is required during the call transfer. It provides dynamic control over SmartAssist-specific properties (like SIP URIs or transport types) and ensures proper data handling for more complex call transfer scenarios involving the SmartAssist agent desktop.
* Use `voiceUtils`:
Use this method when you need to **transfer the call directly to an external source** like a SIP endpoint or phone number, **bypassing the SmartAssist platform**. It is best for simple transfers without the need for header encoding or UUI support.

### VoiceUtils Helper Methods

These functions can be used in the Channel Override template inside Java script sections. All functions can be executed in the Message Node.

**General Syntax** - `print(utility function)`

#### Hangup

**Use Cases**:

1. If you need to forcibly hang up the call from the bot during the flow or call.

2. This function can also be used to dynamically send headers in a BYE message, similar to SIP BYE, using Run Automation.

   **Syntax**: `print(voiceUtils.hangup(message,headers,queueCommand))`

   The message, headers, and queueCommand are optional parameters.

   **Header syntax**:

| **Options**    | **Description**                                                                                                     | **Type**  | **Required**        |
|----------------|---------------------------------------------------------------------------------------------------------------------|-----------|----------------------|
| message        | Message to play before Hangup.                                                                                      | String    | No                   |
| Headers        | An object containing SIP headers to include in the BYE request.                                                     | Object    | No                   |
| queueCommand   | If true, queue this command until previous commands are completed; otherwise, interrupt and flush all previous commands and execute this command immediately. | Boolean   | No (Default: True)   |

`````
"headers": { \
"X-Reason" : "maximum call duration exceeded" \
}
`````
The system will first play the message, then hang up the call and transmit the headers.

!!! Note

    To skip the message and only send the headers, provide an empty string as the first argument.

**Example**:

```
        1 With message and headers
        var message = "Call completed";
        var headers : {

        	`"X-Reason"` `:` `"Call hangup from system side"`
        }

        print(voiceUtils.hangup(message,headers));

        2 Without Message but containing headers
          var message = "";
          var headers = { "X-Reason" : "completed"}
        print(voiceUtils.hangup(message,headers));
```

#### SIP Refer

This function transfers the call to an external contact number (telephone number or SIP URI). After the transfer (Refer), the bot's call leg will disconnect.

**Use Case:**

Transfer the call to a third party using the utility in the message node with Run Automation from SmartAssist.

message - Optional (Send Empty Message),  referTo - Required, headers - Optional

**Syntax**: `print(voiceUtils.refer(message,ReferTo,headers,queueCommand))`

| **Options**    | **Description**                                                                                                     | **Type**  | **Required**           |
|----------------|---------------------------------------------------------------------------------------------------------------------|-----------|-------------------------|
| message        | Play message before transferring a call to agent.                                                                  | String    | NA                      |
| ReferTo        | A SIP URI or a phone number/user identifier.                                                                       | String    | Yes                     |
| headers        | Additional SIP headers to include in the response.                                                                 | Object    | NA                      |
| queueCommand   | If true, queue this command until previous commands are completed; otherwise, interrupt and flush all previous commands and execute this command immediately. | Boolean   | NA (Default: True)      |

**Example**:

```
1 Using all the options

var message = "Transferring Call to xxxx number";
var ReferTo = "+91xxxxxxxxxx";   // or sipUrl 

var headers: {
	"X-Reason" : "Call Received from ABC"
}

print(voiceUtils.refer(message,ExternalPhoneNumber,headers))

2 without Message and headers 

var message = "";
print(voiceUtils.refer(message,ReferTo));

3 With QueueCommand
  var message = "" , headers = {}, referTo = "sip:test@5060"
print(voiceUtils.refer(message,ReferTo,headers,false));
```

#### SIP Invite

The SIP Invite initiates a conference call. The bot's leg remains active after the call connects to the third party, and once the call with the third party ends, the bot's call will resume. The callerId and target fields are mandatory and should contain either a SIP URI or a phone number. To pass these values, provide an empty string for the message, followed by the callerId and target.

**Syntax**: `print(voiceUtils.invite(message, callerId, target,headers,queueCommand))`

| **Options**     | **Description**                                                                                                     | **Type**                                      | **Required**        |
|------------------|---------------------------------------------------------------------------------------------------------------------|------------------------------------------------|----------------------|
| Message          | Message to play before transferring the call to a third party.                                                     | String                                         | No                   |
| CallerId         | The inbound caller's phone number, which is displayed to the number that was dialed. The caller ID must be a valid E.164 number. | String containing phone number with country code (Bot Number) | Yes                  |
| Target           | The target property specifies the call destinations.                                                              | String (SIP URI)                               | Yes                  |
| Headers          | Additional SIP headers to include in the response.                                                                | Object                                         | NA                   |
| QueueCommand     | If true, queue this command until previous commands are completed; otherwise, interrupt and flush all previous commands and execute this command immediately. | Boolean                                        | No (Default: True)   |

**Example**:

```
let callerId = "+1901xxxx";
let target = "sip:test.com:5060";
let message = "SIP Invite Transfer"
let headers = {
"X-CallId" : "xxxxx"
}
print(voiceUtils.invite(message,callerId,target,headers))
```

#### AbortPrompt

The abortPrompts event cancels all pending prompts sent before it was triggered. For example, if the bot sends an abortPrompts event right after sending three prompt messages, the first prompt will stop playing immediately, and the remaining two prompts will not play.

**Use Case**:

Killing the previous prompt with the current Message.

**Syntax**: `print(voiceUtils.abortPrompt())`

The “Message” parameter is Optional.

| **Options** | **Descriptions**                                     | **Type** | **Required** |
|-------------|------------------------------------------------------|----------|--------------|
| Message     | Kill the previous command and play the configured message. | String   | NA           |


!!! note

    It supports .wav files and multiple messages also, but it should send as an array of messages.

example - var message = [“[https://example.wav](https://example.wav)” , “welcome message”]

**Example**:

```
var message = "Aborting the Previous Message",

print(voiceUtils.abort(message))

//without message
print(voiceUtils.abortPrompt())
```

#### Send DTMF

This function is used to send DTMF digits from the bot. The digits are sent as RTP payloads using RFC 2833.

**Use Case**:

When one bot interacts with another bot and tries to give DTMF Input.  

| **Options** | **Type** | **Description**                                                             | **Required**            |
|-------------|----------|------------------------------------------------------------------------------|--------------------------|
| dtmf        | String   | A string containing a sequence of DTMF digits (0-9, *, #).                   | Yes                      |
| duration    | Number   | The length of each digit, in milliseconds. Defaults to 500.                 | No (Default value: 500)  |

**Example**:

```
let dtmf = "99865",
let duration = 600

print(voiceUtils.sendDTMF(dtmf,duration))
```

#### Pause and Play

The pause command waits silently for a specified number of seconds. Play is Optional; If you pass the message, it will play after the pause.

| **Options** | **Type**                                                                 | **Description**                                       | **Required** |
|-------------|--------------------------------------------------------------------------|--------------------------------------------------------|--------------|
| length      | number (seconds) — for example, `4`. Default is 3 seconds.               | Number of seconds to wait before continuing the app.   | Yes          |
| message     | string or array of strings containing a URL and string. <br>Example: `["This is the message", "https://text.wav"]` | Play the message after executing the pause time.       | No           |

**Example:**

`\`
`let` `length` `=` `4,`

```
let message = "After 4 second this message will play"
print(voiceUtils.pauseAndPlay(length,message))
```

#### Play

The play command is used to stream recorded audio to either a call or a text message.

The message can be either a single string or an array of strings that includes both audio URLs and text messages.

**Syntax**: `print(voiceUtils.play(message))`

| **Option** | **Description**                            | **Type**                                                                 | **Required** |
|------------|---------------------------------------------|--------------------------------------------------------------------------|--------------|
| message    | To play text messages and audio URLs.       | `String` – Only message<br>`Array of strings` – Both audio URL and message. | Yes          |

**Example**:

```
Let message = ["this is First message", "https://audiofiile.wav" , "this is second Message"]

 //  All three message will be played in Sequence WIse (Text Message -> Audio File -> Text Message)
```

#### Voicemails

**Use Cases**: 

1. When you need to configure voicemail settings and notifications for customer calls. 

2. When you need to receive transcriptions of voicemail messages. 

3. When you need to collect and process customer voicemail content with metadata.

**Syntax**: `print(voiceUtils.voicemail(message, beepRequired, transcriptionRequired, notifyUrl, metaInfo))`

**Header Syntax**:

| **Options**             | **Description**                                                                 | **Type**   | **Required** |
|--------------------------|----------------------------------------------------------------------------------|------------|--------------|
| message                  | The message played to the customer before the voicemail recording starts.       | string     | Yes          |
| beepRequired             | When true, plays a beep sound after the message to indicate the recording start. Default: false | boolean    | No           |
| transcriptionRequired    | When true, generates text transcription of the voicemail. Default: false        | boolean    | No           |
| notifyUrl                | Client endpoint URL where voicemail notifications will be sent.                 | string     | Yes          |
| metaInfo                 | Additional metadata to include with the notification.                           | object     | No           |

```
"metaInfo": {
    "sessionId": "session123",
    "userId": "user456",
    "auth_token": "YOUR_SECURE_TOKEN"
}
```

**Example**:

```
var message = "Please leave your voicemail after beep and hang up the call";
var beepRequired=true;
var transcriptionRequired=true;
var notifyUrl={
    "url": "https://puma-singular-regularly.ngrok-free.app",
    "headers": {
        "auth":"YOUR_SECURE_TOKEN",
        'Accept': "application/json",
        'Content-Type': 'application/json'
    }
};
var metaInfo={
    "newVar":context.session.opts.streamId
}
print(voiceUtils.voicemail(message,beepRequired,transcriptionRequired,notifyUrl,metaInfo));
```

### Raw Packet (JavaScript Code)

 It is recommended to use those call controls or Inbuilt Utility Functions rather than overriding using Raw JavaScript Code.

If the Call Control Parameter or Inbuilt Utility Function does not achieve something, then the developer can contact the Support Team.

!!! note

    The platform does not perform design-time validation of message overrides; they are passed as is, increasing the likelihood of errors.

## Speech Customization (Call Control Parameters)

This section provides in-depth information on customizing speech behavior using call control parameters.

### Introduction to Call Control Parameters

Call control parameters are general-purpose parameters that can modify a call's behavior, including ASR/STT & TTS configurations.

!!! note

    Automatic Speech Recognition (ASR) and Speech-to-Text (STT) are two terms that refer to the same technology. Both involve converting spoken language into written text by analyzing and interpreting audio input. The terms are used interchangeably, describing the same function—transforming speech into readable, actionable text.

There are two ways to define the Call Control Parameters - Node Level and Channel Level.

You can apply Call Control Parameters at either the Session or Node level, offering more flexibility in managing call behavior.

* **Session-Level Parameters**: Add the prefix `session.` to apply parameters throughout the session (for example, `session.ttsprovider`).
* **Node-Level Parameters**: Add the prefix node. to apply parameters only at a specific node (for example, `node.ttsprovider`).
* **Default Behavior**: Parameters without a prefix are considered session-level by default.
* Node-level parameters take precedence over session-level parameters. If no node-level parameters are defined, session-level properties will be applied.

### Node Level Call Control

The call control section is Available In [Entity Node](../../automation/use-cases/dialogs/node-types/working-with-the-entity-node.md)/[Message Node](../../automation/use-cases/dialogs/node-types/working-with-the-message-nodes.md#ivr-properties)/[Confirmation Node](../../automation/use-cases/dialogs/node-types/working-with-the-confirmation-nodes.md#ivr-properties) > IVR Properties > Advanced Controls. [Learn more](../../automation/use-cases/dialogs/node-types/voice-call-properties.md#configuring-grammar).  
<img src="../images/node-level-call-control-parameters.png" alt="Node Level Call Control" title="Node Level Call Control" style="border: 1px solid gray; zoom:80%;">

### Channel Level Call Control

For information on configuring the Call Control Parameters at the channel level, refer to [Define the Call Control Parameters](../smart-assist-gateway.md#step-4-define-the-call-control-parameters).

### Update/Modify Parameters
When updating language settings or modifying Automatic Speech Recognition (ASR) and Text-to-Speech (TTS) parameters in Call Control Parameters, users can specify the updated field along with a minimal set of required parameters.

For example, if a user has already configured the STT provider and language in the call control parameters and wants to add a new language, the system appends the new parameter while retaining the existing values. Users only need to provide the additional sttLanguage parameter without redefining the previously set values.

This behavior applies to Session-Level Call Control Parameters.

**Example**

**Existing Parameters:**

```
{
  "sttProvider": "microsoft",
  "sttLanguage": "en-IN"
}
```

**Adding a New Language:**

```
{
  "sttLanguage": "en-ES"
}
```

In this scenario, the system retains the existing **sttProvider** and previously set **sttLanguage**, ensuring that only the new parameter is added without requiring users to re-enter unchanged values.

### Supported Speech Engines (ASR/TTS)

Voice Gateway supports the following third-party service providers for ASR/TTS. [Learn more](https://docs.kore.ai/smartassist/configuration/support-for-third-party-asr-tts-and-voice-biometrics/).

| **Speech Engine**    | **ASR Name**     | **TTS Name**    | **Supported Environment**     |
|----------------------|------------------|------------------|-------------------------------|
| Microsoft Azure      | microsoft         | microsoft         | On Premise, Cloud             |
| Google               | google            | google            | On-Premise, Cloud             |
| Nvidia (Riva)        | nvidia            | nvidia            | On-Premise                    |
| Amazon (AWS)         | aws               | polly             | Cloud                         |
| Deepgram             | deepgram          | deepgram          | Cloud                         |
| Elevenlabs           | Not Supported     | elevenlabs        | Cloud                         |
| Whisper              | Not Supported     | whisper           | Cloud                         |
| Ami voice            | amivoice          |                   | Cloud                         |

### Supported Call Control Parameters

#### Provider Related Parameters

Speech-to-text (STT) and text-to-speech (TTS) services interface with the user using a selected language (for example, English US, English UK, or German).

TTS services also use a selected voice (for example, female or male) to respond.

* Use STT for recognizer:
    `sttProvider` → `google`, `microsoft`

* Use TTS for synthesizer:
    `ttsProvider` → `google`, `microsoft`, `aws`

!!! Note

    * Apply the following parameters only when STT is set as Recognizer.
    * Otherwise, the system uses default bot-level or Voice Gateway settings.
    * These properties are applied at the session level.

**Examples**

**JSON**

```
{
  "sttProvider": "google",
  "sttLanguage": "en-IN",
  "ttsProvider": "google",
  "ttsLanguage": "en-IN",
  "voiceName": "en-IN-Wavenet-A"
}
```

| **Parameter**       | **Type** | **Supported STT/TTS** | **Description**                                                                                                                             | **Example**                                                                                                                                                                |
| ------------------- | -------- | --------------------- | ------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `sttProvider`       | String   | All                   | Sets the speech-to-text engine. You can change the provider dynamically during a call.                                                      | `"sttProvider": "google"`                                                                                                                                                  |
| `sttLanguage`       | String   | All                   | Sets the STT language. The transcript language matches this value.                                                                          | `"sttLanguage": "en-US"`                                                                                                                                                   |
| `ttsProvider`       | String   | All                   | Sets the text-to-speech provider, similar to `sttProvider`.                                                                                 | `"ttsProvider": "microsoft"`                                                                                                                                               |
| `ttsLanguage`       | String   | All                   | Sets the language used for TTS. Ensure it matches the `voiceName`.                                                                          | `"ttsLanguage": "en-US"`                                                                                                                                                   |
| `voiceName`         | String   | All                   | Required for TTS output. The voice must align with `ttsLanguage`.                                                                           | `"voiceName": "en-AU-NatashaNeural"`<br>Example:<br>`json<br>{<br>  "ttsProvider": "microsoft",<br>  "ttsLanguage": "en-AU",<br>  "voiceName": "en-AU-NatashaNeural"<br>}` |
| `enableSpeechInput` | Boolean  | All                   | When set to `false`, disables speech input and allows only DTMF input. Default is `true`. Use this only through the Call Control Parameter. | `"enableSpeechInput": false`                                                                                                                                               |

#### Labels and Fallback Provider Related Parameters

Label – Assign/Create a label only if you need to create multiple speech services from the same vendor. Then, use the label in your application to specify which service to use.

**How to Configure Label**

1. Add a speech service inside the Speech tab.

2. Select a provider and add a label with a unique name.

3. Use the same label in the call control parameter.

4. At the same node where you use fallback call control parameters, you must also pass the primary Recognizer and Synthesizer.

Examples:

**JSON**

```
{
  "sttProvider": "google",
  "sttLanguage": "en-US",
  "sttLabel": "google-stt-2"
}
```

**STT**

```
{
  "sttProvider": "microsoft",
  "sttLabel": "my_azure-US",
  "sttLanguage": "en-US"
}
```

**TTS**

```
{
  "ttsProvider": "microsoft",
  "ttsLanguage": "en-US",
  "voiceName": "en-US-AmberNeural",
  "ttsLabel": "my_azure-US"
}
```

**Fallback**

```
{
  "sttProvider": "microsoft",
  "sttLabel": "my_azure-US",
  "sttLanguage": "en-US",
  "ttsProvider": "microsoft",
  "ttsLanguage": "en-US",
  "voiceName": "en-US-AmberNeural",
  "ttsLabel": "my_azure-US",
  "sttFallbackProvider": "microsoft",
  "sttFallbackLanguage": "en-US",
  "sttFallbackLabel": "my_azure_Europe",
  "ttsFallbackProvider": "microsoft",
  "ttsFallbackLanguage": "en-US",
  "ttsFallbackLabel": "my_azure_Europe",
  "ttsFallbackVoiceName": "en-US-AmberNeural"
}
```

!!! Notes

    * The node at which you use fallback call control parameters must also define the primary recognizer and synthesizer.
    * Best practice: use the same ASR engine in fallback with a different label or region.
    * If the current provider fails, Voice Gateway switches to the fallback provider.
    * Fallback properties are applied at the session level.

| Parameter              | Type   | Description                                                                            | Example Values      |
| ---------------------- | ------ | -------------------------------------------------------------------------------------- | ------------------- |
| `sttLabel`             | String | Uniquely identifies the ASR engine in Voice Gateway.                                   | `my_azure-US`       |
| `sttFallbackLabel`     | String | Fallback label for ASR; switch happens on error. Prefer same vendor, different region. | `my_azure_Europe`   |
| `sttFallbackProvider`  | String | Specifies fallback STT provider.                                                       | `microsoft`         |
| `sttFallbackLanguage`  | String | Specifies fallback STT language.                                                       | `en-US`             |
| `ttsLabel`             | String | Uniquely identifies the TTS engine in Voice Gateway.                                   | `my_azure-US`       |
| `ttsFallbackLabel`     | String | Fallback label for TTS.                                                                | `my_azure_Europe`   |
| `ttsFallbackProvider`  | String | Specifies fallback TTS provider.                                                       | `microsoft`         |
| `ttsFallbackLanguage`  | String | Specifies fallback TTS language.                                                       | `en-US`             |
| `ttsFallbackVoiceName` | String | Specifies fallback voice name for TTS.                                                 | `en-US-AmberNeural` |

#### Continuous ASR Related Parameters

Continuous ASR (Automatic Speech Recognition) allows the speech-to-text engine to handle user inputs like phone numbers or customer IDs that may include pauses between utterances. This improves recognition accuracy for digit or character strings.

!!! Note

    This feature is only available for Microsoft.

Microsoft Azure offers a property called AzureSegmentationSilenceTimeout that performs the same function as Continuous ASR. Since Azure's ASR engine handles silence detection directly (rather than the Voice Gateway), it achieves higher accuracy when merging utterances.

* AzureSegmentationSilenceTimeout is more accurate than Continuous ASR. [Learn more](https://learn.microsoft.com/en-us/azure/ai-services/speech-service/how-to-recognize-speech?pivots=programming-language-csharp#change-how-silence-is-handled).

**Application Scope**:

Both `continuousASRTimeoutInMS` and `AzureSegmentationSilenceTimeout` apply at the session level. They remain active for the entire call and can be updated at individual nodes as needed.

| Parameter                  | Type                  | Scope | Description                                                                                                                                                                                | Example            |
| -------------------------- | --------------------- | ----- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------ |
| `continuousASRTimeoutInMS` | Number (milliseconds) | ALL   | Specifies the silence duration to wait after receiving a transcript before returning the result. If another transcript is received within this timeout, the input is merged and continued. | `5000` (5 seconds) |
| `continuousASRDigits`      | Character (DTMF key)  | ALL   | Specifies a DTMF key that, if pressed, immediately ends the speech recognition process and returns the gathered input.                                                                     | `&`                |

#### Barge-In Related Parameters

Barge-In allows the Voice Gateway to detect and respond when a user interrupts the bot by speaking or entering DTMF digits while the bot is still responding. This enables quicker interactions by preventing users from waiting for the bot to finish speaking.

!!! Note 

    Barge-In applies at the node level.

| Parameter             | Type                     | Scope | Description                                                                                                                     | Example |
| --------------------- | ------------------------ | ----- | ------------------------------------------------------------------------------------------------------------------------------- | ------- |
| `listenDuringPrompt`  | Boolean (`true`/`false`) | ALL   | If set to `false`, the bot will **not** listen to user speech until it finishes playing the response. Defaults to `true`.       | `true`  |
| `bargeInMinWordCount` | Number                   | ALL   | When barge-in is enabled, this defines the **minimum number of words** required to interrupt the bot's speech. Defaults to `1`. | `1`     |
| `bargeInOnDTMF`       | Boolean (`true`/`false`) | ALL   | If `true`, DTMF input during bot speech interrupts playback, and the system starts collecting speech input.                     | `true`  |

#### Timeout Related Parameters

These parameters control how long the Voice Gateway waits for user input (speech or DTMF).

!!! Note 

    All timeout-related parameters apply at the node level.

| Parameter                        | Type                  | Scope | Description                                                                                                                                       | Example                        |
| -------------------------------- | --------------------- | ----- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------ |
| `userNoInputTimeoutMS`           | Number (milliseconds) | ALL   | Maximum wait time to receive user input. If set to `0`, Voice Gateway waits indefinitely.                                                         | `userNoInputTimeoutMS = 20000` |
| `dtmfCollectInterDigitTimeoutMS` | Number (milliseconds) | ALL   | Timeout between DTMF digit inputs. If the user doesn't enter another digit within this time, the gateway submits the collected digits to the bot. |                                |
| `dtmfCollectSubmitDigit`         | Number                | ALL   | Defines a special DTMF digit that submits all collected digits immediately to the bot, bypassing timeout and max digit wait.                      |                                |
| `dtmfCollectMaxDigits`           | Number                | ALL   | Maximum number of DTMF digits to collect. If the user enters more than this number, only the first `maxDigits` are accepted.                      | `dtmfCollectMaxDigits = 5`     |
| `dtmfCollectminDigits`           | Number                | ALL   | Minimum number of DTMF digits expected. Defaults to `1`.                                                                                          |                                |
| `dtmfCollectnumDigits`           | Number                | ALL   | Exact number of DTMF digits to collect. The bot waits until this number is reached before processing.                                             |                                |

### Common ASR Parameters

| **Parameter**                     | **Type**              | **Supporting STT/TTS**      | **Description**                                                                                                                                                                   | **Example**                                                                                                                                            |
| --------------------------------- | --------------------- | --------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `alternativeLanguages`            | Array of Objects      | Google, Microsoft, Deepgram | Array of alternative languages the user might speak. Based on the utterance, the ASR chooses from the defined options.                                                            | `json<br>[<br> { "language": "de-DE", "voiceName": "de-DE-KatjaNeural" },<br> { "language": "fr-FR", "voiceName": "fr-FR-DeniseNeural" }<br>]`         |
| `sttMinConfidence`                | Number (0.1–0.9)      | ALL                         | If the transcript's confidence score is below this threshold, the input is ignored and the timeout prompt is triggered. Ensures only high-confidence transcriptions are accepted. | `sttMinConfidence = 0.5`                                                                                                                               |
| `hints` with phrase-level `boost` | Array of Objects      | Google, Nvidia              | Suggests specific phrases to the STT engine to improve accuracy. You can assign a boost value per phrase. Useful for distinguishing similar-sounding words.                       | `json<br>"hints": [<br> { "phrase": "benign", "boost": 50 },<br> { "phrase": "malignant", "boost": 10 },<br> { "phrase": "biopsy", "boost": 20 }<br>]` |
| `hints` with `hintsBoost`         | Array + Number        | Google, Microsoft, Nvidia   | Instead of boosting each phrase individually, apply a single boost value to the entire array of hints.                                                                            | `json<br>"hints": ["benign", "malignant", "biopsy"],<br>"hintsBoost": 50`                                                                              |
| `sttDisablePunctuation`           | Boolean               | Google, Microsoft           | Controls punctuation in ASR output. `false` enables punctuation (default); `true` disables it.                                                                                    | `sttDisablePunctuation: true`                                                                                                                          |
| `vadEnable`                       | Boolean               | ALL                         | If `true`, the system delays connecting to the cloud recognizer until voice activity is detected.                                                                                 |                                                                                                                                                        |
| `vadVoiceMS`                      | Number (milliseconds) | ALL                         | Specifies how many milliseconds of detected speech are required before connecting to the cloud recognizer. Only applies if `vadEnable` is `true`.                                 |                                                                                                                                                        |
| `vadMode`                         | Number (0–3)          | ALL                         | Determines the sensitivity of the voice activity detector. Lower values make it more sensitive. Only applies if `vadEnable` is `true`.                                            |

#### Microsoft ASR

| **Parameter** | **Type** | **Supporting STT/TTS** | **Description** | **Example / More Info** |
|---------------|----------|-------------------------|------------------|--------------------------|
| `azureSpeechSegmentationSilenceTimeoutMs` | Number | — | Sets timeout between phrases. Unlike continuous ASR (handled by Voice Gateway), Azure handles segmentation, improving accuracy. | [More Info](https://learn.microsoft.com/en-us/azure/ai-services/speech-service/how-to-recognize-speech?pivots=programming-language-csharp#change-how-silence-is-handled) |
| `sttEndpointID` | String | — | Specifies a custom Microsoft endpoint instead of the default regional endpoint. | — |
| `azurePostProcessing` | String | — | Enables final transcript enhancements such as text normalization, punctuation, or custom formatting. | — |
| `azureSpeechRecognitionMode` | String (Enum: `AtStart`, `Continuous`) | — | - `AtStart`: Starts transcription at first detected input and stops after the utterance ends.<br>- `Continuous`: Keeps transcribing without stopping. Ideal for long sessions. | `azureSpeechRecognitionMode = "Continuous"` |
| `profanityOption` | String (Enum: `masked`, `removed`, `raw`) | — | Controls how profane words appear in the transcript. Default: `raw`. | `profanityOption = "masked"` |
| `initialSpeechTimeoutMs` | Number (milliseconds) | — | Sets how long the system waits for the user to start speaking before timing out. | — |
| `requestSnr` | Boolean | — | If set to `true`, includes signal-to-noise ratio in the response. | — |
| `outputFormat` | String (`simple`, `detailed`) | — | Sets the transcript detail level. Default: `simple`. | — |

#### Google ASR

| **Parameter** | **Type** | **Supporting STT/TTS** | **Description** | **Example / Notes** |
|---------------|----------|-------------------------|------------------|----------------------|
| `sttProfanityFilter` | Boolean | — | Enables profanity filtering in transcripts. Default: `false`. | — |
| `singleUtterance` | Boolean | — | If `true`, returns only a single utterance/transcript. | — |
| `sttModel` | String | — | Specifies the speech recognition model. Default: `phone_call`. | — |
| `sttEnhancedModel` | Boolean | — | Enables the use of enhanced models for improved accuracy. | — |
| `words` | Boolean | — | Enables word-level timestamps in the transcript. | — |
| `diarization` | Boolean | — | Enables speaker diarization (i.e., identifying speakers). | — |
| `diarizationMinSpeakers` | Number | — | Sets the minimum number of speakers expected. | — |
| `diarizationMaxSpeakers` | Number | — | Sets the maximum number of speakers expected. | — |
| `interactionType` | String | — | Specifies interaction type (e.g., `discussion`, `presentation`, `phone_call`, `voicemail`, `professionally_produced`, `voice_search`, `voice_command`, `dictation`). | — |
| `naicsCode` | Number | — | Sets a relevant industry NAICS code to tailor recognition. | — |
| `googleServiceVersion` | String (`v1`, `v2`) | — | Specifies the Google ASR API version in use. | — |
| `googleRecognizerId` | String | — | Identifies a specific speech recognition model. | — |
| `googleSpeechStartTimeoutMs` | Number | — | Time (in ms) to wait before detecting speech initiation timeout. | — |
| `googleSpeechEndTimeoutMs` | Number | — | Time (in ms) of silence to wait before detecting end of speech. | — |
| `googleEnableVoiceActivityEvents` | Boolean | — | Enables start/stop speech detection events during recognition. | — |
| `googleTranscriptNormalization` | Array | — | Normalizes transcripts (for example, punctuation, casing). | — |

### AWS ASR

| **Parameter** | **Type** | **Supporting STT/TTS** | **Description** | **Example / Notes** |
|---------------|----------|-------------------------|------------------|----------------------|
| `awsAccessKey` | String | — | AWS access key used for authenticating requests. | — |
| `awsSecretKey` | String | — | Secret key used with the access key for authentication. | — |
| `awsSecurityToken` | String | — | Temporary security token for requests using AWS Security Token Service (STS). Optional. | — |
| `awsRegion` | String | — | AWS region for the service requests (for example, `us-west-2`, `eu-central-1`). | — |
| `awsVocabularyFilterName` | String | — | Name of the vocabulary filter used to exclude specific words or phrases from transcription. | — |
| `awsVocabularyFilterMethod` | String (enum) | — | Method for handling filtered words: <br>• `"remove"` – Removes the word from transcript<br>• `"mask"` – Replaces the word with asterisks<br>• `"tag"` – Tags the word for reference | — |
| `awsLanguageModelName` | String | — | Name of the custom language model to use for domain-specific transcription. | — |
| `awsPiiEntityTypes` | Array | — | List of Personally Identifiable Information (PII) entity types to detect (e.g., `["NAME", "EMAIL", "SSN"]`). | — |
| `awsPiiIdentifyEntities` | Boolean | — | Indicates whether to detect and highlight PII in the transcript. | — |

#### NVIDIA ASR

| **Parameter** | **Type** | **Supporting STT/TTS** | **Description** | **Example / Notes** |
|---------------|----------|-------------------------|------------------|----------------------|
| `nvidiaRivaUri` | String | — | gRPC endpoint (`ip:port`) where the NVIDIA Riva ASR service is hosted. | — |
| `nvidiaMaxAlternatives` | Number | — | Number of alternative transcriptions to return. | — |
| `nvidiaProfanityFilter` | Boolean | — | Enables or disables profanity filtering in transcripts. | — |
| `nvidiaWordTimeOffsets` | Boolean | — | Enables word-level timestamp details in the transcript. | — |
| `nvidiaVerbatimTranscripts` | Boolean | — | Indicates whether to return verbatim (unprocessed) transcripts. | — |
| `nvidiaCustomConfiguration` | Object | — | Object containing key-value pairs for sending custom configuration to NVIDIA Riva. | — |
| `nvidiaPunctuation` | Boolean | — | Indicates whether to include punctuation in the transcript output. | — |

#### Deepgram ASR

| **Parameter**              | **Type**             | **Supporting STT/TTS** | **Description**                                                                                                                                                                                                                                                                                      | **Example / Notes**                      |
|---------------------------|----------------------|-------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------|
| `deepgramApiKey`          | String               | —                       | Deepgram API key used for authentication. Overrides settings in the Voice Gateway portal.                                                                                                                                                                                                           | —                                        |
| `deepgramTier`            | String               | —                       | Specifies the Deepgram tier: `enhanced` or `base`.                                                                                                                                                                                                                                                   | —                                        |
| `sttModel`                | String               | —                       | Deepgram model used for processing audio. Possible values: `general`, `meeting`, `phonecall`, `voicemail`, `finance`, `conversationalai`, `video`, `custom`.                                                                                                                                        | `nova-2-phonecall`                       |
| `deepgramCustomModel`     | String               | —                       | ID of the custom model.                                                                                                                                                                                                                                                                              | —                                        |
| `deepgramVersion`         | String               | —                       | Version of the Deepgram model to use.                                                                                                                                                                                                                                                                | —                                        |
| `deepgramPunctuate`       | Boolean              | —                       | Adds punctuation and capitalization to the transcript.                                                                                                                                                                                                                                               | —                                        |
| `deepgramProfanityFilter` | Boolean              | —                       | Removes profanity from the transcript.                                                                                                                                                                                                                                                               | —                                        |
| `deepgramRedact`          | Enum (`String`)      | —                       | Redacts sensitive data from transcript. Options: `pci`, `numbers`, `true`, `ssn`.                                                                                                                                                                                                                    | —                                        |
| `deepgramDiarize`         | Boolean              | —                       | Assigns a speaker to each word in the transcript.                                                                                                                                                                                                                                                    | —                                        |
| `deepgramDiarizeVersion`  | String               | —                       | Use `2021-07-14.0` to enable legacy diarization.                                                                                                                                                                                                                                                     | —                                        |
| `deepgramNer`             | Boolean              | —                       | Enables Named Entity Recognition.                                                                                                                                                                                                                                                                    | —                                        |
| `deepgramMultichannel`    | Boolean              | —                       | Transcribes each audio channel independently.                                                                                                                                                                                                                                                        | —                                        |
| `deepgramAlternatives`    | Number               | —                       | Specifies the number of alternative transcripts to return.                                                                                                                                                                                                                                           | —                                        |
| `deepgramNumerals`        | Boolean              | —                       | Converts written numbers (e.g., "one") to numerical format (e.g., "1").                                                                                                                                                                                                                              | —                                        |
| `deepgramSearch`          | Array                | —                       | An array of terms or phrases to search within the submitted audio.                                                                                                                                                                                                                                  | —                                        |
| `deepgramReplace`         | Array                | —                       | An array of terms or phrases to search and replace within the submitted audio.                                                                                                                                                                                                                       | —                                        |
| `deepgramKeywords`        | Array                | —                       | Keywords to boost or suppress in transcription for better context understanding.                                                                                                                                                                                                                     | —                                        |
| `deepgramEndpointing`     | Boolean / Number     | —                       | Sets the silence duration (in ms) to consider a speaker has finished. Use `false` to disable. Default is 10 ms. Recommend ≤ 1000 ms. For longer pauses, use `utteranceEndMs`.                                                                                                                        | —                                        |
| `deepgramVadTurnoff`      | Number               | —                       | Not documented. Placeholder for voice activity detection (VAD) settings.                                                                                                                                                                                                                             | —                                        |
| `deepgramTag`             | String               | —                       | Adds a tag to the request. Useful for tracking and usage reports.                                                                                                                                                                                                                                   | —                                        |
| `deepgramUtteranceEndMs`  | Number               | —                       | Duration (ms) of silence used to detect the end of an utterance in live audio.                                                                                                                                                                                                                       | —                                        |
| `deepgramShortUtterance`  | Boolean              | —                       | Immediately returns transcript when `is_final` is set. Ideal for short commands.                                                                                                                                                                                                                     | —                                        |
| `deepgramSmartFormat`     | Boolean              | —                       | Enables Deepgram's Smart Formatting for improved transcript readability. Behavior depends on model/language combination.                                                                                                                                                                             | —                                        |
| `deepgramFillerWords`     | Boolean              | —                       | Includes filler words such as "uh" or "um" in transcripts.                                                                                                                                                                                                                                           | —                                        |
| `deepgramkeyterm`         | String               | —                       | Boosts recall accuracy for key terms or phrases. Improves Keyword Recall Rate (KRR) by up to 90%.                                                                                                                                                                                                   | —                                        |

### Common TTS Parameters

| Parameter        | Type                 | Supporting STT/ TTS                   | Description                                                                                                                                                                                                                       | Examples                                       |
|------------------|----------------------|---------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------|
| disableTtsCache  | Boolean              | ALL                                   | Using cache for calling TTS engine if same statement or word found.                                                                                                                                                              |                                                |
| ttsEnhancedVoice | String               | AWS                                   | Amazon Polly has four voice engines that convert input text into life-like speech. These include Generative, Long-form, Neural, and Standard. To use an Amazon Polly voice                                                      | "standard", "neural", "generative", "long-form" |
| ttsGender        | String (MALE, FEMALE, NEUTRAL) | Google                                |                                                                                                                                                                                                                                   |                                                |
| ttsLoop          | Number / String      | ALL                                   | The `ttsLoop` parameter is used in Text-to-Speech (TTS) systems to control the repeated playback of a TTS-generated message. When `ttsLoop` is enabled, the specified TTS message will be played multiple times in a loop.       | Example - `ttsLoop = 2`<br>Text will be played twice |
| earlyMedia       | Boolean              | ALL                                   | The **Early Media** parameter in TTS (Text-to-Speech) is used to control the playback of audio prompts or messages before a call is fully connected.                                                                             |                                                |
| ttsOptions       | Object               | PlayHT, Deepgram, ElevenLabs, Whisper | It is used to tune the TTS.|                                                |

#### TTS Options in Voice Gateway

Voice Gateway now supports a `ttsOptions` parameter that allows bot developers to customize Text-to-Speech (TTS) messages by passing dynamic objects tailored to the specific TTS provider. Depending on the provider, these options can be used to fine-tune aspects like voice settings, speed, and other properties.

!!! Note

    Each TTS provider will have its own set of customizable parameters. For more detailed information on the parameters they support, refer to their official websites.

#### Structure of `ttsOptions`

The `ttsOptions` object contains provider-specific settings in a key-value format. Below are examples of different TTS providers:

##### ElevenLabs

* `optimize_streaming_latency`: Adjusts the latency during streaming.
* `voice_settings`: Includes various voice customization options like `stability`, `similarity_boost`, and `use_speaker_boost`. [Learn more](https://elevenlabs.io/docs/speech-synthesis/voice-settings).
* `speed`: Controls the speed of the generated speech. The default value is 1, and the allowable values are >=0.7 and <=1.2. Values below 1 will slow down the speech, while values above 1 will speed it up. [Learn more](https://elevenlabs.io/docs/conversational-ai/customization/voice/speed-control).

##### PlayHT

* `quality`: Sets the quality of the audio output.
* `speed`: Controls the playback speed.
* `emotion`, `voice_guidance`, `style_guidance`, and `text_guidance`: Allow further customization of the voice's emotional tone and style. [Learn more](https://docs.play.ht/reference/api-generate-tts-audio-stream).
* `Voice_engine`: The voice engine used to synthesize the voice. It defaults to PlayDialog.

!!! Note

     Use the play-dialog model from PlayHT instead of the old models, as the old models are returning errors. Set the following parameters:

    `ttsProvider = playht`  
    `ttsLanguage = en-US`  
    `ttsOptions = {"voice_engine": "PlayDialog"}`  
    `voiceName = <respective voice name>` 

##### Deepgram

Apart from generic parameters like `ttsLanguage` and `voiceName`, which are common across most TTS engines, Deepgram offers a few additional parameters that enhance customization:

* **encoding (string)**: You can specify the desired encoding format for the output audio file, such as `mp3` or `wav`.
* **model (enum)**: Defines the AI model to be used for synthesizing the text into speech. The default model is `aura-asteria-en`, optimized for natural-sounding English voice output.
* **sample_rate (string)**: This enables you to set the sample rate of the audio output, offering control over the quality and clarity of the sound produced.
* **Container**: The Container feature allows users to specify the desired file format wrapper for the output audio generated through text-to-speech synthesis.

These parameters provide additional flexibility for developers to fine-tune the audio output to meet their specific needs. All these parameters will be set inside ttsOptions. [Learn more](https://developers.deepgram.com/docs/tts-rest).

##### AWS

Apart from generic parameters like `ttsLanguage` and `voiceName`, which are common across most TTS engines, Aws offers a few additional parameters that enhance customization, like ttsEnhanceVoice, also known as an engine.

Amazon Polly has four voice engines that convert input text into lifelike speech. These include “standard," "neural," "generative," and "long-form." 

`ttsEnhancedVoice = “neural”`

#### Open AI (Whisper)

Apart from generic parameters like `ttsLanguage` and `voiceName`, which are common across most TTS engines, Whisper offers a few additional parameters that enhance customization, like a model.

For real-time applications, the standard tts-1 model provides the lowest latency but at a lower quality than the tts-1-hd model. Due to how the audio is generated, tts-1 is likely to generate more static content in certain situations than tts-1-hd. In some cases, the audio may not have noticeable differences depending on your listening device and the person.

```
ttsOptions = {
   model = "tts-1"
}
```

### Common Use Cases for Call Control Parameters

#### Continuous ASR

Continuous ASR (Automatic Speech Recognition) is a feature that allows Speech-to-Text (STT) recognition to be tuned for the collection of things like phone numbers, customer identifiers, and other strings of digits or characters, which, when spoken, are often spoken with pauses in between utterances. Two parameters to enable it are:

| **Parameter**              | **Type**                         | **Supporting STT/TTS**                        | **Description**                                                                                                                                                                                                                                                                                                                                     |
| -------------------------- | -------------------------------- | --------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `continuousASRTimeoutInMS` | Number (milliseconds)            | STT – Google, Microsoft<br>TTS – Not Required | Duration of silence (in milliseconds) to wait after receiving a transcript from the STT vendor before returning the result. If another transcript is received before this timeout, transcripts are combined and recognition continues. The combined result is returned after silence exceeds the timeout. <br><br>**Example:** `5000` for 5 seconds |
| `continuousASRDigits`      | Digit (for example, `*`, `%`, `&`, `#`) | STT – Google, Microsoft<br>TTS – Not Required | A DTMF key that terminates the gather operation and returns the collected results immediately.  

#### Handling Bot Delay

If the bot takes time to respond to a message, you can configure Voice Gateway to take action.

#### Handle Bot Delay After User Input

The delay is only applied when Voice Gateway sends a response to the bot and is waiting for the bot's reply. This includes delays at the Entity Node, Confirmation Node, or Message Node with an "On Intent" (User-Bot delay).  
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

| **Parameter**               | **Type**       | **Description**                                                                                                                                                                                                      | **Required**           |
| --------------------------- | -------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------- |
| `botNoInputGiveUpTimeoutMS` | Number         | Defines the timeout (in milliseconds) for the bot response before the call is disconnected. If no response is received when the timeout expires, Voice Gateway disconnects the call.<br><br>**Default:** 30 seconds. | Yes<br>Default: 30 sec |
| `botNoInputTimeoutMS`       | Number         | Defines the timeout (in milliseconds) before a prompt is played to the user. If no input is received from the bot, Voice Gateway plays a textual prompt (`botNoInputSpeech`) or an audio file (`botNoInputUrl`).     | Yes                    |
| `botNoInputRetries`         | Number         | Specifies the number of times the bot will retry after a no-input timeout. For example, if set to `2`, and timeout is 1000 ms, the prompt will play two more times if no bot response is received.                   | Yes                    |
| `botNoInputSpeech`          | String / Array | Defines the prompt to play when no input is received from the bot. Can include:<br>- **Plain text**<br>- **SSML**<br>- **Audio URL**<br><br>**Example:** `["https://audiourl", "This is second message"]`            | Yes                    |
| `botNoInputUrl`             | String         | Specifies a URL from which an audio file is played to the user when the bot does not respond within the defined timeout.                                                                                             | Yes                    |

Example:  
<img src="../images/message-node-paremeters.png" alt="Example Configuration" title="Example Configuration" style="border: 1px solid gray; zoom:80%;">

!!! Note

      `botNoInputSpeech` can contain multiple messages, including audio URLs.

Example: `botNoInputSpeech` = [“this is first delay Msg”, “[https://](https://this)dummy.wav”,” this is third textual Message”].

#### Handle Delay Between Two Message Nodes

Voice Gateway can only handle delays when it sends a response to the bot and waits for the bot's reply. If a delay occurs, Voice Gateway can handle it. If a delay occurs between a Message node or Script node where the user hasn’t spoken, Voice Gateway won’t be aware of the delay, and the bot developer must handle it manually.

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

#### Barge-In Scenarios

The Barge-In feature controls KoreVG behavior in scenarios where the user starts speaking or dials DTMF digits while the bot is playing its response to the user. In other words, the user interrupts ("barges-in") the bot.

| **Parameter**                    | **Type**                                                                             | **Supporting STT/TTS**                           | **Description**                                                                                                               |
| -------------------------------- | ------------------------------------------------------------------------------------ | ------------------------------------------------ | ----------------------------------------------------------------------------------------------------------------------------- |
| `listenDuringPrompt`             | Boolean (true or false)<br>Similar to Barge-In                                       | STT – Google and Microsoft<br>TTS – Not Required | If `false`, the bot does not listen for user speech until the response finishes playing.<br>**Default:** `true`.              |
| `bargeInMinWordCount`            | Number                                                                               | STT – Google and Microsoft<br>TTS – Not Required | If Barge-In is enabled, the bot only interrupts playback after the specified number of words are spoken.<br>**Default:** `1`. |
| `bargeInOnDTMF`                  | Boolean                                                                              | STT – Google and Microsoft<br>TTS – Not Required | Allows users to press a key to interrupt the audio playback. After pressing a key, the user can speak their input.            |
| `dtmfCollectInterDigitTimeoutMS` | Number (milliseconds)                                                                | STT – Google and Microsoft<br>TTS – Not Required | Time allowed between DTMF key presses before sending all digits to the bot.                                                   |
| `dtmfCollectSubmitDigit`         | Number                                                                               | STT – Google and Microsoft<br>TTS – Not Required | Special digit that submits all collected DTMF input immediately, bypassing the timeout or max digit limit.                    |
| `dtmfCollectMaxDigits`           | Number                                                                               | STT – Google and Microsoft<br>TTS – Not Required | Maximum number of DTMF digits to collect.<br>Example: If set to `5` and input is `1234567`, only `12345` is processed.        |
| `dtmfCollectminDigits`           | Number                                                                               | STT – Google and Microsoft<br>TTS – Not Required | Minimum number of DTMF digits to collect. <br>**Default:** `1`.                                                               |
| `dtmfCollectnumDigits`           | Number                                                                               | STT – Google and Microsoft<br>TTS – Not Required | Exact number of DTMF digits to collect.                                                                                       |
| `input`                          | Array of strings<br>Valid values: `['digits']`, `['speech']`, `['digits', 'speech']` | STT – Google and Microsoft<br>TTS – Not Required | Specifies allowed input types. <br>**Default:** `['digits']`.                                                                 |

#### Language Detection

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