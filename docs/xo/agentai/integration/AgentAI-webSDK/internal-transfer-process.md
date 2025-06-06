# Internal Transfer Process in SDK

Agent transfer refers to the process of handing over a customer’s conversation from one agent to another within a conversational virtual assistant (VA) platform. This is typically done when the current agent is unable to assist the customer with their issue or request, or if the customer requests to speak with a different agent.

## No Transfer in the Interaction

This event anticipates when the First Agent accepts the customer interaction (not a transfer in the interaction).

```
const data = {
   "transfertype": "NA",
   "transition" : "", //entry, exit
   "participant":{      //Current Participant Details who is part of the interaction
     "identity": "",
     "name": "",
     "type":"" //default to agent
   }
}
aaWindowInstance.internalTransfer(data);
```

**Entry Scenario**—This event gets trigger when the AgentAssist widget is loaded with transition as **entry** along with the agent details. During this transfer, the Agent details and event get transferred so that the dependency on the customData for Agent Detailsm can be removed.

**Exit Scenario**—This event gets trigger at the end of the interaction with transition as **exit** along with the agent details.

**Redial Scenario**—Similar to the General Entry Scenario, this redundant operation creates multiple segments for the same agent with the initial segment start time.

```
const data = {
   "transfertype": "redial",
   "transition": "entry",
   "participant":{      //New Participant Details who is going to participate
     "identity": "<agent identity>",
     "name": "<agent name>",
     "type":"agent" //default to agent
   }
}
aaWindowInstance.internalTransfer(data);
```

If an ongoing Conversation ends abruptly, then the sequence of events should be:

- Internal Transfer Event (transfertype : NA, transition : exit, participant)
- Internal Transfer Event (transfertype : redial, transition : entry, participant)—this event is also applicable when an agent is calling back to the agent (without any previous conversation).

## Agent Internal Transfer

 This event triggers when the internal conversation transfer happens between TM1 to TM2.

```
const data = {
   "transfertype": "", //warm, cold
   "transition" : "", //entry, exit
   "participant":{      //New Participant Details who is going to participate
     "identity": "",
     "name": "",
     "type":"" //default to agent
   }
}
aaWindowInstance.internalTransfer(data);
```

**Agent Internal Transfer Scenarios and Contracts**

**Cold transfer**—Agent1 to Agent2

Event for Agent1 exit:

```
const data = {
   "transfertype": "cold", //warm, cold
   "transition" : "exit", //entry, exit
   "participant":{      //New Participant Details who is going to participate
     "identity": "agentID1",
     "name": "agentName1",
     "type":"agent" //default to agent
   }
}
aaWindowInstance.internalTransfer(data);
```

Event for Agent2 entry:

```
const data = {
   "transfertype": "cold", //warm, cold
   "transition" : "entry", //entry, exit
   "participant":{      //New Participant Details who is going to participate
     "identity": "agentID2",
     "name": "agentName2",
     "type":"agent" //default to agent
   }
}
aaWindowInstance.internalTransfer(data);
```

Step1: Scroll up the widget's summary when the TM1 has completed the task without having a conversation.

Step2: The user, bot, and TM1 will all are included in the summary if TM1 and the user have a conversation.

**Note:**  If Agent Desktop is unable to send the A1 exit event, expect the Agent1 exit event and Agent2 entry event. Whenever the A2’s entry event is received, consider the A1 to exit the conversation.

**Warm transfer**—Agent1 invites Agent2 and A1 leaves the conversation

Step1: Agent1 triggers Warm Transfer (Agent2 joins the Conversation).

```
const data = {
   "transfertype": "warm", //warm, cold
   "transition" : "entry", //entry, exit
   "participant":{      //New Participant Details who is going to participate
     "identity": "agentID2",
     "name": "agentName2",
     "type":"agent" //default to agent
   }
}
aaWindowInstance.internalTransfer(data);
```

Step 2: Any Agent (eg. A1) leaves the conversation.

```
const data = {
   "transfertype": "warm", //warm, cold
   "transition" : "exit", //entry, exit
   "participant":{      //New Participant Details who is going to participate
     "identity": "agentID1",
     "name": "agentName1",
     "type":"agent" //default to agent
   }
}
aaWindowInstance.internalTransfer(data);
```

**Note:**  

- In Internal Warm Transfer, AgentAssist Welcome Event (any Dialog) does not trigger in any of the channels (Chat, Voice, Email).
- In warm transfer, only an agent must perform the dialog tasks one at a time. In the call, another agent ought to behave passively.


