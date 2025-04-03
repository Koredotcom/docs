
# Agent Node Prompt Setup

Prompt engineering is the art and science of crafting clear, effective instructions for LLM-powered bots to optimize their performance. By thoughtfully designing the System Context, developers can precisely control how the model communicates, ensure it follows specific guidelines, and refine its processing of user inputs. This strategic approach enables bots to deliver responses that are more accurate, contextually appropriate, and aligned with the intended user experience.Defining Context and Personality.

To ensure consistency and alignment across interactions, apply prompt engineering techniques to define:

Context Definition

* Specify the bot’s role (e.g., chatbot or voice assistant) and the communication channel it operates within (text-based or voice-based).
* Outline the expected response length, preferred level of verbosity, and formality of responses.
* Provide a structured interaction goal, detailing the bot’s primary function, such as customer support, appointment scheduling, or troubleshooting guidance.
* Indicate the company or service the bot represents, ensuring that brand voice, terminology, and industry-specific nuances are reflected in responses.
* Define whether the bot should proactively offer assistance, clarify ambiguous inputs, or wait for explicit user queries before responding.

Personality Definition 

Using the Conversations with Things framework, a conversation design methodology outlined in the book Conversations with Things, define:

* Interaction goals: Define what the bot aims to achieve in conversations, such as assisting users, answering questions, or guiding them through processes.
* Level of personification: Decide how human-like the bot should be, ranging from a fully automated assistant to a more personable, engaging entity.
* Power dynamics in user interactions: Establish whether the bot takes a directive approach (authoritative) or a supportive role (collaborative) in assisting users.
* Character traits: Identify core attributes of the bot's personality, such as professionalism, friendliness, or humor, to ensure consistency in interactions.
* Tone and key behavioral traits: Set the bot’s communication style, including formality, friendliness, and how it responds to user inquiries.

The framework provides a structured approach to designing conversational experiences, ensuring that virtual assistants maintain consistency, align with user expectations, and create meaningful interactions.

## Types of Prompts

The Agent Node supports two prompt versions: **V1 (Legacy)** and **V2 (Enhanced)**. Each version offers different approaches to handling system prompts, entity management, and tool-based orchestration. Choosing the right prompt version depends on factors such as execution style, exit scenario handling, and integration needs.

The table below highlights the key differences between **V1 and V2 prompts**, helping you determine the best fit for your use case.


<table>
  <tr>
   <td><strong>Feature</strong>
   </td>
   <td><strong>V1 Prompts (Legacy)</strong>
   </td>
   <td><strong>V2 Prompts (Enhanced)</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Execution Model</strong>
   </td>
   <td>Entity-based execution, manual transitions
   </td>
   <td>Tool-based execution, automated transitions
   </td>
  </tr>
  <tr>
   <td><strong>Exit Scenarios</strong>
   </td>
   <td>Manually defined within the prompt
   </td>
   <td>Managed dynamically via the Exit Orchestration Tool
   </td>
  </tr>
  <tr>
   <td><strong>Entity Handling</strong>
   </td>
   <td>Explicit entity collection required
   </td>
   <td>No explicit entity collection
   </td>
  </tr>
  <tr>
   <td><strong>Tool Integration</strong>
   </td>
   <td>No tool execution
   </td>
   <td>Supports default and custom tools
   </td>
  </tr>
  <tr>
   <td><strong>Response Structure</strong>
   </td>
   <td>Structured, predefined formats
   </td>
   <td>Flexible, natural response generation
   </td>
  </tr>
  <tr>
   <td><strong>Runtime Behavior</strong>
   </td>
   <td>Follows predefined transitions, no tool calls
   </td>
   <td>Calls tools dynamically based on context
   </td>
  </tr>
  <tr>
   <td><strong>Post-Processor Scripts</strong>
   </td>
   <td>Not required
   </td>
   <td>Mandatory for execution
   </td>
  </tr>
  <tr>
   <td><strong>Import/Export Behavior</strong>
   </td>
   <td>Switching from V2 to V1 maintains entity structures; V2 import overwrites
   </td>
   <td>Version conflict warning when importing V2 into V1
   </td>
  </tr>
  <tr>
   <td><strong>Availability</strong>
   </td>
   <td>Works with all configurations
   </td>
   <td>Available only in JavaScript
   </td>
  </tr>
</table>


### When to Use V1 Prompts



* Requires explicit entity handling to manually define business rules and exit scenarios.
* Works best in workflows that rely on structured, entity-based execution rather than tool-based orchestration.
* Provides a stable, legacy system without additional tool integration for exit scenarios.
* Ensures backward compatibility with existing bot configurations that do not support V2.
* Does not require post-processor scripts as part of the execution. 



### When to Use V2 Prompts



* Leverages a tool-based architecture for a more automated and structured conversation flow.
* Supports integration with both default and custom tools, including the Exit Orchestration Tool.
* Eliminates explicit entity collection and streamlines exit scenario management.
* Enables dynamic execution where the language model determines when to trigger tools based on context.
* Ensures structured execution with mandatory post-processor scripts.
* Allows for a flexible, natural response format without strict JSON structure constraints.



### Use Case Scenarios

For a more practical approach, the differences through scenarios can make the comparison more engaging.


* Scenario 1: Maintaining a Legacy Bot 

  A banking bot that has predefined customer verification steps and strict entity collection. 
  
  Uses **V1 prompts** because it requires explicit entity handling and manual exit scenarios. 

* Scenario 2: Automating Customer Support 
  
  An AI assistant that dynamically suggests troubleshooting steps based on customer queries. 

  Uses **V2 prompts** because it needs tool integration and dynamic execution. 

* Scenario 3: Handling a Mixed Workflow 

  A chatbot for insurance claims processing that requires predefined data collection but also uses external tools for verification. 
  Uses **V1 prompts** for entity collection but considers **V2 prompts** for automation and integration with external tools. 


### Streaming vs. Regular Prompts

####  Structural Differences


<table>
  <tr>
   <td>    Feature   </td>
   <td>    Regular Prompts   </td>
   <td>    Streaming Prompts   </td>
  </tr>
  <tr>
   <td>
    <strong>Response Delivery</strong>
   </td>
   <td>
    Full response delivered at once
   </td>
   <td>
    Tokens delivered incrementally as they're generated
   </td>
  </tr>
  <tr>
   <td>
    <strong>Parameter Requirements</strong>
   </td>
   <td>
    Standard parameters
   </td>
   <td>
    Requires <code>"stream": true</code>
<p>

    parameter
   </td>
  </tr>
  <tr>
   <td>
    <strong>Exit Scenarios</strong>
   </td>
   <td>
    Fully supported
   </td>
   <td>
    Not supported
   </td>
  </tr>
  <tr>
   <td>
    <strong>Virtual Assistant Response</strong>
   </td>
   <td>
    Fully supported
   </td>
   <td>
    Not supported
   </td>
  </tr>
  <tr>
   <td>
    <strong>Collected Entities</strong>
   </td>
   <td>
    Fully supported
   </td>
   <td>
    Must be included in streamed format
   </td>
  </tr>
  <tr>
   <td>
    <strong>Tool Call Requests</strong>
   </td>
   <td>
    Fully supported
   </td>
   <td>
    Not supported for Agent Node
   </td>
  </tr>
  <tr>
   <td>
    <strong>Post-Processing</strong>
   </td>
   <td>
    Available
   </td>
   <td>
    Not available
   </td>
  </tr>
  <tr>
   <td>
    <strong>Guardrails</strong>
   </td>
   <td>
    Fully supported
   </td>
   <td>
    Not supported
   </td>
  </tr>
</table>



#### Implementation Differences

* Format Requirements:
  * Both require responses to include conv_status , bot response, and collected entities
  * Streaming prompts must structure this content for incremental delivery
* Error Handling:
  * Regular prompts can be fully validated before delivery
  * Streaming prompts require careful prompt engineering as corrections cannot be made mid-stream
* Analytics:
  * Streaming responses include additional metrics like TTFT (Time to First Token)
  * Response Duration for streaming measures time from first to last token

#### When to Choose Streaming vs. Regular Prompts

Use Streaming When:

* Real-time interaction is critical.
* Responses are expected to be lengthy.
* Voice-based applications would benefit from incremental speech.
* User experience would benefit from immediate feedback.

Use Regular Prompts When:

* Post-processing is needed.
* Content moderation or guardrails are required.
* Tool calls are necessary for the Agent Node
* Interception of responses (with BotKit) is needed.
* Complete response validation must occur before delivery.
* Implementing the appropriate prompt type based on your specific use case and requirements will ensure optimal performance and user experience.




## Custom Prompt for Agent Node

Custom prompts are required to work with the Agent Node for tool-calling functionality. Platform users can create custom prompts using JavaScript to tailor the AI model's behavior and generate outputs aligned with their specific use case. By leveraging the Prompts and Requests Library, the users can access, modify, and reuse prompts across different Agent Nodes.
The custom prompt feature enables users to process the prompt and variables to generate a JSON object, which is then sent to the configured language model. Users can preview and validate the generated JSON object to ensure the desired structure is achieved.

Agent Node with custom prompt supports configuring pre and post-processor scripts at both node and prompt levels. This enables platform users to reuse the same custom prompt across multiple nodes while customizing the processing logic, input variables, and output keys for each specific use case. 

When you configure pre and post-processor scripts at both node and prompt levels, the execution order is: Node Pre-processor → Prompt Pre-processor → Prompt Execution → Prompt Post-processor → Node Post-processor.

!!! warning

    Configuring pre and post-processor scripts at both node and prompt levels may increase latency.

!!! note

    Node-level pre and post-processor scripts support [App Functions](../../../../app-settings/dev-tools/reusing-bot-functions-custom-script-file.md) in addition to content, context, and environment variables.



Let’s review a sample prompt written in Javascript and follow the step-by-step instructions to create a custom prompt. 

=== "Sample JavaScript V1"

  ```
    let payloadFields = {
    model: "claude-3-5-sonnet-20241022",
    max_tokens: 8192,
    system:`${System_Context}.

                    ${Required_Entities && Required_Entities.length ?
                    `**Entities Required for the Use Case*: You are instructed to collect the from the List: ${Required_Entities}
                     **Entity Collection Rules**:
                        - Do not Prompt the user if the any of entities data is already captured or available in the context`: ''}
                    **Instructions To be Followed**:: ${Business_Rules}
                    **Tone and Language**::  
                       - Maintain a professional, helpful, and polite tone.  
                       - Support multiple languages if applicable to cater to diverse users.

                    **Output Format**::
                        - You Should Always STRICTLY respond in a **STRINGIFIED JSON format** to ensure compatibility with downstream systems.
                        - The response JSON must include the following keys:  
                          - "bot": A string containing either:
                            - A prompt to collect missing required information
                            - A final response
                          - "entities": An array of objects containing collected entities in format:
                            [
                              {
                                "key1": "value1",
                                "key2": "value2"
                              }
                            ]
                          - **conv_status**: String indicating conversation status:
                            - "ongoing": When conversation requires more information
                            - "ended": When one of these conditions is met:
                              - All required entities are collected
                              - All required functions/tools executed successfully
                              - Final response provided to user
                              - when one of the Scenarios Met from ${Exit_Scenarios}.`,
    messages: []
    };

    // Check if List_of_Tools exists and has length
    if (Tools_Definition && Tools_Definition.length) {
      payloadFields.tools = Tools_Definition.map(tool_info => {
          return {
              name: tool_info.name,
              description: tool_info.description,
              input_schema: tool_info.parameters
          };
      });
    }

    // Map conversation history to context chat history
    let contextChatHistory = [];
    if (Conversation_History && Conversation_History.length) {
        contextChatHistory = Conversation_History.map(function(entry) {
          return {
              role: entry.role === "tool" ? "user" : entry.role,
              content: (typeof entry.content === "string") ? entry.content : entry.content.map(content => {
                  if (content.type === "tool-call") {
                      return  {
                            "type": "tool_use",
                            "id": content.toolCallId,
                            "name": content.toolName,
                            "input": content.args
                        }
                  }
                  else {
                        return {
                            "type": "tool_result",
                            "tool_use_id": content.toolCallId,
                            "content": content.result
                        }
                  }
              })
          };
        });
    }
    // Push context chat history into messages
    payloadFields.messages.push(...contextChatHistory);

    Add user input to messages
    let lastMessage;
    if (contextChatHistory && contextChatHistory.length) {
        lastMessage = contextChatHistory[contextChatHistory.length-1];
    }

    if (!lastMessage || (lastMessage && lastMessage.role !== "tool")) {
        payloadFields.messages.push({
          role: "user",
          content: `${User_Input}`
        });
    }

    // Assign payloadFields to context
    context.payloadFields = payloadFields;
  ```


=== "Sample JavaScript V2"

  ```
    // Ensure to assign the JSON object to the context variable `context.payloadFields` for further processing. Example: context.payloadFields = jsonObject //
    // Importing this template will also import its associated post-processor, which will be available in the post-processor section. //
   let payloadFields = {
      model: "gpt-4o",
      temperature: 0.73,
      max_tokens: 1068,
      top_p: 1,
      frequency_penalty: 0,
      presence_penalty: 0,
      messages: [
          {
              role: "system",
              content: `You are a professional virtual assistant representing an enterprise business. Maintain a professional demeanor at all times and focus exclusively on business-related conversations. Do not engage with abusive language or non-business topics.

              ${System_Context}

              When processing user instructions, adhere to the following guidelines:

              ${Business_Rules}

              COMMUNICATION GUIDELINES:
              - Communicate in clear, friendly, professional language in ${language}
              - Generate appropriate prompts to collect necessary information from users
              - Use available tools to complete requested tasks efficiently
              - Before concluding interactions, verify if users require additional assistance

              TOOL USAGE:
              - Follow each tool's specific description and requirements precisely
              - Leverage appropriate tools for task completion as needed

              ERROR HANDLING PROTOCOL:
              1. Invalid Inputs
                • Provide clear, specific error messages
                • Guide users to correct input format
                • Include examples when helpful for clarity

              2. Tool Failures
                • Display user-friendly error notifications
                • Offer alternative solutions or retry options
                • Preserve all previously collected valid data

              3. Business Rule Violations
                • Clearly explain the specific violation
                • Guide users toward compliant alternatives
                • Maintain all valid data already collected

              4. Premature Exit Requests
                • Confirm user's intention to end interaction
                • Save progress where applicable
                • Execute end_orchestration() upon confirmation
              `
          }
      ]
   };

    if (Tools_Definition && Tools_Definition.length) {
        payloadFields.tools = Tools_Definition.map(tool_info => {
            return {
                type: "function",
                function: tool_info
            };
        });
    }

    let contextChatHistory = [];

    Conversation_History.forEach(function (entry) {
        if (entry.role === "tool") {
            entry.content.forEach(function (content) {
                contextChatHistory.push({
                    role: "tool",
                    content: content.result,
                    tool_call_id: content.toolCallId
                });
            });
        } else if (entry.role === "user") {
            contextChatHistory.push({
                role: entry.role,
                content: entry.content
            });
        } else {
            if (typeof entry.content === "string") {
                contextChatHistory.push({
                    role: entry.role === "bot" ? "assistant" : entry.role,
                    content: entry.content
                });
            } else {
                contextChatHistory.push({
                    role: entry.role,
                    tool_calls: entry.content.map(function (content) {
                        return {
                            id: content.toolCallId,
                            type: "function",
                            function: {
                                arguments: JSON.stringify(content.args),
                                name: content.toolName
                            }
                        };
                    })
                });
            }
        }
    });

    payloadFields.messages.push(...contextChatHistory);
    context.payloadFields = payloadFields;


  ```
<hr>



### Add Custom Prompt
The process involves creating a new prompt in the Prompts Library and writing the JavaScript code to generate the desired JSON object. Users can preview and test the prompt to ensure it generates the expected JSON object. Once the custom prompt is created, users can select it in the Agent Node configuration to leverage its functionality.


For more information on Custom Prompt, see [Prompts and Requests Library](../../../../generative-ai-tools/prompts-library.md).

To add an Agent node prompt using JavaScript, follow the steps:

1. Go to **Generative AI Tools** > **Prompts Library**.
2. On the top right corner of the **Prompts Library** section, click **+ New Prompt**.
3. Enter the **prompt name**. In the **feature** dropdown, select **Agent Node** and select the **model**. 
4. The Configuration section consists of End-point URLs, Authentication, and Header values required to connect to a large language model. These are auto-populated based on the input provided while model integration and are not editable. 
5. In the Request section, you can either create a request from scratch or import the existing prompt from the Library to modify as needed. 
5. In the Request section, click **Start from Scratch**. [Learn more](#dynamic-variables).  
<img src="../images/toolcall1.png" alt="Start from Scratch" title="Start from Scratch" style="border: 1px solid gray; zoom:70%;">

6. Ensure the Stream Response is disabled, as the Agent Node supports tool-calling with custom JavaScript prompts in non-streaming mode.

7. Click **JavaScript**. The Switch Mode pop-up is displayed. Click **Continue**.  
<img src="../images/switch.png" alt="ISwitch Mode" title="Switch Mode" style="border: 1px solid gray; zoom:70%;">

    !!! note

        The Agent Node supports tool-calling with custom JavaScript prompts in non-streaming mode.
    
8. Enter the **JavaScript**. The Sample Context Values are displayed. To know more about context values, see [Dynamic Variables](#dynamic-variables).  
<img src="../images/toolcall2.png" alt="Script Preview" title="Script Preview" style="border: 1px solid gray; zoom:70%;">


9. Enter the Variable **Value** and click **Test**. This will convert the JavaScript to a JSON object and send it to the LLM.  
<img src="../images/values.png" alt="Script Preview" title="Script Preview" style="border: 1px solid gray; zoom:70%;">

    You can open a Preview pop-up to enter the variable value, test the payload, and view the JSON response.  
<img src="../images/valuepopup.png" alt="Preview pop-up" title="Preview pop-up" style="border: 1px solid gray; zoom:70%;">  
<img src="../images/jsonpreview.png" alt="JSON Preview" title="JSON Preview" style="border: 1px solid gray; zoom:70%;">

10. The LLM's response is displayed.  
<img src="../images/content-key.png" alt="Response" title="Response" style="border: 1px solid gray; zoom:70%;">

11. In the Actual Response section, double-click the **Key** that should be used to generate the text response path. For example, double-click the **Content** key and click **Save**.
12. Enter the **Exit Scenario Key-Value fields**, **Virtual Assistance Response Key**, and **Collected Entities**. The Exit Scenario Key-Value fields help identify when to end the interaction with the Agent model and return to the dialog flow. A Virtual Assistance Response Key is available in the response payload to display the VA’s response to the user. The Collected Entities is an object within the LLM response that contains the key-value of pairs of entities to be captured.  
<img src="../images/essentialkeys.png" alt="Essential keys" title="Essential keys" style="border: 1px solid gray; zoom:70%;">

13. Enter the **Tool Call Request key**. The tool-call request key in the LLM response payload enables the Platform to execute the tool-calling functionality.
14. Click **Test**. The Key Mapping pop-up appears.
    1. If all the key mapping is correct, close the pop-up and go to step 15.  
    <img src="../images/keymappingright.png" alt="Essential keys" title="Essential keys" style="border: 1px solid gray; zoom:70%;">

    2. If the key mapping, actual response, and expected response structures are mismatched, click **Configure** to write the post-processor script.  
    <img src="../images/key-map.png" alt="Essential keys" title="Essential keys" style="border: 1px solid gray; zoom:70%;">
    
        !!! note
            
            When you add the post-processor script, the system does not honor the text response and sets all child keys under the text and tool keys to match those in the post-processor script. 

        1. On the Post-Processor Script pop-up, enter the Post-Processor Script and click **Save & Test**. The response path keys are updated based on the post-processor script.  
        <img src="../images/postprocessor.png" alt="Post-Processor Script" title="Post-Processor Script" style="border: 1px solid gray; zoom:70%;">     
        2. The expected LLM response structure is displayed. If the LLM response is not aligned with the expected response structure, the runtime response might be affected. Click **Save**.

15. Click **Save**. The request is added and displayed in the **Prompts and Requests Library** section.  
<img src="../images/promptinlibrary.png" alt="Prompt Library" title="Prompt Library" style="border: 1px solid gray; zoom:70%;">

16. Go to the Agent Node in the dialog. Select the Model and Custom Prompt for the tooling calling.  
<img src="../images/selectprompt.png" alt="Custom Prompt" title="Custom Prompt" style="border: 1px solid gray; zoom:70%;">

    If the default prompt is selected, the system will display a warning that “Tools calling functionality requires custom prompts with streaming disabled.  
<img src="../images/errornote.png" alt="Custom Prompt" title="Custom Prompt" style="border: 1px solid gray; zoom:70%;">


### Expected Output Structure

Defines the standardized format required by the XO Platform to process LLM responses effectively.


<table border="1">
  <thead>
    <tr>
      <th>Format Type</th>
      <th>Example</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Text Response Format</td>
      <td>
        <pre>
{
  "bot": "Sure, I can help you with that. Can I have your name please?",
  "analysis": "Initiating appointment scheduling.",
  "entities": [],
  "conv_status": "ongoing"
}
        </pre>
      </td>
    </tr>
    <tr>
      <td>Conversation Status Format</td>
      <td>
        <pre>
{
  "bot": "Sure, I can help you with that. Can I have your name please?",
  "analysis": "Initiating appointment scheduling.",
  "entities": [],
  {=="conv_status": "ongoing"==}
}
        </pre>
      </td>
    </tr>
    <tr>
      <td>Virtual Assistant Response Format</td>
      <td>
        <pre>
{
  {=="bot": "Sure, I can help you with that. Can I have your name please?"==},
  "analysis": "Initiating appointment scheduling.",
  "entities": [],
  "conv_status": "ongoing"
}
        </pre>
      </td>
    </tr>
    <tr>
      <td>Collected Entities Format</td>
      <td>
        <pre>
{
  "bot": "Sure, I can help you with that. Can I have your name please?",
  "analysis": "Initiating appointment scheduling.",
  {== "entities": []==},
  "conv_status": "ongoing"
}
        </pre>
      </td>
    </tr>
    <tr>
      <td>Tool Response Format</td>
      <td>
        <pre>
{
  "toolCallId": "call_q5yiBbnXPhEPqkpzsLv2isho",
  "toolName": "get_delivery_date",
  "result": {
    "delivery_date": "2024-11-20"
  }
}
        </pre>
      </td>
    </tr>
    <tr>
      <td>Post-Processor Script Format</td>
      <td>
        <pre>
{
  "bot": "I'll help you check the delivery date for order ID 123.",
  "entities": [{"order_id": "123"}],
  "conv_status": "ongoing",
  "tools": [
    {
      "toolCallId": "toolu_016FWtdANisgqDLu3SjhAXJV",
      "toolName": "get_delivery_date",
      "args": { "order_id": "123" }
    }
  ]
}
      </pre>
      </td>
    </tr>
  </tbody>
</table>





### Context Object

The context object is used to get the entities and the parameters of tools.


<table>
  <tr>
   <td>Entities
   </td>
   <td>{context.AI_Assisted_Dialogs.GenAINodeName.entities[x].{entityName}}
   </td>
  </tr>
  <tr>
   <td>Parameters
   </td>
   <td>{context.AI_Assisted_Dialogs.GenAINodeName.active_tool_args.{parameterName}}
   </td>
   <tr>
   <td>Bot Response Path
   </td>
   <td>{{context.AI_Assisted_Dialogs.bot_response.bot}}
   </td>
  </tr>
</table>


### Dynamic Variables

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
   <td>This contains the messages exchanged between the end-user and the virtual assistant. It can used only in the JSON prompt.
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
   <td>Past messages in the conversation are exchanged between the end-user and the virtual assistant. This is an array of objects with role and content as keys. It can used only in the JavaScript prompt
   </td>
  </tr>
  <tr>
   <td>{{Collected_Entities}} Optional
   </td>
   <td>List of entities and their values collected by the LLM. This is an object with an entity name as the key and the value as LLM collected value.
   </td>
  </tr>
  <tr>
   <td>{{Tools_Definition}} Optional
   </td>
   <td>List of tools that will enable the language model to retrieve data, perform calculations, interact with APIs, or execute custom code.
   </td>
  </tr>
</table>