# Queue Size

To get the queueDetails by giving queueId and filters with the given stream Id.

<table>
  <tr>
   <td>Method
   </td>
   <td>POST
   </td>
  </tr>
  <tr>
   <td>Endpoint
   </td>
   <td><code>https://{host}/agentassist/api/v1/public/{{:streamId}}/monitor/</code>
<code>queueStatsById/{{:queueId}}</code>
   </td>
  </tr>
  <tr>
   <td>Content-Type
   </td>
   <td><code>application/json</code>
   </td>
  </tr>
  <tr>
   <td>Authorization
   </td>
   <td><code>auth: {{JWT}}</code>
See <a href="https://docs.kore.ai/smartassist/api/api-setup/#Generating_a_JWT_token">How to generate the JWT Token.</a>
   </td>
  </tr>
  <tr>
   <td>API Scope
   </td>
   <td>SmartAssist Analytics
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
   <td>Host
   </td>
   <td>The Environment URL. For example, https://smartassist.kore.ai
   </td>
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td>queueId
   </td>
   <td>You can get the queueId in the /queues GET API.
   </td>
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td>BotId
   </td>
   <td>BotId or StreamId. You can access it from the General Settings page of the bot.
   </td>
   <td>String, Required
   </td>
  </tr>
</table>

## Sample Request

```
curl --location 'https://smartassist.kore.ai/agentassist/api/v1/public/st-3bf09bef-f979-5489-b337-f465bd5d2f4/monitor/queueStatsById/qu-895dc0c-a83e-4d25-9517-dbb2ccda5920/' \
--header 'auth: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcHBJZCI6ImNzLTNmYzQwYTcyLThiNGUtNWNlMy1iY2E3LThjYTcwZTQxYTQwZCJ9.ssiizteAJB0pdV2BYhILSRp12TAJ2V4cHWzpjp3SU8I' \
--header 'accountId: 637368b4a1d031234ba63bbf' \
--header 'Content-Type: application/json' \
--data '{
"languages": ["en", "es"],
"channels": ["rtm", "msteams"]
}'
```

## Request Parameters

<table>
  <tr>
   <td><strong>PARAMETER</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
   <td><strong>REQUIRED/OPTIONAL</strong>
   </td>
   <td><strong>TYPE</strong>
   </td>
  </tr>
  <tr>
   <td>Channels
   </td>
   <td>To filter the results based on the channel. Only SmartAssist supported channels can be given and should be selected from the following:
[“rtm”, “ivr”, “sms”, “slack”, “facebook”, “kore”, “spark”, “skype”, “msteams”, “twitter”, “telegram”, “wfacebook”, “ringcentral”, “skypeforbusiness”, “jabber”, “yammer”, “whatsapp”, “line”, “liveperson”, “mattermost”, “wechat”, “web-sdk”, “rcs”, “skypeonprem”, “unblu”, “audiocodes”, “alexa”, “twiliovoice”, “ivrVoice”, “korevg”, “email”, “emailConnect”] “rtm” : Web/Mobile Client channel
“ivr” : agentassist channel
   </td>
   <td>Optional
   </td>
   <td>Array of strings
   </td>
  </tr>
  <tr>
   <td>Languages
   </td>
   <td>To filter the results based on the bot language i.e interaction language with the bot.
Only Smartassist supported languages can be selected and should be selected from the following:
[“en”, “de”, “es”, “fr”, “pt”, “it”, “zh_cn”, “zh_tw”, “id”, “ko”, “nl”, “ja”, “ar”, “fi”, “ru”, ‘pl”, “uk”, “sv”, “kk”, “nb”, “hi”, “te”, “ta”, “mr”, “ca”, “sl”, “ge” ]Here “en” : English
“de” : German
“es” : spanish
“fr” : french
“pt” : Portuguese
“it” : Indonesian
“zh_cn” : Chinese
“zh_tw” :
“id” : Indonesian
“ko” : Korean
“nl” : Dutch
“ja” : Japanese
“ar” : Arabic
“fi” : Finnish
“ru” : Russian
“pl” : Polish
“uk” : Ukrainian
“sv” : Swedish
“kk” : Kazakh
“nb” : Norwegian
“hi” : Hindi
“te” : Telugu
“ta” : Tamil
“mr” : Marathi
“ca” : Catalan
“sl” : Slovenian
“ge” : Georgia
   </td>
   <td>Optional
   </td>
   <td>Array of strings
   </td>
  </tr>
</table>

## Sample Response

```
[
    {
        "queueId": "qu-aa16c29-08b2-4948-aa00-a6a3547e57ab",
        "queueName": "Default Queue",
        "skills": [],
        "waiting": 0,
        "engaged": 0,
        "dropOff": 44,
        "agentStatus": {
            "available": 1,
            "offline": 0,
            "busy": 0,
            "away": 0
        },
        "noOfAgents": 1,
        "queueSummary": {
            "avgWait": 0,
            "maxWait": 0,
            "ASA": 0  // ASA - Average Speed to Answer
        }
    }
]
```