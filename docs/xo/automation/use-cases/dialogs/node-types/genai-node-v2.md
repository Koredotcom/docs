# GenAI Node (v2, BETA)

The **GenAI Node** lets you leverage the full potential of LLMs and Generative AI to quickly build conversations that involve complex flows and provide human-like experiences. You can define the entities you would like to collect and the business rules that govern the collection of these entities. The XO Platform orchestrates the conversation using contextual intelligence, ensuring that the conversation is always grounded to your enterprise business rules. You can also provide exit rules for handing off the conversation to the virtual assistant or the human agents.

!!! note

    The GenAI Node v2 is included in the XO v11.4.1 release. All GenAI Nodes and prompts created after this release are version 2.


## Why a GenAI Node?

There are two key scenarios when a GenAI node might be beneficial:



1. Handling co-referencing and entity correction in conversations: NLP might not pick up co-referencing and entity correction during a conversation. For example, in a flight booking task, someone might ask to book two window seats, then change their mind and ask to modify one of the `seat types` from the `window` to the `middle`. In this scenario, the VA must correct the already collected entity `(seat type)` and perform entity co-referencing to modify from `window` to `middle`.
2. Managing complex flows without extensive scripting: Complex flows like the above increase dialog task complexity, requiring multiple paths and nodes. Even then, it is humanly impossible to predict all such scenarios. Scripting all these possibilities might also result in a sub-par end-user experience.

Leveraging a generative AI model mitigates these scenarios by eliminating the need to predict and configure such complex possibilities while still under the constraint of defined rules and exit scenarios. This can facilitate more natural conversations and improve end-user experience.


## What’s New in Version 2 of the GenAI Node

**Node Level Enhancements**

* Conversation History Length: Specify the number of recent messages (both user and VA) to send to the language model as context.

**Custom Prompt Enhancements**

* Required Entities: A new dynamic variable holding a comma-separated list of entity names to be captured by the LLM. This allows platform users to specify which entities need to be collected or included in the output. 
* Collected Entities: An object containing the entities and their values collected by the language model.
* Custom Prompt Creation using JavaScript: The Platform introduces a JavaScript mode that enables you to create prompts using JavaScript. It will process the JavaScript and any variables in the prompt to generate a JSON object. The users can preview and validate the scripts by seeing the key-value pairs of the resulting JSON object, similar to a message node. Finally, the system will send the generated JSON object to the configured model.

    !!! note

        The Prompts and Requests Library offers reference template prompts and the custom prompts you have created. While template prompts provide a solid starting point, we recommend reviewing and adjusting them as necessary to suit your business needs.


**Support for Variables**

* Support for Dynamic Variables: Context, Environment, and Content variables can now be used in pre-processor scripts, post-processor scripts, and custom prompts.

[Learn more](../../../../app-settings/variables/using-bot-variables.md).


## Node Behavior


### Runtime

You can work with this node like any other node within Dialog Tasks and invoke it within multiple tasks. During runtime, the node behaves as follows:

1. Entities Collection:
    1. On reaching the GenAI Node, the platform invokes the Generative AI model to understand the user input.
    2. The platform uses the entities and business rules defined as part of the node configurations to understand the user input and identify the required entity values.
    3. The responses required to prompt/inform the user are automatically generated based on the conversation context.
    4. The platform drives the conversation until all the defined entities are captured.
2. Contextual Intents:
    5. Contextual intents (Dialog or FAQs) recognized from the user input continue to be honored as per the Interruption Settings defined in the bot definition.
    6. Post completion of the contextual intents, the flows can return to the GenAI Node.
3. Exit Conditions:
    7. The platform exits from the GenAI Node when any of the defined exit conditions are met.
    8. These conditions provide you the ability to define scenarios that need a different path in the conversation, for example, handing off to a human agent.
4. The platform can also exit the GenAI Node when the user exceeds the maximum number of volleys (retries to capture the required entities).
5. The platform stores the entity values in the context object, and this information can be used to define the transitions or any other part of the bot configuration.

#### Output

The output generated by this node is fully usable throughout the dialog flow, even once the node is no longer in use. Output is maintained in a structured .json within the [Context Object](../../../intelligence/context-object.md), so you can access and use the output throughout the rest of your flow.

### Enable

By default, the feature/node is disabled. To enable the feature, [Dynamic Conversations Features](../../../../generative-ai-tools/dynamic-conversations-features.md).


### Add to a Task

Steps to add a GenAI node to a Dialog Task:

1. Go to **Automation** > **Dialogs** and select the task that you are working with. 

2. You can add the GenAI Node just like any other node. You can find it in the main list of nodes. 

    <img src="../images/canvas-GenAI Node.png" alt="image_tooltip" title="image_tooltip" style="border: 1px solid gray; zoom:70%;">


## Configure GenAI Node

### Component Properties

The component properties empower you to configure the following settings. The changes made within this section affect this node across all instances and dialog tasks.

It allows you to provide a **Name** and **Display Name** for the node. The node name cannot contain spaces.


<img src="../images/componentproperties.png" alt="Component Properties" title="Component Properties" style="border: 1px solid gray; zoom:70%;">


#### Model Configuration

Adjusting the settings allows you to fine-tune the model’s behavior to meet your needs. The default settings work fine for most cases. You can tweak the settings and find the right balance for your use case. A few settings are common in the features, and a few are feature-specific:


* **Model**: The selected model for which the settings are displayed.
* **Prompt/Instructions or Context**: Add feature/use case-specific instructions or context to guide the model.
* **System Context**: Add a brief description of the use case context to guide the model.
* **Conversation History Length**: This setting allows you to specify the number of recent messages sent to the LLM as context. These messages include both user messages and virtual assistant (VA) messages. The default value is 10. This conversation history can be seen from the debug logs. 
**Note**: Applicable only if you are using a custom prompt. 
* **Temperature**: The setting controls the randomness of the model’s output. A higher temperature, like 0.8 or above, can result in unexpected, creative, and less relevant responses. On the other hand, a lower temperature, like 0.5 or below, makes the output more focused and relevant.
* **Max Tokens**: It indicates the total number of tokens used in the API call to the model. It affects the cost and the time taken to receive a response. A token can be as short as one character or as long as one word, depending on the text.
* **Fallback Behavior**: Fallback behavior lets the system determine the optimal course of action on LLM call failure or the Guardrails are violated. You can select fallback behavior as:
    * Trigger the Task Execution Failure Event
    * Skip the current node and jump to a particular node. The system skips the node and transitions to the node the user selects. By default, ‘End of Dialog’ is selected.


#### Pre-Processor Script

!!! note

    The pre-processor script does not apply to the custom prompt.


This property helps execute a script as the first step when the GenAI Node is reached. Use the script to manipulate data and incorporate it into rules or exit scenarios as required. The Pre-processor Script has the same properties as the Script Node. [Learn more](../working-with-the-script-node/#configure-the-node){:target="_blank"}.

To define a pre-processor script, click **Define Script**, add the script you want to execute, and click **Save**.

<img src="../images/pre_prosessor.png" alt="Pre prosessor Script" title="Pre prosessor Script" style="border: 1px solid gray; zoom:70%;">



#### Entities

Specify the entities to be collected by LLM during runtime. In the Entities section, click **+ Add**, enter an **Entity Name,** and select the **Entity Type** from the drop-down list.

Most entity types are supported. Here are the exceptions: custom, composite, list of items (enumerated and lookup), and attachment. See [Entity Types](../../entity-types){:target="_blank"} for more information.


<img src="../images/entitiesv2.png" alt="image_tooltip" title="image_tooltip" style="border: 1px solid gray; zoom:70%;">



#### Rules

Add the business rules that the collected entities should respect. In the rules section, click **+ Add**, then enter a short and to-the-point sentence, such as:

* _The airport name should include the IATA Airport Code;_
* _The passenger’s name should include the last name._

There is a 250-character limit to the Rules field, and you can add a maximum of 5 rules.

<img src="../images/rulesv2.png" alt="Rules" title="Rules" style="border: 1px solid gray; zoom:70%;">



#### Exit Scenarios

Specify the scenarios that should terminate entity collection and return to the dialog task. This means the node ends interaction with the generative AI model and returns to the dialog flow within the XO Platform.

Click **Add Scenario**, then enter short, clear, and to-the-point phrases that specifically tell the generative AI model when to exit and return to the dialog flow. For example, Exit when the user wants to book more than 5 tickets in a single booking and return `"max limit reached"`.

There is a 250-character limit to the Scenarios field, and you can add a maximum of 5 scenarios.

<img src="../images/exitv2.png" alt="Exit Scenarios" title="Exit Scenarios" style="border: 1px solid gray; zoom:70%;">



#### Post-Processor Script

!!! note

    The post-processor script does not apply to the custom prompt.


This property initiates the post-processor script after processing every user input as part of the GenAI Node. Use the script to manipulate the response captured in the context variables just before exiting the GenAI Node for both the success and exit scenarios. The Pre-processor Script has the same properties as the Script Node. [Learn more](../working-with-the-script-node/#configure-the-node){:target="_blank"}.

**Important Considerations**

If the GenAI Node requires multiple user inputs, the post-processor is executed for every user input received.

To define a post-processor script, click **Define Script** and add the script you want to execute. 


### Instance Properties

Configure the instance-specific fields for this node. These apply only for this instance and will not affect this adaptive dialog node when used in other tasks. You must configure Instance Properties for each task where this node is used.

<img src="../images/instancev2.png" alt="Instance Properties" title="Instance Properties" style="border: 1px solid gray; zoom:70%;">


#### User Input

Define how user input validation occurs for this node:

* **Mandatory**: This entity is required and must be provided before proceeding.
* **Allowed Retries**: Configure the maximum number of times a user is prompted for a valid input. You can choose between 5-25 retries in 5-retries increments. The default value is 10 retries. 
* **Behavior on Exceeding Retries**: Define what happens when the user exceeds the allowed retries. You can choose to either _End the Dialog_ or _Transition to a Node_ – in which case you can select the node to transition to.


#### Auto Correct

Toggle enable/disable the Auto Correct for spelling and other common errors.


#### Advanced Controls

Configure advanced controls for this node instance as follows:

**Intent Detection**

This applies only to String and Description entities: Select one of these options to determine the course of action if the VA encounters an entity as a part of the user utterance:

* **Accept input as entity value and discard the detected intent**: The VA captures the user entry as a string or description and ignores the intent.
* **Prefer user input as intent and proceed with Hold & Resume settings**: The user input is considered for intent detection, and the VA proceeds according to the Hold & Resume settings.
* **Ask the user how to proceed**: Allow the user to specify if they meant intent or entity.

**Interruptions Behavior**

To define the interruption handling at this node. You can select from the below options:

* **Use the task level ‘Interruptions Behavior’ setting**: The VA refers to the **Interruptions Behavior** settings set at the dialog task level.
* **Customize for this node**: You can customize the **Interruptions Behavior** settings by selecting this option and configuring it. You can choose whether to allow interruptions or not, or to allow the end user to select the behavior. You can further customize Hold and Resume behavior. Read the [Interruption Handling and Context Switching](../../../intelligence/conversation-management/manage-interruptions.md){:target="_blank"} article for more information.

**Custom Tags**

Add Custom Meta Tags to the conversation flow to profile VA-user conversations and derive business-critical insights from usage and execution metrics. You can define tags to be attached to messages, users, and sessions.  See [Custom Meta Tags](../../../../../analytics/automation/custom-dashboard/custom-meta-tags){:target="_blank"} for details.

<img src="../images/instancev2.png" alt="Instance Properties" title="Instance Properties" style="border: 1px solid gray; zoom:70%;">


### Connections Properties

!!! note

    If the node is at the bottom of the sequence, then only the connection property is visible.

Define the transition conditions from this node. These conditions apply only to this instance and will not affect this node’s use in any other dialog. For a detailed setup guide, See [Adding IF-Else Conditions to Node Connections](../../node-connections/nodes-conditions){:target="_blank"} for a detailed setup guide.


<img src="../images/connectionsv2.png" alt="Connections Properties" title="Connections Properties" style="border: 1px solid gray; zoom:70%;">


All the entity values collected are stored in context variables. For example, `{{context.genai_node.bookflight_genainode.entities.entity_1}}`.
You can define transitions using the context variables.

This node captures entities in the following structure:


```
{
    "bookflight_genainode": {
        "entities": {
            "entity_1": "value 1",
            "entity_2": "value 2",
            "entity_3": "value 3"
        },
        "exit_scenario": {
            "conv_status": "ended"
        },
        "bot_response": {
            "bot": "Thank you for choosing us, your flight ticket details will be shared over email."
        }
    }
}

```


## Add Custom Prompt for GenAI Node

This step involves adding a custom prompt to the GenAI node to tailor its behavior or responses according to specific requirements. By customizing the prompt, you can guide the AI to generate outputs that align more closely with the desired outcomes of your application.

For more information on Custom Prompt, see [Prompts and Requests Library](../../../../generative-ai-tools/prompts-library.md).

To add a GenAI node prompt using JavaScript, follow the steps:

1. Go to **Generative AI Tools** > **Prompts Library**.
2. On the top right corner of the **Prompts Library** section, click **+ New Prompt**.
3. Enter the **prompt name**. In the **feature** dropdown, select **GenAI Node** and select the **model**. 
4. The Configuration section consists of End-point URLs, Authentication, and Header values required to connect to a large language model. These are auto-populated based on the input provided while model integration and are not editable. 
5. In the Request section, click **Start from Scratch**. [Learn more](#dynamic-variables). 

    <img src="../images/javasv2.png" alt="Start from Scratch" title="Start from Scratch" style="border: 1px solid gray; zoom:70%;">

6. Click **JavaScript**. The Switch Mode pop-up is displayed. Click **Continue**. 

    <img src="../images/switch.png" alt="ISwitch Mode" title="Switch Mode" style="border: 1px solid gray; zoom:70%;">

7. Enter the JavaScript, click **Preview**. 


    <img src="../images/preview2.png" alt="Script Preview" title="Script Preview" style="border: 1px solid gray; zoom:70%;">


8. On the Preview pop-up, enter the Variable **Value** and click **Test**. This will convert the JavaScript to a JSON object and send it to the LLM. You can view the JSON object in the JSON Preview section. The success message is displayed. Click **Close**.
    <img src="../images/preview1.png" alt="Script Preview" title="Script Preview" style="border: 1px solid gray; zoom:70%;">

9. You can view the JSON object in the JSON Preview section. Click **Close**.

    <img src="../images/jsonpreview.png" alt="Script Preview" title="Script Preview" style="border: 1px solid gray; zoom:70%;">

9. In the request section, click **Test**. This will make a call to the LLM.

10. If the request values are correct, the response from the LLM is displayed. If not, an error message is displayed. 

11. In the Actual Response section, double-click the **Key** that should be used to generate the response path. For example, double-click the **Content** key and click **Save**. 
    <img src="../images/content-key.png" alt="Response" title="Response" style="border: 1px solid gray; zoom:70%;">

12. The **Response Path** is displayed. Click **Lookup Path**.

13. The **Actual Response** and **Expected Response** are displayed. 
    1. If the response structure matches, the responses will be in green. Click **Save**. Skip to Step 15.


        !!! note

            Both Actual Response and Expected Response are not editable.


        <img src="../images/responsev2.png" alt=" Compare Response" title="Compare Response" style="border: 1px solid gray; zoom:70%;">     
  
    
    2. If the response structure does not match, the responses will be in red. Click **Configure** to modify the Actual Response. The Post Processor Script is displayed. 
        1. Enter the **Post Processor Script**. Click **Save & Test**.
                <img src="../images/pps2.png" alt="  Post Processor Script" title=" Post Processor Script" style="border: 1px solid gray; zoom:70%;">
        2. The response is displayed.
                <img src="../images/pps2response.png" alt=" response" title="response" style="border: 1px solid gray; zoom:70%;"> 
        3. Click **Save**. The actual response and expected response turn green.

14. Enter the **Exit Scenario Key-Value fields**, **Virtual Assistance Response Key**, and **Collected Entities**. The Exit Scenario Key-Value fields help identify when to end the interaction with the GenAI model and return to the dialog flow. A Virtual Assistance Response Key is available in the response payload to display the VA’s response to the user. The Collected Entities is an object within the LLM response that contains the key-value of pairs of entities to be captured.
    <img src="../images/key-value.png" alt="Essential keys" title="Essential keys" style="border: 1px solid gray; zoom:70%;">
15. Click **Save**. The request is added and displayed in the **Prompts and Requests Library** section.


## Dynamic Variables

<table>
  <tr>
   <td>
Keys
   </td>
   <td>Description
   </td>
  </tr>
  <tr>
   <td>{{User_Input}}
   </td>
   <td>The latest input by the end-user.
   </td>
  </tr>
  <tr>
   <td>{{Model}} Optional
   </td>
   <td>This specifies the LLM tagged to the GenAI Node in the Dialog Task.
   </td>
  </tr>
  <tr>
   <td>{{System_Context}} Optional
   </td>
   <td>This contains the initial instructions provided in the GenAI Node that guide how the LLM should respond.
   </td>
  </tr>
  <tr>
   <td>{{Language}} Optional
   </td>
   <td>The language in which the LLM will respond to the users
   </td>
  </tr>
  <tr>
   <td>{{Business_Rules}} Optional
   </td>
   <td>Rules mentioned in the GenAI Node are used to understand the user input and identify the required entity values.
   </td>
  </tr>
  <tr>
   <td>{{Exit_Scenarios}} Optional
   </td>
   <td>Scenarios mentioned in the GenAI Node should terminate entity collection and transition to the next node based on Connection Rules.
   </td>
  </tr>
  <tr>
   <td>{{Conversation_History_String}} Optional
   </td>
   <td>This contains the messages exchanged between the end-user and the virtual assistant.
   </td>
  </tr>
  <tr>
   <td>{{Conversation_History_Length}} Optional
   </td>
   <td>This contains a maximum number of messages that the conversation history variable can hold.
   </td>
  </tr>
  <tr>
   <td>{{Required_Entities}} Optional
   </td>
   <td>This contains the list of entities (comma-separated values) mentioned in the GenAI Node to be captured by the LLM.
   </td>
  </tr>
  <tr>
   <td>{{Conversation_History}} Optional
   </td>
   <td>Past messages in the conversation are exchanged between the end-user and the virtual assistant. This is an array of objects with role and content as keys.
   </td>
  </tr>
  <tr>
   <td>{{Collected_Entities}} Optional
   </td>
   <td>List of entities and their values collected by the LLM. This is an object with an entity name as the key and the value as LLM collected value.
   </td>
  </tr>
</table>


