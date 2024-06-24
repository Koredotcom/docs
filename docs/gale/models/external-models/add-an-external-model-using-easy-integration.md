# Add an External Model using Easy Integration


In this topic, you can see the process of adding the Claude-V1 model from the provider Anthropic.

**To add an external model using easy integration, follow these steps**:

1. Click **Models** on the top navigation bar of the application. The **Models** page is displayed.
2. Click the **External models** tab on the **Models** page.

    <img src="../images/navigating-to-external-models.png" alt="Navigating to External Models" title="Navigating to External Models" style="border: 1px solid gray; zoom:80%;">

1. Click **Add a model** under the **External models** tab. The **Add an external model** dialog is displayed.

    <img src="../images/add-external-model-easy-integration.png" alt="Add External Model Easy Integration" title="Add External Model Easy Integration" style="border: 1px solid gray; zoom:60%;">

1. Select the **Easy integration** option to integrate models from Open AI, Anthropic, Google, or Cohere and click **Next**.
2. Select a provider to integrate with and click **Next**.

    <img src="../images/easy-integration.png" alt="Easy Integration" title="Easy Integration" style="border: 1px solid gray; zoom:80%;">

    A Pop-up with the list of all the Anthropic models that are supported in GALE is displayed.

    <img src="../images/select-model.png" alt="Select Model" title="Select Model" style="border: 1px solid gray; zoom:80%;">

1. Select the required **Model** and click **Next**.
2. Enter the respective **API key** you have received from the provider in the **API key** field and click **Confirm** to start the integration.

    <img src="../images/api-key-for-model.png" alt="API Key for Model" title="API Key for Model" style="border: 1px solid gray; zoom:80%;">

    The model is integrated and is listed in the External models list.

!!! note

    * You can click the 3 dots icon corresponding to the Model name in the list of external models and edit or delete the model.
    * You can set the Inference option using the toggle button corresponding to the Model name. If the Inferencing toggle is ON, you can use this model across GALE. If the toggle button is OFF, it means you cannot infer it anywhere in GALE. For example, if you turn OFF the toggle button, then in the playground, an error message is displayed that the model is not active even though you have added it in the external models tab.
