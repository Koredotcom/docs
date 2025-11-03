--8<-- "includes/automationai-api-back-link.md"

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

<li>App Builder: Debug Logs

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
   <td>Environment URL, for example, https://platform.kore.ai
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
<li>genericsms
<li>twiliosms
<li>genesys
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


**TwilioSMS**:
```json
[
    {
        "timestamp": "2025-05-27T04:36:17.296Z",
        "debugTitle": "welcomedialog",
        "debugMessage": "intent node processing is completed",
        "debugLevel": "Info",
        "metaInfo": {
            "channel": "sms",
            "identity": "67e125c59ec655b7448eb65b/+12566xxxxxx"
        }
    },
    {
        "timestamp": "2025-05-27T04:36:17.334Z",
        "debugTitle": "menuCheck",
        "debugMessage": "Script node execution successful",
        "debugLevel": "info",
        "debugDetail": "{\"title\":\" \",\"body\":\"\",\"updatedContext\":{\"bot\":\"Master Bot Flow\",\"botid\":\"st-bebdb320-9f69-561d-aeb0-c45169xxxxxx\",\"taskid\":\"dg-9eaa1774-2caf-52bb-b112-f4d698xxxxxx\",\"intent\":\"welcomedialog\",\"intentType\":\"dialog\",\"intentDescription\":\"kgvsdialog\",\"invocationSource\":{\"type\":\"userInputMatch\"},\"entities\":{},\"entityErrorCount\":{},\"amendEntities\":{},\"history\":[],\"ccId\":\"u-5ca4428e-5e40-5a6f-9f60-ebf13dxxxxxx:st-bebdb320-9f69-561d-aeb0-c45169xxxxxx\",\"currentLanguage\":\"en\",\"dialog_tone\":[{\"tone_name\":\"positive\",\"level\":1,\"count\":1}],\"session\":{\"EnterpriseContext\":{},\"BotContext\":{},\"UserContext\":{\"workinghours\":{\"workdays\":\"mon,tue,wed,thu,fri\",\"workstart\":\"8:00 AM\",\"workend\":\"5:00 PM\"},\"profImage\":\"no-avatar\",\"profColour\":\"#add8e6\",\"jTitle\":\"\",\"dept\":\"\",\"activationStatus\":\"active\",\"firstName\":\"\",\"lastName\":\"\",\"orgId\":\"o-33749baa-f662-5ae8-b506-4b3bf7xxxxxx\",\"_id\":\"u-5ca4428e-5e40-5a6f-9f60-ebf13dxxxxxx\",\"accountId\":\"5ff6ff6f2327934e5bxxxxxx\",\"identities\":[{\"val\":\"67e125c59ec655b7448xxxxx/+125xxxx0200\",\"type\":\"mapped\"}]},\"UserSession\":{},\"BotUserSession\":{\"_metaInfo\":{},\"lastMessage\":{\"channel\":\"sms\",\"messagePayload\":{\"ToCountry\":\"US\",\"ToState\":\"IL\",\"SmsMessageSid\":\"SMa7322a0105b8fd4caa2b1eb7f7xxxxxx\",\"NumMedia\":\"0\",\"ToCity\":\"PALATINE\",\"FromZip\":\"35646\",\"SmsSid\":\"SMa7322a0105b8fd4caa2b1eb7f7xxxxxx\",\"FromState\":\"AL\",\"SmsStatus\":\"received\",\"FromCity\":\"TOWN CREEK\",\"Body\":\"Hi\",\"FromCountry\":\"US\",\"To\":\"+122xxxx0907\",\"MessagingServiceSid\":\"MG506fbf3422c37408bd65e5e709xxxxxx\",\"ToZip\":\"60074\",\"AddOns\":\"{\\\"status\\\":\\\"successful\\\",\\\"message\\\":null,\\\"code\\\":null,\\\"results\\\":{}}\",\"NumSegments\":\"1\",\"MessageSid\":\"SMa7322a0105b8fd4caa2b1eb7f7xxxxxx\",\"AccountSid\":\"ACc518be9a6f916431ecfd8d7d9f4xxxxx\",\"From\":\"+125xxxx0200\",\"ApiVersion\":\"2010-04-01\"}},\"conversationSessionId\":\"6835797d857ac49da7xxxxxx\",\"lastUserMessageTime\":\"2025-05-27T08:36:13.862Z\",\"channels\":[{\"type\":\"sms\",\"from\":\"67e125c59ec655b744xxxxxx/+125xxxx0200\",\"to\":\"MG506fbf3422c37408bd65e5e7094axxxx\",\"body\":\"Hi\",\"gateway\":\"twilio\",\"enable\":true,\"message\":\"The bot is disabled via Twilio. You can still talk to the bot via Web/Mobile Client, IVR, Genesys Cloud CX Messaging, Twilio.\",\"activeChannels\":\"Web/Mobile Client,IVR,Genesys Cloud CX Messaging,Twilio.\",\"streamId\":\"st-bebdb320-9f69-561d-aeb0-c45169xxxxxx\",\"tokens\":[],\"__userInputTime\":\"2025-05-27T08:36:13.852Z\",\"__loopCount\":0,\"userId\":\"u-5ca4428e-5e40-5a6f-9f60-ebf13dxxxxxx\",\"requestId\":\"ms-501f497d-197a-59fa-aeff-a21f34c59a2e\",\"botLanguage\":\"en\"}],\"isReturningUser\":false},\"opts\":{\"userId\":\"u-5ca4428e-5e40-5a6f-9f60-ebf13dxxxxxx\",\"streamId\":\"st-bebdb320-9f69-561d-aeb0-c45169axxxxx\"},\"deleteKeys\":{}},\"updatedOn\":\"2025-05-27T08:36:17.275Z\",\"intentName\":\"welcomedialog\",\"currentNodeId\":\"script26\",\"currentNodeName\":\"menuCheck\",\"currentTraits\":[],\"userInputs\":{\"originalInput\":{\"sentence\":\"Hi\",\"sentenceType\":\"statement\",\"timestamp\":1748334977259}},\"currentTags\":{\"tags\":[\"welcomedialog\"]},\"NLAnalysis\":{\"userInput\":\"Hi\",\"intents\":{}},\"previousNodeId\":\"intent0\",\"previousNodeName\":\"welcomedialog\",\"currentNodeType\":\"script\",\"contextId\":\"dcx-4c67f67a-f478-5eef-8a68-02eab14xxxxx\"},\"metaTags\":{\"UserLevelTags\":[],\"SessionLevelTags\":[],\"MessageLevelTags\":[],\"referenceLevelTags\":[]},\"contextTags\":[\"welcomedialog\"],\"removeContextTags\":[],\"debugLogs\":[],\"textTranslations\":[],\"tokenIdpsToExpire\":[],\"clearAllAuthTokens\":false,\"channelActions\":{},\"isDeveloper\":false,\"debugMessage\":\"menuCheck\",\"contextId\":\"dcx-4c67f67a-f478-5eef-8a68-02eab1xxxxxx\"}",
        "metaInfo": {
            "channel": "sms",
            "identity": "67e125c59ec655b7448eb65b/+1256602xxxxxx"
        }
    },
    {
        "timestamp": "2025-05-27T04:36:17.366Z",
        "debugTitle": "menuCheck",
        "debugMessage": "script node processing is completed",
        "debugLevel": "Info",
        "metaInfo": {
            "channel": "sms",
            "identity": "67e125c59ec655b7448eb65b/+1256602xxxxx"
        }
    },
    {
        "timestamp": "2025-05-27T04:36:17.648Z",
        "debugTitle": "titlesConfig",
        "debugMessage": "Script node execution successful",
        "debugLevel": "info",
        "debugDetail": "{\"title\":\" \",\"body\":\"\",\"updatedContext\":{\"bot\":\"Master Bot Flow\",\"botid\":\"st-bebdb320-9f69-561d-aeb0-c45169xxxxxx\",\"taskid\":\"dg-9eaa1774-2caf-52bb-b112-f4d698xxxxxx\",\"intent\":\"welcomedialog\",\"intentType\":\"dialog\",\"intentDescription\":\"kgvsdialog\",\"invocationSource\":{\"type\":\"userInputMatch\"},\"entities\":{},\"entityErrorCount\":{},\"amendEntities\":{},\"history\":[],\"ccId\":\"u-5ca4428e-5e40-5a6f-9f60-ebf13dd6fb10xxxxx:st-bebdb320-9f69-561d-aeb0-c45169xxxxxx\",\"currentLanguage\":\"en\",\"dialog_tone\":[{\"tone_name\":\"positive\",\"level\":1,\"count\":1}],\"updatedOn\":\"2025-05-27T08:36:17.457Z\",\"intentName\":\"welcomedialog\",\"currentNodeId\":\"script18\",\"currentNodeName\":\"titlesConfig\",\"currentTraits\":[],\"userInputs\":{\"originalInput\":{\"sentence\":\"Hi\",\"sentenceType\":\"statement\",\"timestamp\":1748334977259}},\"currentTags\":{\"tags\":[\"welcomedialog\"]},\"NLAnalysis\":{\"userInput\":\"Hi\",\"intents\":{}},\"previousNodeId\":\"message16\",\"previousNodeName\":\"welMsg1\",\"currentNodeType\":\"script\",\"contextId\":\"dcx-4c67f67a-f478-5eef-8a68-02eab14xxxxx\",\"traversedIntents\":[{\"name\":\"welcomedialog\",\"dialogId\":\"dg-9eaa1774-2caf-52bb-b112-f4d6989xxxxx\"}],\"message_tone\":[],\"isDeveloper\":false,\"session\":{\"EnterpriseContext\":{},\"BotContext\":{},\"UserContext\":{\"workinghours\":{\"workdays\":\"mon,tue,wed,thu,fri\",\"workstart\":\"8:00 AM\",\"workend\":\"5:00 PM\"},\"profImage\":\"no-avatar\",\"profColour\":\"#add8e6\",\"jTitle\":\"\",\"dept\":\"\",\"activationStatus\":\"active\",\"firstName\":\"\",\"lastName\":\"\",\"orgId\":\"o-33749baa-f662-5ae8-b506-4b3bf7xxxxxx\",\"_id\":\"u-5ca4428e-5e40-5a6f-9f60-ebf13ddxxxxx\",\"accountId\":\"5ff6ff6f2327934e5b70xxxxx\",\"identities\":[{\"val\":\"67e125c59ec655b7448xxxxx/+125xxxx0200\",\"type\":\"mapped\"}]},\"UserSession\":{},\"BotUserSession\":{\"_metaInfo\":{},\"lastMessage\":{\"channel\":\"sms\",\"messagePayload\":{\"ToCountry\":\"US\",\"ToState\":\"IL\",\"SmsMessageSid\":\"SMa7322a0105b8fd4caa2b1eb7f765cf9d\",\"NumMedia\":\"0\",\"ToCity\":\"PALATINE\",\"FromZip\":\"35646\",\"SmsSid\":\"SMa7322a0105b8fd4caa2b1eb7f7xxxxxx\",\"FromState\":\"AL\",\"SmsStatus\":\"received\",\"FromCity\":\"TOWN CREEK\",\"Body\":\"Hi\",\"FromCountry\":\"US\",\"To\":\"+122xxxx907\",\"MessagingServiceSid\":\"MG506fbf3422c37408bd65e5e7094xxxxx\",\"ToZip\":\"60074\",\"AddOns\":\"{\\\"status\\\":\\\"successful\\\",\\\"message\\\":null,\\\"code\\\":null,\\\"results\\\":{}}\",\"NumSegments\":\"1\",\"MessageSid\":\"SMa7322a0105b8fd4caa2b1eb7f76xxxxx\",\"AccountSid\":\"ACc518be9a6f916431ecfd8d7d9f471b2e\",\"From\":\"+125xxxx0200\",\"ApiVersion\":\"2010-04-01\"}},\"conversationSessionId\":\"6835797d857ac49da7xxxxxx\",\"lastUserMessageTime\":\"2025-05-27T08:36:13.862Z\",\"channels\":[{\"type\":\"sms\",\"from\":\"67e125c59ec655b7448eb65b/+125xxxx0200\",\"to\":\"MG506fbf3422c37408bd65e5e7094axxxx\",\"body\":\"Hi\",\"gateway\":\"twilio\",\"enable\":true,\"message\":\"The bot is disabled via Twilio. You can still talk to the bot via Web/Mobile Client, IVR, Genesys Cloud CX Messaging, Twilio.\",\"activeChannels\":\"Web/Mobile Client,IVR,Genesys Cloud CX Messaging,Twilio.\",\"streamId\":\"st-bebdb320-9f69-561d-aeb0-c45169xxxxxx\",\"tokens\":[],\"__userInputTime\":\"2025-05-27T08:36:13.852Z\",\"__loopCount\":0,\"userId\":\"u-5ca4428e-5e40-5a6f-9f60-ebf13ddxxxxx\",\"requestId\":\"ms-501f497d-197a-59fa-aeff-a21f34cxxxxx\",\"botLanguage\":\"en\"}],\"isReturningUser\":false},\"opts\":{\"userId\":\"u-5ca4428e-5e40-5a6f-9f60-ebf13ddxxxxx\",\"streamId\":\"st-bebdb320-9f69-561d-aeb0-c45169axxxxx\"},\"deleteKeys\":{}},\"counter\":0,\"taskList\":[{\"title\":\"Get weather updates\",\"value\":\"Get weather updates\",\"synonyms\":[\"\\\"Get weather updates\\\"\"]},{\"title\":\"Active Covid Cases\",\"value\":\"Active Covid Cases\",\"synonyms\":[\"\\\"Active Covid Cases\\\"\",\"\\\"Covid Cases\\\"\"]},{\"title\":\"Company Stock Value\",\"value\":\"Company Stock Value\",\"synonyms\":[\"\\\"Company Stock Value\\\"\",\"\\\"Stock values\\\"\"]},{\"title\":\"Create UserLogin\",\"value\":\"Create UserLogin\",\"synonyms\":[\"\\\"Create UserLogin\\\"\"]},{\"title\":\"Flight Status \",\"value\":\"Flight Status \",\"synonyms\":[\"\\\"Flight Status \\\"\"]},{\"title\":\"Show More\",\"value\":\"Show More\",\"synonyms\":[\"\\\"Show More\\\"\"]}]},\"metaTags\":{\"UserLevelTags\":[],\"SessionLevelTags\":[],\"MessageLevelTags\":[],\"referenceLevelTags\":[]},\"contextTags\":[\"welcomedialog\"],\"removeContextTags\":[],\"debugLogs\":[],\"textTranslations\":[],\"tokenIdpsToExpire\":[],\"clearAllAuthTokens\":false,\"channelActions\":{},\"isDeveloper\":false,\"debugMessage\":\"titlesConfig\",\"contextId\":\"dcx-4c67f67a-f478-5eef-8a68-02eab14xxxxx\"}",
        "metaInfo": {
            "channel": "sms",
            "identity": "67e125c59ec655b7448eb65b/+125660xxxxx"
        }
    },
    {
        "timestamp": "2025-05-27T04:36:17.725Z",
        "debugTitle": "titlesConfig",
        "debugMessage": "script node processing is completed",
        "debugLevel": "Info",
        "metaInfo": {
            "channel": "sms",
            "identity": "67e125c59ec655b744xxxxxx/+125660xxxxx"
        }
    },
    {
        "timestamp": "2025-05-27T04:36:29.672Z",
        "debugTitle": "Currency",
        "debugMessage": "intent node processing is completed",
        "debugLevel": "Info",
        "metaInfo": {
            "channel": "sms",
            "identity": "67e125c59ec655b74xxxxxb/+125660xxxxx"
        }
    },
    {
        "timestamp": "2025-05-27T04:36:37.730Z",
        "debugTitle": "CurrencyCode",
        "debugMessage": "entity node processing is completed",
        "debugLevel": "Info",
        "metaInfo": {
            "channel": "sms",
            "identity": "67e125c59ec655b744xxxxx/+125xxxx0200"
        }
    },
    {
        "timestamp": "2025-05-27T04:36:37.786Z",
        "debugTitle": "HitAPICurrency",
        "debugMessage": "Calling the integration system",
        "debugLevel": "info",
        "metaInfo": {
            "channel": "sms",
            "identity": "67e125c59ec655b744xxxxxx/+125xxxx0200"
        }
    },
    {
        "timestamp": "2025-05-27T04:36:37.881Z",
        "debugTitle": "HitAPICurrency",
        "debugMessage": "Service execution is complete.",
        "debugLevel": "info",
        "metaInfo": {
            "channel": "sms",
            "identity": "67e125c59ec655b744xxxxxx/+125xxxx0200"
        }
    },
    {
        "timestamp": "2025-05-27T04:36:50.765Z",
        "debugTitle": "Schedule_Appointment",
        "debugMessage": "intent node processing is completed",
        "debugLevel": "Info",
        "metaInfo": {
            "channel": "sms",
            "identity": "67e125c59ec655b744xxxxxx/+125xxxx0200"
        }
    },
    {
        "timestamp": "2025-05-27T04:37:52.579Z",
        "debugTitle": "CollectionAppointmentDetails",
        "debugMessage": "aiassist node processing is completed",
        "debugLevel": "Info",
        "metaInfo": {
            "channel": "sms",
            "identity": "67e125c59ec655b744xxxxxx/+125xxxx0200"
        }
    }
]

```

**Genesys**:
```json
[
    {
        "timestamp": "2025-05-27T03:34:24.109Z",
        "debugTitle": "welcomedialog",
        "debugMessage": "intent node processing is completed",
        "debugLevel": "Info",
        "metaInfo": {
            "channel": "genesys",
            "identity": "67e125c59ec655b744xxxxxx/genesys/d7e0b98d-b487-49f2-b2b0-fd25e16xxxxx"
        }
    },
    {
        "timestamp": "2025-05-27T03:34:24.183Z",
        "debugTitle": "menuCheck",
        "debugMessage": "Script node execution successful",
        "debugLevel": "info",
        "debugDetail": "{\"title\":\" \",\"body\":\"\",\"updatedContext\":{\"bot\":\"Master Bot Flow\",\"botid\":\"st-bebdb320-9f69-561d-aeb0-c4516xxxxxx\",\"taskid\":\"dg-9eaa1774-2caf-52bb-b112-f4d6989xxxxx\",\"intent\":\"welcomedialog\",\"intentType\":\"dialog\",\"intentDescription\":\"kgvsdialog\",\"invocationSource\":{\"type\":\"userInputMatch\"},\"entities\":{},\"entityErrorCount\":{},\"amendEntities\":{},\"history\":[],\"ccId\":\"u-700db2ea-12eb-590f-9a5b-e487f1axxxxx:st-bebdb320-9f69-561d-aeb0-c45169axxxxx\",\"currentLanguage\":\"en\",\"dialog_tone\":[{\"tone_name\":\"positive\",\"level\":1,\"count\":1}],\"session\":{\"EnterpriseContext\":{},\"BotContext\":{},\"UserContext\":{\"workinghours\":{\"workdays\":\"mon,tue,wed,thu,fri\",\"workstart\":\"8:00 AM\",\"workend\":\"5:00 PM\"},\"profImage\":\"no-avatar\",\"profColour\":\"#ff4500\",\"jTitle\":\"\",\"dept\":\"\",\"activationStatus\":\"active\",\"firstName\":\"\",\"lastName\":\"\",\"orgId\":\"o-33749baa-f662-5ae8-b506-4b3bf787xxxxx\",\"_id\":\"u-700db2ea-12eb-590f-9a5b-e487f1xxxxxx/d7e0b98d-b487-49f2-b2b0-fd25exxxxxxxb\",\"type\":\"mapped\"}]},\"UserSession\":{},\"BotUserSession\":{\"_metaInfo\":{},\"lastMessage\":{\"channel\":\"genesys\",\"messagePayload\":{\"botId\":\"Master Bot Flow\",\"botVersion\":\"1\",\"botSessionId\":\"72fea332-dde8-43cd-a10b-adfb742cfb17\",\"inputMessage\":{\"type\":\"Text\",\"text\":\"Hi\"},\"languageCode\":\"en-us\",\"botSessionTimeout\":4320,\"chatBot\":{\"id\":\"st-bebdb320-9f69-561d-aeb0-c45169ad33b5\",\"name\":\"Master Bot Flow\"},\"genesysConversationId\":\"d7e0b98d-b487-49f2-b2b0-fd25e16xxxxx\",\"reqId\":\"gcr-2a667281-6e18-5dfb-afaa-4156343xxxxx\"}},\"conversationSessionId\":\"68356afc118f9d4f41df07f5\",\"lastUserMessageTime\":\"2025-05-27T07:34:20.688Z\",\"channels\":[{\"type\":\"genesys\",\"from\":\"67e125c59ec655b744xxxxxx/genesys/d7e0b98d-b487-49f2-b2b0-fd25e16xxxxx\",\"to\":\"d7e0b98d-b487-49f2-b2b0-fd25e16993bb\",\"body\":\"Hi\",\"streamId\":\"st-bebdb320-9f69-561d-aeb0-c45169axxxxx\",\"handle\":{\"channelId\":\"genesys\",\"user\":\"d7e0b98d-b487-49f2-b2b0-fd25e1xxxxx\",\"channelData\":{\"botId\":\"Master Bot Flow\",\"botVersion\":\"1\",\"botSessionId\":\"72fea332-dde8-43cd-a10b-adfb74xxxxx\",\"inputMessage\":{\"type\":\"Text\",\"text\":\"Hi\"},\"languageCode\":\"en-us\",\"botSessionTimeout\":4320,\"chatBot\":{\"id\":\"st-bebdb320-9f69-561d-aeb0-c45169adxxxx\",\"name\":\"Master Bot Flow\"},\"genesysConversationId\":\"d7e0b98d-b487-49f2-b2b0-fd25e16xxxxx\",\"reqId\":\"gcr-2a667281-6e18-5dfb-afaa-4156343xxxxx\"}},\"enable\":true,\"message\":\"The bot is disabled via Genesys Cloud CX Messaging. You can still talk to the bot via Web/Mobile Client, IVR, Genesys Cloud CX Messaging, Twilio.\",\"activeChannels\":\"Web/Mobile Client,IVR,Genesys Cloud CX Messaging,Twilio.\",\"tokens\":[],\"__userInputTime\":\"2025-05-27T07:34:20.679Z\",\"__loopCount\":0,\"userId\":\"u-700db2ea-12eb-590f-9a5b-e487f1axxxxx\",\"requestId\":\"ms-57f8f720-93b7-55ca-99b8-60a53xxxxxx\",\"botLanguage\":\"en\",\"requestContext\":{\"isRuntime\":true}}],\"isReturningUser\":false},\"opts\":{\"userId\":\"u-700db2ea-12eb-590f-9a5b-e487f1axxxxx\",\"streamId\":\"st-bebdb320-9f69-561d-aeb0-c45169axxxxx\"},\"deleteKeys\":{}},\"updatedOn\":\"2025-05-27T07:34:24.087Z\",\"intentName\":\"welcomedialog\",\"currentNodeId\":\"script26\",\"currentNodeName\":\"menuCheck\",\"currentTraits\":[],\"userInputs\":{\"originalInput\":{\"sentence\":\"Hi\",\"sentenceType\":\"statement\",\"timestamp\":1748331264074}},\"currentTags\":{\"tags\":[\"welcomedialog\"]},\"NLAnalysis\":{\"userInput\":\"Hi\",\"intents\":{}},\"previousNodeId\":\"intent0\",\"previousNodeName\":\"welcomedialog\",\"currentNodeType\":\"script\",\"contextId\":\"dcx-961b7add-c0b1-5ae1-a7ad-b95497xxxxxx\"},\"metaTags\":{\"UserLevelTags\":[],\"SessionLevelTags\":[],\"MessageLevelTags\":[],\"referenceLevelTags\":[]},\"contextTags\":[\"welcomedialog\"],\"removeContextTags\":[],\"debugLogs\":[],\"textTranslations\":[],\"tokenIdpsToExpire\":[],\"clearAllAuthTokens\":false,\"channelActions\":{},\"isDeveloper\":false,\"debugMessage\":\"menuCheck\",\"contextId\":\"dcx-961b7add-c0b1-5ae1-a7ad-b95497xxxxxx\"}",
        "metaInfo": {
            "channel": "genesys",
            "identity": "67e125c59ec655b7448xxxxx/genesys/d7e0b98d-b487-49f2-b2b0-fd25e1xxxxxx"
        }
    },
    {
        "timestamp": "2025-05-27T03:34:24.216Z",
        "debugTitle": "menuCheck",
        "debugMessage": "script node processing is completed",
        "debugLevel": "Info",
        "metaInfo": {
            "channel": "genesys",
            "identity": "67e125c59ec655b7448xxxxx/genesys/d7e0b98d-b487-49f2-b2b0-fd25e1xxxxxx"
        }
    },
    {
        "timestamp": "2025-05-27T03:34:24.531Z",
        "debugTitle": "titlesConfig",
        "debugMessage": "Script node execution successful",
        "debugLevel": "info",
        "debugDetail": "{\"title\":\" \",\"body\":\"\",\"updatedContext\":{\"bot\":\"Master Bot Flow\",\"botid\":\"st-bebdb320-9f69-561d-aeb0-c45169axxxxxx5\",\"taskid\":\"dg-9eaa1774-2caf-52bb-b112-f4d698xxxxxx\",\"intent\":\"welcomedialog\",\"intentType\":\"dialog\",\"intentDescription\":\"kgvsdialog\",\"invocationSource\":{\"type\":\"userInputMatch\"},\"entities\":{},\"entityErrorCount\":{},\"amendEntities\":{},\"history\":[],\"ccId\":\"u-700db2ea-12eb-590f-9a5b-e487f1xxxxxx:st-bebdb320-9f69-561d-aeb0-c45169xxxxxx\",\"currentLanguage\":\"en\",\"dialog_tone\":[{\"tone_name\":\"positive\",\"level\":1,\"count\":1}],\"updatedOn\":\"2025-05-27T07:34:24.322Z\",\"intentName\":\"welcomedialog\",\"currentNodeId\":\"script18\",\"currentNodeName\":\"titlesConfig\",\"currentTraits\":[],\"userInputs\":{\"originalInput\":{\"sentence\":\"Hi\",\"sentenceType\":\"statement\",\"timestamp\":1748331264074}},\"currentTags\":{\"tags\":[\"welcomedialog\"]},\"NLAnalysis\":{\"userInput\":\"Hi\",\"intents\":{}},\"previousNodeId\":\"message16\",\"previousNodeName\":\"welMsg1\",\"currentNodeType\":\"script\",\"contextId\":\"dcx-961b7add-c0b1-5ae1-a7ad-b95497cxxxxx\",\"traversedIntents\":[{\"name\":\"welcomedialog\",\"dialogId\":\"dg-9eaa1774-2caf-52bb-b112-f4d698xxxxx\"}],\"message_tone\":[],\"isDeveloper\":false,\"session\":{\"EnterpriseContext\":{},\"BotContext\":{},\"UserContext\":{\"workinghours\":{\"workdays\":\"mon,tue,wed,thu,fri\",\"workstart\":\"8:00 AM\",\"workend\":\"5:00 PM\"},\"profImage\":\"no-avatar\",\"profColour\":\"#ff4500\",\"jTitle\":\"\",\"dept\":\"\",\"activationStatus\":\"active\",\"firstName\":\"\",\"lastName\":\"\",\"orgId\":\"o-33749baa-f662-5ae8-b506-4b3bf7xxxxxx\",\"_id\":\"u-700db2ea-12eb-590f-9a5b-e487f1xxxxxx\",\"accountId\":\"5ff6ff6f2327934e5xxxxxx\",\"identities\":[{\"val\":\"67e125c59ec655b7448xxxxx/genesys/d7e0b98d-b487-49f2-b2b0-fd25e16xxxxx\",\"type\":\"mapped\"}]},\"UserSession\":{},\"BotUserSession\":{\"_metaInfo\":{},\"lastMessage\":{\"channel\":\"genesys\",\"messagePayload\":{\"botId\":\"Master Bot Flow\",\"botVersion\":\"1\",\"botSessionId\":\"72fea332-dde8-43cd-a10b-adfb7xxxxx7\",\"inputMessage\":{\"type\":\"Text\",\"text\":\"Hi\"},\"languageCode\":\"en-us\",\"botSessionTimeout\":4320,\"chatBot\":{\"id\":\"st-bebdb320-9f69-561d-aeb0-c45169axxxxx\",\"name\":\"Master Bot Flow\"},\"genesysConversationId\":\"d7e0b98d-b487-49f2-b2b0-fd25e16xxxxx\",\"reqId\":\"gcr-2a667281-6e18-5dfb-afaa-4156343xxxxx8\"}},\"conversationSessionId\":\"68356afc118f9d4f41df07f5\",\"lastUserMessageTime\":\"2025-05-27T07:34:20.688Z\",\"channels\":[{\"type\":\"genesys\",\"from\":\"67e125c59ec655b7448eb65b/genesys/d7e0b98d-b487-49f2-b2b0-fd25e16993bb\",\"to\":\"d7e0b98d-b487-49f2-b2b0-fd25e16xxxxx\",\"body\":\"Hi\",\"streamId\":\"st-bebdb320-9f69-561d-aeb0-c45169axxxxx\",\"handle\":{\"channelId\":\"genesys\",\"user\":\"d7e0b98d-b487-49f2-b2b0-fd25e16993bb\",\"channelData\":{\"botId\":\"Master Bot Flow\",\"botVersion\":\"1\",\"botSessionId\":\"72fea332-dde8-43cd-a10b-adfb742xxxxx\",\"inputMessage\":{\"type\":\"Text\",\"text\":\"Hi\"},\"languageCode\":\"en-us\",\"botSessionTimeout\":4320,\"chatBot\":{\"id\":\"st-bebdb320-9f69-561d-aeb0-c45169xxxxxx\",\"name\":\"Master Bot Flow\"},\"genesysConversationId\":\"d7e0b98d-b487-49f2-b2b0-fd25e16xxxxx\",\"reqId\":\"gcr-2a667281-6e18-5dfb-afaa-4156343xxxxx\"}},\"enable\":true,\"message\":\"The bot is disabled via Genesys Cloud CX Messaging. You can still talk to the bot via Web/Mobile Client, IVR, Genesys Cloud CX Messaging, Twilio.\",\"activeChannels\":\"Web/Mobile Client,IVR,Genesys Cloud CX Messaging,Twilio.\",\"tokens\":[],\"__userInputTime\":\"2025-05-27T07:34:20.679Z\",\"__loopCount\":0,\"userId\":\"u-700db2ea-12eb-590f-9a5b-e487f1axxxxx\",\"requestId\":\"ms-57f8f720-93b7-55ca-99b8-60a5323xxxxx\",\"botLanguage\":\"en\",\"requestContext\":{\"isRuntime\":true}}],\"isReturningUser\":false},\"opts\":{\"userId\":\"u-700db2ea-12eb-590f-9a5b-e487f1axxxxx\",\"streamId\":\"st-bebdb320-9f69-561d-aeb0-c45169axxxxx\"},\"deleteKeys\":{}},\"counter\":0,\"taskList\":[{\"title\":\"Get weather updates\",\"value\":\"Get weather updates\",\"synonyms\":[\"\\\"Get weather updates\\\"\"]},{\"title\":\"Active Covid Cases\",\"value\":\"Active Covid Cases\",\"synonyms\":[\"\\\"Active Covid Cases\\\"\",\"\\\"Covid Cases\\\"\"]},{\"title\":\"Company Stock Value\",\"value\":\"Company Stock Value\",\"synonyms\":[\"\\\"Company Stock Value\\\"\",\"\\\"Stock values\\\"\"]},{\"title\":\"Create UserLogin\",\"value\":\"Create UserLogin\",\"synonyms\":[\"\\\"Create UserLogin\\\"\"]},{\"title\":\"Flight Status \",\"value\":\"Flight Status \",\"synonyms\":[\"\\\"Flight Status \\\"\"]},{\"title\":\"Show More\",\"value\":\"Show More\",\"synonyms\":[\"\\\"Show More\\\"\"]}]},\"metaTags\":{\"UserLevelTags\":[],\"SessionLevelTags\":[],\"MessageLevelTags\":[],\"referenceLevelTags\":[]},\"contextTags\":[\"welcomedialog\"],\"removeContextTags\":[],\"debugLogs\":[],\"textTranslations\":[],\"tokenIdpsToExpire\":[],\"clearAllAuthTokens\":false,\"channelActions\":{},\"isDeveloper\":false,\"debugMessage\":\"titlesConfig\",\"contextId\":\"dcx-961b7add-c0b1-5ae1-a7ad-b95497xxxxxxx\"}",
        "metaInfo": {
            "channel": "genesys",
            "identity": "67e125c59ec655b7448eb65b/genesys/d7e0b98d-b487-49f2-b2b0-fd25e1xxxxxx"
        }
    },
    {
        "timestamp": "2025-05-27T03:34:24.605Z",
        "debugTitle": "titlesConfig",
        "debugMessage": "script node processing is completed",
        "debugLevel": "Info",
        "metaInfo": {
            "channel": "genesys",
            "identity": "67e125c59ec655b744xxxxxx/genesys/d7e0b98d-b487-49f2-b2b0-fd25e16xxxxxx"
        }
    },
    {
        "timestamp": "2025-05-27T03:37:02.951Z",
        "debugTitle": "Currency",
        "debugMessage": "intent node processing is completed",
        "debugLevel": "Info",
        "metaInfo": {
            "channel": "genesys",
            "identity": "67e125c59ec655b744xxxxxxb/genesys/d7e0b98d-b487-49f2-b2b0-fd25e1xxxxxx"
        }
    },
    {
        "timestamp": "2025-05-27T03:37:07.933Z",
        "debugTitle": "CurrencyCode",
        "debugMessage": "entity node processing is completed",
        "debugLevel": "Info",
        "metaInfo": {
            "channel": "genesys",
            "identity": "67e125c59ec655b7448xxxxx/genesys/d7e0b98d-b487-49f2-b2b0-fd25e1xxxxxx"
        }
    },
    {
        "timestamp": "2025-05-27T03:37:07.974Z",
        "debugTitle": "HitAPICurrency",
        "debugMessage": "Calling the integration system",
        "debugLevel": "info",
        "metaInfo": {
            "channel": "genesys",
            "identity": "67e125c59ec655b7448exxxx/genesys/d7e0b98d-b487-49f2-b2b0-fd25e16xxxxx"
    },
    {
        "timestamp": "2025-05-27T03:37:08.069Z",
        "debugTitle": "HitAPICurrency",
        "debugMessage": "Service execution is complete.",
        "debugLevel": "info",
        "metaInfo": {
            "channel": "genesys",
            "identity": "67e125c59ec655b744xxxxxx/genesys/d7e0b98d-b487-49f2-b2b0-fd25exxxxxxx"
        }
    },
    {
        "timestamp": "2025-05-27T03:38:58.351Z",
        "debugTitle": "Schedule_Appointment",
        "debugMessage": "intent node processing is completed",
        "debugLevel": "Info",
        "metaInfo": {
            "channel": "genesys",
            "identity": "67e125c59ec655b7448xxxxx/genesys/d7e0b98d-b487-49f2-b2b0-fd25e169xxxx"
        }
    },
    {
        "timestamp": "2025-05-27T03:40:45.411Z",
        "debugTitle": "welcomedialog",
        "debugMessage": "intent node processing is completed",
        "debugLevel": "Info",
        "metaInfo": {
            "channel": "genesys",
            "identity": "67e125c59ec655xxxxxx/genesys/d7e0b98d-b487-49f2-b2b0-fd25e1xxxxx"
        }
    },
    {
        "timestamp": "2025-05-27T03:40:45.466Z",
        "debugTitle": "menuCheck",
        "debugMessage": "Script node execution successful",
        "debugLevel": "info",
        "debugDetail": "{\"title\":\" \",\"body\":\"\",\"updatedContext\":{\"bot\":\"Master Bot Flow\",\"botid\":\"st-bebdb320-9f69-561d-aeb0-c451xxxxxxx\",\"taskid\":\"dg-9eaa1774-2caf-52bb-b112-f4d69xxxxxxx\",\"intent\":\"welcomedialog\",\"intentType\":\"dialog\",\"intentDescription\":\"kgvsdialog\",\"invocationSource\":{\"type\":\"userInputMatch\"},\"entities\":{},\"entityErrorCount\":{},\"amendEntities\":{},\"history\":[],\"ccId\":\"u-700db2ea-12eb-590f-9a5b-e487f1a644f3:st-bebdb320-9f69-561d-aeb0-c45169axxxxx\",\"currentLanguage\":\"en\",\"dialog_tone\":[{\"tone_name\":\"positive\",\"level\":1,\"count\":2}],\"currentTraits\":[],\"userInputs\":{\"originalInput\":{\"sentence\":\"Hi\",\"spellCorrectedSentence\":\"Hi\",\"sentenceType\":\"statement\",\"timestamp\":174833164xxxxx}},\"currentTags\":{\"tags\":[\"welcomedialog\"]},\"NLAnalysis\":{\"userInput\":\"Hi\",\"intents\":{\"successIntents\":[{\"identifyingEngine\":\"FM\",\"intent\":\"welcomedialog\",\"type\":\"dialogTask\",\"fm\":8930,\"ml\":0,\"rr\":0,\"matchType\":\"definite\"}],\"eliminatedIntents\":[{\"intent\":\"Create Booking\",\"type\":\"dialogTask\",\"fm\":0,\"ml\":0,\"rr\":0}],\"nerInfo\":[]}},\"traversedIntents\":[{\"name\":\"Schedule Appointment\",\"dialogId\":\"dg-88cc05db-7a03-5b03-b686-f3cbeaxxxxxx\"}],\"onHoldTasks\":[],\"endOfTask\":{\"endOfTaskReason\":\"Cancelled_Interruption_Initiated\",\"intentType\":\"dialog\",\"taskName\":\"Schedule Appointment\",\"lastNode\":\"nd-ais-f11fba7c-c8f2-44dd-b09f-3f40e68xxxxx\",\"lastNodeName\":\"CollectionAppointmentDetails\"},\"historicTags\":[{\"tags\":[\"Schedule Appointment\",\"Schedule_Appointment\"]}],\"message_tone\":[{\"tone_name\":\"positive\",\"level\":1,\"count\":1}],\"session\":{\"EnterpriseContext\":{},\"BotContext\":{},\"UserContext\":{\"workinghours\":{\"workdays\":\"mon,tue,wed,thu,fri\",\"workstart\":\"8:00 AM\",\"workend\":\"5:00 PM\"},\"profImage\":\"no-avatar\",\"profColour\":\"#ff4500\",\"jTitle\":\"\",\"dept\":\"\",\"activationStatus\":\"active\",\"firstName\":\"\",\"lastName\":\"\",\"orgId\":\"o-33749baa-f662-5ae8-b506-4b3bf78xxxxx\",\"_id\":\"u-700db2ea-12eb-590f-9a5b-e487f1xxxxxx\",\"accountId\":\"5ff6ff6f2327934e5b7xxxxx\",\"identities\":[{\"val\":\"67e125c59ec655b7448xxxxx/genesys/d7e0b98d-b487-49f2-b2b0-fd25e16xxxxx\",\"type\":\"mapped\"}]},\"UserSession\":{},\"BotUserSession\":{\"_metaInfo\":{},\"lastMessage\":{\"channel\":\"genesys\",\"messagePayload\":{\"botId\":\"Master Bot Flow\",\"botVersion\":\"1\",\"botSessionId\":\"be06128a-6024-4d0e-b82a-c9947b2xxxxx\",\"inputMessage\":{\"type\":\"Text\",\"text\":\"Hi\"},\"languageCode\":\"en-us\",\"botSessionTimeout\":4320,\"chatBot\":{\"id\":\"st-bebdb320-9f69-561d-aeb0-c45169xxxxxb5\",\"name\":\"Master Bot Flow\"},\"genesysConversationId\":\"d7e0b98d-b487-49f2-b2b0-fd25e16xxxxxx\",\"reqId\":\"gcr-81a5b760-24eb-522c-b6ad-f4f6b4dxxxxx\"}},\"conversationSessionId\":\"68356afc118f9d4f41dfxxxxx\",\"lastUserMessageTime\":\"2025-05-27T07:40:44.128Z\",\"channels\":[{\"type\":\"genesys\",\"from\":\"67e125c59ec655b7448xxxxx/genesys/d7e0b98d-b487-49f2-b2b0-fd25e16xxxxx\",\"to\":\"d7e0b98d-b487-49f2-b2b0-fd25e1xxxxxx\",\"body\":\"Hi\",\"streamId\":\"st-bebdb320-9f69-561d-aeb0-c45169axxxxx\",\"handle\":{\"channelId\":\"genesys\",\"user\":\"d7e0b98d-b487-49f2-b2b0-fd25e16xxxxx\",\"channelData\":{\"botId\":\"Master Bot Flow\",\"botVersion\":\"1\",\"botSessionId\":\"be06128a-6024-4d0e-b82a-c9947b22xxxx\",\"inputMessage\":{\"type\":\"Text\",\"text\":\"Hi\"},\"languageCode\":\"en-us\",\"botSessionTimeout\":4320,\"chatBot\":{\"id\":\"st-bebdb320-9f69-561d-aeb0-c45169axxxxx\",\"name\":\"Master Bot Flow\"},\"genesysConversationId\":\"d7e0b98d-b487-49f2-b2b0-fd25e16xxxxx\",\"reqId\":\"gcr-81a5b760-24eb-522c-b6ad-f4f6b4ddxxxx\"}},\"enable\":true,\"message\":\"The bot is disabled via Genesys Cloud CX Messaging. You can still talk to the bot via Web/Mobile Client, IVR, Genesys Cloud CX Messaging, Twilio.\",\"activeChannels\":\"Web/Mobile Client,IVR,Genesys Cloud CX Messaging,Twilio.\",\"tokens\":[],\"__userInputTime\":\"2025-05-27T07:40:44.114Z\",\"__loopCount\":0,\"userId\":\"u-700db2ea-12eb-590f-9a5b-e487f1axxxxx\",\"requestId\":\"ms-c0decb85-a83b-5db6-92ad-eb6c697xxxxx\",\"botLanguage\":\"en\",\"requestContext\":{\"isRuntime\":true}}],\"isReturningUser\":false},\"opts\":{\"userId\":\"u-700db2ea-12eb-590f-9a5b-e487f1axxxx\",\"streamId\":\"st-bebdb320-9f69-561d-aeb0-c45169adxxxx\"},\"deleteKeys\":{}},\"updatedOn\":\"2025-05-27T07:40:45.384Z\",\"intentName\":\"welcomedialog\",\"currentNodeId\":\"script26\",\"currentNodeName\":\"menuCheck\",\"previousNodeId\":\"intent0\",\"previousNodeName\":\"welcomedialog\",\"currentNodeType\":\"script\",\"contextId\":\"dcx-1633b061-0b83-5f4d-a1ce-a530711xxxxx\"},\"metaTags\":{\"UserLevelTags\":[],\"SessionLevelTags\":[],\"MessageLevelTags\":[],\"referenceLevelTags\":[]},\"contextTags\":[\"welcomedialog\"],\"removeContextTags\":[],\"debugLogs\":[],\"textTranslations\":[],\"tokenIdpsToExpire\":[],\"clearAllAuthTokens\":false,\"channelActions\":{},\"isDeveloper\":false,\"debugMessage\":\"menuCheck\",\"contextId\":\"dcx-1633b061-0b83-5f4d-a1ce-a530711xxxxx\"}",
        "metaInfo": {
            "channel": "genesys",
            "identity": "67e125c59ec655b7448xxxxx/genesys/d7e0b98d-b487-49f2-b2b0-fd25e1xxxxx"
        }
    },
    {
        "timestamp": "2025-05-27T03:40:45.513Z",
        "debugTitle": "menuCheck",
        "debugMessage": "script node processing is completed",
        "debugLevel": "Info",
        "metaInfo": {
            "channel": "genesys",
            "identity": "67e125c59ec655b7448xxxxx/genesys/d7e0b98d-b487-49f2-b2b0-fd25e16xxxxx"
        }
    },
    {
        "timestamp": "2025-05-27T03:40:45.869Z",
        "debugTitle": "titlesConfig",
        "debugMessage": "Script node execution successful",
        "debugLevel": "info",
        "debugDetail": "{\"title\":\" \",\"body\":\"\",\"updatedContext\":{\"bot\":\"Master Bot Flow\",\"botid\":\"st-bebdb320-9f69-561d-aeb0-c45169axxxxx\",\"taskid\":\"dg-9eaa1774-2caf-52bb-b112-f4d69898fb0b\",\"intent\":\"welcomedialog\",\"intentType\":\"dialog\",\"intentDescription\":\"kgvsdialog\",\"invocationSource\":{\"type\":\"userInputMatch\"},\"entities\":{},\"entityErrorCount\":{},\"amendEntities\":{},\"history\":[],\"ccId\":\"u-700db2ea-12eb-590f-9a5b-e487fxxxxxx:st-bebdb320-9f69-561d-aeb0-c45169axxxxx\",\"currentLanguage\":\"en\",\"dialog_tone\":[{\"tone_name\":\"positive\",\"level\":1,\"count\":2}],\"currentTraits\":[],\"userInputs\":{\"originalInput\":{\"sentence\":\"Hi\",\"spellCorrectedSentence\":\"Hi\",\"sentenceType\":\"statement\",\"timestamp\":1748331645372}},\"currentTags\":{\"tags\":[\"welcomedialog\"]},\"NLAnalysis\":{\"userInput\":\"Hi\",\"intents\":{\"successIntents\":[{\"identifyingEngine\":\"FM\",\"intent\":\"welcomedialog\",\"type\":\"dialogTask\",\"fm\":8930,\"ml\":0,\"rr\":0,\"matchType\":\"definite\"}],\"eliminatedIntents\":[{\"intent\":\"Create Booking\",\"type\":\"dialogTask\",\"fm\":0,\"ml\":0,\"rr\":0}],\"nerInfo\":[]}},\"traversedIntents\":[{\"name\":\"welcomedialog\",\"dialogId\":\"dg-9eaa1774-2caf-52bb-b112-f4d698xxxxxx\"}],\"onHoldTasks\":[],\"endOfTask\":{\"endOfTaskReason\":\"Cancelled_Interruption_Initiated\",\"intentType\":\"dialog\",\"taskName\":\"Schedule Appointment\",\"lastNode\":\"nd-ais-f11fba7c-c8f2-44dd-b09f-3f40e68xxxxx\",\"lastNodeName\":\"CollectionAppointmentDetails\"},\"historicTags\":[{\"tags\":[\"Schedule Appointment\",\"Schedule_Appointment\"]}],\"message_tone\":[{\"tone_name\":\"positive\",\"level\":1,\"count\":1}],\"updatedOn\":\"2025-05-27T07:40:45.644Z\",\"intentName\":\"welcomedialog\",\"currentNodeId\":\"script18\",\"currentNodeName\":\"titlesConfig\",\"previousNodeId\":\"message16\",\"previousNodeName\":\"welMsg1\",\"currentNodeType\":\"script\",\"contextId\":\"dcx-1633b061-0b83-5f4d-a1ce-a530711xxxxx\",\"isDeveloper\":false,\"session\":{\"EnterpriseContext\":{},\"BotContext\":{},\"UserContext\":{\"workinghours\":{\"workdays\":\"mon,tue,wed,thu,fri\",\"workstart\":\"8:00 AM\",\"workend\":\"5:00 PM\"},\"profImage\":\"no-avatar\",\"profColour\":\"#ff4500\",\"jTitle\":\"\",\"dept\":\"\",\"activationStatus\":\"active\",\"firstName\":\"\",\"lastName\":\"\",\"orgId\":\"o-33749baa-f662-5ae8-b506-4b3bf78xxxxx\",\"_id\":\"u-700db2ea-12eb-590f-9a5b-e487f1axxxxx\",\"accountId\":\"5ff6ff6f2327934e5b7xxxxx\",\"identities\":[{\"val\":\"67e125c59ec655b7448xxxxx/genesys/d7e0b98d-b487-49f2-b2b0-fd25e16xxxxx\",\"type\":\"mapped\"}]},\"UserSession\":{},\"BotUserSession\":{\"_metaInfo\":{},\"lastMessage\":{\"channel\":\"genesys\",\"messagePayload\":{\"botId\":\"Master Bot Flow\",\"botVersion\":\"1\",\"botSessionId\":\"be06128a-6024-4d0e-b82a-c9947b2xxxxx\",\"inputMessage\":{\"type\":\"Text\",\"text\":\"Hi\"},\"languageCode\":\"en-us\",\"botSessionTimeout\":4320,\"chatBot\":{\"id\":\"st-bebdb320-9f69-561d-aeb0-c45169ad33b5\",\"name\":\"Master Bot Flow\"},\"genesysConversationId\":\"d7e0b98d-b487-49f2-b2b0-fd25e16xxxxx\",\"reqId\":\"gcr-81a5b760-24eb-522c-b6ad-f4f6b4dxxxxx\"}},\"conversationSessionId\":\"68356afc118f9d4f41dxxxxx\",\"lastUserMessageTime\":\"2025-05-27T07:40:44.128Z\",\"channels\":[{\"type\":\"genesys\",\"from\":\"67e125c59ec655b744xxxxxx/genesys/d7e0b98d-b487-49f2-b2b0-fd25e16xxxxx\",\"to\":\"d7e0b98d-b487-49f2-b2b0-fd25e16xxxxxb\",\"body\":\"Hi\",\"streamId\":\"st-bebdb320-9f69-561d-aeb0-c45169axxxxx\",\"handle\":{\"channelId\":\"genesys\",\"user\":\"d7e0b98d-b487-49f2-b2b0-fd25e1xxxxxx\",\"channelData\":{\"botId\":\"Master Bot Flow\",\"botVersion\":\"1\",\"botSessionId\":\"be06128a-6024-4d0e-b82a-c9947b2xxxxx\",\"inputMessage\":{\"type\":\"Text\",\"text\":\"Hi\"},\"languageCode\":\"en-us\",\"botSessionTimeout\":4320,\"chatBot\":{\"id\":\"st-bebdb320-9f69-561d-aeb0-c45169d33b5\",\"name\":\"Master Bot Flow\"},\"genesysConversationId\":\"d7e0b98d-b487-49f2-b2b0-fd25e1xxxxxx\",\"reqId\":\"gcr-81a5b760-24eb-522c-b6ad-f4f6b4xxxxxx\"}},\"enable\":true,\"message\":\"The bot is disabled via Genesys Cloud CX Messaging. You can still talk to the bot via Web/Mobile Client, IVR, Genesys Cloud CX Messaging, Twilio.\",\"activeChannels\":\"Web/Mobile Client,IVR,Genesys Cloud CX Messaging,Twilio.\",\"tokens\":[],\"__userInputTime\":\"2025-05-27T07:40:44.114Z\",\"__loopCount\":0,\"userId\":\"u-700db2ea-12eb-590f-9a5b-e487f1a6xxxx\",\"requestId\":\"ms-c0decb85-a83b-5db6-92ad-eb6c6978xxxx\",\"botLanguage\":\"en\",\"requestContext\":{\"isRuntime\":true}}],\"isReturningUser\":false},\"opts\":{\"userId\":\"u-700db2ea-12eb-590f-9a5b-e487f1axxxxx\",\"streamId\":\"st-bebdb320-9f69-561d-aeb0-c45169xxxxxx\"},\"deleteKeys\":{}},\"counter\":0,\"taskList\":[{\"title\":\"Get weather updates\",\"value\":\"Get weather updates\",\"synonyms\":[\"\\\"Get weather updates\\\"\"]},{\"title\":\"Active Covid Cases\",\"value\":\"Active Covid Cases\",\"synonyms\":[\"\\\"Active Covid Cases\\\"\",\"\\\"Covid Cases\\\"\"]},{\"title\":\"Company Stock Value\",\"value\":\"Company Stock Value\",\"synonyms\"a:[\"\\\"Company Stock Value\\\"\",\"\\\"Stock values\\\"\"]},{\"title\":\"Create UserLogin\",\"value\":\"Create UserLogin\",\"synonyms\":[\"\\\"Create UserLogin\\\"\"]},{\"title\":\"Flight Status \",\"value\":\"Flight Status \",\"synonyms\":[\"\\\"Flight Status \\\"\"]},{\"title\":\"Show More\",\"value\":\"Show More\",\"synonyms\":[\"\\\"Show More\\\"\"]}]},\"metaTags\":{\"UserLevelTags\":[],\"SessionLevelTags\":[],\"MessageLevelTags\":[],\"referenceLevelTags\":[]},\"contextTags\":[\"welcomedialog\"],\"removeContextTags\":[],\"debugLogs\":[],\"textTranslations\":[],\"tokenIdpsToExpire\":[],\"clearAllAuthTokens\":false,\"channelActions\":{},\"isDeveloper\":false,\"debugMessage\":\"titlesConfig\",\"contextId\":\"dcx-1633b061-0b83-5f4d-a1ce-a5307118xxxx\"}",
        "metaInfo": {
            "channel": "genesys",
            "identity": "67e125c59ec655b7448xxxxx/genesys/d7e0b98d-b487-49f2-b2b0-fd25e1xxxxxx"
        }
    },
    {
        "timestamp": "2025-05-27T03:40:45.978Z",
        "debugTitle": "titlesConfig",
        "debugMessage": "script node processing is completed",
        "debugLevel": "Info",
        "metaInfo": {
            "channel": "genesys",
            "identity": "67e125c59ec655b7448xxxxx/genesys/d7e0b98d-b487-49f2-b2b0-fd25e16xxxxx"
        }
    },
    {
        "timestamp": "2025-05-27T03:40:57.603Z",
        "debugTitle": "Schedule_Appointment",
        "debugMessage": "intent node processing is completed",
        "debugLevel": "Info",
        "metaInfo": {
            "channel": "genesys",
            "identity": "67e125c59ec655b7448eb65b/genesys/d7e0b98d-b487-49f2-b2b0-fd25e1xxxxx"
        }
    },
    {
        "timestamp": "2025-05-27T03:42:31.009Z",
        "debugTitle": "welcomedialog",
        "debugMessage": "intent node processing is completed",
        "debugLevel": "Info",
        "metaInfo": {
            "channel": "genesys",
            "identity": "67e125c59ec655b7448eb65b/genesys/d7e0b98d-b487-49f2-b2b0-fd25e16xxxxx"
        }
    },
    {
        "timestamp": "2025-05-27T03:42:31.165Z",
        "debugTitle": "menuCheck",
        "debugMessage": "Script node execution successful",
        "debugLevel": "info",
        "debugDetail": "{\"title\":\" \",\"body\":\"\",\"updatedContext\":{\"bot\":\"Master Bot Flow\",\"botid\":\"st-bebdb320-9f69-561d-aeb0-c45169axxxxx\",\"taskid\":\"dg-9eaa1774-2caf-52bb-b112-f4d69898fb0b\",\"intent\":\"welcomedialog\",\"intentType\":\"dialog\",\"intentDescription\":\"kgvsdialog\",\"invocationSource\":{\"type\":\"userInputMatch\"},\"entities\":{},\"entityErrorCount\":{},\"amendEntities\":{},\"history\":[],\"ccId\":\"u-700db2ea-12eb-590f-9a5b-e487f1axxxxx:st-bebdb320-9f69-561d-aeb0-c45169axxxxx\",\"currentLanguage\":\"en\",\"dialog_tone\":[{\"tone_name\":\"positive\",\"level\":1,\"count\":4}],\"currentTraits\":[],\"userInputs\":{\"originalInput\":{\"sentence\":\"Hi\",\"spellCorrectedSentence\":\"Hi\",\"sentenceType\":\"statement\",\"timestamp\":1748331750940}},\"currentTags\":{\"tags\":[\"welcomedialog\"]},\"NLAnalysis\":{\"userInput\":\"Hi\",\"intents\":{\"successIntents\":[{\"identifyingEngine\":\"FM\",\"intent\":\"welcomedialog\",\"type\":\"dialogTask\",\"fm\":8930,\"ml\":0,\"rr\":0,\"matchType\":\"definite\"}],\"eliminatedIntents\":[{\"intent\":\"Create Booking\",\"type\":\"dialogTask\",\"fm\":0,\"ml\":0,\"rr\":0}],\"nerInfo\":[]}},\"traversedIntents\":[{\"name\":\"Schedule Appointment\",\"dialogId\":\"dg-88cc05db-7a03-5b03-b686-f3cbeaxxxxxx\"}],\"onHoldTasks\":[],\"endOfTask\":{\"endOfTaskReason\":\"Cancelled_Interruption_Initiated\",\"intentType\":\"dialog\",\"taskName\":\"Schedule Appointment\",\"lastNode\":\"nd-ais-f11fba7c-c8f2-44dd-b09f-3f40exxxxxxx\",\"lastNodeName\":\"CollectionAppointmentDetails\"},\"historicTags\":[{\"tags\":[\"Schedule Appointment\",\"Schedule_Appointment\"]}],\"message_tone\":[{\"tone_name\":\"positive\",\"level\":1,\"count\":1}],\"session\":{\"EnterpriseContext\":{},\"BotContext\":{},\"UserContext\":{\"workinghours\":{\"workdays\":\"mon,tue,wed,thu,fri\",\"workstart\":\"8:00 AM\",\"workend\":\"5:00 PM\"},\"profImage\":\"no-avatar\",\"profColour\":\"#ff4500\",\"jTitle\":\"\",\"dept\":\"\",\"activationStatus\":\"active\",\"firstName\":\"\",\"lastName\":\"\",\"orgId\":\"o-33749baa-f662-5ae8-b506-4b3bfxxxxxx\",\"_id\":\"u-700db2ea-12eb-590f-9a5b-e487f1a644f3\",\"accountId\":\"5ff6ff6f2327934e5bxxxxxx\",\"identities\":[{\"val\":\"67e125c59ec655b7448xxxxx/genesys/d7e0b98d-b487-49f2-b2b0-fd25e16xxxxx\",\"type\":\"mapped\"}]},\"UserSession\":{},\"BotUserSession\":{\"_metaInfo\":{},\"lastMessage\":{\"channel\":\"genesys\",\"messagePayload\":{\"botId\":\"Master Bot Flow\",\"botVersion\":\"1\",\"botSessionId\":\"e642f3a7-6c6d-45a6-b1db-8e75f71xxxxx\",\"inputMessage\":{\"type\":\"Text\",\"text\":\"Hi\"},\"languageCode\":\"en-us\",\"botSessionTimeout\":4320,\"chatBot\":{\"id\":\"st-bebdb320-9f69-561d-aeb0-c45169axxxxx\",\"name\":\"Master Bot Flow\"},\"genesysConversationId\":\"d7e0b98d-b487-49f2-b2b0-fd25e169xxxx\",\"reqId\":\"gcr-a4ad4f16-6840-554a-9b06-bf117baxxxxx\"}},\"conversationSessionId\":\"68356afc118f9d4f41xxxxxx\",\"lastUserMessageTime\":\"2025-05-27T07:42:28.931Z\",\"channels\":[{\"type\":\"genesys\",\"from\":\"67e125c59ec655b744xxxxxx/genesys/d7e0b98d-b487-49f2-b2b0-fd25e16xxxxx\",\"to\":\"d7e0b98d-b487-49f2-b2b0-fd25e16xxxxx\",\"body\":\"Hi\",\"streamId\":\"st-bebdb320-9f69-561d-aeb0-c45169axxxxx\",\"handle\":{\"channelId\":\"genesys\",\"user\":\"d7e0b98d-b487-49f2-b2b0-fd25e1xxxxxx\",\"channelData\":{\"botId\":\"Master Bot Flow\",\"botVersion\":\"1\",\"botSessionId\":\"e642f3a7-6c6d-45a6-b1db-8e75f71xxxxx\",\"inputMessage\":{\"type\":\"Text\",\"text\":\"Hi\"},\"languageCode\":\"en-us\",\"botSessionTimeout\":4320,\"chatBot\":{\"id\":\"st-bebdb320-9f69-561d-aeb0-c45169adxxxx\",\"name\":\"Master Bot Flow\"},\"genesysConversationId\":\"d7e0b98d-b487-49f2-b2b0-fd25e16xxxxx\",\"reqId\":\"gcr-a4ad4f16-6840-554a-9b06-bf117ba62781\"}},\"enable\":true,\"message\":\"The bot is disabled via Genesys Cloud CX Messaging. You can still talk to the bot via Web/Mobile Client, IVR, Genesys Cloud CX Messaging, Twilio.\",\"activeChannels\":\"Web/Mobile Client,IVR,Genesys Cloud CX Messaging,Twilio.\",\"tokens\":[],\"__userInputTime\":\"2025-05-27T07:42:28.923Z\",\"__loopCount\":0,\"userId\":\"u-700db2ea-12eb-590f-9a5b-e487f1axxxxx\",\"requestId\":\"ms-efe55fb2-f023-5bcd-b287-dc5aa66xxxxx8\",\"botLanguage\":\"en\",\"requestContext\":{\"isRuntime\":true}}],\"isReturningUser\":false},\"opts\":{\"userId\":\"u-700db2ea-12eb-590f-9a5b-e487f1axxxxx\",\"streamId\":\"st-bebdb320-9f69-561d-aeb0-c45169axxxxx\"},\"deleteKeys\":{}},\"updatedOn\":\"2025-05-27T07:42:30.955Z\",\"intentName\":\"welcomedialog\",\"currentNodeId\":\"script26\",\"currentNodeName\":\"menuCheck\",\"previousNodeId\":\"intent0\",\"previousNodeName\":\"welcomedialog\",\"currentNodeType\":\"script\",\"contextId\":\"dcx-84d7b2aa-a32d-5277-a08c-786ebffxxxxx\"},\"metaTags\":{\"UserLevelTags\":[],\"SessionLevelTags\":[],\"MessageLevelTags\":[],\"referenceLevelTags\":[]},\"contextTags\":[\"welcomedialog\"],\"removeContextTags\":[],\"debugLogs\":[],\"textTranslations\":[],\"tokenIdpsToExpire\":[],\"clearAllAuthTokens\":false,\"channelActions\":{},\"isDeveloper\":false,\"debugMessage\":\"menuCheck\",\"contextId\":\"dcx-84d7b2aa-a32d-5277-a08c-786ebffxxxxx\"}",
        "metaInfo": {
            "channel": "genesys",
            "identity": "67e125c59ec655b744xxxxxxx/genesys/d7e0b98d-b487-49f2-b2b0-fd25e1xxxxxxx"
        }
    },
    {
        "timestamp": "2025-05-27T03:42:31.230Z",
        "debugTitle": "menuCheck",
        "debugMessage": "script node processing is completed",
        "debugLevel": "Info",
        "metaInfo": {
            "channel": "genesys",
            "identity": "67e125c59ec655b744xxxxxx/genesys/d7e0b98d-b487-49f2-b2b0-fd25e16xxxxx"
        }
    },
    {
        "timestamp": "2025-05-27T03:42:31.565Z",
        "debugTitle": "titlesConfig",
        "debugMessage": "Script node execution successful",
        "debugLevel": "info",
        "debugDetail": "{\"title\":\" \",\"body\":\"\",\"updatedContext\":{\"bot\":\"Master Bot Flow\",\"botid\":\"st-bebdb320-9f69-561d-aeb0-c45169axxxxx\",\"taskid\":\"dg-9eaa1774-2caf-52bb-b112-f4d6989xxxxx\",\"intent\":\"welcomedialog\",\"intentType\":\"dialog\",\"intentDescription\":\"kgvsdialog\",\"invocationSource\":{\"type\":\"userInputMatch\"},\"entities\":{},\"entityErrorCount\":{},\"amendEntities\":{},\"history\":[],\"ccId\":\"u-700db2ea-12eb-590f-9a5b-e487f1xxxxxx:st-bebdb320-9f69-561d-aeb0-c45169axxxxx\",\"currentLanguage\":\"en\",\"dialog_tone\":[{\"tone_name\":\"positive\",\"level\":1,\"count\":4}],\"currentTraits\":[],\"userInputs\":{\"originalInput\":{\"sentence\":\"Hi\",\"spellCorrectedSentence\":\"Hi\",\"sentenceType\":\"statement\",\"timestamp\":1748331750940}},\"currentTags\":{\"tags\":[\"welcomedialog\"]},\"NLAnalysis\":{\"userInput\":\"Hi\",\"intents\":{\"successIntents\":[{\"identifyingEngine\":\"FM\",\"intent\":\"welcomedialog\",\"type\":\"dialogTask\",\"fm\":8930,\"ml\":0,\"rr\":0,\"matchType\":\"definite\"}],\"eliminatedIntents\":[{\"intent\":\"Create Booking\",\"type\":\"dialogTask\",\"fm\":0,\"ml\":0,\"rr\":0}],\"nerInfo\":[]}},\"traversedIntents\":[{\"name\":\"welcomedialog\",\"dialogId\":\"dg-9eaa1774-2caf-52bb-b112-f4d6989xxxxx\"}],\"onHoldTasks\":[],\"endOfTask\":{\"endOfTaskReason\":\"Cancelled_Interruption_Initiated\",\"intentType\":\"dialog\",\"taskName\":\"Schedule Appointment\",\"lastNode\":\"nd-ais-f11fba7c-c8f2-44dd-b09f-3f40e68xxxxx\",\"lastNodeName\":\"CollectionAppointmentDetails\"},\"historicTags\":[{\"tags\":[\"Schedule Appointment\",\"Schedule_Appointment\"]}],\"message_tone\":[{\"tone_name\":\"positive\",\"level\":1,\"count\":1}],\"updatedOn\":\"2025-05-27T07:42:31.347Z\",\"intentName\":\"welcomedialog\",\"currentNodeId\":\"script18\",\"currentNodeName\":\"titlesConfig\",\"previousNodeId\":\"message16\",\"previousNodeName\":\"welMsg1\",\"currentNodeType\":\"script\",\"contextId\":\"dcx-84d7b2aa-a32d-5277-a08c-786ebffxxxxx\",\"isDeveloper\":false,\"session\":{\"EnterpriseContext\":{},\"BotContext\":{},\"UserContext\":{\"workinghours\":{\"workdays\":\"mon,tue,wed,thu,fri\",\"workstart\":\"8:00 AM\",\"workend\":\"5:00 PM\"},\"profImage\":\"no-avatar\",\"profColour\":\"#ff4500\",\"jTitle\":\"\",\"dept\":\"\",\"activationStatus\":\"active\",\"firstName\":\"\",\"lastName\":\"\",\"orgId\":\"o-33749baa-f662-5ae8-b506-4b3bf7xxxxxx\",\"_id\":\"u-700db2ea-12eb-590f-9a5b-e487f1axxxxx\",\"accountId\":\"5ff6ff6f2327934e5b7xxxxx\",\"identities\":[{\"val\":\"67e125c59ec655b7448xxxxx/genesys/d7e0b98d-b487-49f2-b2b0-fd25e169xxxx\",\"type\":\"mapped\"}]},\"UserSession\":{},\"BotUserSession\":{\"_metaInfo\":{},\"lastMessage\":{\"channel\":\"genesys\",\"messagePayload\":{\"botId\":\"Master Bot Flow\",\"botVersion\":\"1\",\"botSessionId\":\"e642f3a7-6c6d-45a6-b1db-8e75f7xxxxxx\",\"inputMessage\":{\"type\":\"Text\",\"text\":\"Hi\"},\"languageCode\":\"en-us\",\"botSessionTimeout\":4320,\"chatBot\":{\"id\":\"st-bebdb320-9f69-561d-aeb0-c45169axxxxx\",\"name\":\"Master Bot Flow\"},\"genesysConversationId\":\"d7e0b98d-b487-49f2-b2b0-fd25e16xxxxx\",\"reqId\":\"gcr-a4ad4f16-6840-554a-9b06-bf117ba62781\"}},\"conversationSessionId\":\"68356afc118f9d4f41df07f5\",\"lastUserMessageTime\":\"2025-05-27T07:42:28.931Z\",\"channels\":[{\"type\":\"genesys\",\"from\":\"67e125c59ec655b7448xxxxx/genesys/d7e0b98d-b487-49f2-b2b0-fd25e16xxxxx\",\"to\":\"d7e0b98d-b487-49f2-b2b0-fd25e16xxxxx\",\"body\":\"Hi\",\"streamId\":\"st-bebdb320-9f69-561d-aeb0-c45169xxxxxx\",\"handle\":{\"channelId\":\"genesys\",\"user\":\"d7e0b98d-b487-49f2-b2b0-fd25e16xxxxx\",\"channelData\":{\"botId\":\"Master Bot Flow\",\"botVersion\":\"1\",\"botSessionId\":\"e642f3a7-6c6d-45a6-b1db-8e75f71xxxxx\",\"inputMessage\":{\"type\":\"Text\",\"text\":\"Hi\"},\"languageCode\":\"en-us\",\"botSessionTimeout\":4320,\"chatBot\":{\"id\":\"st-bebdb320-9f69-561d-aeb0-c45169axxxxx\",\"name\":\"Master Bot Flow\"},\"genesysConversationId\":\"d7e0b98d-b487-49f2-b2b0-fd25e16xxxxx\",\"reqId\":\"gcr-a4ad4f16-6840-554a-9b06-bf117baxxxxx\"}},\"enable\":true,\"message\":\"The bot is disabled via Genesys Cloud CX Messaging. You can still talk to the bot via Web/Mobile Client, IVR, Genesys Cloud CX Messaging, Twilio.\",\"activeChannels\":\"Web/Mobile Client,IVR,Genesys Cloud CX Messaging,Twilio.\",\"tokens\":[],\"__userInputTime\":\"2025-05-27T07:42:28.923Z\",\"__loopCount\":0,\"userId\":\"u-700db2ea-12eb-590f-9a5b-e487f1axxxxx\",\"requestId\":\"ms-efe55fb2-f023-5bcd-b287-dc5aa66xxxxx\",\"botLanguage\":\"en\",\"requestContext\":{\"isRuntime\":true}}],\"isReturningUser\":false},\"opts\":{\"userId\":\"u-700db2ea-12eb-590f-9a5b-e487f1axxxxx\",\"streamId\":\"st-bebdb320-9f69-561d-aeb0-c45169axxxxx\"},\"deleteKeys\":{}},\"counter\":0,\"taskList\":[{\"title\":\"Get weather updates\",\"value\":\"Get weather updates\",\"synonyms\":[\"\\\"Get weather updates\\\"\"]},{\"title\":\"Active Covid Cases\",\"value\":\"Active Covid Cases\",\"synonyms\":[\"\\\"Active Covid Cases\\\"\",\"\\\"Covid Cases\\\"\"]},{\"title\":\"Company Stock Value\",\"value\":\"Company Stock Value\",\"synonyms\":[\"\\\"Company Stock Value\\\"\",\"\\\"Stock values\\\"\"]},{\"title\":\"Create UserLogin\",\"value\":\"Create UserLogin\",\"synonyms\":[\"\\\"Create UserLogin\\\"\"]},{\"title\":\"Flight Status \",\"value\":\"Flight Status \",\"synonyms\":[\"\\\"Flight Status \\\"\"]},{\"title\":\"Show More\",\"value\":\"Show More\",\"synonyms\":[\"\\\"Show More\\\"\"]}]},\"metaTags\":{\"UserLevelTags\":[],\"SessionLevelTags\":[],\"MessageLevelTags\":[],\"referenceLevelTags\":[]},\"contextTags\":[\"welcomedialog\"],\"removeContextTags\":[],\"debugLogs\":[],\"textTranslations\":[],\"tokenIdpsToExpire\":[],\"clearAllAuthTokens\":false,\"channelActions\":{},\"isDeveloper\":false,\"debugMessage\":\"titlesConfig\",\"contextId\":\"dcx-84d7b2aa-a32d-5277-a08c-786ebffexxxx\"}",
        "metaInfo": {
            "channel": "genesys",
            "identity": "67e125c59ec655b7448xxxxxx/genesys/d7e0b98d-b487-49f2-b2b0-fd25e1xxxxxx"
        }
    },
    {
        "timestamp": "2025-05-27T03:42:31.683Z",
        "debugTitle": "titlesConfig",
        "debugMessage": "script node processing is completed",
        "debugLevel": "Info",
        "metaInfo": {
            "channel": "genesys",
            "identity": "67e125c59ec655b7448xxxxx/genesys/d7e0b98d-b487-49f2-b2b0-fd25e16xxxxx"
        }
    },
    {
        "timestamp": "2025-05-27T03:42:44.793Z",
        "debugTitle": "Schedule_Appointment",
        "debugMessage": "intent node processing is completed",
        "debugLevel": "Info",
        "metaInfo": {
            "channel": "genesys",
            "identity": "67e125c59ec655b7448xxxxx/genesys/d7e0b98d-b487-49f2-b2b0-fd25e16xxxxx"
        }
    },
    {
        "timestamp": "2025-05-27T03:45:25.983Z",
        "debugTitle": "CollectionAppointmentDetails",
        "debugMessage": "aiassist node processing is completed",
        "debugLevel": "Info",
        "metaInfo": {
            "channel": "genesys",
            "identity": "67e125c59ec655b7448xxxxx/genesys/d7e0b98d-b487-49f2-b2b0-fd25e16xxxxx"
        }
    }
]

```