
# General Purpose


AI for work offers seamless integration with leading AI services like Azure OpenAI, OpenAI, and Anthropic. You can effortlessly tap into these services' core capabilities using pre-configured prompts and APIs.

!!!Note

    This document outlines the procedure for configuring OpenAI. Similar steps apply for Azure OpenAI and Anthropic integration.        

Steps to configure a pre-built LLM:

1. Go to **Admin Console > Assist configuration > General purpose**.  
<img src="../images/general-purpose-llm.png" alt="general-purpose-llm" title="general-purpose-llm" style="border: 1px solid gray; zoom:80%;">

1. Click **New** and choose the LLM you want to configure from the dropdown.  
<img src="../images/general-purpose-llm-new.png" alt="general-purpose-llm" title="general-purpose-llm" style="border: 1px solid gray; zoom:80%;">

1. Enter authorization details like **Integration Name** and **API Key**. Select **Model Name** from drop down. 
2. Read the **Policy Guidelines**, select the checkbox, and click **Save**.  
<img src="../images/open-ai.png" alt="open-ai" title="open-ai" style="border: 1px solid gray; zoom:80%;">

1. The configured model is listed in the **General LLM Integrations**.  
<img src="../images/configured-model.png" alt="configured-model" title="configured-model" style="border: 1px solid gray; zoom:80%;">  

## Custom LLM Integration

AI for work enables enterprises to power up their virtual assistants with any Large Language Model (LLM) of their preference. The bring-your-own (BYO) model framework supports integrations with externally hosted models by third parties as well as models hosted by the enterprises themselves.

Steps to configure a Custom LLM:

1. Go to **Admin Console > Assist configurations > General purpose**.  
2.  Click **New** and choose **Custom LLM** from the dropdown.
3. Enter the details like **Integration Name**, **Model Name**, **Endpoint URL**, and **Auth**. Select the **Method** and **Max request tokens** from the dropdown.  
<img src="../images/custom-llm.png" alt="custom-llm" title="custom-llm" style="border: 1px solid gray; zoom:80%;">
 
4. Click **+ Add a header** and enter the key and value.  
<img src="../images/add-header.png" alt="add-header.png" title="add-header" style="border: 1px solid gray; zoom:80%;">

5. Enter the test payload and then click **Test** to check the connection. If the LLM connection is successful during the test call, it displays a success message. If not, it shows an error message.  
<img src="../images/success-message.png" alt="success-message" title="success-message" style="border: 1px solid gray; zoom:80%;">

6. Read the **Policy Guidelines**, select the checkbox, and click **Save**.
7. The success confirmation message is displayed on the screen. The configured model is listed in the **General LLM Integrations**.

## Embedding models

This feature allows you to connect and configure models for generating embeddings. AI for work supports both pre-built models (OpenAI and Azure OpenAI) and custom LLMs for this purpose.

The procedure for Integrating Embedding Models is similar to integrating General-purpose LLMs.

<img src="../images/embedding-model.png" alt="embedding-model.png" title="embedding-model.png" style="border: 1px solid gray; zoom:80%;">