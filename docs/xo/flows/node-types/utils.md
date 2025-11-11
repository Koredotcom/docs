# Script Nodes, Call Flows, Agent Utils, and userSessionUtils

This document explains the script nodes, call flows, and supported utils with examples.

## Conversation Flows – Script Node

### Context | Instance Bot

All the instance bot’s `{{context.session}}` variables will be moved under context.

Example:

You can access the userId as `{{context.UserContext._id}}` in a message node.

OR

Place `setCallFlowVariable("user_id", context.UserContext._id);` in a script node to create a call flow variable and access the same in the message node as `{{context.user_id}}`.

### Context | Child Bot

You can access the child bot’s context in the following two ways:

```
getChildBotContextById("st-924bd71e-247e-58ec-bfe4-81e0f8b3xxxx")
```

OR

```
context.childBotsContext["st-924bd71e-247e-58ec-bfe4-81e0f8b3xxxx"]
```

Example:

To access the child bot’s userId,

_Get the complete child bot’s context and assign it to a variable:_

```
varcbCtx = getChildBotContextById("st-924bd71e-247e-58ec-bfe4-81e0f8b3xxxx")
```

OR

```
var cbCtx  = context.childBotsContext["st-924bd71e-247e-58ec-bfe4-81e0f8b3xxxx"]
```

_And access the properties from the variable_

```
var userId = cbCtx.UserContext._id
```

### Context| Identify Returning Contact Center AI (CCAI) Customers Within 24 Hours

This context variable identifies whether a CCAI customer is a returning caller within 24 hours of the previous call. It applies to both digital and voice channels.

Syntax (Digital):

`context.session.BotUserSession.isReturn24hCC`

Syntax (Voice):

`{{JSON.stringify(context.session.UserSession.isRepeatedVoiceUser)}}`

* The value is set to `true,` if the same user contacts the contact center within **24 hours** of their previous interaction.
* The value is set to `false` for first-time or non-returning users.

## Content Variables

You can access the content variables defined in the instance bot by giving the “content” keyword followed by the period operator and the variable name.

Example

```
content.DAI_CF_CHAT_AGENT
```

## Environment variables

You can access the environment variables defined in the instance/parent bot by giving the “env” keyword followed by the period operator and the variable name.

Example

```
env.botId
```

## Call Flow Variables

You can get and set variables in the call flow context for accessing it later in split or message nodes. Following are the syntax of set and get call flow variables.

```
setCallFlowVariable( {{keyName}} , {{value}} );
getCallFlowVariable( {{keyName}} );
```

Example

```
setCallFlowVariable("user_id", context.UserContext._id)
var userId =  getCallFlowVariable("user_id")
```

## Set Voice Chat on Voice Gateway Account

Using the following Utils method/script inside the script node, you can set up voice chat in accounts configured with Voice Gateway.

Syntax:
```
userSessionUtils.setConversationType('voiceChat');
userSessionUtils.setLanguageTranslationAPIKey("AIzaSyBnk4hBmHuLjeIzScNAxAdhy0RExxxx");
userSessionUtils.setVoiceChatAgentLang("en");
userSessionUtils.setVoiceChatUserLang("de");
```

## Set Preferred Language for Translation

During automation, the system can detect the user's language and set it as the preferred translation language. The following code can be added to a script node to achieve this.

Syntax:

```
agentUtils.setUserPreferredLanguage("langCode");
```

Example:

```
agentUtils.setUserPreferredLanguage("fr")  
``` 

## Agent Utils

Agent Utils is a library available for any programmatic modifications or updates you (the developer) may want to make.

### Change SIP URI, Phone Number, and set Referred by

Using the following Agent Utils method/script, you can change the SIP URI,  phone number, and set the Referred by number of your choice.

Syntax

```
agentUtils.setTransferSipURI( {{sip URI}} )
agentUtils.setTransferPhoneNumber( {{phoneNumber}} )
agentUtils.setReferredBy("+1xxxxxxxxx")
```

Example

```
agentUtils.setTransferSipURI("sip:+123344234000@2.3.4.5:5060")
agentUtils.setTransferPhoneNumber("+12345434000")
agentUtils.setReferredBy("+1902323242424")
```

### Set User Info

Using the following Agent Utils method/script, you can set or add additional information about the customer in the instance bot. You can add the script as part of the script node inside the connectToagent node in the instance bot.

Syntax

```
const userInfo = { "firstName": "<value>", "lastName": "<value>", "email": "<value>","phoneNumber": "value","country": "value","city": "value","Unit Address": "value"};
agentUtils.setUserInfo(userInfo);
```

Example 1

In the below example, static data is used to set the user info.

```
const userInfo = {
"firstName": "John",
"lastName": "Doe",
"email": "john.doe@example.com",
"phoneNumber": "407-876-8654",
"country": "USA",
"city": "Philadelphia",
"Unit Address": "Unit 12 - Witherspoon Philadelphia"
};
agentUtils.setUserInfo(userInfo);
```

Example 2

In the below example, dynamic data based on context is used to set the user info.

```
const userInfo = {
"firstName": context.session.BotUserSession.memberData.firstName,
"lastName": context.session.BotUserSession.memberData.lastName,
"email": context.session.BotUserSession.memberData.email,
"phoneNumber": context.session.BotUserSession.memberData.phoneNumber,
"country": context.session.BotUserSession.memberData.country,
"city": context.session.BotUserSession.memberData.city,
"Unit Address": context.session.BotUserSession.memberData.Unit Address
};
agentUtils.setUserInfo(userInfo);
```

### Set/Get Bot Languages

Using the following Agent Utils method/script, you can set/get the bot languages for the agent desktop.

Syntax

```
agentUtils.setBotLanguage( {{langCode }} )
agentUtils.getBotLanguage()
```

Example

```
agentUtils.setBotLanguage("en")
agentUtils.getBotLanguage()
```

### Set Queue

Syntax

You can use the agentUtils.setQueue() method to set the conversations queue at any point leading up to the agent transfer. You can do this by using a [Script Node](../../automation/use-cases/dialogs/node-types/working-with-the-script-node.md) within a bot action node in the XO Platform or a [Script Task](../node-types/script-task.md) node within a flow in Contact Center AI.

Examples

```
agentUtils.setQueue(queueId);
```
```
agentUtils.setQueue(queue name);
```

### Set Live Chat Agent Transfer

Contact Center AI supports dynamic (multiple) live chat agent transfer using the following Agent Utils method/script. On the user interface, you may have one agent system, but you can override the agent system using the method.

Syntax

```
agentUtils.setLiveChatAgentOutGoingSetup({"name":"<<system name>>", "config": {"":""}})
```

Example (for Salesforce)

```
agentUtils.setLiveChatAgentOutGoingSetup({
"name": "salesforce",
"config": {
"liveAgentUrl": "https://d.la2-c1-ph2.salesforceliveagent.com/chat/rest",
"organizationId": "00D5g00000KClxx",
"deploymentId": "5725g000000QKxx",
"buttonId": "5735g000000QQxx"
}
});
```

### Set Named Agents

This method takes an array of agentIds and only uses these agents for assigning a conversation.

Syntax

```
agentUtils.setNamedAgents(['agentId1', 'agentId2'])
```

Example

```
agentUtils.setNamedAgents(['a-e1427c4-8e7d-4728-8e6c-64281b23xxxx', 'a-e1427c4-8e7d-4728-8e6c-64281b23xxxx'])
```

### Set Agent Matching Conditions

You can add Skills, Skill groups, and Agent groups to the script task, and based on that, a set of agent IDs is generated.

Syntax

```
agentUtils.setAgentMatchingConditions({
skills : ["skillId"],
agentGroups: ['agentGroupId'],
skillGroups: ["skillGroupId"],
})
```

Example

```
agentUtils.setAgentMatchingConditions({
skills : ["63b2c180ab43c287acabxxxx"],
agentGroups: ['ag-6b135b4-b03a-461d-b33d-dd5189cbxxxx'],
skillGroups: ["6390989f1d00e75d5df4xxxx"],
})
```

### Recording Control

This function allows you to control the recording of the interactions. You can start, stop, pause, and resume recordings.

Syntax: `agentUtils.setExternalAgentRecordingControl({record: "state"})`

Examples:

```
agentUtils.setExternalAgentRecordingControl({record: "start"})
agentUtils.setExternalAgentRecordingControl({record: "stop"})
agentUtils.setExternalAgentRecordingControl({record: "pause"})
agentUtils.setExternalAgentRecordingControl({record: "resume"})
```

### Enable/Disable Transcripts and Voice Call Recordings for Contact Center AI

Using these functions, bot developers can control whether transcripts and recordings are available to agents during transfers to the Contact Center AI Desktop. You can use these functions to:

* Control transcript availability during agent transfers
* Control recording generation during agent transfers
* Apply both controls simultaneously when needed

#### Disabling Transcripts

To disable voice call recordings before initiating an agent transfer:

Syntax:

```
agentUtils.setAgentTranscribe({transcribe: false});
```

* Transcripts will not be accessible to the agent on both the 'Live Interaction' and 'Interactions' pages.
* The following note will appear near the transcripts widget on the 'Interactions' page:  
“**Note**: Certain parts of this call were not transcribed due to the applied transcription settings”.

#### Disabling Recordings

To disable recordings before initiating an agent transfer:

Syntax:

```
agentUtils.setAgentRecordingControl({record: "stop"});
```

* Voice call recordings will not be generated for that agent interaction.
* The following note will appear near the recording widget on the 'Interactions' page:  
 “**Note**: Certain parts of this call were not recorded due to the applied recording settings.”  
* If recordings are disabled at the global account level, the existing note content will be displayed instead.

#### Disabling Both Transcripts and Recordings

To disable both transcripts and recordings before initiating an agent transfer:

Syntax:

```
agentUtils.setAgentTranscribe({transcribe: false});
agentUtils.setAgentRecordingControl({record: "stop"});
```

* Combines the effects of both individual controls as described above

**Example**:

Below is an example of how to disable both transcripts and recordings before transferring to an agent:

```
// In a script node before agent transfer
try {
  // Disable transcripts for the agent
  agentUtils.setAgentTranscribe({transcribe: false});


  // Disable recording for the agent interaction
  agentUtils.setAgentRecordingControl({record: "stop"});


  // Now proceed with agent transfer
  // Your agent transfer code here...
}
```

!!! Notes

    * These controls should be applied before initiating the agent transfer.
    * The functionality works specifically with transfers to Kore Agent Desktop.
    * The controls affect only the specified agent interaction, not the entire conversation.

## userSessionUtils

**Get**: Use this function to get the value associated within a key within the “userSession” object in the conversation context. You can get the value associated with the key using this script.

Syntax

```
userSessionUtils.get(key)
```

Example:

```
userSessionUtils.get('Caller');
```

**Put**: Use this function to store a key-value pair within the “userSession” object in the conversation context.

Syntax

```
userSessionUtils.put(key,value)
```

Example

```
var caller = getCallFlowVariable('caller');
userSessionUtils.put('Caller', caller);
```

The example above adds the key ‘Caller’ to userSession and stores the value of the caller variable against that key.

**Delete**: Use this function to delete the key from the userSession object.

Syntax

```
userSessionUtils.delete(key)
```

Example:-

```
userSessionUtils.delete('Caller');
```

## Pass Data from Experience Flow to Dialog in a Child Bot

This script accesses data from an experience flow to pass it to a dialog in a child bot. The script node of the experience flow sets a variable named ‘caller’ using information from the current user session. This variable is then stored in the user session with the key “Caller” using userSessionUtils.

```
"Caller" using userSessionUtils.
setCallFlowVariable('caller',context.BotUserSession.<context variable>);
var caller = getCallFlowVariable('caller');
userSessionUtils.put("Caller", caller);
```

### Access the Variable Inside a Dialog in the Child Bot

To access this variable in a dialog within the child bot, you must reference it using `"context.session.UserSession.Caller"`. This retrieves the value of the ‘Caller’ variable from the user session in the context of the current conversation within the child bot’s dialog.

### Store a Value Inside a Dialog in the Child Bot

The script stores a value inside a dialog in a child bot, you can retrieve it in the experience flow script node and print it in the end node of the experience flow. This process allows data to be transferred between a dialog in a child bot and the experience flow.

```
BotUserSession.put("key", "value")
```

* Retrieve the context in the experience flow script node:

    `const cb = getChildBotContextById(&lt;childBotId>);
setCallFlowVariable('testvar', CBContext.BotUserSession.key)`
* Store a value inside a dialog in the child bot:

    This is done using the line `BotUserSession.put("key", "value")`, where “key” is the identifier for the value being stored, and “value” is the actual data being stored.
* Retrieve the context in the experience flow script node:

    In the experience flow script node, the code utilizes `getChildBotContextById()` to obtain the context of the child bot. Then, `setCallFlowVariable()` stores the value retrieved from the child bot’s BotUserSession, with the key “testvar”.

### Print it in the End Node of the Experience Flow

```
{{context.key}}
```

* Print it in the end node of the experience flow:

    The variable “testvar” is accessed within the context in the end node of the experience flow using `{{context.key}}`, which dynamically inserts the value of “testvar” into the output of the experience flow.