# Add an External Model using API Integration

Custom API Integration in GALE enables extensibility of use, where it allows you to bring in your models from an external ecosystem via API integration.

**To add an external model using API integration, follow these steps**:


1. Click **Models** on the top navigation bar of the application. The **Models** page is displayed.
2. Click the **External models** tab on the **Models** page.

    <img src="../images/navigating-to-external-models.png" alt="Navigating to External Models" title="Navigating to External Models" style="border: 1px solid gray; zoom:80%;">

1. Click **Add a model** under the **External models** tab. The **Add an external model** dialog is displayed.

    <img src="../images/add-external-model-api-integration.png" alt="Add External Model API Integration" title="Add External Model API Integration" style="border: 1px solid gray; zoom:80%;">

1. Select the **Custom integration** option to connect models via API integration, and click **Next**.

    The **Custom API integration** dialog is displayed.

1. Enter a **Model name** and **Model endpoint URL** in the respective fields.

    <img src="../images/custom-api-integration-general-details.png" alt="Custom API Integration General Details" title="Custom API Integration General Details" style="border: 1px solid gray; zoom:80%;">

1. In the **Headers** section, specify the headers that need to be sent along with the request payload such as **Key** and **Value**.

    <img src="../images/custom-api-integration-headers.png" alt="Custom API Integration Headers" title="Custom API Integration Headers" style="border: 1px solid gray; zoom:80%;">

1. In the **Variables** section, you have 2 types:

    * **Prompt variable**: The Prompt variable is by default set to mandatory. You can Turn ON the toggle button for the System prompt and examples if required.
    * **Custom variables:** Click the **Custom variables** tab under the **Variables** section and click the **+Custom variables** button on the Custom variables section.

    <img src="../images/custom-api-integration-prompt-variable.png" alt="Custom API Integration Prompt Variable" title="Custom API Integration Prompt Variable" style="border: 1px solid gray; zoom:80%;">

    The Add custom variable dialog is displayed. Enter the **Variable name**, and **Display name** and select the **Data type**.

    <img src="../images/add-custom-variable.png" alt="Add Custom Variable" title="Add Custom Variable" style="border: 1px solid gray; zoom:80%;">


1. In the **Body** section, request body of the model you are trying to connect with in GALE.

    <img src="../images/custom-api-integration-body.png" alt="Custom API Integration Body" title="Custom API Integration Body" style="border: 1px solid gray; zoom:80%;">

1. In the **Test response** section, you need to provide a test response from the model:

    * Click the **Test** button under the **Test** section on the **Custom API Integration** dialog.
   The **Sample Input** dialog is displayed.

    <img src="../images/test-sample.png" alt="Test Sample" title="Test Sample" style="border: 1px solid gray; zoom:80%;">

    * Enter a **Prompt**, **Sample prompt**, and **Examples** in the respective fields.

1. Once the response is generated after the Test, you can configure the **JSON path** to capture the Output path, Input tokens, and Output tokens.
    
    !!! note

        Click the **Save as draft** button to save the model and the status is saved as Draft.
    

1. Click **Confirm** to save the details and your external model is listed in the External model's list. The model can now be used in the playground and the Gen AI node of the agent flow builder.

    !!! note

        You can click the 3 dots icon corresponding to the Model name in the list of external models and edit or delete the model.
    

    <img src="../images/three-dots-icon-options.png" alt="Three Dots Icon Options" title="Three Dots Icon Options" style="border: 1px solid gray; zoom:80%;">