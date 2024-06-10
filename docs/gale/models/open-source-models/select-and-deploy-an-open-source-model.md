# Select and Deploy an Open-Source Model

GALE supports open-source models and provide them as a service.

**To select and deploy a model, follow these steps**:

1. Click **Models** on the top navigation bar of the application. The **Models** page is displayed.

2. Click the **Open-source models** tab on the Models page.  
<img src="../images/deploy-a-model.png" alt="Deploy a Model" title="Deploy a Model" style="border: 1px solid gray; zoom:80%;">

3. Click the **Deploy a model** button. A pop-up with a list of available models is displayed.  
<img src="../images/select-an-open-source-model.png" alt="Select an Open Source Model" title="Select an Open Source Model" style="border: 1px solid gray; zoom:80%;">

4. Select and click a model from the list. You can select Hugging Face also from the list of options. For more information about Hugging Face, see [Deploy an Imported Model from Hugging Face](../../models/open-source-models/deploy-an-imported-model-from-hugging-face.md).    

5. The **Deploy** dialog is displayed. In the **General details** section:

    * Enter a **Deployment name** and **Description** for your model.  
    <img src="../images/deploy-model-general-details-section.png" alt="Deploy Model General Details Section" title="Deploy Model General Details Section" style="border: 1px solid gray; zoom:80%;">

    * Provide tags to ease the search for the model and click **Next**.

6. In the **Parameters** section:

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
    <img src="../images/deploy-model-parameters-section.png" alt="Deploy Model Parameters Section" title="Deploy Model Parameters Section" style="border: 1px solid gray; zoom:80%;">

7. Click **Next**.
8. In the **Hardware** section:
    * Select the **Hardware name** required for the deployment and click **Next**.  
    <img src="../images/deploy-model-hardware-section.png" alt="Deploy Model Hardware Section" title="Deploy Model Hardware Section" style="border: 1px solid gray; zoom:80%;">

9. In the **Review** step, verify all the details that you provided earlier. Select the **I accept all the terms and conditions** check box.  
<img src="../images/deploy-model-review-section.png" alt="Deploy Model Review Section" title="Deploy Model Review Section" style="border: 1px solid gray; zoom:80%;">
    !!! note

        If you want to make any modifications, you can go to the previous step by clicking the **Back** button or a particular step indicator on the left panel.
    
10. Click **Deploy**.

    !!! note

        You will be charged for deployment and inferencing-related costs for each open-source model.
    
After the deployment process is complete the status is changed to “Deployed”. You can now use this model across GALE and externally.


Click the three dots icon corresponding to the **Model name** under the **Open-source models** tab on the Models page. A pop-up with a list of options is displayed. If you choose the API endpoint option, it will navigate you to the API keys section of the Model and if you select the Configurations option, it will take you to the Configurations section of the Model.

<img src="../images/three-dots-options-for-model.png" alt="Three Dots Options for Model" title="Three Dots Options for Model" style="border: 1px solid gray; zoom:80%;">

### **Re-deploy a Deployed Model**

After initially deploying a model, if you want you can modify some parameter values and redeploy the updated model.

!!! note

    * To re-deploy a model you must first undeploy the existing model and then deploy the updated one. This means there will be some downtime when the model is unavailable.

    * The model's endpoint remains the same even after undeploying and redeploying the model.

**To re-deploy a deployed model, follow these steps**:

1. Click the required model name from the Open-source models list.
2. Click the **Deploy model** button. The **Model Configuration** page is displayed.
3. Modify the required fields and click the Deploy button. The model is deployed and status is “Deployed”.