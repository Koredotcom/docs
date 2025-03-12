# Utility Functions in Voice Gateway

Kore.ai Voice Gateway offers two utility libraries to manage call handling and transfers - Agent Utils and Voice Utils. These utilities provide comprehensive control over call flows, including features like SIP transfers, audio control, DTMF handling, and custom header management. Together, they offer flexible options for implementing both complex agent-assisted scenarios and straightforward external transfers.

## Agent Utils (SmartAssist/Contact Center Library)

The `agentUtils` library in the SmartAssist allows you to dynamically modify call transfer properties through the bot builder (XO) before transferring the call to a human agent. It provides a wide range of options, including:

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

## Voice Utils (SmartAssist Library)

The `voiceUtils` library is specifically for the SmartAssist Voice Gateway. It is used for transferring calls to external sources, such as SIP endpoints or phone numbers, **without involving the SmartAssist agent desktop**. This library supports functionalities like:

* Hangup
* Agent Transfer (via Invite and Refer)
* Abort Prompt
* Play and Pause Audio, etc

In the case of agent transfers using `voiceUtils`, the call is directly routed to an external source (such as a SIP endpoint or a phone number), bypassing the SmartAssist platform. There is no interaction with the SmartAssist agent desktop, and it’s best used for scenarios where the call transfer needs to be completed externally.

* **Transfer with Headers**: You can use `voiceUtils.invite()` and `voiceUtils.refer()` to transfer the call with custom headers. However, it is important to note that this does not support header encoding/decoding or user-to-user (UUI) data transfer.

   **Example Use Case**:
If you are transferring the call to an external SIP provider or a phone number directly, `voiceUtils` is the ideal choice. This quick method bypasses SmartAssist and is tailored for simple SIP or phone number transfers.

## When to Use What

* Use `agentUtils` + **Agent Transfer Node**:<br>
This method should be used when **header encoding/decoding** or **user-to-user (UUI) data transfer** is required during the call transfer. It provides dynamic control over SmartAssist-specific properties (like SIP URIs or transport types) and ensures proper data handling for more complex call transfer scenarios involving the SmartAssist agent desktop.
* Use `voiceUtils`:
Use this method when you need to **transfer the call directly to an external source** like a SIP endpoint or phone number, **bypassing the SmartAssist platform**. It is best for simple transfers without the need for header encoding or UUI support.

## VoiceUtils Helper Methods

These functions can be used in the Channel Override template inside Java script sections. All functions can be executed in the Message Node.

**General Syntax** - `print(utility function)`

### Hangup

**Use Cases**:

1. If you need to forcibly hang up the call from the bot during the flow or call.

2. This function can also be used to dynamically send headers in a BYE message, similar to SIP BYE, using Run Automation.

   **Syntax**: `print(voiceUtils.hangup(message,headers,queueCommand))`

   The message, headers, and queueCommand are optional parameters.

   **Header syntax**:

<table>
  <tr>
   <td><strong>Options</strong>
   </td>
   <td><strong>Description</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Required</strong>
   </td>
  </tr>
  <tr>
   <td>message
   </td>
   <td>Message to play before Hangup.
   </td>
   <td>String
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>Headers
   </td>
   <td>an object containing SIP headers to include in the BYE request.
   </td>
   <td>Object
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>queueCommand
   </td>
   <td>If true, queue this command until previous commands are completed; otherwise, interrupt and flush all previous commands and execute this command immediately.
   </td>
   <td>Boolean
   </td>
   <td>No
By default True
   </td>
  </tr>
</table>

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
        1) With message and headers
        var message = "Call completed";
        var headers : {

        	`"X-Reason"` `:` `"Call hangup from Kore side"`
        }

        print(voiceUtils.hangup(message,headers));

        2) Without Message but containg headers
          var message = "";
          var headers = { "X-Reason" : "completed"}
        print(voiceUtils.hangup(message,headers));
```

### SIP Refer

This function transfers the call to an external contact number (telephone number or SIP URI). After the transfer (Refer), the bot's call leg will disconnect.

**Use Case:**

Transfer the call to a third party using the utility in the message node with Run Automation from SmartAssist.

message - Optional (Send Empty Message),  referTo - Required, headers - Optional

**Syntax**: `print(voiceUtils.refer(message,ReferTo,headers,queueCommand))`

<table>
  <tr>
   <td><strong>Options</strong>
   </td>
   <td><strong>Description</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Required</strong>
   </td>
  </tr>
  <tr>
   <td>message
   </td>
   <td>Play Message before Transferring a call to Agent
   </td>
   <td>String
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>ReferTo
   </td>
   <td>A SIP URI or a phone number/user identifier
   </td>
   <td>String
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td>headers
   </td>
   <td>Additional SIP headers to include in the response
   </td>
   <td>Object
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>queueCommand
   </td>
   <td>If true, queue this command until previous commands are completed; otherwise, interrupt and flush all previous commands and execute this command immediately.
   </td>
   <td>Boolean
   </td>
   <td>NA
Default:True
   </td>
  </tr>
</table>

**Example**:

```
1 Using all the options

var message = "Transferring Call to xxxx number";
var ReferTo = "+91xxxxxxxxxx";   // or sipUrl 

var headers: {
	"X-Reason" : "Call Received from Kore"
}

print(voiceUtils.refer(message,ExternalPhoneNumber,headers))

2 without Message and headers 

var message = "";
print(voiceUtils.refer(message,ReferTo));

3 With QueueCommand
  var message = "" , headers = {}, referTo = "sip:test@5060"
print(voiceUtils.refer(message,ReferTo,headers,false));
```

### SIP Invite

The SIP Invite initiates a conference call. The bot's leg remains active after the call connects to the third party, and once the call with the third party ends, the bot's call will resume. The callerId and target fields are mandatory and should contain either a SIP URI or a phone number. To pass these values, provide an empty string for the message, followed by the callerId and target.

**Syntax**: `print(voiceUtils.invite(message, callerId, target,headers,queueCommand))`

<table>
  <tr>
   <td><strong>Options</strong>
   </td>
   <td><strong>Description</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Required</strong>
   </td>
  </tr>
  <tr>
   <td>Message
   </td>
   <td>Message to play before Transferring the call to a Third Party.
   </td>
   <td>String
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>CallerId
   </td>
   <td>The inbound caller's phone number, which is displayed to the number that was dialed. The caller ID must be a valid E.164 number.
   </td>
   <td>String containing phone number with country code (Bot Number)
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td>Target
   </td>
   <td>The target property specifies the call destinations.
   </td>
   <td>String (SIP URI)
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td>Headers
   </td>
   <td>Additional SIP headers to include in the response
   </td>
   <td>Object
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>QueueCommand
   </td>
   <td>If true, queue this command until previous commands are completed; otherwise, interrupt and flush all previous commands and execute this command immediately.
   </td>
   <td>Boolean
   </td>
   <td>No
Default: True
   </td>
  </tr>
</table>

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

### AbortPrompt

The abortPrompts event cancels all pending prompts sent before it was triggered. For example, if the bot sends an abortPrompts event right after sending three prompt messages, the first prompt will stop playing immediately, and the remaining two prompts will not play.

**Use Case**:

Killing the previous prompt with the current Message.

**Syntax**: `print(voiceUtils.abortPrompt())`

The “Message” parameter is Optional.

<table>
  <tr>
   <td><strong>Options</strong>
   </td>
   <td><strong>Descriptions</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Required</strong>
   </td>
  </tr>
  <tr>
   <td>Message
   </td>
   <td>Kill the previous command and play the configured message.
   </td>
   <td>String
   </td>
   <td>NA
   </td>
  </tr>
</table>

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

### Send DTMF

This function is used to send DTMF digits from the bot. The digits are sent as RTP payloads using RFC 2833.

**Use Case**:

When one bot interacts with another bot and tries to give DTMF Input.  

<table>
  <tr>
   <td><strong>Options</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
   </td>
   <td><strong>Required</strong>
   </td>
  </tr>
  <tr>
   <td>dtmf
   </td>
   <td>String
   </td>
   <td>A string containing a sequence of DTMF digits (0-9,*,#).
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td>duration
   </td>
   <td>Number
   </td>
   <td>The length of each digit, in milliseconds, Defaults to 500.
   </td>
   <td>No
Default value: 500
   </td>
  </tr>
</table>

**Example**:

```
let dtmf = "99865",
let duration = 600

print(voiceUtils.sendDTMF(dtmf,duration))
```

### Pause and Play

The pause command waits silently for a specified number of seconds. Play is Optional; If you pass the message, it will play after the pause.

<table>
  <tr>
   <td><strong>Options</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
   </td>
   <td><strong>Required</strong>
   </td>
  </tr>
  <tr>
   <td>length
   </td>
   <td>number (Seconds)
For example, 4.
The default is 3 seconds.
   </td>
   <td>Number of seconds to wait before continuing the app.
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td>message
   </td>
   <td>string or an array of strings containing a URL and string.
 [“This is the message”, “https://text.wav”]
   </td>
   <td>Play the message after executing the pause time.
   </td>
   <td>No
   </td>
  </tr>
</table>

**Example:**


`\`
`let` `length` `=` `4,`

```
let message = "After 4 second this message will play"
print(voiceUtils.pauseAndPlay(length,message))
```

### Play

The play command is used to stream recorded audio to either a call or a text message.

The message can be either a single string or an array of strings that includes both audio URLs and text messages.

**Syntax**: `print(voiceUtils.play(message))`

<table>
  <tr>
   <td><strong>Option</strong>
   </td>
   <td><strong>Description</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Required</strong>
   </td>
  </tr>
  <tr>
   <td>message
   </td>
   <td>To play text messages and audio URLs.
   </td>
   <td>String - Only message
An array of strings - Both audio URL and Message.
   </td>
   <td>Yes
   </td>
  </tr>
</table>

**Example**:

```
Let message = ["this is First message", "https://audiofiile.wav" , "this is second Message"]

 //  All three message will be played in Sequence WIse (Text Message -> Audio File -> Text Message)
```

### Voicemails

**Use Cases**: 

1. When you need to configure voicemail settings and notifications for customer calls. 

2. When you need to receive transcriptions of voicemail messages. 

3. When you need to collect and process customer voicemail content with metadata.

**Syntax**: `print(voiceUtils.voicemail(message, beepRequired, transcriptionRequired, notifyUrl, metaInfo))`

**Header Syntax**:

<table>
  <tr>
   <td><strong>Options</strong>
   </td>
   <td><strong>Description</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Required</strong>
   </td>
  </tr>
  <tr>
   <td>message
   </td>
   <td>The message played to the customer before the voicemail recording starts.
   </td>
   <td>string
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td>beepRequired
   </td>
   <td>When true, plays a beep sound after the message to indicate the recording start. Default: false
   </td>
   <td>boolean
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>transcriptionRequired
   </td>
   <td>When true, generates text transcription of the voicemail. Default: false
   </td>
   <td>boolean
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>notifyUrl
   </td>
   <td>Client endpoint URL where voicemail notifications will be sent.
   </td>
   <td>string
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td>metaInfo
   </td>
   <td>Additional metadata to include with the notification.
   </td>
   <td>object
   </td>
   <td>No
   </td>
  </tr>
</table>

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

## Raw Packet (JavaScript Code)

 It is recommended to use those call controls or Inbuilt Utility Functions rather than overriding using Raw JavaScript Code.

If the Call Control Parameter or Inbuilt Utility Function does not achieve something, then the developer can contact the Kore Support Team.

!!! note

    The Kore platform does not perform design-time validation of message overrides; they are passed as is, increasing the likelihood of errors.