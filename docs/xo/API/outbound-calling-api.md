



# **Outbound Calling API (SAVG)**


Outbound calls can be made to external customers using SmartAssist Voice Gateway (SAVG). The answering machine detection feature can be enabled on outbound calls to indicate whether a person or a machine has answered a call.

When the dialed call is answered, the answering machine detection feature starts listening to the outbound call and after a short period, sends an indication of whether a person or a machine has answered the call.


This process happens in two parts:


1. The application triggers an Outbound Call.
2. Receiving Call Status Notifications.


# **1. Triggering the Outbound Call via API**

The application triggers an outbound call using an HTTP POST request to the endpoint.


<table>
  <tr>
   <td><strong>Method</strong>
   </td>
   <td>POST
   </td>
  </tr>
  <tr>
   <td><strong>Endpoint</strong>
   </td>
   <td><code><a href="https://{{host}}/api/public/bot/{{BotID}}/recordings?{{userId">https://{{host}}/api/1.1/public/bot/:&lt;bot>/smartassist/dialout</a></code>
   </td>
  </tr>
  <tr>
   <td><strong>Content Type</strong>
   </td>
   <td><code>application/json</code>
   </td>
  </tr>
  <tr>
   <td><strong>Authorization</strong>
   </td>
   <td><code>auth: {{JWT}}</code>
<p>
See <a href="https://docs.kore.ai/smartassist/api/api-setup/#Generating_a_JWT_token">How to generate the JWT Token.</a>
   </td>
  </tr>
  <tr>
   <td><strong>API Scope</strong>
   </td>
   <td>SmartAssist Dialout
   </td>
  </tr>
</table>



## Path Parameters


<table>
  <tr>
   <td><strong>PARAMETER</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
   <td><strong>TYPE</strong>
   </td>
  </tr>
  <tr>
   <td>host
   </td>
   <td>Environment URL, for example, https://smartassist.kore.ai
   </td>
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>botId
   </td>
   <td>botId or streamId. You can access it from the General Settings page of the bot.
   </td>
   <td>string, required
   </td>
  </tr>
</table>



## Query Parameters


<table>
  <tr>
   <td><strong>PARAMETER</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
   <td><strong>TYPE</strong>
   </td>
  </tr>
  <tr>
   <td>target
   </td>
   <td>URI of the target of the outbound call. For example:
<ul>

<li>“tel:911234567890” with the country code

<li>“sip:1234567890@1.23.345.678:1234”
</li>
</ul>
   </td>
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>caller
   </td>
   <td>User part for the caller ID of the outbound call. It is the experience flow number in smartAssist.
   </td>
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>notifyurl
   </td>
   <td>Absolute URL of the dialer application where SAVG sends notifications.
<p>
If not provided, no notifications are sent.
   </td>
   <td>string, optional
   </td>
  </tr>
  <tr>
   <td>trunk
   </td>
   <td>The trunk is a carrier for the account.
<p>
If not provided, It will pick the default carrier for that account.
   </td>
   <td>string, optional
   </td>
  </tr>
  <tr>
   <td>metadata
   </td>
   <td>Data to be sent to the bot (can be used to provide information to the bot about the call, such as the name of the target).
   </td>
   <td>object, optional
   </td>
  </tr>
  <tr>
   <td>timers
   </td>
   <td>An object containing various timeout properties like:


<table>
  <tr>
   <td><strong>PROPERTY</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
   <td><strong>REQUIRED</strong>
   </td>
  </tr>
  <tr>
   <td>timers.noSpeechTimeoutMs 
   </td>
   <td>Time in milliseconds to wait for a speech before returning amd_no_speech_detected.
   </td>
   <td>no,
default=5000
   </td>
  </tr>
  <tr>
   <td>timers.decisionTimeoutMs
   </td>
   <td>Time in milliseconds to wait before returning amd_decision_timeout.
   </td>
   <td>no,
default=15000
   </td>
  </tr>
  <tr>
   <td>timers.toneTimeoutMs
   </td>
   <td>Time in milliseconds to wait to hear a tone.
   </td>
   <td>no,
default=20000
   </td>
  </tr>
  <tr>
   <td>timers.greetingCompletionTimeoutMs
   </td>
   <td>Silence in milliseconds to wait for during greeting before returning amd_machine_stopped_speaking.
   </td>
   <td>no,
default=2000
   </td>
  </tr>
</table>

 	

   </td>
   <td>object, optional

   </td>
  </tr>
  <tr>
   <td>machinedetection

   </td>
   <td>Activates machine (answering machine and fax) detection. Possible values:



1. “disconnect”: Machine detection is enabled, and the call is disconnected in amd.
2. “detect”: Machine detection is enabled, and the call is not disconnected in amd.
 	
3. “disabled”: Machine detection is not enabled.
   </td>
   <td>
string, optional

   </td>
  </tr>
  <tr>
   <td>thresholdWordCount 

   </td>
   <td>Number of spoken words in a greeting that result in an amd_machine_detected result.

   </td>
   <td>number, optional

   </td>
  </tr>
</table>



## Sample Request


```
curl --location --request POST '{{host}}/api/1.1/public/bot/:<bot>/smartassist/dialout' \
--header 'Format: application/json' \
--header 'auth: {{JWT_TOKEN}}'
    {
       "bot": "st-e38782ff-0d89-52e9-5678769a49fdexxxx",
       "target": "tel:911234567890",
       "caller": "+127061657882",
       "trunk": "TRUNK",
       "timers": {
           "noSpeechTimeoutMs": 12000,
           "decisionTimeoutMs": 15000,
           "toneTimeoutMs": 10000,
           "greetingCompletionTimeoutMs": 10000
       },
       "thresholdWordCount": 4,
       "machineDetection": "detect",
       "notifyurl": "https://de8a-115-114-88-222.ngrok-free.app/notify",
       "metadata": {
           "jobPosition": "Software Engineer",
           "userName": "John Doe",
           "companyName": "abc corporation",
           "jobLocation": "USA"
       }
    }
```



## Sample Response


```
{
"sid":"f9bd46ab-ecbd-4216-842e-0c58db3axxxx",
"callId":"2c01240f-6880-123c-179b-02d8f501xxxx"
}
```



# **2. Receiving Call Status Notifications**

To receive call status notifications using the `notifyUrl` property on the dial-out request. When this property is set, SAVG sends an HTTP POST request to the specified URL.


## Sample Response


```
POST /notify HTTP/1.1
Host: 892c-115-114-88-222.ngrok-free.app
User-Agent: abc
{
&quot;conversationId&quot;: &quot;29e2d933-527e-429c-95b9-ba4f7c7bxxxx&quot;,
&quot;reasonCode&quot;: &quot;caller-disconnected&quot;,
&quot;status&quot;: &quot;completed&quot;,
&quot;reason&quot;: &quot;200 OK&quot;,
&quot;duration&quot;: 14,
&quot;machinedetection&quot;: &quot;amd_human_detected&quot;,
&quot;callconnecttime&quot;: &quot;5/8/2023,11:32:49AM&quot;,
&quot;callDisconnectTime&quot;: &quot;5/8/2023,11:33:03AM&quot;
},
POST /notify HTTP/1.1
Host: 892c-115-114-88-222.ngrok-free.app
User-Agent: abc
{
&quot;conversationId&quot;: &quot;29e2d933-527e-429c-95b9-ba4f7c7bxxxx&quot;,
&quot;reasonCode&quot;: &quot;SAVG-disconnected&quot;,
&quot;status&quot;: &quot;completed&quot;,
&quot;reason&quot;: &quot;200 OK&quot;,
&quot;duration&quot;: 14,
&quot;machinedetection&quot;: &quot;amd_machine_detected&quot;,
&quot;callconnecttime&quot;: &quot;5/8/2023,11:32:49AM&quot;,
&quot;callDisconnectTime&quot;: &quot;5/8/2023,11:33:03AM&quot;
},
POST /notify HTTP/1.1
Host: 892c-115-114-88-222.ngrok-free.app
User-Agent: abc
{
&quot;conversationId&quot;: &quot;4e010fea-cd93-47a0-a548-36d5f621xxxx&quot;,
&quot;reasonCode&quot;: &quot;caller-disconnected&quot;,

&quot;status&quot;: &quot;completed&quot;,
&quot;reason&quot;: &quot;200 OK&quot;,
&quot;duration&quot;: 10,
&quot;machinedetection&quot;: &quot;disabled&quot;,
&quot;callconnecttime&quot;: &quot;5/8/2023,11:29:55AM&quot;,
&quot;callDisconnectTime&quot;: &quot;5/8/2023,11:30:05AM&quot;
},
POST /notify HTTP/1.1
Host: 892c-115-114-88-222.ngrok-free.app
User-Agent: abc
{
&quot;conversationId&quot;: &quot;305ae3c4-b527-4bfd-ad75-9b6abdaaxxxx&quot;,
&quot;status&quot;: &quot;failed&quot;,
&quot;reason&quot;: &quot;503 Service Unavailable&quot;,
&quot;machinedetection&quot;: &quot;disconnect&quot;,
&quot;callconnecttime&quot;: &quot;5/8/2023,11:31:30AM&quot;,
&quot;reasonCode&quot;: &quot;Service Unavailable&quot;,
&quot;callDisconnectTime&quot;: &quot;5/8/2023,11:31:30AM&quot;
},
POST /notify HTTP/1.1
Host: 892c-115-114-88-222.ngrok-free.app
User-Agent: abc
{
&quot;conversationId&quot;: &quot;80af8588-31c7-4877-a798-a3603c30xxxx&quot;,
&quot;status&quot;: &quot;failed&quot;,
&quot;reason&quot;: &quot;486 Busy Here&quot;,
&quot;machinedetection&quot;: &quot;disconnect&quot;,
&quot;callconnecttime&quot;: &quot;5/8/2023,11:36:33AM&quot;,
&quot;reasonCode&quot;: &quot;Busy Here&quot;,
&quot;callDisconnectTime&quot;: &quot;5/8/2023,11:36:33AM&quot;
},
POST /notify HTTP/1.1
Host: 892c-115-114-88-222.ngrok-free.app
User-Agent: abc
{
&quot;conversationId&quot;: &quot;40a95de6-949a-4403-b735-233daxxxx&quot;,
&quot;status&quot;: &quot;failed&quot;,
&quot;reason&quot;: &quot;480 Temporarily Unavailable&quot;,
&quot;machinedetection&quot;: &quot;disconnect&quot;,
&quot;callconnecttime&quot;: &quot;5/8/2023,11:37:46AM&quot;,
&quot;reasonCode&quot;: &quot;Temporarily Unavailable&quot;,
&quot;callDisconnectTime&quot;: &quot;5/8/2023,11:37:46AM&quot;
}
```



## Response Body Parameters


<table>
  <tr>
   <td><strong>PARAMETER</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
   <td><strong>TYPE</strong>
   </td>
  </tr>
  <tr>
   <td>conversationId
   </td>
   <td>UUID of the conversation (matches the <code>conversationId</code> sent in the dial-out trigger response).
   </td>
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>status
   </td>
   <td>Call status:
<ul>

<li>“completed”: The call was completed (disconnected) after it was answered. 	

<li>"failed": The call ended before it was answered.
 	

<li>“answered”: When a call connection is established.
</li>
</ul>
   </td>
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>reasonCode
   </td>
   <td>If the status is "failed", it provides the reason for the failure:
<ul>

<li>“Busy here”: The target number was busy.

<li>“Service Unavailable”: When the server is not available.
 	

<li>“Temporarily Unavailable”: The end-user declined or rejected the call.

<p>
If the status is "completed", it provides the reason for the call end:
<ul>

<li>“Caller-disconnected”: The call was disconnected from the end-user side.

<li>“Bot-disconnected”: The call was disconnected by the bot.
 	

<li>“SAVG-disconnected”: The call was disconnected due to amd-error.
</li>
</ul>
</li>
</ul>
   </td>
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>reason
   </td>
   <td>Free text describing the reason for the failure (for example, the SIP Reason header)
   </td>
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>callconnecttime
   </td>
   <td>The time when the call was connected (when the end-user picked up the phone).
   </td>
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>callDisconnecttime
   </td>
   <td>The time when the call was disconnected.
   </td>
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>duration
   </td>
   <td>The duration of the call from connectTime to the end of the call in seconds.
   </td>
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>machinedetection
   </td>
   <td>This property is included when answering machine detection is enabled (<code>machineDetection </code>is configured to "disconnect") and detected, and the call ends. It provides the detection reason:
<ul>

<li>“amd_human_detected”: A human is speaking.
 	

<li>“amd_machine_detected”: A machine is speaking.
 	

<li>“amd_no_speech_detected”: No speech was detected.
 	

<li>“amd_decision_timeout”: No decision was made in the time given.
 	

<li>“amd_machine_stopped_speaking”: A machine has completed the greeting.
 	

<li>“amd_tone_detected”: A beep was detected.
 	

<li>“amd_error”: An error has occurred.
 	

<li>“amd_stopped”: Answering machine detection was stopped.
</li>
</ul>
   </td>
   <td>string, required
   </td>
  </tr>
</table>

