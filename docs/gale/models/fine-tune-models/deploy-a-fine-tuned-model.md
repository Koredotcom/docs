# Deploy a fine-tuned model

Once the fine-tuning process is completed, you can deploy your fine-tuned model.

**To deploy your fine-tuned model, follow these steps**:


1. Do one of the following:

    * Click the **Deploy model** button on the **Overview** page of your fine-tune model.

        <img src="../images/deploy-fine-tuned-model.png" alt="Deploy-Fine-Tuned Model" title="Deploy-Fine-Tuned Model" style="border: 1px solid gray; zoom:80%;">

    Or

    * Click the **Model Endpoint** from the left panel on the of your fine-tune model and then click **Deploy model** button.

        <img src="../images/deploy-fine-tuned-model-from-overview.png" alt="Deploy Fine-Tuned Model from Overview" title="Deploy Fine-Tuned Model from Overview" style="border: 1px solid gray; zoom:80%;">

1. Click **Deploy model**. The **Deploy** dialog is displayed.
1. In the **General details** section:

    * Enter a **Deployment name** and **Description** for your model.

        <img src="../images/deploy-fine-tuned-general-details-section.png" alt="Deploy Fine-Tuned General Details Section" title="Deploy Fine-Tuned General Details Section" style="border: 1px solid gray; zoom:80%;">

    * Provide tags to ease the search for the model and click **Next**.

1. In the **Parameters** section:

    * Select the Sampling **Temperature** to use for deployment.


    * Select the **Maximum length** which implies the maximum number of tokens to generate.


    * Select the **Top p** which is an alternative to sampling with temperature where the model considers the results of the tokens with top_p probability mass.


    * Select the **Top k** value which is the number of highest probability vocabulary tokens to keep for top-k-filtering.


    * Enter the **Stop sequences** which implies that where the model will stop generating further tokens.


    * Enter the **Inference batch size** which is used to batch the concurrent requests at the time of model inferencing.


    * Select the **Min replicas** which is the minimum number of model replicas to be deployed.


    * Select the **Max replicas** which is the maximum number of model replicas to auto-scale.


    * Select the **Scale up delay (in seconds)** which is how long to wait before scaling-up replicas.


    * Select the **Scale down replicas (in seconds)** which is how long to wait before scaling down replicas.

        <img src="../images/deploy-fine-tuned-parameters-section.png" alt="Deploy Fine-Tuned Parameters Section" title="Deploy Fine-Tuned Parameters Section" style="border: 1px solid gray; zoom:80%;">


1. Click **Next**.
2. In the **Hardware** section:
    * Select the **Hardware name** required for the deployment and click **Next**.

        <img src="../images/deploy-fine-tuned-hardware-section.png" alt="Deploy Fine-Tuned Hardware Section" title="Deploy Fine-Tuned Hardware Section" style="border: 1px solid gray; zoom:80%;">

    * In the **Review** step, verify all the details that you provided earlier. Select the **I accept all the terms and conditions** check box.

        <img src="../images/deploy-fine-tuned-review-section.png" alt="Deploy Fine-Tuned Review Section" title="Deploy Fine-Tuned Review Section" style="border: 1px solid gray; zoom:80%;">

    !!! note

        If you want to make any modifications, you can go to the previous step by clicking the **Back** button or a particular step indicator on the left panel.


1. Click **Deploy**.

    After the deployment process is complete the status is changed to “Deployed”. You can now infer this model across GALE and externally. The deployment of your model will start and after the deployment process is complete, you can find the API endpoint created for your fine-tuned model.


1. The API endpoint is available in 3 formats. You can copy and use the same as required.

    After the model is deployed, the API endpoint is generated which implies that your fine-tuned model is ready for inferencing externally and across the other sections in GALE.

    !!! note

        You will receive an email notification after your model deployment is completed and an API is generated and ready to use.
    
    You can use the deployed fine-tuned model in GALE for the following use cases:


    * In the Prompt Playground to compare prompts against commercial, open-source, or any other fine-tune model.


    * In an agent in the agent flow builder via the Gen AI Node.
