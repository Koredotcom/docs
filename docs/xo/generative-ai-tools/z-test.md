<!-----



Conversion time: 0.548 seconds.


Using this Markdown file:

1. Paste this output into your source file.
2. See the notes and action items below regarding this conversion run.
3. Check the rendered output (headings, lists, code blocks, tables) for proper
   formatting and use a linkchecker before you publish this page.

Conversion notes:

* Docs to Markdown version 1.0β44
* Thu Sep 04 2025 04:44:10 GMT-0700 (PDT)
* Source doc: User Guide: Configuring Amazon Bedrock Models-AI For Service
----->



# User Guide: Configuring Amazon Bedrock Models

This guide helps you connect and configure Amazon Bedrock models within the platform by setting up credentials, model details, and testing your integration.


---


## Overview

To ensure secure cross-account access, this setup follows the principle of **least privilege**. You will create an IAM Role that grants only the required permissions to invoke Bedrock models and explicitly trusts our platform to assume this role via AWS STS.

To integrate your Bedrock models, you will need to:



1. Set up IAM credentials and a trust policy to allow access.
2. Provide the correct Model ID and deployment Region.
3. Test the configuration and map the output.


---


## 1. Setting Up Credentials and Trust Policy (IAM Role & STS)


### Step 1.1: Create IAM Role & Trust Policy in Your AWS Account

You must create an IAM role that grants access to invoke Amazon Bedrock models. This role will be **assumed** by our platform.


#### 1.1.1: Create the IAM Role

Create a new IAM role in your AWS account. This role will be assumed by the platform to make Bedrock API calls on your behalf. 

Assign the following permissions to the role. You can follow the IAM role creation setup [here](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create.html). [This](https://docs.aws.amazon.com/bedrock/latest/userguide/security_iam_id-based-policy-examples.html) AWS documentation link also defines best practices for setting up IAM policies. An example is added below: 


#### 1.1.2: Set the Trust Policy

Set the trust policy to allow the platform to assume the IAM role. Replace `&lt;kore-arn>` with the AWS account ID provided by the platform. 

 For private/on-prem deployments, the trust policy should point to your internal AWS IAM role.


---


### Step 1.2: Set the STS Endpoint

Use the STS endpoint for the region where your IAM role resides. STS endpoints are available [here](https://docs.aws.amazon.com/general/latest/gr/sts.html). Example:

Ensure this matches the region of your IAM role — **not necessarily the region of the model**. 


---


## 2. Finding the Right Model ID and Region

Amazon Bedrock supports different model ID formats depending on how the model is deployed. This section outlines how to find the correct values for each case.


### 2.1 Base Foundation Models

Use these IDs directly if you're using base foundation models offered by Bedrock. An exhaustive list of these can be found [here](https://docs.aws.amazon.com/bedrock/latest/userguide/models-supported.html)


---


### 2.2 Marketplace-Deployed Models

If you’ve subscribed to a model through the AWS Marketplace, go to:

**Bedrock Console → Model Access → Subscriptions**

There you will find the **Model ARN** or a Marketplace Model ID, such as:

Enter the **model name part** (after `foundation-model/`) into the Model ID field.


---


### 2.3 Models with Inference Profiles (Provisioned Throughput)

For models that **do not support on-demand throughput** (like Claude 3), you must create a **Provisioned Throughput** inference configuration.

To find the correct ID:



1. Go to the **Bedrock Console > Provisioned Throughput**
2. Select or create an **inference configuration**
3. Copy the **Inference ARN** or ID

Example ID:

Use this `my-throughput-id` value in the **Model ID** field.


---


## 3. Test and Map the Model

Once you’ve provided credentials and model details, you can test your configuration and map model responses.


---


### Step 3.1: Define Custom Prompt 



1. Craft prompts for the required features 


---


### Step 3.2: Test the Configuration



1. Provide test values for the input variables.
2. Click **“Test”** to invoke the model.
3. Review the raw response.

    Ensure the IAM Role, STS endpoint, and model ID are valid if the call fails.



---


### Step 3.3: Map Prompts to the features



1. Link the custom prompts to the required features at the global/node levels