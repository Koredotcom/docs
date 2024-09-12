# Debug Logs API

To fetch debug logs of a specific conversation.


<table>
  <tr>
   <td><strong>Method</strong>
   </td>
   <td>GET
   </td>
  </tr>
  <tr>
   <td><strong>Endpoint</strong>
   </td>
   <td><code>https://{{host}}/api/{{version}}/{{BotID}}/debuglogs?identity={{identity}}&channelType={{channelType}}&minimumInfo=true&limit=5&offset=300&timezone={{timezone}}</code>
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
See <a href="../api-introduction/#generating-the-jwt-token">How to generate the JWT Token.</a>
   </td>
  </tr>
  <tr>
   <td><strong>API Scope</strong>
   </td>
   <td>
<ul>

<li>Bot Builder: Debug Logs

<li>Admin Console: Not Applicable
</li>
</ul>
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
  </tr>
  <tr>
   <td>host
   </td>
   <td>Environment URL, for example, https://bots.kore.ai
   </td>
  </tr>
  <tr>
   <td>BotID
   </td>
   <td>Bot ID. You can access it from the General Settings page of the bot.
   </td>
  </tr>
</table>

## Sample Request


```json
curl -X GET \
   'https://{{host}}/api/1.1/{{BotID}}/debuglogs?identity={{id}}&channelType=ivrVoice&minimumInfo=true&limit=5&offset=300&timezone=America/New_York' \  
  -H 'auth: {{YOUR_JWT_ACCESS_TOKEN}}' \
```



## Body Parameters

<table>
  <tr>
   <td><strong>PARAMETER</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
  </tr>
  <tr>
   <td>version
   </td>
   <td>Refers to the version of the API. The current version of this API is “1.1”
   </td>
  </tr>
  <tr>
   <td>identity
   </td>
   <td>Unique ID associated with the call. For SmartAssist channel , identity = {accountId}/smartassist/{sessionId}
   </td>
  </tr>
  <tr>
   <td>channel
   </td>
   <td>Name of the channel through which the conversation is initiated. The default is ‘rtm’.
<p>
Accepted channel types are:
<ul>

<li>rtm
<li>ivrVoice
<li>audiocodes
<li>smartassist
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>minimumInfo
   </td>
   <td>Optional field. Set to ‘true’ to get only the summary
   </td>
  </tr>
  <tr>
   <td>offset
   </td>
   <td>Specify the page number from which to start fetching the logs. If unspecified, it starts from 0, which is the first page of the list of logs
   </td>
  </tr>
  <tr>
   <td>limit
   </td>
   <td>The number of records to fetch. The maximum applicable limit is 50
   </td>
  </tr>
  <tr>
   <td>timezone
   </td>
   <td>Ex: America/New_York
   </td>
  </tr>
  <tr>
   <td>fromDate
   </td>
   <td>Date from which the logs are requested, valid formats: yyyy-mm-dd or valid timestamp
   </td>
  </tr>
  <tr>
   <td>toDate
   </td>
   <td>Date up to which the logs are requested, valid formats: yyyy-mm-dd or valid timestamp
   </td>
  </tr>
</table>

## Sample Responses

**IVR**:

```json
[
    {
        "timestamp": "2018-11-22T13:06:17.258Z",
        "nomatch_count": "0",
        "noinput_count": "1",
        "debugTitle": "Bing",
        "debugLevel": "Info",
        "debugMessage": "intent node initiated",
        "metaInfo": {
            "channel": "ivrVoice",
            "identity": "Nov22PilotEnv1"
        }
    },
    {
        "timestamp": "2018-11-22T13:06:17.258Z",
        "debugTitle": "Bing",
        "debugLevel": "Info",
        "debugMessage": "intent node processing is completed",
        "metaInfo": {
            "channel": "ivrVoice",
            "identity": "Nov22PilotEnv1"
        }
    },
    {
        "timestamp": "2018-11-22T13:06:17.258Z",
        "debugTitle": "Nam",
        "debugLevel": "Info",
        "debugMessage": "entity node initiated",
        "metaInfo": {
            "channel": "ivrVoice",
            "identity": "Nov22PilotEnv1"
        }
    },
    {
        "timestamp": "2018-11-22T13:06:17.258Z",
        "debugTitle": "Nam",
        "debugLevel": "Info",
        "debugMessage": "Waiting for user input",
        "metaInfo": {
            "channel": "ivrVoice",
            "identity": "Nov22PilotEnv1"
        }
    },
    {
        "debugTitle": "Nam",
        "debugMessage": "User prompt parsing",
        "debugLevel": "info",
        "timestamp": "2018-11-22T13:06:17.304Z",
        "metaInfo": {
            "channel": "ivrVoice",
            "identity": "Nov22PilotEnv1"
        }
    },
    {
        "debugTitle": "Nam",
        "debugMessage": "User prompt parsing successful",
        "debugLevel": "info",
        "debugDetail": "\"Let me know your name\\n\"",
        "timestamp": "2018-11-22T13:06:17.325Z",
        "metaInfo": {
            "channel": "ivrVoice",
            "identity": "Nov22PilotEnv1"
        }
    },
    {
        "timestamp": "2018-11-22T13:06:31.464Z",
        "nomatch_count": "2",
        "noinput_count": "0",
        "debugTitle": "Nam",
        "debugLevel": "Warning",
        "debugMessage": "executeNode has invoked due to MAX_NO_MATCH event",
        "metaInfo": {
            "channel": "ivrVoice",
            "identity": "Nov22PilotEnv1"
        }
    },
    {
        "timestamp": "2018-11-22T13:07:54.395Z",
        "debugTitle": "Company: Reached end of dialog",
        "debugLevel": "Info",
        "metaInfo": {
            "channel": "ivrVoice",
            "identity": "Nov22PilotEnv1"
        }
    }
]
```
**SmartAssist**:
```json
{
       "timestamp": "2024-08-14T23:18:10.920Z",
       "debugTitle": "Why_Calling_Eligibility_and_Benefits",
       "debugMessage": "intent node processing is completed",
       "debugLevel": "Info",
       "metaInfo": {
           "channel": "smartassist",
           "identity": "66043a5df09690986395xxxx/smartassist/66bd3afa5e3e64268aaaxxxx"
       },
       "VGdebugDetail": {
           "inputType": "voice",
           "inputMessage": "If you're a member and need help with your health plan, say I'm a member. Otherwise, in a few words, tell me why you're calling today.",
           "ASRVendor": "microsoft",
           "dialect": "en-US",
           "ASRConfidence": 0.8708144,
           "ASRConfidenceDetail": [
               {
                   "confidence": 0.8708144,
                   "lexical": "if you're a member and need help with your health plan say i'm a member otherwise in a few words tell me why you're calling today",
                   "itn": "if you're a member and need help with your health plan say i'm a member otherwise in a few words tell me why you're calling today",
                   "masked_i_t_n": "if you're a member and need help with your health plan say i'm a member otherwise in a few words tell me why you're calling today",
                   "display": "If you're a member and need help with your health plan, say I'm a member. Otherwise, in a few words, tell me why you're calling today.",
                   "words": [
                       {
                           "word": "if",
                           "offset": 420700000,
                           "duration": 1600000,
                           "confidence": 0.9726835
                       },
                       {
                           "word": "you're",
                           "offset": 422300000,
                           "duration": 2400000,
                           "confidence": 0.376676
                       },
                       {
                           "word": "a",
                           "offset": 424700000,
                           "duration": 400000,
                           "confidence": 0.3884408
                       },
                       {
                           "word": "member",
                           "offset": 425100000,
                           "duration": 3200000,
                           "confidence": 0.6788062
                       },
                       {
                           "word": "and",
                           "offset": 428300000,
                           "duration": 1200000,
                           "confidence": 0.57555306
                       },
                       {
                           "word": "need",
                           "offset": 429500000,
                           "duration": 2000000,
                           "confidence": 0.96371156
                       },
                       {
                           "word": "help",
                           "offset": 431500000,
                           "duration": 2000000,
                           "confidence": 0.99102837
                       },
                       {
                           "word": "with",
                           "offset": 433500000,
                           "duration": 1600000,
                           "confidence": 0.9584458
                       },
                       {
                           "word": "your",
                           "offset": 435100000,
                           "duration": 1600000,
                           "confidence": 0.9712777
                       },
                       {
                           "word": "health",
                           "offset": 436700000,
                           "duration": 2400000,
                           "confidence": 0.985333
                       },
                       {
                           "word": "plan",
                           "offset": 439100000,
                           "duration": 4800000,
                           "confidence": 0.8494906
                       },
                       {
                           "word": "say",
                           "offset": 445100000,
                           "duration": 4800000,
                           "confidence": 0.98846895
                       },
                       {
                           "word": "i'm",
                           "offset": 449900000,
                           "duration": 3200000,
                           "confidence": 0.80772966
                       },
                       {
                           "word": "a",
                           "offset": 453100000,
                           "duration": 400000,
                           "confidence": 0.66123855
                       },
                       {
                           "word": "member",
                           "offset": 453500000,
                           "duration": 6000000,
                           "confidence": 0.9897405
                       },
                       {
                           "word": "otherwise",
                           "offset": 462700000,
                           "duration": 5200000,
                           "confidence": 0.94419414
                       },
                       {
                           "word": "in",
                           "offset": 467900000,
                           "duration": 1200000,
                           "confidence": 0.9729681
                       },
                       {
                           "word": "a",
                           "offset": 469100000,
                           "duration": 400000,
                           "confidence": 0.98132175
                       },
                       {
                           "word": "few",
                           "offset": 469500000,
                           "duration": 2000000,
                           "confidence": 0.99257773
                       },
                       {
                           "word": "words",
                           "offset": 471500000,
                           "duration": 4800000,
                           "confidence": 0.98928726
                       },
                       {
                           "word": "tell",
                           "offset": 477900000,
                           "duration": 2800000,
                           "confidence": 0.98641545
                       },
                       {
                           "word": "me",
                           "offset": 480700000,
                           "duration": 1200000,
                           "confidence": 0.6896171
                       },
                       {
                           "word": "why",
                           "offset": 481900000,
                           "duration": 2800000,
                           "confidence": 0.990285
                       },
                       {
                           "word": "you're",
                           "offset": 484700000,
                           "duration": 2800000,
                           "confidence": 0.9559583
                       },
                       {
                           "word": "calling",
                           "offset": 487500000,
                           "duration": 2800000,
                           "confidence": 0.9911675
                       },
                       {
                           "word": "today",
                           "offset": 490300000,
                           "duration": 5200000,
                           "confidence": 0.98875904
                       }
                   ]
               }
           ]
       }
   },
```