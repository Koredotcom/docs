# GenAI Prompt (BETA)

The GenAI Prompt lets bot developers leverage the full potential of LLM and Generative AI models to quickly build their own prompts. Developers can select a specific AI model, tweak its settings, and preview the response for the prompt. The node allows developers to creatively leverage LLMs by defining the prompt using conversation context and the response from the LLMs in defining the subsequent conversation flow.


## Node Behavior

### Runtime

You can work with this node like with any other node within Dialog Tasks and can invoke it within multiple tasks. During runtime, the node behaves as follows:

1. On reaching the GenAI Prompt, the platform parses any variable used in the prompt and constructs the request using the Prompt and the Advanced Settings.
2. An API call is made to the model with the request.
3. The [response is stored in the context object](#about-responses) as part of the dialog context and can be used to define the transitions or any other part of the bot configuration.
4. The platform exits from the GenAI Prompt node when a successful response is received, or the defined timeout condition is met.


## Enable the Node

This node is not available by default. You can enable it for all Dialog Tasks as follows:

* Configure the Open AI integration and enable the GenAI Prompt feature under **Build** > **Natural Language** > **Advanced NLU Settings**. You can also select an LLM model and its settings for the features. By default, these selections are applicable across the platform for the feature. [Learn more](../../../../../app-settings/generative-ai-tools/dynamic-conversations-features/#genai-prompt){:target="_blank"}.

<p id="gdcalert1" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image1.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert2">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

![alt_text](images/image1.png "image_tooltip")

!!! Note

        If you do not configure an LLM model and do not enable the GenAI Prompt feature, then the node will not be available within the Dialog Builder.

Setting up a GenAI Prompt in a dialog task involves adding the node at the appropriate location in the dialog flow and configuring various properties of the node, as explained below.


## Add the Node

1. Go to **Build** > **Conversational Skills** > **Dialog Tasks** and select the task to which you want to add the GenAI Prompt.
2. Use the “**+**” button next to the node under which you want to add the **GenAI Prompt**. Then, choose **GenAI Prompt**, and then click **New GenAI Prompt**. (For more information on adding nodes, see [different ways to add a node](../../using-the-dialog-builder-tool/#add-nodes){:target="_blank"}.) Alternatively, you can drag and drop the **GenAI Prompt** node to the required location on the canvas.
3. The GenAI Prompt window is displayed with the **Component Properties** tab selected by default.

<p id="gdcalert2" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image2.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert3">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

![alt_text](images/image2.png "image_tooltip")


## Configure the Node

### Component Properties

The settings made within this section affect this node across all instances in all dialog tasks.

<p id="gdcalert3" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image3.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert4">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

![alt_text](images/image3.png "image_tooltip")


#### General Settings

In this section, you can provide **Name** and **Display Name** for the node and write your own OpenAI **Prompt**.

* **Prompt**: A prompt allows you to define the request to be sent to the LLMs for generating a response. Some of the use cases for prompts include entity or topic extraction, rephrasing, or dynamic content generation. The prompt can have up to 2000 characters, and it can be defined using text, Context, Content, and Environment variables.
* **Preview Response**: Check the preview of the OpenAI response for your prompt. When you click **Preview Response**, the Platform parses any variable used in the prompt and constructs OpenAI request using the Prompt and the Advanced Settings. If the response is not relevant, you can tweak the Prompt and the Advanced Settings to make the response better.


#### Advanced Settings

In this section, you can change the model and tweak its settings.

Adjusting the settings allows you to fine-tune the model’s behavior to meet your needs. **The default settings work fine for most cases**. However, if required, you can tweak the settings and find the right balance for your use case.

<p id="gdcalert4" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image4.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert5">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

![alt_text](images/image4.png "image_tooltip")

* **Model**: The default model for which the settings are displayed. You can choose another supported mode if it’s configured. If you select a non-default model, it’s used for this node only. If you want to change the default model, you can select the model in the drop-down list and use the **Mark Default** option shown next to its name.
* **System Context**: Add a brief description of the use case context to guide the model.
* **Temperature**: The setting controls the randomness of the model’s output. A higher temperature, like 0.8 or above, can result in unexpected, creative, and less relevant responses. On the other hand, a lower temperature, like 0.5 or below, makes the output more focused and relevant.
* **Max Tokens**: It indicates the total number of tokens used in the API call to the model. It affects the cost and the time taken to receive a response. A token can be as short as one character or as long as one word, depending on the text.


#### Advanced Controls

In this section, you can select the maximum wait time to receive a response from the LLM and decide how the bot should respond when the timeout occurs.

<p id="gdcalert5" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image5.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert6">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

![alt_text](images/image5.png "image_tooltip")

* **Timeout**: Select the maximum wait time from the drop-down list. The timeout range can be any value between 10 to 60, the default being 10.
* **Timeout Error Handling**: Choose how the bot should respond when the timeout occurs:
    * Close the Task and trigger Task Execution Failure Event
    * Continue with the task and transition to this node; select the node from the drop-down list.


### Instance Properties

On the **Instance Properties** tab, you can configure the instance-specific fields for this GenAI Prompt. These settings are applicable only for this instance and will not affect any other instances of this node.

<p id="gdcalert6" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image6.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert7">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

![alt_text](images/image6.png "image_tooltip")


#### Custom Tags

In this section, you can add Custom Meta Tags to the conversation flow to profile VA-user conversations and derive business-critical insights from usage and execution metrics. You can add tags for the following:

* **Message**: Define custom tags to be added to the current message in the conversation.
* **User**: Define custom tags to be added to the user’s profile information.
* **Session**: Define custom tags to be added to the current conversation session.

For more information on custom tags, see [Custom Meta Tags](../../../../../analytics/automation/custom-dashboard/custom-meta-tags){:target="_blank"}.


### Connections Properties

On the **Connections** tab, you can set the transition properties to determine the node in the dialog task to execute next. You can write conditional statements based on the values of any Entity or Context Objects in the dialog task, or you can use intents for transitions. See [Adding IF-Else Conditions to Node Connections](../../node-connections/nodes-conditions){:target="_blank"} for a detailed setup guide.

<p id="gdcalert7" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image7.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert8">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

![alt_text](images/image7.png "image_tooltip")

!!! Note

        These conditions apply only for this instance and will not affect this node when used in any other dialog.


## About Responses

All the responses collected are stored in context variables. For example, `{{context.GenAIPrompt.NodeName.properties}}`. You can define transitions using the context variables.

The responses are captured in a specific format, as shown below.

```
"context":{
"GenAIPrompt": {
    "NodeName": {
      "id": "cmpl-7UbzLTumD9ALpfa1mcpf15dK3RnWM",
      "object": "text_completion",
      "created": 1687530223,
      "model": "text-davinci-003",
      "choices": [
        {
          "text": "\n\nI'm sorry, I'm not able to provide that information. However, I would be happy to direct you to a website that may provide the information you are looking for.",
          "index": 0,
          "logprobs": null,
          "finish_reason": "stop"
        }
      ],
      "usage": {
        "prompt_tokens": 58,
        "completion_tokens": 37,
        "total_tokens": 95
      },
      "1687530221473": [
        {
          "nodeId": "NodeName",
          "startTime": "2023-06-23T14:23:42.904Z",
          "endTime": "2023-06-23T14:23:46.029Z"
        }
      ]
    }
  }
}
```