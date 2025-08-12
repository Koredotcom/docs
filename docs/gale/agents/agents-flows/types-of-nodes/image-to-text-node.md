# Image to Text (OCR) Node

The **Image to Text** node in the agent builder processes an uploaded image and generates text responses based on the user’s prompt. It can provide descriptions, answer image-related questions, or extract text from the image. This node leverages external LLM models like OpenAI and Anthropic for image processing and text generation.

A sample use case involves an insurance company assessing vehicle damage to estimate compensation and verify customer claims. The **Image to Text** node processes the uploaded image of the damaged vehicle, analyzes the extent of the damage, and helps determine repair costs. The [File Upload API](../../../apis/apis-list/upload-file-api.md){:target="_blank"} generates the file source (URL) at the agent endpoint, which is required as input for the node. Any publicly accessible URLs (public repositories) can also be used for the File Source.

<div class="admonition note">
<p class="admonition-title">Important Considerations</p>
<p><ul><li>The user can upload only one file at a time for processing.</li>
<li>Except for image input handling, the OCR node functions like the existing Gen AI node.</li>
<li>Sending images and related settings are handled by the <a href="https://docs.kore.ai/gale/apis/apis-list/upload-file-api/" target="_blank">File Upload API</a>.</li>
<li>Image input preprocessing is supported in the following formats:</li>
<ul><li>Binary, base64-encoded for Anthropic models.</li>
<li>Both binary, base64-encoded, and image URLs for OpenAI models.</li></ul></ul></p>
</div>

## Steps to Add and Configure the Node

To add and configure the node, follow the steps below:

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>Before proceeding, you must add an external LLM to your account using either <a href="https://docs.kore.ai/gale/models/external-models/add-an-external-model-using-easy-integration/" target="_blank">Easy Integration</a> or <a href="https://docs.kore.ai/gale/models/external-models/add-an-external-model-using-api-integration/" target="_blank">Custom API integration</a></p>
</div>

1. On the **Agents** tab, click the name of the agent to which you want to add the node. The **Agent Flow** page is displayed.
<img src="../images/click-agent-name.png" alt="click agent name" title="click agent name" style="border: 1px solid gray; zoom:75%;">

2. Click **Go to flow** to edit the in-development version of the flow.
<img src="../images/access-af.png" alt="access agent flow" title="access agent flow" style="border: 1px solid gray; zoom:75%;">   

3. In the flow builder, click the **+** icon for **Image to Text** under **AI** in the **Assets** panel. Alternatively, drag the node from the panel onto the canvas. You can also click **AI** in the pop-up menu and click **Image to text**.
<img src="../images/access-image-to-text-node.png" alt="access node" title="access node" style="border: 1px solid gray; zoom:75%;">

4. Click the added node to open its properties dialog box. The **General Settings** for the node are displayed.
<img src="../images/properties-panel-open.png" alt="properties panel" title="properties panel" style="border: 1px solid gray; zoom:75%;">

5. Enter or select the following **General Settings**:

<ul><li><b>Node Name</b>: Enter an appropriate name for the node. For example, “<i>InsuranceEvaluation</i>.”</li>
<li>Select a model from the list of configured models.</li></ul>

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>Only the <b>OpenAI (gpt-4o and gpt-4o-mini)</b> and <b>Anthropic (Claude Sonnet Vision)</b> models are currently supported.</p>
</div>

* Provide the <code>File URL</code> of the public repository where your image file exists or is returned by the Upload File API at the agent endpoint.

<div class="admonition note">
<p class="admonition-title">Note</p>
<p><ul><li>Only PNG, JPEG, and JPG file formats are supported.</li>
<li>The file source url must be valid for the node to function properly.</li></ul></p></div>

<ul><li><b>System Prompt</b>: System prompts guide the model’s behavior and response style. Enter a system prompt to define its role for your use case. For example: "<i>You are a vehicle insurance assistant that analyzes uploaded vehicle images to assess damage and estimate repair costs in USD</i>."</li>
<li><b>Prompt</b>: User prompts define specific questions or requests for the model. Provide clear instructions for the model to follow, using context variables for dynamic inputs in the syntax: <code>{{context.variable_name}}</code>. <b>Example:</b> "<i>Check the image provided for the damaged parts in the car and select what parts are affected from the list below - <code>{{context.parts_list}}</code></i>."</li>
<img src="../images/configuration-set.png" alt="configurations tab" title="configurations tab" style="border: 1px solid gray; zoom:75%;">
</ul>

<ol start="6"><li>Click the <b>Connections</b> icon and select the <b>Go to Node</b> for success and failure conditions.
<img src="../images/connections-configuration.png" alt="connections tab" title="connections tab" style="border: 1px solid gray; zoom:75%;"></li>
<ul><li><b>On Success</b> > <b>Go to Node</b>: After the current node is successfully executed, go to a selected node in the flow to execute next, such as a Gen AI node, Function node, Condition node, API node, or End node.</li>
<li><b>On Failure</b> > <b>Go to Node</b>: If the execution of the current node fails, go to the End node to display any custom error message from the <b>Image to Text</b> node.</li></ul>
<li>Finally, test the flow and fix any issues found. Click the <b>Run Flow</b> button at the top-right corner of the flow builder and follow the onscreen instructions.
<img src="../images/click-run.png" alt="click run" title="click run" style="border: 1px solid gray; zoom:75%;"></li></ol>

!!! Failure "Standard Error"

    When the Model is not selected, the prompt details are not provided, or both, the following error message is displayed: “Proper data needs to be provided in the LLM node”.


