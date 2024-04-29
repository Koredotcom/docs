# Gen AI Node

Using the Gen AI node, you can establish connections to any model that you have configured within the Model Studio.

You can harness the power of expansive language models such as ChatGPT for tasks such as content creation, summarization, translation, and so on.

## Add a New Gen AI Node

**To add a Gen** **AI node, follow these steps**:

1. Open the required agent from the list of agents to create the flow.
2. Click **Agent flow** from the left navigation bar. The **Agent** flow page is displayed.
3. Click **Go to flow** to open the flow builder page.

    <img src="../images/go-to-flow-canvas.png" alt="Go to Flow Canvas" title="Go to Flow Canvas" style="border: 1px solid gray; zoom:80%;">

    The **Agents Flow** canvas is displayed, and you can start creating a new flow.

1. You can add a new node in 2 ways:

    * Click the down arrow corresponding to the node from the **Assets** section from the left navigation bar of the Agents page and then click **+New Gen** **AI**.

    Or

    * Click **Gen** **AI** from the bottom bar of the Agents page.

    <img src="../types-of-nodes/gen-ai-node.png" alt="Add a New Gen AI Node" title="Add a New Gen AI Node" style="border: 1px solid gray; zoom:80%;">

    The Gen AI node is created on the canvas and you can now define the node's properties by clicking on the node. You can drag and move a node to any location on the canvas.

    !!! note

        The start node is displayed by default on the flow builder.

    <img src="../images/connect-start-to-gen-ai.png" alt="Connect Start to Gen AI" title="Connect Start to Gen AI" style="border: 1px solid gray; zoom:80%;">


## Configure the GenAI Node

You can configure a Gen AI node and connect to any model.

**To configure the AI node, follow these steps:**

1. Add a Gen AI node to the canvas.
2. Click the **Gen AI node** and the general properties dialog for the node is displayed on the right side of the page as shown in the following image.

    <img src="../images/configure-gen-ai-node.png" alt="Configure Gen AI Node" title="Configure Gen AI Node" style="border: 1px solid gray; zoom:80%;">

1. Enter a **Custom Name** for the node.
2. Select a model from the list. You can see the AI models that you have already configured in the Models section of GALE. For more information about configuring a model, see [Model Studio](../../../models/overview.md).
3. Enter a **System prompt** and the **Prompt** you want to test with your selected model. The System Prompt is the custom prompt based on your use case for an LLM to generate text or translate and so on. The Prompt allows you to pass the variables to the system prompt.
       
    **System prompt example**: Create a prompt which asks the user their name and age which can create a workout routine.

    **Prompt example**: {{context.variable_name}}

4. Click the arrow in the **Examples** section on the **AI node settings** dialog to write an example user Input and an expected AI output for a model to create/generate based on the example given here.
5. Select the required **Hyperparameters**. The parameters that are displayed are based on the AI model you selected. For a given LLM used in the GenAI node, you can configure different hyperparameter attributes which alter the result of the GenAI node.

    * **Temperature**: This parameter controls the randomness of the model's responses. A high temperature (e.g., 0.7) results in more random outputs, while a low temperature (for example, 0.2) makes the model's outputs more deterministic and focused on the most likely completion.
    
    * **Max Tokens**: This parameter sets the maximum length of the model's output. If you set max tokens to a low value, the model will generate a shorter response. If you set it to a high value, the model will generate a longer response. 
    
    * **Frequency Penalty**: This parameter penalizes common or frequent tokens, making the model's output less generic. A high frequency penalty (for example, 0.8) will make the model's output more unique, while a low frequency penalty (for example, 0.2) will make the output more common. 
    
    * **Presence Penalty**: This parameter penalizes new or rare tokens, making the model's output more common. A high presence penalty (for example, 0.8) will make the model's output more common, while a low presence penalty (for example, 0.2) will make the output more unique.
    
    * **Top P**: This parameter, also known as nucleus sampling, controls the diversity of the model's output. It sets a threshold where the model will only consider the top tokens whose cumulative probability exceeds the threshold. A high top P (for example, 0.9) will make the model's output more diverse, while a low top P (for example, 0.1) will make the output more deterministic.

        You can access the output of GenAI with the syntax: 

        {{context.steps.YOURGENAINODENAME.output}}. 

        Also, GALE has been integrated in such a way that it can auto recognize variables / outputs. 

        Type "context.steps." and it displays the possible context variables / nodes and then their outputs, and so on.

6. Click the **Actions** icon and select the actions that you want the node to trigger when the Gen AI node is successful or when it fails.


    <img src="../images/gen-ai-actions.png" alt="Gen AI Actions" title="Gen AI Actions" style="border: 1px solid gray; zoom:50%;">
    
## Status Codes

**Connection**:

* **On Success**: On successful execution of the current node this connection can be linked with another node such as Gen AI node, Function node, Condition node, API node, or an End node.
* **On Failure**: On failure in execution of the current node this connection should be linked with an End node to display the custom error message from the Gen AI node.