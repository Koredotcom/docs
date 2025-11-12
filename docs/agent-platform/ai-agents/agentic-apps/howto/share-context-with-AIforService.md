# Share Contextual Metadata from (In)Agent Platform to (In)Business Customer Experience

(In)Agent Platform offers seamless context sharing with (In)Business Customer Experience using **event-driven handoffs**. This can be useful to pass the control back to (In)Business Customer Experience for agent transfer or workflow execution without losing any valuable contextual data or conversation history. 

## How It Works

Contextual metadata is transferred from the (In)Agent Platform to (In)Business Customer Experience using **configured system events** and parameter mapping during the handoff process.


### Step 1: Configure the Handoff event in (In)Agent Platform

1. Go to **Settings** > **Events** and enable the Agent Transfer Event.
2. Set Event Conditions: Configure the specific conditions that trigger the event. Use the **Description** field to specify the condition or logic that triggers the event (e.g., fallback, confidence drop, intent match, explicit request). By default, this event is triggered whenever a conversation needs to be transferred to a human agent.
3. Configure metadata to be passed to (In)Business Customer Experience during the handoff. The event supports two types of parameters:
    * **LLM Collected parameters**: These parameters are automatically gathered by the LLM based on the description of the parameter. For example, if you wish to pass a summary of the conversation or user sentiment.
    * **System-defined parameters**: These parameters are explicitly defined. These parameters can have static values or dynamic values from the context or memory. Some examples are listed below. 
        * Passing Static value : Add a parameter that indicates the source of information as ‘Agent Platform’.

        ```
        "source": "(In)Agent Platform"
        ```

        * Passing Dynamic Values: Add parameters that pass the user details and order details from the conversation, stored in memory.
      
        ```
        username : {{memory.userProfile.firstName}}
        ordernumber: {{memory.orderDetails.orderNumber}}
        userPreferences: {{memory.sessionMeta.userPref}}
        ```
[Learn more](../settings/events.md#agent-handoff-event).

### Step 2: Handle the metadata in (In)Business Customer Experience

The parameters passed from (In)Agent Platform become available in the Platform's Experience Flow under the Automation node context.

Use the following format to access the metadata passed from the (In)Agent Platform. 


```json
{{context.steps.<<nodename>>.<<keyname>>}}
```


**Examples**: Given the name of the automation node is queryResolver.

* ```{{context.steps.queryResolver.firstName}}```
* ```{{context.steps.queryResolver.orderNumber}}```
* ```{{context.steps.queryResolver.userPreferences}}```

<hr>
