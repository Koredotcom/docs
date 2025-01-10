# Agent Node Version 2 (Draft)

The **Agent Node** lets you leverage LLMs and generative AI with Tool calling to create sophisticated and versatile bots capable of handling complex tasks and providing dynamic, data-driven interactions. With its streamlined entity collection, contextual intelligence, multilingual support, and integration with external systems, the node empowers platform users to deliver exceptional human-like conversational experiences to their employees and customers.

## Key Features

* **Entity Collection**: The Agent Node simplifies the process of gathering entities within a conversation, reducing the need for multiple entity nodes. This streamlined approach enhances the user experience by making bot interactions more natural and user-friendly.
* **System Context, Business Rules, and Exit Scenarios**: The Agent Node incorporates system context, business rules, and predefined exit scenarios to ensure accurate and relevant responses. This contextual intelligence helps guide the conversation, handle various user inputs effectively, and maintain alignment with enterprise business rules.
* **Multilingual Support**: The Agent Node supports both English and non-English bot languages, enabling platform users to create virtual assistants that cater to a diverse user base and facilitate multilingual interactions.
* **Configuration Flexibility**: The Agent Node can be configured like any other node in the XO Platform, providing flexibility in its integration within dialog tasks. This allows platform users to seamlessly incorporate the Agent Node into their existing conversational flows.

### Enhanced Capabilities with Tool Calling

Tool calling is the ability to identify when external functions are needed, select appropriate ones, invoke them with correct parameters, process their outputs, and incorporate the results into responses.

* **Interaction with External Systems**: The introduction of tool calling expands the Agent Node's capabilities beyond text generation. It enables interaction with external systems and databases, facilitating real-time data retrieval, calculations, and system-specific operations. This integration allows for more dynamic and data-driven conversational experiences.
* **Dynamic Prompt Enhancement**: The Agent Node's prompt is enhanced to include tool definitions and contextual information. Based on user input and ongoing conversation, the language model can dynamically decide whether to generate text or call a tool. The dynamic prompt adaptation ensures that the virtual assistant provides the most appropriate response or action at each step of the interaction.

## Agent Node Runtime Behavior

During runtime, the Agent Node efficiently orchestrates interactions between the node, language model, and XO Platform to enable seamless user experiences and integration with external systems. You can work with this node like any other node within Dialog Tasks and invoke it within multiple tasks. 

During runtime, the node behaves as follows:

1. **Input Processing**: When the agent node receives user input, it processes it first through a Pre-Processor script. This script runs only once before the orchestration starts between the node and the platform. This script can perform tasks like formatting the input or extracting relevant information before sending the input to the language model.
2. **Entities Collection**:
    * The platform invokes the Generative AI model to understand the user input.
    * The platform uses the entities and business rules defined in the node configurations to understand user input and identify the required entity values.
    * The responses required to prompt/inform the user are automatically generated based on the conversation context.
    * The platform drives the conversation until all the defined entities are captured.
3. **Contextual Intents**
    * Contextual intents (Dialog or FAQs) recognized from user input continue to be honored according to the Interruption Settings defined in the bot definition.
    * Post completion of the contextual intents, the flows can return to the Agent Node.
4. **Language Model Decision**: The language model analyzes the processed user input and decides whether to respond with generated text or call a tool:
    * **Text Response**: If the language model determines that a text response is appropriate, it generates the response and sends it to the XO Platform. The platform then renders this response to the user.
    * **Tool Call Execution**: When the language model decides to call a tool, it sends a tool request to the XO Platform. The platform identifies the action linked to the called tool, which could be a script, service, or Search AI node. The XO Platform executes this action and retrieves the output.
5. **Output Appending**: Depending on the selected transition, the XO Platform may exit the node or append the output to the request prompt for enriched context and send the updated prompt back to the model for further processing.
6. **Post-Processing**: Before presenting the final output, the XO Platform passes the response from the language model through a Post-Processor script. This script runs every time a response is received. It allows further manipulation of the response, such as formatting the output or integrating it with other elements of the conversation.
7. **Exit Conditions**
    * The platform exits from the Agent Node when any of the defined exit conditions are met.
    * These conditions allow you to define scenarios that require a different path in the conversation, such as handing off to a human agent.
    * The platform can also exit the Agent Node when the user exceeds the maximum number of volleys (retries to capture the required entities).
8. **Iterative Process**: This process repeats for each conversation volley, ensuring the Agent Node dynamically adapts to user input and leverages the power of language models and external systems through tool calls.

### Entity Values and Outputs

* **Entity Values**: The platform stores the entity values in the [context object](../../../intelligence/context-object.md), and this information can be used to define the transitions or any other part of the bot configuration.
* **Conversation History and Tool Output**: The `LLM_Conversation_History` object stores the conversation history, tool history, and transactions between the platform and the model during a tool call. Additionally, the `Tool_Output` variable stores the output from the executed tools.
* **Node’s Output**: The Agent Node's output is stored as structured JSON in the [context object](../../../intelligence/context-object.md), making it accessible and usable throughout the entire dialog flow, even after the node is no longer active.

## Enable

By default, the feature/node is disabled. To enable the feature, [Dynamic Conversations Features](../../../../generative-ai-tools/dynamic-conversations-features.md).

## Add to a Task

Steps to add an Agent node to a Dialog Task:

1. Go to **Automation** > **Dialogs** and select the task that you are working with. 

2. You can add the Agent Node just like any other node. You can find it in the main list of nodes. 

    <img src="../images/canvas-GenAI Node.png" alt="image_tooltip" title="image_tooltip" style="border: 1px solid gray; zoom:70%;">


## Configure Agent Node

### Component Properties

The component properties empower you to configure the following settings. The changes made within this section affect this node across all instances and dialog tasks.

It allows you to provide a **Name** and **Display Name** for the node. The node name cannot contain spaces.


<img src="../images/gennodecp1n.png" alt="Component Properties" title="Component Properties" style="border: 1px solid gray; zoom:70%;">


#### Model Configuration

Adjusting the settings allows you to fine-tune the model’s behavior to meet your needs. The default settings work fine for most cases. You can tweak the settings and find the right balance for your use case. A few settings are common in the features, and a few are feature-specific:


* **Model**: The selected model for which the settings are displayed.
* **Prompt/Instructions or Context**: Add feature/use case-specific instructions or context to guide the model.
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


This property helps execute a script as the first step when the Agent Node is reached. Use the script to manipulate data and incorporate it into rules or exit scenarios as required. The Pre-processor Script has the same properties as the Script Node. [Learn more](../working-with-the-script-node/#configure-the-node){:target="_blank"}.

To define a pre-processor script, click **Define Script**, add the script you want to execute, and click **Save**. Enable **Auto Save** to save your work automatically after one second of inactivity. It must be re-enabled each time you open the editor.

<img src="../images/pre_prosessor.png" alt="Pre prosessor Script" title="Pre prosessor Script" style="border: 1px solid gray; zoom:70%;">


#### Entities

Specify the entities to be collected by LLM during runtime. In the Entities section, click **+ Add**, enter an **Entity Name,** and select the **Entity Type** from the drop-down list.

Most entity types are supported. Here are the exceptions: custom, composite, list of items (enumerated and lookup), and attachment. See [Entity Types](../../entity-types){:target="_blank"} for more information.

<img src="../images/entitiesv2.png" alt="image_tooltip" title="image_tooltip" style="border: 1px solid gray; zoom:70%;">

#### System Context

Add a brief description of the use case context to guide the model.

#### Tools

Tools allow the Agent Node to interact with external services, fetching or posting data as needed. When called, they let language models perform tasks or obtain information by executing actions linked to Script, Service, or Search AI nodes. Users can add a maximum of 5 tools to each node.

!!!note

    Tool calling is supported only with custom prompts (Javascript) without streaming.

Click **+ Add** to open the **New Tool** creation window.  

<img src="../images/genai-node(18).png" alt="Tools" title="Tools" style="border: 1px solid gray; zoom:70%;">

Define the following details for tool configuration:

* **Name**: Add a meaningful name that helps the language model identify the tool to call during the conversation. 
* **Description**: Provide a detailed explanation of what the tool does to help the language model understand when to call it.
* **Parameters**:Specify the inputs the tool needs to collect from the user. Define up to 10 parameters for each tool and mark them as mandatory or optional.  
    * **Name**: Enter the parameter name.
    * **Description**: Enter an appropriate description of the parameter.
    * **Type**: Select the parameter type (String, Boolean, or Integer). 
* **Actions**: These are the nodes that the XO Platform executes when the language model requests a tool call with the required parameters. Users can add up to 5 actions for each tool. These actions are chained and executed sequentially, where the output of one action becomes the input for the next.
    * **Node Type**: Select the node type (Service Node, Script Node, Search AI Node) from the dropdown.
    * **Node Name**: Select a new or existing node from the dropdown.
* **Response Path**: The final output from the action nodes is required to be added as a Response Path for the Platform to understand where to look for the actual response in the payload. Choose the specific key or path that defines the output.
* **Choose transition**: Define the behavior after tool execution:
    * **Default**: Send the response back to the LLM. It is mandatory to have a Response Path in this case.
    * **Exit Node**: Follow the transitions defined for the Agent Node.
    * **Jump to a Node** (Coming soon): You can jump to any node defined in the dialog.

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

This property initiates the post-processor script after processing every user input as part of the Agent Node. Use the script to manipulate the response captured in the context variables just before exiting the Agent Node for both the success and exit scenarios. The Post-processor Script has the same properties as the Script Node. [Learn more](../working-with-the-script-node/#configure-the-node){:target="_blank"}.

**Important Considerations**

If the Agent Node requires multiple user inputs, the post-processor is executed for every user input received.

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


## Custom Prompt for Agent Node


The Platform lets you create a custom prompt tailored to your use case, for both system and custom integrations. This also supporrs a JavaScript mode that enables you to create prompts using JavaScript. It will process the JavaScript and any variables in the prompt to generate a JSON object. The users can preview and validate the scripts by seeing the key-value pairs of the resulting JSON object, similar to a message node. Finally, the system will send the generated JSON object to the configured model.

!!! note

     The Prompts and Requests Library offers reference template prompts and the custom prompts you have created. While template prompts provide a solid starting point, we recommend reviewing and adjusting them as necessary to suit your business needs.

Sample JavaScript

```
const jsonRepresentation = {
  messages: [
    {
      role: "system",
      content: `You are a virtual assistant representing an enterprise business. Act professionally at all times and do not engage in abusive language or non-business-related conversations. ${System_Context} Your task is to collect entities from user input and conversation history. Entities to collect: ${Required_Entities} Entities already collected: ${JSON.stringify(Collected_Entities)}. Business rules for entity collection: ${Business_Rules}. Instructions: - Capture all mentioned entities. - Do not prompt for entities that have already been provided. - Generate appropriate prompts to collect unfulfilled entities only in ${Language} Language and keep the entities collected in the Original Language. - Keep prompts and messages voice-friendly. Output format: STRICTLY RETURN A JSON OBJECT WITH THE FOLLOWING STRUCTURE: {"bot": "prompt to collect unfulfilled entities", "conv_status": "ongoing" or "ended", "entities": [{key1: value1, key2: value2, ...}]} Always ensure that the entities collected SHOULD be in an array of one object. Conversation status: Mark conv_status as 'ended' when all entity values are captured or if any of the following scenarios are met: ${Exit_Scenarios} - Otherwise, set conv_status as 'ongoing'.`
    },
    ...Conversation_History,
    {
        "role": "user",
        "content": `${User_Input}`
    }
  ],
  model: "gpt-4",
  temperature: 0.73,
  max_tokens: 300,
  top_p: 1,
  frequency_penalty: 0,
  presence_penalty: 0
};

context.payloadFields = jsonRepresentation;
```

### Add Custom Prompt
This step involves adding a custom prompt to the Agent node to tailor its behavior or responses according to specific requirements. By customizing the prompt, you can guide the AI to generate outputs that align more closely with the desired outcomes of your application.

For more information on Custom Prompt, see [Prompts and Requests Library](../../../../generative-ai-tools/prompts-library.md).

To add an Agent node prompt using JavaScript, follow the steps:

1. Go to **Generative AI Tools** > **Prompts Library**.
2. On the top right corner of the **Prompts Library** section, click **+ New Prompt**.
3. Enter the **prompt name**. In the **feature** dropdown, select **Agent Node** and select the **model**. 
4. The Configuration section consists of End-point URLs, Authentication, and Header values required to connect to a large language model. These are auto-populated based on the input provided while model integration and are not editable. 
5. In the Request section, click **Start from Scratch**. [Learn more](#dynamic-variables). 

    <img src="../images/javasv2.png" alt="Start from Scratch" title="Start from Scratch" style="border: 1px solid gray; zoom:70%;">

6. Click **JavaScript**. The Switch Mode pop-up is displayed. Click **Continue**. 

    <img src="../images/switch.png" alt="ISwitch Mode" title="Switch Mode" style="border: 1px solid gray; zoom:70%;">

7. Enter the JavaScript, click **Preview**. 


    <img src="../images/preview2.png" alt="Script Preview" title="Script Preview" style="border: 1px solid gray; zoom:70%;">


8. On the Preview pop-up, enter the Variable **Value** and click **Test**. This will convert the JavaScript to a JSON object and send it to the LLM. You can view the JSON object in the JSON Preview section. The success message is displayed. Click **Close**.
    <img src="../images/tc1.png" alt="Script Preview" title="Script Preview" style="border: 1px solid gray; zoom:70%;">

9. You can view the JSON object in the JSON Preview section. Click **Close**.

    <img src="../images/jsonpreview.png" alt="Script Preview" title="Script Preview" style="border: 1px solid gray; zoom:70%;">

9. In the request section, click **Test**. This will make a call to the LLM.

10. If the request values are correct, the response from the LLM is displayed. If not, an error message is displayed. 

11. In the Actual Response section, double-click the **Key** that should be used to generate the text response path. For example, double-click the **Content** key and click **Save**. 
    <img src="../images/content-key.png" alt="Response" title="Response" style="border: 1px solid gray; zoom:70%;">

12. The **Response Path** is displayed.

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

14. Enter the **Exit Scenario Key-Value fields**, **Virtual Assistance Response Key**, **Collected Entities**, and **Tool Call Request**.The Exit Scenario Key-Value fields help identify when to end the interaction with the Agent model and return to the dialog flow. A Virtual Assistance Response Key is available in the response payload to display the VA’s response to the user. The Collected Entities is an object within the LLM response that contains the key-value of pairs of entities to be captured. The tool call request key in the LLM response payload enables the Platform to execute the tool-calling functionality.
    <img src="../images/tc2.png" alt="Essential keys" title="Essential keys" style="border: 1px solid gray; zoom:70%;">
15. Click **Test**. The Key Mapping pop-up appears. Make any necessary corrections and close it.  
<img src="../images/key-map.png" alt="Essential keys" title="Essential keys" style="border: 1px solid gray; zoom:70%;">
16. Click **Save**. The request is added and displayed in the **Prompts and Requests Library** section.


## Dynamic Variables

The Dynamic Variables like Context, Environment, and Content variables can now be used in pre-processor scripts, post-processor scripts, and custom prompts.

[Learn more](../../../../app-settings/variables/using-bot-variables.md).

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
   <td>This specifies the LLM tagged to the Agent Node in the Dialog Task.
   </td>
  </tr>
  <tr>
   <td>{{System_Context}} Optional
   </td>
   <td>This contains the initial instructions provided in the Agent Node that guide how the LLM should respond.
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
   <td>Rules mentioned in the Agent Node are used to understand the user input and identify the required entity values.
   </td>
  </tr>
  <tr>
   <td>{{Exit_Scenarios}} Optional
   </td>
   <td>Scenarios mentioned in the Agent Node should terminate entity collection and transition to the next node based on Connection Rules.
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
   <td>This contains the list of entities (comma-separated values) mentioned in the Agent Node to be captured by the LLM.
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


