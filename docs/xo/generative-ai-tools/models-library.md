

# LLM Integration

You must configure the integration with a pre-built or custom LLM or Kore.ai XO GPT Module to use LLM and Generative AI features.

Review the model and feature support matrix for the [Co-Pilot features](co-pilot-features.md#model-and-feature-support-matrix) and [Dynamic Conversation features](./dynamic-conversations-features.md#model-and-feature-support-matrix).

## Pre-built LLM Integration

The XO Platform offers seamless integration with leading AI services like Azure OpenAI, OpenAI, and Anthropic. Utilizing pre-configured prompts and APIs, you can effortlessly tap into the core capabilities of these services. Although you can customize certain elements, the overall structure adheres to a standardized format for simplicity. You can quickly realize the potential of LLM with the XO platform’s plug-and-play integration with premium AI services. Along with pre-configured or default prompts, you can craft your own custom prompt optimized for their specific purposes.


### Configure Pre-built LLM Integration

Steps to configure a pre-built LLM:



1. Go to **Generative AI Tools** > **Models Library**.
<img src="../images/llm-intro.png" alt="Models Library" title="Models Library" style="border: 1px solid gray; zoom:70%;">



2. Choose the LLM you want to configure.
    1. Steps to configure Azure OpenAI:
        1. Click **Configure Now** for Azure OpenAI.
            <img src="../images/azure11.png" alt="Azure OpenAI" title="Azure OpenAI" style="border: 1px solid gray; zoom:70%;"> 
        2. On the **Authorization** tab, enter the details like **API Key** and the **User Sub Doman**. Toggle on the required **model** and enter **Deployment ID**.
        3. Read the **Policy Guidelines**, select the checkbox, and click **Save**.
    2. Steps to configure OpenAI:
        1. Click **Configure Now** for OpenAI.
            <img src="../images/llm-integration(5).png" alt="OpenAI" title="" style="border: 1px solid gray; zoom:70%;">
        2. On the **Authorization** tab, enter the **API Key**.
        3. Read the **Policy Guidelines**, select the checkbox, and click **Save**.
    3. Steps to configure Anthropic:
        1. Click **Configure Now** for Anthropic. 
            ![alt_text](images/llm-integration(1).png  )
        2. On the **Authorization** tab, enter the **API Key**.
        3. Read the **Policy Guidelines**, select the checkbox, and click **Save**.

3. The configured model is listed in the Models Library section. The status changed to _X/Y_ models configured, where _X_ is the number of the model(s) configured, and _Y_ is the number of model(s) supported.
<img src="../images/model-status.png" alt="Model Configured" title="Model Configured" style="border: 1px solid gray; zoom:70%;">
   

4. If you want to configure another model, click **+ New Model** and select the model. 
<img src="../images/new-model.png" alt="+ New  Model" title="+ New Model" style="border: 1px solid gray; zoom:70%;">
  

5. The next step is to enable [ Co-Pilot](co-pilot-features.md) and [Dynamic Conversations](dynamic-conversations-features.md) features.


## Custom LLM Integration Framework

The XO Platform now enables enterprises to power up their virtual assistants with any Large Language Model (LLM) of their preference. The bring-your-own (BYO) model framework supports integrations with externally hosted models by third parties as well as models hosted by the enterprises themselves. It allows the creation of custom prompts that are optimized for their specific purposes and models. This generic framework works seamlessly with the Auth Profiles module of the platform, enabling enterprises to use the authentication mechanism of their choice.

!!! note

    Generative AI features are available for English and non-English NLU and VA languages on the Kore.ai XO Platform. However, custom LLM-specific features are currently limited to English.


### Configure Custom LLM Integration

You can integrate a custom LLM and build your Prompts and Requests Library for specific features.

Steps to integrate a Custom LLM:



1. Go to **Generative AI Tools** > **Models Library**.
2. Click **Custom LLM**. 


    <img src="../images/llm-intro.png" alt="Models Library" title="Models Library" style="border: 1px solid gray; zoom:70%;">

    If you have already configured a model, click **+ New Model** > **Custom Integration**. 



    <img src="../images/custom-new.png" alt="+ New  Model" title="+ New Model" style="border: 1px solid gray; zoom:70%;">

3. On the **Configuration** tab, enter the details like **Integration Name**, **Model Name**, **Endpoint**, and **Headers**. 


    ![alt_text](images/llm-integration(8).png  )

4. On the **Auth** tab, select an existing authorization profile from the drop-down or create a new profile  to use for this request. For more information, see the[ Bot Authorization Overview](../app-settings/dev-tools/bot-authorization/bot-authentication.md) article. 
    ![alt_text](images/llm-integration(15).png  )

    !!! note

         OAuthv2.0 and Kerberos SPNEGO auth profiles are supported for the Custom LLM integration. 

5. Click **Test**. The Request Body to test LLM Connection pop-up is displayed. 





    ![alt_text](images/llm-integration(2).png  )

6. Enter the test payload and then click **Test** to check the connection. If the LLM connection is successful during the test call, it displays a confirmation message. If not, it shows an error message. 

    ![alt_text](images/llm-integration(7).png  )

7. Please **Read Policy Guidelines**, select the check box, and then click **Save**.
8. The success confirmation message is displayed on the screen. The configured model is listed in the LLM Integration section. The status changed to _X/Y_ models configured, where _X_ is the number of the model(s) configured, and _Y_ is the number of model(s) supported.
<img src="../images/model-status.png" alt="Model Configured" title="Model Configured" style="border: 1px solid gray; zoom:70%;">

    

9. The next step is to add[ Prompts](prompts-library.md).







## LLM Integration using Dynamic Variables

The Platform now enables seamless configuration of both pre-built and custom LLMs by allowing you to use content, context, and environment variables, including the secured ones. Secure Variables, particularly for environment settings, function just as smoothly as the current system ensures.

Before configuring the LLM, ensure all necessary variables are set up. For more details, see [Bot Variables](../app-settings/variables/using-bot-variables.md).

!!! note

    Co-Pilot features can use content and environment variables. Dynamic Conversations features can use content, context, and environment variables.


### Key Advantages

**Avoid Misuse of API Keys**: By utilizing secure environment variables for API keys, the system minimizes the risk of unauthorized access. Properly configured permissions restrict visibility and usage to authorized applications or personnel only.

**Track Team-Wise Consumption**: Implementing tracking mechanisms for API key usage allows teams to monitor their consumption, enabling better resource allocation and identifying potential inefficiencies.

**Rotate Your API Keys**: Regularly rotating API keys enhances security by limiting the risk associated with compromised keys. A well-defined rotation schedule ensures that even if a key is leaked, it becomes useless after a predetermined period.


### Configure Pre-built LLM Integration using Dynamic Variables

!!! note

    * For Azure OpenAI, you can set the API Key, Sub-Domain, and Model Deployment IDs as dynamic variables.
    * For OpenAI and Anthropic, only the API Key can be configured as a dynamic variable.

Steps to configure a pre-built LLM using Dynamic Variables:



1. Go to **Generative AI Tools** > **Models Library**.
2. Choose the LLM you want to configure. For example, Azure OpenAI.
3. On the **Authorization** tab, enter the variable for **API Key** and the **User Sub Doman**. Toggle on the required **model** and enter the variable for **Deployment ID**.

    <img src="../images/azurellmdv.png" alt="Dynamic Variables" title="Dynamic Variables" style="border: 1px solid gray; zoom:70%;">



4. Read the **Policy Guidelines**, select the checkbox, and click **Next**.
5. On the **Testing** tab, enter the sample values for the API Key, User Sub Domain, and Model key. 


    <img src="../images/llmsampletestingdv.png" alt="Dynamic Variables" title="Dynamic Variables" style="border: 1px solid gray; zoom:70%;">


6. Click **Save**. The configuration successful message is displayed.


### Configure Custom LLM Integration using Dynamic Variables

!!! note

    For Custom LLM, you can configure Endpoint, Authorization, and Headers fields as dynamic variables.

Steps to integrate a Custom LLM using Dynamic Variables:



1. Go to **Generative AI Tools** > **Models Library**.
2. Click **Custom LLM**.
3. On the **Configuration** tab, enter the details like **Integration Name** and **Model Name**. Enter the variable for **Endpoint** and **Headers**. 


    <img src="../images/dvcustomllm.png" alt="Dynamic Variables" title="Dynamic Variables" style="border: 1px solid gray; zoom:70%;">

4. Read the **Policy Guidelines**, select the checkbox, and click **Next**.
5. On the Testing **tab**, enter the sample endpoint and header values. Enter the test payload and then click **Test** to check the connection. If the LLM connection is successful during the test call, it displays a confirmation message. If not, it shows an error message. 

    <img src="../images/dvcustomllm1.png" alt="Dynamic Variables" title="Dynamic Variables" style="border: 1px solid gray; zoom:70%;">

6. On a successful connection, the save option is enabled. 


    <img src="../images/dvcustomllm2.png" alt="Dynamic Variables" title="Dynamic Variables" style="border: 1px solid gray; zoom:70%;">

7. Click **Save**. The configuration successful message is displayed.








## Kore.ai XO GPT Integration

The new Kore.ai XO GPT Models module provides fine-tuned large language models optimized for enterprise conversational AI applications. These models have been evaluated and fine-tuned to be accurate, safe, and efficient for production deployment. Current capabilities include Conversation Summarization, User Query Rephrasing, Vector Generation and Answer Generation.





### Enable Kore.ai XO GPT Integration
Steps to enable Kore.ai XO GPT Models.

1. Go to **Generative AI Tools** > **Models Library**.

2. Click **Enable Now** for Kore.ai XO GPT.
<img src="../images/llm-intro.png" alt="Models Library" title="Models Library" style="border: 1px solid gray; zoom:70%;">

    If you have already configured a model, click **+ New Model > Kore.ai XO GPT**.
    <img src="../images/xogpt2.png" alt="XO GPT" title="XO GPT" style="border: 1px solid gray; zoom:70%;">
   
 
3. On the **Models** tab, toggle on the models as required.
<img src="../images/xo-gpt-models.png" alt="Kore.ai XO GPT" title="Kore.ai XO GPT" style="border: 1px solid gray; zoom:70%;">



4. Read the Policy Guidelines, select the checkbox, and click Save.
5. The success confirmation message is displayed on the screen. The configured model is listed in the LLM Integration section. The status changes to X/Y models configured, where X is the number of the model(s) configured, and Y is the number of model(s) supported.
<img src="../images/model-status.png" alt="Model Configured" title="Model Configured" style="border: 1px solid gray; zoom:70%;">


6. You can now use these models in [ Co-Pilot](co-pilot-features.md) and [Dynamic Conversations](dynamic-conversations-features.md) features.


## Reset/Delete the Configured LLM Integration

If not using a configured LLM, you can reset/delete the LLM-specific integration using the **Reset Configuration/Delete** option. You can reset the pre-built integration and delete the custom integrations.

When you reset/delete the integration, the system does the following:



* Removes all the integration details like keys, endpoints, deployment names, etc.
* The system removes the model from the selection list of supported LLM features and turns off the respective feature. You can select another configured and supported LLM for that feature.
* Deletes the related Prompts and Responses.

!!! note

    This change impacts only the in-development copy of the VA. The changes will apply to the published version when you later publish the VA with NLP configurations.


### Reset Configured Pre-build LLM Integration

Steps to reset an integration:



1. Go to **Generative AI Tools** > **Models Library**.
2. Click three dots (more icons) and then click the **Reset Configuration** for the model you want to reset. 
<img src="../images/reset-config.png" alt="Reset Configuration" title="Reset Configuration" style="border: 1px solid gray; zoom:70%;"> 







3. Click **Reset** in the confirmation dialog.  
<img src="../images/llm-integration(6).png" alt="Reset Configuration" title="Reset Configuration" style="border: 1px solid gray; zoom:70%;"> 



4. The success message is displayed.


### Delete Configured Custom LLM Integration

Steps to delete an integration:



1. Go to **Generative AI Tools** > **Models Library**.
2. Click three dots (more icons) and then click **Delete** for the integration you want to delete.
<img src="../images/reset-custom.png" alt="reset-custom" title="Delete Custom Model" style="border: 1px solid gray; zoom:70%;">



3. Click **Delete** in the confirmation dialog.  
<img src="../images/llm-integration(16).png" alt="Delete Configuration" title="Delete Configuration" style="border: 1px solid gray; zoom:70%;">





4. The success message is displayed.

		



### Reset Configured Kore.ai XO GPT Integration
Steps to reset an integration:

1. Go to **Generative AI Tools** > **Models Library**.
2. Click three dots (more icons) for Kore.ai XO GPT and then click the **Reset Configuration** for the integration you want to reset.
<img src="../images/reset-xo.png" alt="Reset XO GPT" title="Reset XO GPT" style="border: 1px solid gray; zoom:70%;">




3. Click Reset in the confirmation dialog.  
<img src="../images/image7-6.png" alt="Reset Configuration" title="Reset Configuration" style="border: 1px solid gray; zoom:70%;">



4. The success message is displayed.
