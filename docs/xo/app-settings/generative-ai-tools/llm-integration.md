

# LLM Integration

	

		

			

To use LLM and Generative AI features, you must configure the integration with a pre-built or custom LLM.


## Pre-built LLM Integration

The XO Platform offers seamless integration with leading AI services like Azure OpenAI, OpenAI, and Anthropic. Utilizing pre-configured prompts and APIs, you can effortlessly tap into the core capabilities of these services. Although you can customize certain elements, the overall structure adheres to a standardized format for simplicity. You can quickly realize the potential of LLM with the XO platform’s plug-and-play integration with premium AI services.


### Configure Pre-built LLM Integration

Steps to configure a pre-built LLM:



1. Go to **Build** > **Natural Language** > **Generative AI & LLM** > **LLM Integrations**.


    ![alt_text](images/llm-integration(9).png "image_tooltip")

2. Choose the LLM you want to configure.
    1. Steps to configure Azure OpenAI:
        1. Click **Configure Now** for Azure OpenAI. 
            ![alt_text](images/llm-integration(12).png "image_tooltip")
        2. On the **Authorization** tab, enter the details like **API Key** and the **User Sub Doman**. Toggle on the required **model** and enter **Deployment ID**.
        3. Read the **Policy Guidelines**, select the checkbox, and click **Save**.
    2. Steps to configure OpenAI:
        1. Click **Configure Now** for OpenAI. 
            ![alt_text](images/llm-integration(5).png "image_tooltip")
        2. On the **Authorization** tab, enter the **API Key**.
        3. Read the **Policy Guidelines**, select the checkbox, and click **Save**.
    3. Steps to configure Anthropic:
        1. Click **Configure Now** for Anthropic. 
            ![alt_text](images/llm-integration(1).png "image_tooltip")
        2. On the **Authorization** tab, enter the **API Key**.
        3. Read the **Policy Guidelines**, select the checkbox, and click **Save**.

3. The configured model is listed in the LLM Integrations section. The status changed to _X/Y_ models configured, where _X_ is the number of the model(s) configured, and _Y_ is the number of model(s) supported. 
    ![alt_text](images/llm-integration(10).png "image_tooltip")

4. If you want to configure another model, click **+New Integration** and select the model. 

    ![alt_text](images/llm-integration(11).png "image_tooltip")

5. The next step is to enable[ Co-Pilot](https://developer.kore.ai/docs/bots/nlp/co-pilot-features/) and[ Dynamic Conversations](https://developer.kore.ai/docs/bots/nlp/dynamic-conversations-features/) features.


## Custom LLM Integration Framework

The XO Platform now enables enterprises to power up their virtual assistants with any Large Language Model (LLM) of their preference. The bring-your-own (BYO) model framework supports integrations with externally hosted models by third parties as well as models hosted by the enterprises themselves. It allows the creation of custom prompts that are optimized for their specific purposes and models. This generic framework works seamlessly with the Auth Profiles module of the platform, enabling enterprises to use the authentication mechanism of their choice.

!!! note

    Generative AI features are available for English and non-English NLU and VA languages on the Kore.ai XO Platform. However, custom LLM-specific features are currently limited to English.


### Configure Custom LLM Integration

You can integrate a custom LLM and build your Prompts and Requests Library for specific features.

Steps to integrate a Custom LLM:



1. Go to **Build** > **Natural Language** > **Generative AI & LLM** > **LLM Integrations**.
2. Click **Custom LLM**. 


    ![alt_text](images/llm-integration(4).png "image_tooltip")

    If you have already configured a model, click **New Integration** > **Custom Integration**. 



    ![alt_text](images/llm-integration(3).png "image_tooltip")

3. On the **Configuration** tab, enter the details like **Integration Name**, **Model Name**, **Endpoint**, and **Headers**. 


    ![alt_text](images/llm-integration(8).png "image_tooltip")

4. On the **Auth** tab, select an existing authorization profile from the drop-down or create a new profile  to use for this request. For more information, see the[ Bot Authorization Overview](https://developer.kore.ai/docs/bots/advanced-topics/authorization/bot-authentication/) article. 
 


    ![alt_text](images/llm-integration(15).png "image_tooltip")
 
 

       **Note**: OAuthv2.0 and Kerberos SPNEGO auth profiles are supported for the Custom LLM integration. 

5. Click **Test**. The Request Body to test LLM Connection pop-up is displayed. 





    ![alt_text](images/llm-integration(2).png "image_tooltip")

6. Enter the test payload and then click **Test** to check the connection. If the LLM connection is successful during the test call, it displays a confirmation message. If not, it shows an error message. 

    ![alt_text](images/llm-integration(7).png "image_tooltip")

7. Please **Read Policy Guidelines**, select the check box, and then click **Save**.
8. The success confirmation message is displayed on the screen. The configured model is listed in the LLM Integration section. The status changed to _X/Y_ models configured, where _X_ is the number of the model(s) configured, and _Y_ is the number of model(s) supported. 

    ![alt_text](images/llm-integration(17).png "image_tooltip")

9. The next step is to add[ Prompts](https://developer.kore.ai/docs/bots/nlp/prompts-and-requests-library/).


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



1. Go to **Build** > **Natural Language** > **Generative AI & LLM**.
2. In the **LLM Integration** section, click three dots (more icons) and then click the **Reset Configuration** for the integration you want to reset. 




    ![alt_text](images/llm-integration(14).png "image_tooltip")

3. Click **Reset** in the confirmation dialog. 

    ![alt_text](images/llm-integration(6).png "image_tooltip")

4. The success message is displayed.


### Delete Configured Custom LLM Integration

Steps to delete an integration:



1. Go to **Build** > **Natural Language** > **Generative AI & LLM**.
2. In the **LLM Integration** section, click three dots (more icons) and then click **Delete** for the integration you want to delete. 

    ![alt_text](images/llm-integration(13).png "image_tooltip")

3. Click **Delete** in the confirmation dialog. 


    ![alt_text](images/llm-integration(16).png "image_tooltip")

4. The success message is displayed.

		
