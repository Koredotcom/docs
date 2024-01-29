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
   <td><code>https://{{host}}/api/{{version}/{{BotID}}/debuglogs?identity={{identity}}&channelType={{channelType}}&minimumInfo=true&limit=5&offset=300&timezone={{timezone}}</code>
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
See <a href="https://developer.kore.ai/docs/bots/api-guide/apis/#Generating_the_JWT_Token">How to generate the JWT Token.</a>
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
   <td>Unique ID associated with the call.
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

## Sample Response


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
