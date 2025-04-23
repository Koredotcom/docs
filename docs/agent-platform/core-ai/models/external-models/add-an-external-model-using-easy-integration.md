# Add an External Model using Easy Integration


In this topic, you can see the process of adding the Claude-V1 model from the provider Anthropic.

**To add an external model using easy integration, follow these steps**:

1. Click **Models** on the top navigation bar of the application. The **Models** page is displayed.
2. Click the **External models** tab on the **Models** page.

    <img src="../images/navigating-to-external-models.png" alt="Navigating to External Models" title="Navigating to External Models" style="border: 1px solid gray; zoom:80%;">

3. Click **Add a model** under the **External models** tab. The **Add an external model** dialog is displayed.

    <img src="../images/add-external-model-easy-integration.png" alt="Add External Model Easy Integration" title="Add External Model Easy Integration" style="border: 1px solid gray; zoom:60%;">

4. Select the **Easy integration** option to integrate models from Open AI, Anthropic, Google, or Cohere and click **Next**.
5. Select a provider to integrate with and click **Next**.

    <img src="../images/easy-integration.png" alt="Easy Integration" title="Easy Integration" style="border: 1px solid gray; zoom:80%;">

    A Pop-up with the list of all the Anthropic models that are supported in Agent Platform is displayed.

    <img src="../images/select-model.png" alt="Select Model" title="Select Model" style="border: 1px solid gray; zoom:80%;">

6. Select the required **Model** from the options listed below and click **Next**.

<table>
  <tr>
   <td><strong>Model Provider</strong>
   </td>
   <td><strong>Variant</strong>
   </td>
  </tr>
  <tr>
   <td>Anthropic
   </td>
   <td>
<ul>

<li>claude-3-5-sonnet-20240620</li>

<li>claude-3-haiku-20240307</li>

<li>claude-3-opus-20240229</li>

<li>claude-3-sonnet-20240229</li>

<li>claude-2.1</li>

<li>Claude-2.0</li>

<li>Claude Sonnet Vision (Available only for the<strong> Image-to-tex</strong>t node, No <strong>Prompt Studio</strong> support).</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>Azure Open AI
   </td>
   <td>
<ul>

<li>GPT-4</li>

<li>GPT-3.5-Turbo</li>

<li>GPT-4o-Mini</li>

<li>GPT-4o</li>

<li>O1-Mini</li>

<li>O1</li>

<li>O3-Mini</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>Cohere
   </td>
   <td>
<ul>

<li>command-light-nightly</li>

<li>command-light</li>

<li>command</li>

<li>command-nightly</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>Google
   </td>
   <td>
<ul>

<li>gemini-1.5-flash-latest</li>

<li>gemini-1.5-pro</li>

<li>gemini-1.0-pro</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>Open AI
   </td>
   <td>
<ul>

<li>gpt-4o</li>

<li>gpt-4o-mini</li>

<li>gpt-3.5-turbo</li>

<li>gpt-3.5-turbo-1106</li>

<li>gpt-4-0613</li>

<li>o1-preview</li>

<li>o1-mini</li>

<li>o3-mini</li>

<li>gpt-4-0125-preview</li>

<li>gpt-4-turbo-preview</li>

<li>gpt-4-1106-preview</li>

<li>gpt-4</li>

<li>Whisper-1</li>

<li>Whisper (Available only for the <strong>Audio-to-text</strong> node, No <strong>Prompt Studio</strong> support.)</li>
</ul>
   </td>
  </tr>
</table>

<ol start="7"><li>Enter the respective <b>API key</b> you have received from the provider in the <b>API key</b> field and click <b>Confirm</b> to start the integration.</li>
<img src="../images/api-key-for-model.png" alt="API Key for Model" title="API Key for Model" style="border: 1px solid gray; zoom:80%;"></ol>

The model is integrated and is listed in the External models list.

!!! note

    * You can click the 3 dots icon corresponding to the Model name in the list of external models and edit or delete the model.
    * You can set the Inference option using the toggle button corresponding to the Model name. If the Inferencing toggle is ON, you can use this model across Agent Platform. If the toggle button is OFF, it means you cannot infer it anywhere in Agent Platform. For example, if you turn OFF the toggle button, then in the playground, an error message is displayed that the model is not active even though you have added it in the external models tab.

    
