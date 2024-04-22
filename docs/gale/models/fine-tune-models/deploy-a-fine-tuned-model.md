# Deploy a Fine-Tuned Model

Once the fine-tuning process is completed, you can deploy your fine-tuned model.

**To deploy your fine-tuned model, follow these steps**:


1. Do one of the following:

    * Click the **Deploy model** button on the **Overview** page of your fine-tuned model.

        <img src="../images/navigate-to-data-module.png" alt="Navigate to Data Module" title="Navigate to Data Module" style="border: 1px solid gray; zoom:80%;">


    Or


    * Click the **Model Endpoint** tab in the left panel on the **Overview** page of your fine-tuned model.

        <img src="../images/navigate-to-data-module.png" alt="Navigate to Data Module" title="Navigate to Data Module" style="border: 1px solid gray; zoom:80%;">

1. Click **Deploy model**. The deployment of your model will start and after the deployment process is complete, you can find the API endpoint created for your fine-tuned model. The API endpoint is available in 3 formats as shown in the following image. You can copy and use the same as required.

    <img src="../images/navigate-to-data-module.png" alt="Navigate to Data Module" title="Navigate to Data Module" style="border: 1px solid gray; zoom:80%;">

    After the model is deployed, the API endpoint is generated which implies that your fine-tuned model is ready for inferencing externally and across the other sections in GALE.

    !!! note

        You will receive an email notification after your model deployment is completed and an API is generated and ready to use.

You can use the deployed fine-tuned model in GALE for the following use cases:


* In the Prompt Playground to compare prompts against commercial, open-source, or any other fine-tuned model.

* In an agent in the agents flow builder via the Gen AI Node.
