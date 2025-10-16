# Gen AI Node

Gen AI nodes let you leverage LLMs for specific use cases. The node processes inputs and generates responses, which can be integrated into larger workflows within the agent flow.

## Add and Configure a Gen AI Node

Setting up a Gen AI node in an agent flow involves adding the node at the appropriate location in the flow and configuring various node properties.

Steps to add and configure the node:

1. On the **Agents** tab, click the name of the agent to which you want to add the node. The Agent Flow page is displayed. 

2. Click **Go to flow** to edit the in-development version of the flow.

3. In the flow builder, click the “**+**” icon on any existing node on the canvas and and select **Gen AI** from the pop-up menu. (Alternatively, drag the **Gen AI** node from the Assets panel onto the canvas.)  

4. Click the added node to open its properties dialog box. The General Settings for the node are displayed.  
<img src="../images/configure-gen-ai-node.png" alt="Configure Gen AI Node" title="Configure Gen AI Node" style="border: 1px solid gray; zoom:20%;">

5. Enter or select the following **General Settings**:

    * **Node Name**: Enter an appropriate name for the node.

    * **Prompt options**: Choose one of the following options:
        1. **Write your own prompt**: If you select 'Write your own prompt’, follow these steps:
            * **System Prompt**: Enter the system prompt for your use case. System prompts help you assign a role to the model. For example, “Generate a summary of the transcription of a conversation in a maximum of 5 lines without returning any special characters".
            * **Prompt**: Provide the instructions that you want the model to follow. You can use context variables as mentioned below. For example, you can store the conversation transcript in a variable named “conversation” and pass it on in the prompt.  
            Syntax: `{{context.variable_name}}`
            Example: `{{context.conversation}}`  
        <img src="../images/write_your_own_prompt.png" alt="Write your own prompt" title="Write your own prompt" style="border: 1px solid gray; zoom:70%;">

        !!! note

            System Prompts: These are instructions to guide how the model should respond. They define the overall behavior or tone of the model. For example: "You are a helpful assistant."   
            Human Prompts: These are the questions or requests made by the user. They specify what the user wants the model to do or answer. For example: "Summarize this error log and tell me the likely cause of the issue."


        2. **Choose a prompt from prompt hub:** If you select ‘Choose a prompt from prompt hub’, follow these steps:
            * Select your desired prompt and specific version from the **Prompt** and **Version** drop-down lists. Once selected, the prompt automatically populates in the **Prompt** field.
            * To edit the prompt, click the **Customize** option. The ‘Custom Prompt’ view is displayed, where the prompt from Prompt Studio will be populated in both the system and human prompt fields. You can then modify the prompt while preserving the selected version.  
        <img src="../images/choose_prompt_with_variables_fields.png" alt="Choose a prompt" title="Choose a prompt" style="border: 1px solid gray; zoom:70%;">      

        !!! note

            Importing a Prompt with Variables: If you import a prompt from Prompt Studio with set variables, you can add the necessary variables in the ‘Map Variables’ field for that GenAI node.

            Importing a Prompt without Variables: If you import a prompt from Prompt Studio that does not have variables, you must customize the prompt and manually add the variables. In this case, the "Map Variables" field does not appear, as the imported prompt has no variables to map.

    * **Select Model**: Select a model from the list of configured models.
    Note that when you choose a prompt from the prompt hub, it will also fetch the preferred model associated with that version if you specified one during the commit process

    * **Timeout**: Select the timeout duration from the allowed range. The allowed range is 30 to 180 seconds (3 minutes). The default is 60 seconds (1 minute). The node triggers a timeout error if the request is not completed within the selected time frame.    

        !!! note 

            Timeout precedence: Agent timeout *is greater than* Node timeout *is greater than* Model timeout.

    * **Model Configurations**: Use hyperparameters to fine-tune the AI model's behavior to suit your needs. While the default settings work well for most cases, you can adjust them to find the right balance for your use case.

        * **Temperature**: Controls the randomness of the model's responses. Higher values lead to more random outputs, while lower values result in more focused outputs.

        * **Top p**: Controls the diversity of the model's output by considering only the top tokens whose cumulative probability exceeds a threshold. Higher values produce more diverse outputs, while lower values result in more deterministic outputs.

        * **Top k**: Restricts the model from considering only the top k most probable next words when generating output. For example, if k=50, the model will randomly choose from the top 50 predictions at each step. This helps balance quality and diversity in the generated text. Higher top-k values encourage creativity and diversity, while lower values promote coherence and reliability.

        * **Max Tokens**: Sets the maximum length of the model's output. Lower values generate shorter responses, while higher values produce longer responses.

6. Click the **Connections** icon and select the **Go to Node** for success and failure conditions.  
        <img src="../images/gen-ai-connections.png" alt="Gen AI Actions" title="Gen AI Actions" style="border: 1px solid gray; zoom:70%;">

    1. **On Success** > **Go to Node**: After the current node is successfully executed, go to a selected node in the flow to execute next, such as a Gen AI node, Function node, Condition node, API node, or End node.

    2. **On Failure** > **Go to Node**: If the execution of the current node fails, go to the End node to display any custom error message from the Gen AI node.

7. To add tools, click the **Tool Calling** icon. When you select a model that supports tool calling, the ‘*Tool calling available*’ tab is displayed in the Properties panel. You can configure tool calling settings from this tab.

    !!! note

        Tools are deployed Agents whose details are provided to the model. This enables the model to determine whether to resolve the input query, prompt, or request using its own knowledge or by calling the appropriate tools. You can select up to three tools for each GenAI node. For more information, see [**Tool Calling in GALE**](./../tool-calling.md). 

    1. **Add tools**: Click **Add Tools** to add a tool (deployed agent).
    2. **Select tools**: The Tools dialog displays a list of tools available in your account. Select the appropriate tools and click **Add tools**. Once added, the selected tools will appear on the Tools tab, indicating that they have been successfully attached.  
    3. **Configure tool settings**:
        * In the Tool configuration section, configure the following:
            * **Exit node execution after**: Specify the number of model calls to use as the exit criteria. For example, if you set this to 5 calls and the LLM continues making tool calls without providing a final answer, the system will exit to the failure path.
        * In the Additional settings section, configure the following:
            * **Tool choice**: Select *Auto* or *Required*. This option determines whether the model will automatically decide when to make a tool call (Auto), or if a tool call is required every time (Required). The default setting is Auto.
            * **Parallel tool calls**: Select *True* to enable the model to execute multiple tool calls simultaneously. Select *False* if you want the model to execute tool calls sequentially, optimizing for the best possible outcome.  
        
    <img src="../images/tool_calling_configuration.png" alt="Gen AI Actions" title="Gen AI Actions" style="border: 1px solid gray; zoom:70%;">

8. Finally, test the flow and fix any issues found. Click the **Run Flow** button at the top-right corner of the flow builder and follow the onscreen instructions.

!!! Failure "Standard Error"

    When the Model is not selected, the prompt details are not provided, or both, the following error message is displayed: “Proper data needs to be provided in the LLM node”.

## Access the Gen AI Node’s Output

The node’s output is stored in a context variable. You can access the variable using the following syntax:
`{{context.steps.GenAINodeName.output}}`

!!! note

    GALE can automatically recognize variables and outputs. To do so, type "context.steps." and you will see available variables and nodes, including the nodes' outputs.

## Image to Text (OCR) Node

To learn more about this AI node type, click [here](./image-to-text-node.md){:target="_blank"}.