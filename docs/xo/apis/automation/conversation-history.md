# Conversation History API

To fetch the conversational messages between the bot and user in reverse chronological order. This API supports pagination. You can provide offset/skip and limit to get a certain number of messages at a time.

!!! note

    The Conversation History API provides the time in UTC format.

<table>
  <tr>
   <td><strong>Method</strong>
   </td>
   <td>GET and POST
   </td>
  </tr>
  <tr>
   <td><strong>Endpoint</strong>
   </td>
   <td>This API has two versions for GET and POST methods. The v1 of the API includes messages associated with all tasks, and it has a maximum limit of 100 messages per request. The v2 of the API does not include the messages related to Alert and Action tasks, and it has a maximum limit of 10,000 messages per request.
<p>
<strong>GET Method</strong><p>Version 1: <p><code>https://{{host}}/api/public/bot/{{botId}}/getMessages?userId={{userId}}&limit=10&dateFrom=2023-05-20&dateTo=2023-05-25</code><p>Version 2: <p><code>https://{{host}}/api/public/bot/{{botId}}/getMessagesV2?userId={{userId}}&limit=10&dateFrom=2023-05-20&dateTo=2023-05-25</code>
<p>
<strong>Note</strong>: The GET method shows the RTM interactions by default. To get the channel-specific interaction, use the channelType parameter in the GET method. For the channelType parameter values, see <a href="#Request_Body_Parameters">Request Body Parameters</a> section.
<p>
<strong>POST Method</strong><p>Version 1:<p>
<code>https://{{host}}/api/public/bot/{{botId}}/getMessages </code>and <code>https://{{host}}/api/public/getMessages</code> for Bot Admin Console.
<p>Version 2:<p>
<code>https://{{host}}/api/public/bot/{{botId}}/getMessagesV2</code>
   </td>
  </tr>
  <tr>
   <td><strong>accept-encoding</strong>
   </td>
   <td><code>gzip, deflate, br</code>
<p>
This allows the server to compress the response using any of these algorithms (gzip, deflate, or Brotli) before sending it back, which makes the response size smaller and faster to transmit over the network, thereby improving the overall performance of the API communication.
<p>
<strong>Note:</strong> We recommend using this header element in v2 of the GET and the POST methods.
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

<li>Bot Builder: Chat History \
OR

<li>Admin Console: Bot Analytics > Chat History
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
   <td><strong>REQUIRED/OPTIONAL</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
  </tr>
  <tr>
   <td>host
   </td>
   <td>required
   </td>
   <td>Environment URL, for example, https://platform.kore.ai
   </td>
  </tr>
  <tr>
   <td>botId
   </td>
   <td>optional
   </td>
   <td>Bot ID or Stream ID. You can access it from the General Settings page of the bot.
   </td>
  </tr>
</table>



## Sample Request

**Sample Request for GET Method**

Version 1:


```json
curl -X GET \
'https://{{host}}/api/public/bot/{{botId}}/getMessages?userId={{userId}}&limit=10&dateFrom=2023-05-20&dateTo=2023-05-25' \
--header 'auth: {{YOUR_JWT_ACCESS_TOKEN}}'
```


Version 2:


```json
curl -X GET --compressed --location \
'https://{{host}}/api/public/bot/{{botId}}/getMessagesV2?userId={{userId}}&limit=10&dateFrom=2023-05-20&dateTo=2023-05-25' \
--header 'accept-encoding: gzip, deflate, br' \
--header 'Content-Type: application/json' \	
--header 'auth: {{YOUR_JWT_ACCESS_TOKEN}}'
```


**Sample Request for POST method**

Version 1:


```json
curl -X POST \
  'https://{{host}}/api/public/bot/{{botId}}/getMessages' \
  --header 'auth: {{YOUR_JWT_ACCESS_TOKEN}}' \
  --header 'Content-Type: application/json' \
  --data '{
    "userId"           : "u-xxxx-xxxxx-xxxx",
    "skip"             : 0,                           
    "limit"            : 100,                       
    "dateFrom"         : "2019-04-01",
    "dateTo"           : "2019-04-01",
    "channelType"      : "rcs",
    "sessionId"        : ["5eadxxxxxxxxxxxxx","5ebxxxxxxxxxxxxxxx"],
    "includeTraceId"  : "true"
    "tags"	       : {
    "and"    : [
		      {
		        "name"  : "tagname",
		        "values"  : ["tagvalue1","tagvalue2"],
                        "type"    : "tagtype"
                      },
                     {
                        "name"  : "tagname",
    		        "values"  : ["tagvalue1","tagvalue2"],
                        "type"    : "tagtype"  
                     }
                     ]	
                }
          }'
```


Version 2:


```json
 curl -X POST --compressed --location \
  'https://{{host}}/api/public/bot/{{botId}}/getMessagesV2' \
  --header 'accept-encoding: gzip, deflate, br' \
  --header 'Content-Type: application/json' \
  --header 'auth: {{YOUR_JWT_ACCESS_TOKEN}}' \
  --data '{
    "userId"          : "u-xxxx-xxxxx-xxxx",
    "skip"            : 0,                           
    "limit"           : 100,                       
    "dateFrom"        : "2019-04-01",
    "dateTo"          : "2019-04-01",
    "channelType"     : "rcs",
    "sessionId"       : ["5eadxxxxxxxxxxxxx","5ebxxxxxxxxxxxxxxx"],
    "includeTraceId"  : "true"
    "tags"	      : {
    "and"   : [
			   {
			       "name"    : "tagname",
			       "values"  : ["tagvalue1","tagvalue2"],
                               "type"    : "tagtype"
                           },
                           {
                              "name"    : "tagname",
    			      "values"  : ["tagvalue1","tagvalue2"],
                              "type"    : "tagtype"  	
                          }
                          ]	
                    }
            }'
```



## Request Query Parameters


<table>
  <tr>
   <td><strong>PARAMETER</strong>
   </td>
   <td><strong>REQUIRED/OPTIONAL</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
  </tr>
  <tr>
   <td>userId
   </td>
   <td>required for GET
<p>
optional for POST
   </td>
   <td>The ID of the user whose conversation history to access. Can be user email id or enterprise assigned unique id.
   </td>
  </tr>
  <tr>
   <td>skip/offset
   </td>
   <td>optional
   </td>
   <td>The number of sessions to be skipped.
   </td>
  </tr>
  <tr>
   <td>limit
   </td>
   <td>optional
   </td>
   <td>The number of messages to be shown on each page.
   </td>
  </tr>
  <tr>
   <td>channelType
   </td>
   <td>optional
   </td>
   <td>Channel type name for which you want to see the interactions; the default is “rtm” .
<p>
Accepted channel types are:
<ul>

<li>“skypeforbusiness”,

<li>“msteams”,

<li>“twitter”,

<li>“spark”,

<li>“rtm”,

<li>“facebook”,

<li>“slack”,

<li>“skype”,

<li>“kore”,

<li>“email”,

<li>“sms”,

<li>“wfacebook”,

<li>“ringcentral”,

<li>“jabber”,

<li>“yammer”,

<li>“alexa”,

<li>“twiliovoice”,

<li>“telegram”,

<li>“ivr”,

<li>“ivrVoice”,

<li>“smartassist”,

<li>“line”,

<li>“liveperson”,

<li>“googleactions”,

<li>“hangoutchat”,

<li>“mattermost”,

<li>“rcs”.

<p>
<strong>Note</strong>: In case of multi-webhook channel configuration, “ivr” gives the conversations for the first WebHook instance. For other WebHoo instance, specify the<code>ivrInstID</code>, you can get it from the WebHook URL which is of the form: <code>{{host_url}}/chatbot/hooks/{{BotId}}/hookInstance/{{ivrInstID}}</code>)
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>dateFrom
   </td>
   <td>optional
   </td>
   <td>Accepts the yyyy-mm-dd date format.
<p>
(or) yyyy-mm-ddThh:mm:ss.msZ
<p>
eg:2019-04-01 (or) 2019-04-01T13:25:58.515ZIf not provided, calculated as 7 days behind <em>dateTo</em>.
<p>
<strong>Note</strong>: This field cannot be used in combination with msgId.
   </td>
  </tr>
  <tr>
   <td>dateTo
   </td>
   <td>optional
   </td>
   <td>Accepts the yyyy-mm-dd date format.
<p>
(or) yyyy-mm-ddThh:mm:ss.msZ
<p>
eg:2019-04-01 (or) 2019-04-01 T13:26:05.598ZIf not provided, calculated as 7 days from <em>dateFrom</em>. If <em>dateFrom</em> is also not provided then set to <strong>Today</strong>.
<p>
<strong>Note</strong>: This field cannot be used in combination with msgId
   </td>
  </tr>
  <tr>
   <td>getAgentsInfo
   </td>
   <td>optional
   </td>
   <td>Accepts true or false. If the value is true then the agent info is fetched and put in the author object of the agent. If the value is false or the field is not provided then agent info is not passed in the response.
   </td>
  </tr>
  <tr>
   <td>sessionId
   </td>
   <td>optional
   </td>
   <td>A specific Session-Id if known. <a href="../get-sessions-history/">Refer here to obtain the session id.</a>
   </td>
  </tr>
</table>


!!! note

    The duration between _dateTo_ and _dateFrom_ should be less than 7 days, else an error will be thrown.


## Request Body Parameters


<table>
  <tr>
   <td><strong>PARAMETER</strong>
   </td>
   <td><strong>REQUIRED/OPTIONAL</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
  </tr>
  <tr>
   <td>skip/offset
   </td>
   <td>optional
   </td>
   <td>The number of sessions to be skipped.
   </td>
  </tr>
  <tr>
   <td>limit
   </td>
   <td>optional
   </td>
   <td>The number of messages to be shown on each page.
   </td>
  </tr>
  <tr>
   <td>forward
   </td>
   <td>optional
   </td>
   <td>Takes string values - "true" or "false". Specifies the direction of the messages to be retrieved.
<ul>

<li>If the value is "true", then the conversation history is retrieved in the order old to the most recent one.

<li>If the value is "false," then the conversation history is retrieved in reverse order, from the most recent to the oldest message.
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>msgId
   </td>
   <td>optional
   </td>
   <td>A specific Message-Id if known. This would fetch the records starting from that message either forward or backward depending upon the direction (see below) requested.
<p>
In case only the specific conversation is required, set the limit to 1
<p>
<span style="text-decoration:underline;">Note</span>: This field cannot be used in combination with dateFrom and dateTo.
   </td>
  </tr>
  <tr>
   <td>includeTraceId
   </td>
   <td>optional
   </td>
   <td>Whether to include the trace ID in the response. A trace ID is a unique ID assigned to each incoming message.  Possible values of the parameter:
<ul>

<li><em>true</em>: Include the trace ID in the response.

<li><em>false</em>: Default value, indicates not to include the trace ID in the response.
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>direction
   </td>
   <td>optional when msgId is given
   </td>
   <td>
<ul>

<li>&lt;0 reverse

<li>=0 bidirectional

<li>>0 forward
Default direction is forward.
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>sessionId
   </td>
   <td>optional
   </td>
   <td>A specific Session-Id if known. <a href="../get-sessions-history/">Refer here to obtain the session id.</a>
   </td>
  </tr>
  <tr>
   <td>tags
   </td>
   <td>optional
   </td>
   <td>Meta tags to filter the conversations.
   </td>
  </tr>
  <tr>
   <td>getAgentsInfo
   </td>
   <td>optional
   </td>
   <td>Accepts true or false. If the value is true then the agent info is fetched and put in the author object of the agent. If the value is false or the field is not provided then agent info is not passed in the response.
   </td>
  </tr>
</table>

## Sample Response

**Sample response for the GET method**


```json
{
"total": 1,
"moreAvailable": false,
"icon": "https://dlnwzkim0wron.cloudfront.net/f-87c47629-7exxxxxxxx-a807ccfb1cf0.png",
"messages": [
{
"_id": "ms-fee996b9-0485-55a3-bf42-417c1272aff4",
            "channels": [
                {
                    "type": "rtm",
                    "channelUId": "alan.walker@abc.com"
                }
            ],
            "type": "incoming",
            "status": "received",
            "createdBy": "u-1bc0993f-e0d6-5589-973d-6fe2663de2d4",
            "lmodifiedBy": "u-1bc0993f-e0d6-5589-973d-6fe2663de2d4",
            "createdOn": "2023-07-18T09:46:46.925Z",
            "lmodifiedOn": "2023-07-18T09:46:46.925Z",
            "botId": "st-369f9021-2a85-5b32-9005-63139d57c2e5",
            "orgId": "o-f4b49c0a-f027-57bf-aef0-b68ad9b51ee2",
            "accountId": "6461f97ed43763474b34e56e",
            "isBB": 1,
            "ms": 1,
            "chnl": "rtm",
            "isD": 1,
            "components": [
                {
                    "_id": "cp-ae11791d-118f-53f1-8905-9bc9f03fdece",
                    "cT": "text",
                    "data": {
                        "text": "hi"
                    },
                    "thumbnails": []
                }
            ],
            "timestampValue": 1689673606939,
            "__v": 0,
            "lang": "en",
            "sT": 1,
            "sessionId": "64b65f87277b464507f778c0",
            "cluster_id": "Others",
            "resourceid": "messagestore",
            "tags": {
                "messageTags": [],
                "userTags": [
                    {
                        "value": "Alan",
                        "name": "Alan Walker"
                    }
                ],
                "sessionTags": []
            },
            "traceId": "5371b61d-b1bb-4432-80de-7430772b0cfb"
        },
        {
            "_id": "ms-5436a303-0d8c-58e8-8ad3-33bf5bcefcb7",
            "channels": [
                {
                    "type": "rtm",
                    "channelUId": "alan.walker@abc.com"
                }
            ],
            "type": "outgoing",
            "status": "pending",
            "createdOn": "2023-07-18T09:46:47.497Z",
            "lmodifiedOn": "2023-07-18T09:46:47.497Z",
            "createdBy": "u-1bc0993f-e0d6-5589-973d-6fe2663de2d4",
            "components": [
                {
                    "_id": "cp-c035b2f4-10f2-5294-b655-c2d6273e0154",
                    "cT": "text",
                    "data": {
                        "text": "Hey :)"
                    },
                    "thumbnails": []
                }
            ],
            "botId": "st-369f9021-2a85-5b32-9005-63139d57c2e5",
            "orgId": "o-f4b49c0a-f027-57bf-aef0-b68ad9b51ee2",
            "accountId": "6461f97ed43763474b34e56e",
            "isBB": 1,
            "ms": 1,
            "chnl": "rtm",
            "isD": 1,
            "lang": "en",
            "timestampValue": 1689673607507,
            "__v": 0,
            "sT": 1,
            "sessionId": "64b65f87277b464507f778c0",
            "resourceid": "messagestore",
            "tags": {
                "messageTags": [],
                "userTags": [
                    {
                        "value": "Alan",
                        "name": "Alan Walker"
                    }
                ],
                "sessionTags": []
            }
        },
```


**Sample Response from POST method:**


```json
{
  "total": 1,
  "moreAvailable": false,
  "messages"  : [
                {
                  "_id": "ms-xxxxxxxxxxxxxxxxxxxx",
                  "type": "incoming",
                  "status": "sent to cs",
                  "createdBy":"u-xxxxxxxxxxxxxxxxxxx",
                  "lmodifiedBy": u-xxxxxxxxxxxxxxxxxxx",
                  "lmodifiedOn": "2019-04-10T10:21:45.103Z",
                  "channels": [
                     {
                      "type": "rcs"
                        }
                     ],
                  "botId":"st-xxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
                  "orgId": "o-xxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
                  "accountId": "5xxxxxxxxxxxxxxxxxxxxxxxx",
                  "isBB": 0,
                  "ms": 1,
                  "channel": "rcs",
                  "components": [
                    {
                      "_id":"cp-xxxxxxxxxxx",
                      "cT": "text",
                      "data": {
                          "text": "23"
                           },
                      "thumbnails": []
                      }
                    ],
                    "createdOn": "2019-04-10T10:21:45.106Z",
                    "timestampValue": 1554891705106,
                    "__v": 0,
                    "sessionId": "5cadbefc6a81a71559f6bece"
               }
             ]
 }
```



## Response Body Parameters


<table>
  <tr>
   <td><strong>PARAMETER</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
  </tr>
  <tr>
   <td>total
   </td>
   <td>The total number of records identified as per the API request parameters. The response will include a maximum of X records. If more than X records are identified, then the ‘moreAvailable’ field in the response will have the value as ‘True’.
<p>
It is recommended to programmatically iterate the request by dynamically updating the values of the ‘skip’ and ‘limit’ parameters in the request.
   </td>
  </tr>
  <tr>
   <td>moreAvailable
   </td>
   <td>Indicates if the API has returned all the records or if more are available, based on the pagination criteria.
<p>
<strong>True</strong> if more records are available. <strong>False</strong> if there are no more records to be retrieved.
   </td>
  </tr>
  <tr>
   <td>icon
   </td>
   <td>The URL of the bot logo.
   </td>
  </tr>
  <tr>
   <td>messages
   </td>
   <td>Contains complete information about the message.
   </td>
  </tr>
  <tr>
   <td>messages._id
   </td>
   <td>The unique identifier for the message record.
   </td>
  </tr>
  <tr>
   <td>messages.traceId
   </td>
   <td>A unique identifier associated with each incoming message.
<p>
<strong>Note</strong>: The <strong>Trace ID</strong> is retained in the logs for 30 days. Once the <strong>Trace ID</strong> is expired, you see a tooltip message as ‘<code>Trace Id: Trace records for this message are not available</code>‘.
   </td>
  </tr>
  <tr>
   <td>messages.type
   </td>
   <td>The message type – incoming (user input) or outgoing (bot response).
   </td>
  </tr>
  <tr>
   <td>messages.status
   </td>
   <td>Processing status of the message: received, queued, in progress, delivered, or pending.
   </td>
  </tr>
  <tr>
   <td>messages.lmodifiedOn
   </td>
   <td>The last modified time for the record.
   </td>
  </tr>
  <tr>
   <td>messages.createdBy
   </td>
   <td>The user ID of the end user who was chatting with the bot.
   </td>
  </tr>
  <tr>
   <td>messages.channels
   </td>
   <td>The channels object provides additional information about the channel through which the conversation was initiated.
   </td>
  </tr>
  <tr>
   <td>messages.channels.type
   </td>
   <td>Name of the channel through which the conversation is initiated. The default is ‘rtm’.
   </td>
  </tr>
  <tr>
   <td>messages.channels.channelUId
   </td>
   <td>The end-user’s identity provided by the channel.
   </td>
  </tr>
  <tr>
   <td>messages.components
   </td>
   <td>Additional information about the message record.
   </td>
  </tr>
  <tr>
   <td>messages.components._id
   </td>
   <td>The unique id of the component.
   </td>
  </tr>
  <tr>
   <td>messages.components.cT
   </td>
   <td>Type of the user input (component type): text, audio, video, image, attachment, contact, task, filelink, location, email, alert, action, timeline, meeting, error, upgrade, NLResponse, or contextUpdate.
   </td>
  </tr>
  <tr>
   <td>messages.components.data
   </td>
   <td>The data object.
   </td>
  </tr>
  <tr>
   <td>messages.components.data.text
   </td>
   <td>The message shown to the user or the bot, depending on the message type.
   </td>
  </tr>
  <tr>
   <td>messages.components.thumbnails
   </td>
   <td>The thumbnails object.
   </td>
  </tr>
  <tr>
   <td>messages.components.thumbnails._id
   </td>
   <td>The unique id of the thumbnails.
   </td>
  </tr>
  <tr>
   <td>messages.components.thumbnails.width
   </td>
   <td>The width of the thumbnails.
   </td>
  </tr>
  <tr>
   <td>messages.components.thumbnails.height
   </td>
   <td>The height of the thumbnails.
   </td>
  </tr>
  <tr>
   <td>messages.components.thumbnails.size
   </td>
   <td>The size of the thumbnails.
   </td>
  </tr>
  <tr>
   <td>messages.components.thumbnails.url
   </td>
   <td>The URL of the thumbnails.
   </td>
  </tr>
  <tr>
   <td>messages.botId
   </td>
   <td>Bot ID or Stream ID.
   </td>
  </tr>
  <tr>
   <td>messages.orgId
   </td>
   <td>The organization ID to which the bot belongs to.
   </td>
  </tr>
  <tr>
   <td>messages.accountId
   </td>
   <td>The account id to which the bot belongs to.
   </td>
  </tr>
  <tr>
   <td>messages.isBB
   </td>
   <td>Informs whether the conversation was initiated from the Bot Builder; 1 for Yes, 0 for No.
   </td>
  </tr>
  <tr>
   <td>messages.isD
   </td>
   <td>Informs whether the conversation was initiated by a developer; 1 for Yes, 0 for No.
   </td>
  </tr>
  <tr>
   <td>messages.lang
   </td>
   <td>The conversation’s language.
   </td>
  </tr>
  <tr>
   <td>messages.ms
   </td>
   <td>Message source; enum[0,1,2,3]; 0-task alert, 1-text, 2-task(action), and 3-others.
   </td>
  </tr>
  <tr>
   <td>messages.chnl
   </td>
   <td>The end user’s conversation channel.
   </td>
  </tr>
  <tr>
   <td>messages.createdOn
   </td>
   <td>The record creation date.
   </td>
  </tr>
  <tr>
   <td>messages.timestampValue
   </td>
   <td>The creation date converted into the timestamp format.
   </td>
  </tr>
  <tr>
   <td>messages.__v
   </td>
   <td>The field is used for internal purposes. No specific significance.
   </td>
  </tr>
  <tr>
   <td>messages.resourceid
   </td>
   <td>The field is used for internal purposes. No specific significance.
   </td>
  </tr>
  <tr>
   <td>messages.tags
   </td>
   <td>Meta tags to filter the conversations.
   </td>
  </tr>
  <tr>
   <td>messages.tags.messageTags
   </td>
   <td>Message tags object; custom tags added to the message in the conversation.
   </td>
  </tr>
  <tr>
   <td>messages.tags.messageTags.value
   </td>
   <td>Tag’s value.
   </td>
  </tr>
  <tr>
   <td>messages.tags.messageTags.name
   </td>
   <td>Tag’s name.
   </td>
  </tr>
  <tr>
   <td>messages.tags.userTags
   </td>
   <td>User tags object; custom tags added to the user’s profile information.
   </td>
  </tr>
  <tr>
   <td>messages.tags.userTags.value
   </td>
   <td>Tag’s value.
   </td>
  </tr>
  <tr>
   <td>messages.tags.userTags.name
   </td>
   <td>Tag’s name.
   </td>
  </tr>
  <tr>
   <td>messages.tags.sessionTags
   </td>
   <td>Session tags object; custom tags added to the conversation session.
   </td>
  </tr>
  <tr>
   <td>messages.tags.sessionTags.value
   </td>
   <td>Tag’s value.
   </td>
  </tr>
  <tr>
   <td>messages.tags.sessionTags.name
   </td>
   <td>Tag’s name.
   </td>
  </tr>
</table>

