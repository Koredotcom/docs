# Audio To Text Node - Make Voice Transcriptions Effortless

The **Audio to Text** node is a powerful AI component that enables you to convert speech into written text within your automation flows. By leveraging Automatic Speech Recognition (ASR), this node processes audio inputs and generates accurate text outputs across multiple supported languages. Configuration options enable you to define input sources, specify output formats, and seamlessly integrate transcription into broader workflows, allowing for transcription as part of larger, multi-step processes such as call analysis, feedback collection, or content indexing.

## Key Capabilities

* **Automatic Speech Recognition (ASR)**: Converts spoken audio into accurate written text using OpenAI Whisper-1 for transcription. 

* **Multilingual Transcription and Translation Support**: Supports transcription in multiple languages and translation into English. 

* **Audio Input Handling**: Accepts audio files or audio URLs as input, making it suitable for both real-time and recorded speech processing.

* **Large File Handling with Size Limits**: Supports audio files up to 25 MB. Larger files can be split at logical points to avoid mid-sentence breaks and ensure smooth, timely, and accurate transcriptions. 

* **Text Output Generation**: Generates clean, structured text in multiple formats based on prompt instructions, ready for downstream use such as summarization, translation, or storage. 

## Common Use Cases

* **Meeting and Lecture Transcription**: Automatically convert meetings, interviews, or classroom sessions into searchable text. 

* **Customer Support Automation**: Transcribe voice interactions to feed into chatbots or help desk workflows. 

* **Subtitle and Caption Generation**: Generate accurate subtitles for video content across platforms. 

* **Voice Command Processing**: Convert spoken commands into text for use in voice-enabled applications. 

* **Audio-Based Translation**: Transcribe audio for translation into other languages as part of a multilingual workflow.


## Example Use Case

The **Audio to Text** node processes uploaded customer service call recordings and generates transcribed (and optionally translated) text based on configured parameters and output instructions. These transcriptions can be used to assess conversation quality, evaluate agent performance, and support audits or training efforts. By removing the need for manual transcription or external APIs, the node offers a faster, more efficient, and fully integrated solution for audio processing within your workflow.

## How It Works

The Audio to Text Node integrates seamlessly into your tool flows, accepting audio inputs, whether as files or URLs from previous nodes and passing the transcribed text to subsequent nodes. You can configure parameters such as the processing model, translation preferences, timestamp inclusion, and prompt instructions to tailor the transcription process to your specific needs. The node supports both static and dynamic inputs via context variables, making it highly adaptable for a wide range of voice-driven automation scenarios.

<img src="../images/how-audio-to-text-works.png" alt="how audio to text works" title="how audio to text works" style="border: 1px solid gray; zoom:75%;">

In this document, you will learn how to add the node to your flow, configure it with audio inputs and transcription settings, manage outputs such as text or translated content, and test the results within your workflow.


## Selection of the Audio File

You can add audio input in one of the following ways:

1. Manually select and upload an audio file in the allowed format.
2. Configure the **Input variable** by selecting <b><i>Text</i></b> for **Type** in the following window when adding input variables for the node. [Learn more](https://docs.kore.ai/agent-platform/ai-agents/tools/tool-flows/perform-other-actions-on-the-flow-builder/manage-input-and-output/#adding-input-variables){:target="_blank"}. 

You must provide the audio file URL when running the flow, as mentioned [here](../../../tools/tool-flows/types-of-nodes/audio-to-text-node.md/#step-3-run-the-flow){:target="_blank"}.

<img src="../images/select-text-input-type.png" alt="select text type input" title="select text type input" style="border: 1px solid gray; zoom:75%;">


<div class="admonition note">
<p class="admonition-title">Note</p>
<p>Uploading audio files as input variables is <b>not supported</b> only URLs are supported.</p>
</div>

### Supported Audio Formats

The following audio file formats are supported by the node:

* M4a
* Mp3
* Webm
* Mp4
* Mpga
* Wav
* Mpeg

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>Using other formats will result in a system error.</p>
</div>

### Audio File Size Limits

* Maximum supported file size: **25 MB**.
* For larger files, split them into **25 MB or smaller** segments and upload them to prevent input processing (transcription) and output generation delays.
* Maintain context and avoid mid-sentence breaks when splitting files.

### Processing Model

The **Agent Platform** uses **OpenAI Whisper-1** for transcription.

**Use Cases**

This node is commonly used for:

* Transcribing meetings, interviews, or lectures.
* Automating customer service chatbots.
* Generating subtitles for videos.
* Voice command processing for applications.
* Audio translation.

### Translation

* Transcribes and translates speech in non-English languages (see [Open AI Whisper-supported language](https://platform.openai.com/docs/guides/speech-to-text#supported-languages){:target="_blank"}) into English when enabled.
* Inverse translation (English to other languages) is not currently supported.


### Important Considerations

* Audio uploads and settings are handled by the [File Upload API](https://docs.kore.ai/agent-platform/apis/apis-list/upload-file-api/){:target="_blank"}.

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>Be mindful of the environment where you upload the files - Host URLs that work fine in the Agent Platform may not work in GALE.</p>
</div>

* OpenAI Whisper automatically removes offensive and banned words during transcription. 
* Performance tracking is available under **Settings** > **Model Analytics Dashboard** > **External Models** tab. [Learn more](https://docs.kore.ai/agent-platform/settings/monitoring/analytics/model-analytics-dashboard/){:target="_blank"}. 

Metrics include:

* **Minutes transcribed/Minutes of Audio** (total audio processed by the node) since the Whisper models are charged based on the minutes of the audio consumed.
* **Input and output tokens** since the Whisper models usually support a small number of tokens, and tracking the counts is necessary. [Learn more](https://docs.kore.ai/agent-platform/settings/monitoring/analytics/model-analytics-dashboard/#tokens){:target="_blank"}.
* Each model execution is logged on the **Model Traces** page, displaying summarized data for:
    * **Input**, **Output**, and **Response Time**
    * **Translation,** and **Timestamp**.  [Learn more](https://docs.kore.ai/agent-platform/settings/monitoring/analytics/model-traces/){:target="_blank"}.

## Steps to Add and Configure the Node

To add and configure the node, follow the steps below:

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>Before proceeding, you must add an external LLM to your account using either <a href="https://docs.kore.ai/agent-platform/core-ai/models/external-models/add-an-external-model-using-easy-integration/" target="_blank">Easy Integration</a> or <a href="https://docs.kore.ai/agent-platform/core-ai/models/external-models/add-an-external-model-using-api-integration/" target="_blank">Custom API integration</a>.</p>
</div>


1. Log in to your account and click **Tools** under **Agent Platform Modules**.
   <img src="../images/access-tools-module.png" alt="access tools" title="access tools" style="border: 1px solid gray; zoom:75%;">

2. Click the **Tools** tab on the top navigation bar, and select the tool to which you want to add the node. The Tool flow page is displayed.
    <img src="../images/click-agent-name.png" alt="click tool name" title="click tool name" style="border: 1px solid gray; zoom:75%;">

3. Click **Go to flow** to edit the in-development version of the flow.     
<img src="../images/access-af.png" alt="access tool flow" title="access tool flow" style="border: 1px solid gray; zoom:75%;">  


4. In the flow builder, click the **+** icon for **Audio to Text** under **AI** in the **Assets** panel. Alternatively, drag the node from the panel onto the canvas. You can also click **AI** in the pop-up menu and click **Audio to text**.
<img src="../images/select-audio-to-text.png" alt="add node" title="add node" style="border: 1px solid gray; zoom:75%;">


5. Click the added node to open its properties dialog box. The **General Settings** for the node are displayed.
<img src="../images/properties-dialog-audio-to-text.png" alt="properties dialog" title="properties dialog" style="border: 1px solid gray; zoom:75%;">

6. Enter or select the following **General Settings**:
    * **Node Name**: Enter an appropriate name for the node. For example, “*CustomerSupportConversation*.”
    * Provide the input variable that is set for the node for the **Audio File** field. [Learn more](https://docs.kore.ai/agent-platform/ai-agents/tools/tool-flows/perform-other-actions-on-the-flow-builder/manage-input-and-output/#adding-input-variables){:target="_blank"}.
    * Select a model from the list of configured models.
    * (Optional) Turn on the toggle for the following to enable the respective feature:
         * **Translation**: Translate other languages supported by the model to English.
         * **Timestamps**: The date and time at which each dialog was spoken.
    * Provide the instructions that you want the model to follow for **Prompt**.  User prompts define specific questions or requests for the model. Provide clear instructions for the model to follow, using context variables for dynamic inputs in the recommended syntax: `{{context.variable_name}}`. For example, you can store the conversation transcript in a variable named “conversation” and pass it on in the prompt using `{{context.conversation}}`. You may include simple instructions regarding the style of the transcription, correct words or proper nouns, in case the model could not figure out what the spoken word was, fix punctuations, add context, and more.

    <div class="admonition note">
    <p class="admonition-title">Note</p>
    <p>Whisper models process up to <b>224 tokens</b> in the input prompt and ignore any input exceeding this limit.</p>
    </div>
                
    <div class="admonition warning">
    <p class="admonition-title">Standard Error</p>
    <p>When the Model is not selected, the prompt details are not provided, or both, the error message “<i>Proper data needs to be provided in the LLM node</i>” is displayed.</p>
    </div>

    * **Response JSON schema**:  Define a JSON schema for structured responses. This step is optional and depends on the selected model.   
    You can define a JSON schema to structure the model's response if the chosen model supports the response format. By default, if no schema is provided, the model will respond with plain text.
    Supported JSON schema types include: String, Boolean, Number, Integer, Object, Array, Enum, and anyOf. Ensure the schema follows the standard outlined here: [Defining JSON schema](../perform-other-actions-on-the-flow-builder/defining-json.md){:target="_blank"}. 
    If the schema is invalid or mismatched, errors will be logged, and you must resolve them before proceeding.  
    For more information about how the model parses the response and separates keys from the content body, see: [Structured Response Parsing and Context Sharing in Workflows](../perform-other-actions-on-the-flow-builder/model_response_parsing.md){:target="_blank"}.


7. Click the **Connections** icon and select the **Go to Node** for success and failure conditions. 
<img src="../images/connections-audio-to-text.png" alt="click connections" title="click connections" style="border: 1px solid gray; zoom:75%;">

<ul><li><b>On Success</b> > <b>Go to Node</b>: After the current node is successfully executed, go to a selected node in the flow to execute next, such as an AI node, Function node, Condition node, API node, or End node.</li>
<li><b>On Failure</b> > <b>Go to Node</b>: If the execution of the current node fails, go to the End node to display any custom error message from the <b>Audio to Text</b> node.</li></ul>

<ol start="8"><li>Finally, <a href="https://docs.kore.ai/agent-platform/ai-agents/tools/tool-flows/types-of-nodes/audio-to-text-node/#step-3-run-the-flow" target="_blank">Test the flow</a> and fix any issues found.</li></ol>

## Configure and Test the Flow for the Node

### Step 1: (Optional) Add Input Variable(s)

1. Click the **Input** tab of the **Start** node, and click **Add Input Variable** to configure the input for the flow’s test run. [Learn more](https://docs.kore.ai/agent-platform/ai-agents/tools/tool-flows/perform-other-actions-on-the-flow-builder/manage-input-and-output/#adding-input-variables){:target="_blank"}.

<img src="../images/add-input-variable-audio-to-text.png" alt="add input variable" title="add input variable" style="border: 1px solid gray; zoom:75%;">

<ol start="2"><li>Select <b><i>Text</i></b> for the <b>Type</b> field in the <b>Enter input variable</b> window to define a text input variable.</li>
<li>Click <b>Save</b>.</li>

<img src="../images/select-text-type-input.png" alt="select text and save" title="select text and save" style="border: 1px solid gray; zoom:75%;"></ol>

Add all the required input variables to run the flow in the **Input** section of the **Start** node.


### Step 2: Add Output Variable(s)

1. Click the **Output** tab for the **Start** node.
2. Click **Add Output Variable**.

<img src="../images/click-add-output-variable.png" alt="click add output variable" title="click add output variable" style="border: 1px solid gray; zoom:75%;">

<ol start="3"><li>Enter the value for <b>Name (key)</b> and select <b><i>String</i></b> for <b>Type</b> to generate the transcribed text output.</li>
<li>Click <b>Save</b>. <a href="https://docs.kore.ai/agent-platform/ai-agents/tools/tool-flows/types-of-nodes/text-to-text-node/#access-the-ai-nodes-output" target="_blank">Learn more</a> about accessing the node’s output.</li>
<img src="../images/save-output-variable.png" alt="save output variable" title="save output variable" style="border: 1px solid gray; zoom:75%;"></ol>


### Step 3: Run the Flow

To run and test the flow, follow the steps below:

1. Click the **Run Flow** button at the top-right corner of the flow builder.
<img src="../images/click-run-button.png" alt="click run button" title="click run button" style="border: 1px solid gray; zoom:75%;">

2. (Optional) Add the value for **Input Variable** if you have configured it to test the flow. Otherwise, go directly to the next step.

<img src="../images/gen-output-audio-to-text.png" alt="generate output" title="generate output" style="border: 1px solid gray; zoom:75%;">

<ol start="3"><li>Click <b>Generate Output</b>.</li></ol>

The **Debug** window generates the flow log and results, as shown below. [Learn more](../perform-other-actions-on-the-flow-builder/run-the-flow.md){:target="_blank"} about running the tool flow.

<img src="../images/debug-window-audio-to-text.png" alt="debug window" title="debug window" style="border: 1px solid gray; zoom:75%;">


