# Events for the BotKit SDK

You can use the Kore.ai BotKit SDK to capture and handle events in the Bots Platform for better control and customization of the user’s experience with the Virtual Assistant that you are building. The following events are supported by the BotKit SDK:

* [onMessage](#onusermessage)
* [onWebhook](#onwebhook)
* [onAgentTransfer](#onagenttransfer)
* [onEventNode](#onevent)
* [onAlertNode](#onalert)
* [onVariableUpdate](#onvariableupdate)
* [onClientEvent](#onclientevent)

## onMessage

This event consists of the following two components:

* <span style="text-decoration:underline;">onUserMessage:</span> This event is triggered when a user sends a message to the assistant and it is received by the channel adapter. The user message is wrapped in this event and sent to the SDK.
* <span style="text-decoration:underline;">onBotMessage</span>: This event is triggered when any messages need to be sent to the user. These messages are sent to the SDK along with `context` object.

### onUserMessage

Syntax:

```javascript
on_user_message : function(requestId, data, callback)
```
Parameters:

* requestId – A unique ID for each message event.
* payload – A JSON response payload as follows:

 ```json
    {
   "message":"message sent by the assistant to the user",
   "taskId":"Dialog task Id",
   "nodeId":"current node id in the dialog flow",
   "channel":"channel name",
   "context":"context object"
    }
```

* callback – The function to call at event completion used to send the updated message and context back to the XO Platform.

Example: In the following code example for the onUserMessage event, the user message is evaluated for transfer to a live agent and transferred, otherwise, the message is passed on to the BotKit SDK for processing.

```javascript
/*
 * OnUserMessage event handler
 */
function onUserMessage(requestId, payload, callback){
    debug("user message", payload);
    var visitorId = _.get(payload, 'channel.from');
	visitorId = payload.context.session.UserContext._id;
	var entry = _map[visitorId];
	if (payload.message === "clearagent") // disconnect from LiveChat on user utterance
	{
		sdk.clearAgentSession(payload);
	}
    if(entry){//check for live agent
        //route to live agent
        var formdata = {};
        formdata.secured_session_id = entry.secured_session_id;
        formdata.licence_id = config.liveagentlicense;
        formdata.message = payload.message;
        return api.sendMsg(visitorId, formdata)
            .catch(function(e){
                console.error(e);
                delete userDataMap[visitorId];
                delete _map[visitorId];
                return sdk.sendBotMessage(payload, callback);
            });
    }
    else {
        return sdk.sendBotMessage(payload, callback);
    }
}
```

### onBotMessage

Syntax:

```javascript
on_bot_message : function(requestId, data, callback)
```

Parameters:

* requestId – A unique ID for each message event.
* payload – A JSON response payload as follows:

```json
{
   "message":"message sent to the user",
   "channel":"channel name",
   "context":"context object"
}
```

* callback – The function to call at event completion used to send the updated message and context back to the user.

Example: The following code snippet onBotMessage event evaluates the user message for content and then for message tone. If the message tone is greater than or equal to 2 for the angry tone, then the communication between the user and the assistant is switched to a live agent.

```javascript
/*
 * onBotMessage event handler
 */
function onBotMessage(requestId, payload, callback){
    debug("Bot Message Data",payload);
    console.log("in bot message");
    var visitorId = _.get(payload, 'channel.from');
    var entry = _map[visitorId];
    if(data.message.length === 0 || payload.message === '') {
        return;
    }
    var message_tone = _.get(payload, 'context.message_tone');console.log("message tone -----",message_tone);
    if(message_tone && message_tone.length> 0){
        var angry = _.filter(message_tone, {tone_name: 'angry'});
        if(angry.length){
            angry = angry[0];
            if(angry.level >=2){
              return  connectToAgent(requestId, data);
            }
        }
    }
    if(!entry)
    {
        sdk.sendUserMessage(payload, callback);
    }
}
```

## onWebHook

This event is triggered when the Kore NL Engine processes the Webhook node in the dialog flow. This event is sent to the SDK with `componentId` and context. The SDK can execute business logic and send the updated context back to the Platform. 

Syntax:

```javascript
on_webhook = function(requestId, componentId, payload, callback)
```

Parameters:

* requestId – A unique ID for each webhook event.
* componentId – The unique ID for the SDKWebhook node.
* payload – A JSON response payload as follows:

    ```json
    {
    "message":"message sent by the assistant to the XO Platform",
    "taskId":"Dialog task Id",
    "nodeId":"current node id in the dialog flow",
    "channel":"channel name",
    "context":"context object"
    }

    ```

* callback – The function to call at event completion used to send the updated message and context back to the XO Platform.

Examples: In the following example for the `on_webhook` event, two hotel names are returned as results as a response to user input.

```javascript
   //on_webhook handler
    on_webhook  : function(requestId, payload, componentId, callback) {
        if (componentId === 'sendResponse') {
          var hotels = {
            "hotels":[
                  "Taj Banjara",
                  "Novotel"
            ]
          };
          payload.context.hotelResults = hotels;
          callback(null,data);
        }
    }
```

In this example for the `on_webhook` event, for the _Flights Info_ node in a dialog task, either a list of departure or destination airports based on the requested date is returned based on the flow of the dialog, as a list of results displayed to the end user.

```javascript
on_webhook: function(requestId, payload, componentId, callback) {
        var context = payload.context;
        if (componentName === 'FlightsInfo') {
            var origin = context.entities.Source;
            var destination = context.entities.Dest;
            var departureDate = context.entities.Date;
            findFlights(origin, destination, departureDate)
                .then(function(flightResults) {
                    payload.context.flightResults = flightResults;
                    callback(null, data);
                });
        } else if (componentId === 'GetSourceAirports') {
            var searchTerm = context.entities.SourceName;
            findAirports(searchTerm)
                .then(function(airportResults) {
                    payload.context.sourceAirports = airportResults;
                    callback(null, data);
                });
        } else if (componentId === 'GetDestAirports') {
            var searchTerm = context.entities.DestName;
            findAirports(searchTerm)
                .then(function(airportResults) {
                    payload.context.destAirports = airportResults;
                    callback(null, data);
                });
        }
```

## onAgentTransfer

This event is triggered when the Kore NL Engine processes an Agent Transfer node in the dialog flow. This event is sent to the SDK with `requestId` and context. The SDK can execute a business logic to switch the user seamlessly to a Live Agent. Syntax:

```javascript
function onAgentTransfer(requestId, data, callback){
    connectToAgent(requestId, data, callback);
}
```

Parameters:

* requestId – A unique ID for each message event.
* payload – A JSON response payload as follows:

    ```json
    {
        OnAgentTransferPayload ","
        requestId ":1501244156289,"
        botId ":"st - b4a22e86 - e95b - 575 c - b888 - e106d083a251 ","
        callbackUrl ":"https://platform.kore.ai/api/botsdk/stream/st-b4a22e86-e95b-575c-b888-e106d083a251/serviceCallback/1501244156289","context": ...
    }
    ```

* callback – The function to call at event completion used to send the updated message and context back to the XO Platform.

Example: The following code snippet onAgentTransfer event connects the user to a Live Agent and passing the user message, bot message, and historical chat messages of the session.

```javascript
function connectToAgent(requestId, data, cb) {
    var formdata = {};
    console.log("userlog", JSON.stringify(data.context.session.UserContext._id));
    formdata.licence_id = config.liveagentlicense;
    formdata.welcome_message = "";
    var visitorId = _.get(data, 'channel.channelInfos.from');
    if (!visitorId) {
        visitorId = _.get(data, 'channel.from');
    }
    visitorId = data.context.session.UserContext._id;
    userDataMap[visitorId] = data;
    data.message = "An Agent will be assigned to you shortly!!!";
    var d = new Date();
    data.context.session.BotUserSession.startTime = new Date().toLocaleString();
    console.log("userlog", JSON.stringify(data.context.session));
    sdk.sendUserMessage(data, cb);
    formdata.welcome_message = "Link for user Chat history with the assistant : " + config.app.url + "/history/index.html?visitorId=" + visitorId;
    return api.initChat(visitorId, formdata)
        .then(function(res) {
            _map[visitorId] = {
                secured_session_id: res.secured_session_id,
                visitorId: visitorId,
                last_message_id: 0
            };
        });
}
```

## OnEvent

This event is triggered when Dialog Task or FAQ ends in the assistant and sends request ID and context to the SDK. 

Syntax: 
`on_event : function (requestId, data, callback)`

Parameters:

* requestId – A unique ID for each message event.
* data– A JSON response payload as shown in the example below:
* callback – The function to call after event completion; it is used to send the updated message and context back to the XO Platform.

Example:

```javascript
on_event : function (requestId, data, callback)
{
    return sdk.sendAlertMessage(data, callback);
}
```

The event adds the following code in the Data object sent to kit:

```json
"event":
{
"event Type": "endDialog"/ "endFAQ"
}
```

## OnAlert

This event is triggered when a user receives an alert. Syntax: on_alert : function (requestId, data, callback) Parameters:

* requestId – A unique ID for each message event.
* data– A JSON response payload.
* callback – The function to call at event completion; it is used to send the updated message and context back to the XO Platform.

Example:

```javascript
on_alert: function(requestId, data, callback)
{
 return sdk.sendAlertMessage(data, callback);
}
```

The alert response data is found in the data object sent to the kit.

## OnVariableUpdate

This event is triggered on **variable_update** when the assistant is published. 

Syntax: variable_update : function (requestId, data, callback) 

Parameters:

* requestId – A unique ID for each message event.
* data– A JSON response payload
* callback – The function to call after event completion; it is used to send the updated message and context back to the XO Platform.

```javascript
var event = data.eventType;
console.log("event----------->", event);
if (first || event == "variable_update") {
    // fetch BotVariables List for published assistants
    sdk.fetchBotVariable(data, langArr, function(err, response) {
        dataStore.saveAllVariables(response, langArr);
        first = false;
    });
} else {
    var lang = data.language;
    //update Existing BotVariables in Storage
    updateBotVariableInDataStore(botVariables, data, event, lang);
}
console.log(dataStore);
```

## OnClientEvent

This event is triggered on **client_event** when the assistant receives client events sent by the third party application. 

Syntax: on_client_event : function (requestId, data, callback) 

Parameters:

* requestId – A unique ID for each message event.
* data– A JSON response payload
* callback – The function to call after event completion; it is used to send the updated message and context back to the XO Platform.

```javascript
on_client_event : function (requestId, data, callback) {
    console.log("on_client_event -->  : ", data.preDefinedEvent, data.customEvent);
    return sdk.sendBotEvent(data, callback);
    }
```

These events are associated with the application subscribing to botkit event type – **onMessage** and **onagenttransfer**. These events can be used to track the events like user is typing, user has stopped typing or user has read the message. Examples:

* **User started typing:**
    _Request_:

    ```json
    { 
        “resourceid”: “/bot.clientEvent”,
        “preDefinedEvent” : { “type”: “TYPING_STARTED” }, 
        “customEvent”: {“test”:”test”}, 
        “botInfo”: {“chatBot”:”&lt;bot-name>”, “taskBotId”:”&lt;bot-id>”} 
    } 
    ```

    _Response1_:

    ```json
    {
        “ok”:true,
        ”type”:”ack”
    }
    ```

    _Response2_:

    ```json
    {
        “type”:”events”, “from”:”bot”, 
        “botInfo”: {“chatBot”:”&lt;bot-name>”, “taskBotId”:”&lt;bot-id>”},
        “preDefinedEvent”:{“type”:”TYPING_STARTED”}, “customEvent”:{“test”:”test”},”traceId”:”6b12f4cc73c806dd”
    }
    ```

* **User stopped typing:**

    _Request_:

    ```json
    { 
        “resourceid”: “/bot.clientEvent”, 
        “preDefinedEvent” : { “type”: “TYPING_STOPPED” }, 
        “customEvent”: {“test”:”test”}, 
        “botInfo”: {“chatBot”:”&lt;bot-name>”, “taskBotId”:”&lt;bot-id>”} 
    } 
    ```

    _Response1_:

    ```json
    {
        “ok”:true,
        ”type”:”ack”
    } 
    ```

    _Response2_:

    ```json
    {
        “type”:”events”, 
        “from”:”bot”, 
        “botInfo”: {“chatBot”:”&lt;bot-name>”, “taskBotId”:”&lt;bot-id>”},
        “preDefinedEvent”:{“type”:”TYPING_STOPPED”}, \
        “customEvent”:{“test”:”test”},
        ”traceId”:”6b12f4cc73c806dd”
    }
    ```

* **User read the message:**

    _Request_:

    ```json 
    { 
        “resourceid”: “/bot.clientEvent”, 
        “preDefinedEvent” : { “type”: “MESSAGE_READ”, “id”: “&lt;msg-id>” }, 
        “customEvent”: {“string”}, 
        “botInfo”: {“chatBot”:”&lt;bot-name>”,“taskBotId”:”&lt;bot-id>”}
    } 
    ```

    _Response1_:

    ```json
    {
        “ok”:true,
        ”type”:”ack”
    }
    ```

     _Response2_:

    ```json
    {
        “type”:”events”, 
        “from”:”bot”, 
        “botInfo”: {“chatBot”:”&lt;bot-name>”, “taskBotId”:”&lt;bot-id>”} 
        “preDefinedEvent”:{“type”:”MESSAGE_READ”, “id”:”&lt;msg-id>”}, “customEvent”:{“string”},”traceId”:”6b12f4cc73c806dd”
    }
    ```
