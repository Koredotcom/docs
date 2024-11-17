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

    * **Select Model**: Select a model from the list of configured models.

    * **System Prompt**: Enter the system prompt for your use case. For example, “Generate a summary of the transcription of a conversation in a maximum of 5 lines without returning any special characters.”

    * **Prompt**: It allows you to pass a variable to the system prompt. For example, you can store the conversation transcript in a variable named “conversation” and pass it on in the prompt.  
    Syntax: `{{context.variable_name}}`

        Example: `{{context.conversation}}`

    * **Few-shot examples**: Add a few relevant examples to guide the model. Click the arrow to add examples of user input and expected AI output.  
    <img src="../images/gen-ai-node-summarization.png" alt="Configure System Prompt and Prompt" title="Configure System Prompt and Prompt" style="border: 1px solid gray; zoom:60%;"> 

    * **Timeout**: Select the timeout duration from the allowed range. The allowed range is 30 to 180 seconds (3 minutes). The default is 60 seconds (1 minute). The node triggers a timeout error if the request is not completed within the selected time frame.    

        !!! note 

            Timeout precedence: Agent timeout *is greater than* Node timeout *is greater than* Model timeout.

    * **Hyperparameters**: Use hyperparameters to fine-tune the AI model's behavior to suit your needs. While the default settings work well for most cases, you can adjust them to find the right balance for your use case.

        * **Temperature**: Controls the randomness of the model's responses. Higher values lead to more random outputs, while lower values result in more focused outputs.

        * **Max Tokens**: Sets the maximum length of the model's output. Lower values generate shorter responses, while higher values produce longer responses.

        * **Frequency Penalty**: Penalizes common or frequent tokens, making the model's output less generic. Higher values produce more unique outputs, while lower values produce more common outputs.

        * **Presence Penalty**: Penalizes new or rare tokens, making the model's output more common. Higher values lead to more common outputs, while lower values produce more unique outputs.

        * **Top P**: Controls the diversity of the model's output by considering only the top tokens whose cumulative probability exceeds a threshold. Higher values produce more diverse outputs, while lower values result in more deterministic outputs.

6. Click the **Connections** icon and select the **Go to Node** for success and failure conditions.  
<img src="../images/gen-ai-connections.png" alt="Gen AI Actions" title="Gen AI Actions" style="border: 1px solid gray; zoom:70%;">

    1. **On Success** > **Go to Node**: After the current node is successfully executed, go to a selected node in the flow to execute next, such as a Gen AI node, Function node, Condition node, API node, or End node.

    2. **On Failure** > **Go to Node**: If the execution of the current node fails, go to the End node to display any custom error message from the Gen AI node.

7. Finally, test the flow and fix any issues found. Click the **Run Flow** button at the top-right corner of the flow builder and follow the onscreen instructions.

!!! Failure "Standard Error"

    When the Model is not selected, the prompt details are not provided, or both, the following error message is displayed: “Proper data needs to be provided in the LLM node”.

## Access the Gen AI Node’s Output

The node’s output is stored in a context variable. You can access the variable using the following syntax:
`{{context.steps.GenAINodeName.output}}`

!!! note

    GALE can automatically recognize variables and outputs. To do so, type "context.steps." and you will see available variables and nodes, including the nodes' outputs.