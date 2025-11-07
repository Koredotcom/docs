

# LLM Integration


## Overview

The Platform enables you to configure with the leading LLM providers, bring-your-own (BYO) model, and Kore.ai XO GPT module. You can apply dynamic variables for secure provider authorization and monitor token usage.

### Models

To use LLM and Generative AI features, configure the integration with a pre-built LLM, a custom LLM, or the XO GPT Module. The Platform enables the immediate addition of new language models as system models for OpenAI, Azure OpenAI, and Anthropic without waiting for the platform to make the new models available.
 
### Prompts

Create a custom prompt or use a Platform provided prompt template, apply the model and prompt to the GenAI feature, and enable it. Create [ New Prompts](prompts-library.md) in the prompts library.


### Dynamic Variables

The Platform now enables seamless configuration of custom and pre-built LLMs, including newly launched ones, by allowing you to use content, context, and environment variables, including secure ones. Secure Variables, particularly for environment settings, function just as smoothly as the current system ensures.



!!! note

    * Runtime features can use content and environment variables.
    * Designtime features can use content, context, and environment variables.




**Key Advantages**

**Avoid Misuse of API Keys**: The system minimizes the risk of unauthorized access by utilizing secure environment variables for API keys. Properly configured permissions restrict visibility and usage to authorized applications or personnel only.

**Track Team-Wise Consumption**: Implementing tracking mechanisms for API key usage allows teams to monitor their consumption, enabling better resource allocation and identifying potential inefficiencies.

**Rotate Your API Keys**: Regularly rotating API keys enhances security by limiting the risk associated with compromised keys. A well-defined rotation schedule ensures that even if a key is leaked, it becomes useless after a predetermined period.

Ensure all necessary variables are set up before configuring the LLM. For more details, see [App Variables](../app-settings/variables/using-bot-variables.md).

The following table lists the fields you can configure as dynamic variables for each LLM provider.

| LLM Provider   | Fields Supported as Dynamic Variables        |
| ------------------ | -------------- |
| Azure OpenAI   | API Key, Sub-Domain, Model Deployment IDs      |
| OpenAI        | API Key             |
| Anthropic      | API Key                 |
| Amazon Bedrock | IAM Role ARN, Amazon STS API, Amazon Resource Name (ARN), Endpoint, Headers |
| Custom LLM     | Endpoint, Authorization, Headers               |


=== "Pre-built LLM"


    In case of Azure OpenAI, you enter the variable for API Key, User Sub Doman, and Deployment ID.
    <img src="../images/azurellmdv1.png" alt="Dynamic Variables" title=" " style="border: 1px solid gray; zoom:70%;">

    In the next step, enter the sample values in the Test Connection pop-up. You can select the checkbox to save these values for future use.  
    <img src="../images/llmsampletestingdv1.png" alt="Dynamic Variables" title=" " style="border: 1px solid gray; zoom:70%;">


=== "Provider's New LLM"

    In case of Azure OpenAI, enter the variable for Deployment ID.
    <img src="../images/rrazureaddmodel.png" alt="Dynamic Variables" title=" " style="border: 1px solid gray; zoom:70%;">
 
    <img src="../images/azuredynamic.png" alt="Dynamic Variables" title=" " style="border: 1px solid gray; zoom:70%;">

    In the next step, enter the sample values in the Test Connection pop-up. You can select the checkbox to save these values for future use.  
    <img src="../images/llmsampletestingdv1.png" alt="Dynamic Variables" title=" " style="border: 1px solid gray; zoom:70%;">

=== "Amazon Bedrock" 

 
    You can use the variable for AM Role ARN, Amazon STS API, Amazon Resource Name (ARN), Endpoint, and Headers (optional).
    <img src="../images/abr4.png" alt="Amazon Bedrock" title="Amazon Bedrock Test Payload" style="border: 1px solid gray; zoom:70%;">

=== "Custom LLM"

 
    In case of Custom LLM, you can use variable for the Endpoint and Headers.
    <img src="../images/customdynamic.png" alt="Dynamic Variables" title=" " style="border: 1px solid gray; zoom:70%;">
   
    In the next step, you must enter the sample values for the endpoints and header values. Enter the test payload and then click **Test** to check the connection. You can also save the sample values and test payload using the check box.  
    <img src="../images/customvariable.png" alt="Dynamic Variables" title=" " style="border: 1px solid gray; zoom:70%;">
<hr>


### Provider's New LLM


The Platform enables you to integrate newly launched language models into the out-of-box integration framework (OpenAI, Azure OpenAI, and Anthropic) with the required authentication. This ensures that newly launched models are immediately available without waiting for the platform to add them. Initially, these models don't include a pre-built/system prompt template, but you must create custom prompts for immediate use. Over time, the platform adds system prompts and templates while maintaining security and ensuring seamless adoption.


**Key Benefits**

* **Immediate Access to New Models**: Quickly access and utilize newly launched language models without waiting for platform-specific prompt development.
* **Custom Prompt Support**: Create custom prompts for new models, ensuring immediate usability while the platform gradually develops system prompts over time.
* **Security & Compliance**: Maintain platform security and authentication standards while eliminating integration delays.

### Token Usage

The LLM Token Usage gives you comprehensive visibility into LLM token consumption and performance across AI for Service. You can track token consumption, request volume, and median latency by module, model, and feature, with detailed breakdowns available in the Performance Analytics section. These insights help organizations monitor feature adoption, manage infrastructure costs, optimize AI capabilities, and make informed scaling decisions.

**Token Data Collection**

The Platform automatically captures usage data for pre-built models (OpenAI, Azure OpenAI, and Anthropic) regardless of the prompts used. For custom models and Amazon Bedrock models, you must map the Request and Response Token Keys in the custom prompts to enable tracking. Without this mapping, the Platform can't calculate consumption, which may result in unmonitored usage and unexpected costs.


Usage limits can be set during initial model setup or anytime after configuration completion from more options. To track token consumption, enable the Token Usage Limit toggle and configure the following fields. 

    
* Maximum Tokens: Set the token usage limit for notification purposes. Exceeding this limit won't block usage but will trigger an alert.
* Duration: Set duration in days after which the token limit resets automatically. You can set a maximum duration of 90 days.
* Schedule Start Date: Set the date today onwards for the usage cycle.
* Usage Notification: Enable the toggle to receive usage alert notifications when your usage reaches the defined threshold.
  
  * Send Notification at: Set the threshold in percentage from the predefined or custom threshold. You can set a maximum of 5 alerts.
  * Send to Users: Enter the email addresses of users who should receive the usage notification email.  
  <img src="../images/token-usage-limit1.png" alt="token consumption" title="token consumption " style="border: 1px solid gray; zoom:70%;">

## Model Providers

To use LLM and Generative AI features, you must configure the integration with a pre-built or custom LLM or XO GPT Module.

Review the model and feature support matrix for the [GenAI Features](genai-features.md).

### Authorization

The Authorization step establishes a secure connection between the Platform and the selected LLM provider, such as Azure OpenAI, OpenAI, or Anthropic. During this step, you provide authentication details that allow the Platform to communicate with the provider’s APIs on your behalf.

| Provider     | Required Fields   | Description  |
| ------------ | ------ | -------- |
| Azure OpenAI | API Key, <br>User Sub-Domain, <br>Deployment ID | The API Key authenticates your Azure account. <br>The User Sub-Domain identifies your Azure resource endpoint. <br>The Deployment ID specifies the deployed model that the Platform connects to. |
| OpenAI       | API Key                                 | Authenticates your OpenAI account and grants access to models.  |
| Anthropic    | API Key                                 | Authenticates your Anthropic account and grants access to models.   |
|Amazon Bedrock|Access Key ID and Secret Access Key, <br>Region, <br>Model ID|The Access Key ID and Secret Access Key authenticate your AWS account. <br>The Region identifies the AWS service region. <br>The Model ID specifies the Amazon Bedrock model to connect to.|
|Custom LLM|Endpoint, <br>Authorization, <br>Headers|The Endpoint specifies the API URL for the LLM. <br>The Authorization field defines the authentication method or credentials. <br>The Headers field includes any additional key-value pairs required for the request.|


You can replace static authorization values with dynamic variables to keep credentials secure and reusable across environments. When you use dynamic variables, the Platform substitutes the actual values during runtime. This approach prevents exposure of sensitive information and simplifies updates when credentials change.

###	Integrate Azure OpenAI

The Platform now provides Azure OpenAI as an out-of-the-box (OOB) integration. This integration enables users to access Azure OpenAI models directly from the Platform. You can authorize all models using dynamic variablees and integrate newly launched language models into the OOB integration. For newly launched models, the Platform does not provide system prompts or templates, so you must use custom prompts.

Steps to configure an Azure OpenAI:


1. Go to **Generative AI Tools** > **Models Library**.
2. Click **Configure Now** for Azure OpenAI and click **Next**.
3. On the **Authorization** tab:
    * Fill in the Authorization details.
    * Toggle on the required **model** and enter the **Deployment ID**.
    * (Optional) In the **Models** section, click **+ Add**. Enter the **Model ID**, **Model Display Name**, Model **Description**, and **Deployment ID**. Click **Add Model**. The current model is saved with a custom tag in the available models list. Toggle on the **model**. If you want to add more models, repeat the step. The Model ID is assigned by the LLM provider, while the Model Display Name is user-defined and used across the platform after integration is enabled.
4. Read the **Policy Guidelines**, select the checkbox, and click **Save**.
5. The Connection Status pop-up is displayed.
    * If a connection is successful, click **NEXT**.
    * If it fails, hover over the warning icon to view the error. Click **Cancel** to update the details or **Next** to save the failed configuration.
6. (Optional) To track token consumption, enable the Token Usage Limit toggle and configure the required settings.
7. Click **Save**.
8. The confirmation pop-up is displayed. Click **Confirm & Save**.
9. The configured model is listed in the Models Library. The next step is to enable[ GenAI Features](https://docs.kore.ai/xo/generative-ai-tools/genai-features/).

###	Integrate OpenAI

The Platform now provides OpenAI as an out-of-the-box (OOB) integration. This integration enables users to access OpenAI models directly from the Platform. You can authorize all models using dynamic variables and integrate newly launched language models into the OOB integration. For newly launched models, the Platform does not provide system prompts or templates, so you must use custom prompts.

Steps to configure an OpenAI:



###	Integrate Anthropic

The Platform now provides Anthropic as an out-of-the-box (OOB) integration. This integration enables users to access newly launched Anthropic models directly from the Platform. You can authorize models using dynamic variables. The Platform does not provide system prompts or templates for these models, so you must use custom prompts.

Steps to configure an Anthropic:


###	Amazon Bedrock LLM Integration Framework

The Platform now offers Amazon Bedrock as an out-of-box (OOB) integration. This integration lets platform users access Amazon Bedrock's models directly from the Platform. The users can create custom prompts for their specific use cases and use the connected models across GenAI features. While Amazon Bedrock is available as an OOB integration, the Platform doesn't provide any system prompts or templates. Users can only use the model with the help of custom prompts.



**Pre-requesites**

Before starting the integration process, ensure you have the necessary permissions and access to the IAM role and Amazon Bedrock resources in your AWS account. For more information, see [Policies and Permissions in AWS Identity and Access Management](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html).

**A. Create IAM Role and Configure Trust Policy**

To begin, you must create an IAM role in your AWS account that allows Platform to securely access Amazon Bedrock models. This role defines permissions and establishes a trust relationship so that the platform can assume the role via AWS STS.

Follow the steps below to configure the IAM role and trust policy:

**1. Create the IAM Role in Your AWS Account**

Create a new IAM role in your AWS account that grants access to invoke Amazon Bedrock models. This role will be assumed by the platform to make Bedrock API calls on your behalf.

You can follow the IAM role creation setup in the [AWS IAM documentation](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create.html).

For best practices on setting up IAM policies for Bedrock, see the [AWS policy examples guide](https://docs.aws.amazon.com/bedrock/latest/userguide/security_iam_id-based-policy-examples.html).

Assign the necessary permissions to the role. An example IAM policy is shown below:


```
{
 "Version": "2012-10-17",
 "Statement": [
   {
     "Effect": "Allow",
     "Action": [
       "bedrock:InvokeModel",
       "bedrock:ListFoundationModels"
     ],
     "Resource": "*"
   }
 ]
}
```


**2. Set the Trust Policy in Your AWS Account**

Set the trust policy to allow the platform to assume the IAM role. Replace with the AWS account ID provided by the platform.


```
{

 "Version": "2012-10-17",
 "Statement": [
   {
     "Effect": "Allow",
     "Principal": {
       "AWS": "<kore-arn>"
     },
     "Action": "sts:AssumeRole"
   }
 ]
}
```


For private/on-prem deployments, the trust policy should point to your internal AWS IAM role.

**3. Set the STS Endpoint**

Use the STS endpoint for the region where your IAM role resides.

You can find the full list of STS endpoints in the [AWS documentation](https://docs.aws.amazon.com/general/latest/gr/sts.html).

For example:


```
https://sts.us-east-1.amazonaws.com/
```


Ensure the STS region matches the region of your IAM role - not necessarily the region of the model.


**B. Raise a Support Ticket to Register your IAM Role**

After creating the IAM role in your AWS account, you need to raise a support ticket with Kore.ai to update the trust policy with your IAM Role ARN. This allows the platform to assume the role and invoke Bedrock.

To complete the registration:


1. Raise a support ticket with your IAM role ARN, requesting that it be added to the trust policy.
2. Wait for confirmation from Support that the role has been registered.

!!! note

    Without this step, the platform cannot assume your IAM role. Both your AWS account and Kore.ai’s environment must explicitly trust each other for secure cross-account access.


**Configure Amazon Bedrock LLM Integration**

Steps to integrate an Amazon Bedrock:


1. Go to **Generative AI Tools** > **Models Library**.
2. Click **Amazon Bedrock**.
3. On the **Authorization** tab, provide the following details.
    * **Provider Name**: Enter a name to identify the provider or group of language models you want to connect.
    * **Model Name**: Give a unique name to the language model you’re connecting with.
    * **Identity Access Management (IAM) Role ARN**: The IAM Role ARN enables the platform to securely access resources on behalf of users without the need for long-term access keys, supporting cross-account access, least privilege principles, and enhanced auditing capabilities.
    * **Amazon STS API**:
        * To assume an IAM role and obtain temporary security credentials, provide the AWS STS (Security Token Service) API endpoint, specifically the AssumeRole action. The STS API is essential for generating the temporary access key, secret key, and session token required to securely access AWS resources based on the permissions associated with the IAM role.
        * Ensure you have the correct endpoint URL for the AssumeRole action in the AWS region where your IAM role is located.
    * **Amazon Resource Name (ARN)**: The Amazon Bedrock ARN that grants your IAM role access to the specific Language Model in Amazon Bedrock. The ARN uniquely identifies the Language Model resource within the Amazon Bedrock service.
    * **Endpoint**: Enter the URL to interact with the Language Model’s API. 
    * **Headers**: If needed, include additional headers with metadata specific to your Language Model integration. These headers provide extra information or configuration options to the Language Model API.  
    <img src="../images/abr2n.png" alt="Amazon Bedrock" title="Amazon Bedrock" style="border: 1px solid gray; zoom:70%;">

4. Read the **Policy Guidelines**, select the checkbox, and click **Next**.
5. On the request prompt pop-up, enter the test payload and click **Test** to check the connection. You can also save the test payload using the check box. 
    <img src="../images/abr-payload.png" alt="Amazon Bedrock" title="Amazon Bedrock Test Payload" style="border: 1px solid gray; zoom:70%;">
6. The Connection Status pop-up is displayed.    
    * If a connection is successful, click **Next**. If the LLM connection is successful during the test call, it displays a confirmation message.  

    * If a connection fails, hover over the warning icon to view the error. Click **Cancel** to go back to the previous step and update the details. Click **Next** to save the configuration with an unsuccessful connection.
6. (Optional) To track token consumption, enable the Token Usage Limit toggle and configure the required settings. Refer [Token Usage](#token-usage).

7. Click **Save**.

8. The confirmation pop-up is displayed. Click **Confirm & Save**.  
  
8. The configured model is listed in the Models Library. The next step is to add[ Prompts](prompts-library.md).

###	Integrate Custom LLM Integration

The Platform now enables enterprises to power up their AI Agent with any Large Language Model (LLM) of their preference. The bring-your-own (BYO) model framework supports integrations with externally hosted models by third parties as well as models hosted by the enterprises themselves. It allows the creation of custom prompts that are optimized for their specific purposes and models. This generic framework works seamlessly with the Auth Profiles module of the platform, enabling enterprises to use the authentication mechanism of their choice.

!!! note

    The Platform offers generative AI features for English and non-English NLU and an AI Agent languages.


**Configure Custom LLM Integration**

You can integrate a custom LLM and build your Prompts and Requests Library for specific features.

Steps to Integrate a Custom LLM:



1. Go to **Generative AI Tools** > **Models Library**.
2. Click **Custom LLM**.
3. On the **Configuration** tab, enter the details like **Integration Name**, **Model Name**, **Endpoint**, and **Headers**.  
<img src="../images/customint.png" alt="Azure OpenAI" title="Azure OpenAI" style="border: 1px solid gray; zoom:70%;"> 

4. On the **Auth** tab, select an existing authorization profile from the drop-down or create a new profile to use for this request. For more information, see the[ App Authorization Overview](../app-settings/dev-tools/bot-authorization/bot-authentication.md) article. 
    ![alt_text](images/llm-integration(15).png  )

    !!! note

        OAuthv2.0 and Kerberos SPNEGO auth profiles are supported for the Custom LLM integration.  

        

5. Read the **Policy Guidelines**, select the checkbox, and click **Next**.
6. On the request prompt pop-up, enter the test payload and click **Next** to check the connection. You can also save the test payload using the check box.  
<img src="../images/custompayload.png" alt="Dynamic Variables" title=" " style="border: 1px solid gray; zoom:70%;">

7. The Connection Status pop-up is displayed.
    * If a connection is successful, click **Save**.  

    * If a connection fails, hover over the warning icon to view the error. Click **Cancel** to go back to the previous step and update the details. Click **Next** to save the configuration with an unsuccessful connection.  



6. (Optional) To track token consumption, enable the Token Usage Limit toggle and configure the required settings. Refer [Token Usage](#token-usage).

7. Click **Save**.
8. The confirmation pop-up is displayed. Click **Confirm & Save**.
8. The configured model is listed in the Models Library. The next step is to add[ Prompts](prompts-library.md).


###	Integrate Kore.ai XO GPT

The new Kore.ai XO GPT Models module provides fine-tuned large language models optimized for enterprise conversational AI Agents. These models have been evaluated and fine-tuned to be accurate, safe, and efficient for production deployment. Current capabilities include Conversation Summarization, User Query Rephrasing, Vector Generation, Answer Generation, and DialogGPT - Conversation Orchestration.


**Enable Kore.ai XO GPT Integration**

Steps to enable Kore.ai XO GPT Models.

1. Go to **Generative AI Tools** > **Models Library**.
2. Click **Enable Now** for Kore.ai XO GPT.  
3. On the **Models** tab, toggle on the models as required.
<img src="../images/new-xo-gpt-vdr-model.png" alt="Kore.ai XO GPT" title="Kore.ai XO GPT" style="border: 1px solid gray; zoom:70%;">

4. Read the Policy Guidelines, select the checkbox, and click **Save**.
5. The Configuration successful message is displayed, and the XO GPT is listed in the Models Library. 

6. You can now use these models in [GenAI Features](genai-features.md).




## Managing LLM Integrations (Reset or Delete)


If not using a configured LLM, you can reset/delete the LLM-specific integration using the **Reset Configuration/Delete** option. You can reset the OpanAI, Azure OpenAI, Anthropic, and Kore.ai XO GPT integration while you can delete the custom integrations.

When you reset/delete the integration, the system does the following:


* Removes all the integration details like keys, endpoints, deployment names, etc.
* The system removes the model from the selection list of supported LLM features and turns off the respective feature. You can select another configured and supported LLM for that feature.
* Deletes the related Prompts and Responses.

!!! note

    This change impacts only the in-development copy of the app. The changes will apply to the published version when you later publish the app with NLP configurations.

**Reset/Delete LLM Integration**

Follow these steps:

1. Go to **Generative AI Tools** > **Models Library**.
2. Click three dots (more icons) for the LLM Integration and then click the **Reset Configuration/Delete** you wusing-session-and-context-variables/ant to reset/delete.  
3. Click **Reset/Delete** in the confirmation dialog.  
4. The success message is displayed.



