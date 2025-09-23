# Configuring Amazon Bedrock Models

To ensure secure cross-account access, this setup follows the principle of **least privilege**. You must create an IAM Role that grants only the required permissions to invoke Bedrock models and explicitly trusts the platform to assume this role via AWS STS.

To integrate your Bedrock models, you will need to:

1. Set up IAM credentials and a trust policy to allow access.
2. Provide the correct Model ID and deployment region.
3. Test the configuration and map the output.


### Step 1. Setting Up Credentials and Trust Policy (IAM Role and STS)

**1. Create the IAM Role in Your AWS Account**

Create a new IAM role in your AWS account that grants access to invoke Amazon Bedrock models. This role will be assumed by the platform to make Bedrock API calls on your behalf. 

You can follow the IAM role creation setup in the [AWS IAM documentation](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create.html).

For best practices on setting up IAM policies for Bedrock, see the
[AWS policy examples guide](https://docs.aws.amazon.com/bedrock/latest/userguide/security_iam_id-based-policy-examples.html). 

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

Set the trust policy to allow the platform to assume the IAM role. Replace `<inceptionai-arn>` with the AWS account ID provided by the platform.

```
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "<inceptionai-arn>"
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

Ensure the STS region matches the region of your IAM role — **not necessarily the region of the model**. 

### Step 2. Finding the Right Model ID and Region

Amazon Bedrock supports different model ID formats depending on how the model is deployed. This section outlines how to find the correct values for each case.

**1. Base Foundation Models**

If you're using base foundation models provided by Bedrock, you can use their standard model IDs directly. Refer to the complete list in the [AWS Documentation](https://docs.aws.amazon.com/bedrock/latest/userguide/models-supported.html).


**2. Marketplace-Deployed Models**

If you’ve subscribed to a model through the AWS Marketplace:

1. Go to **Bedrock Console → Model Access → Subscriptions**.
2. Locate the **Model ARN** or a Marketplace Model ID. For example:
   ```
   arn:aws:bedrock:us-east-1::foundation-model/your-model-id
   ```
3. Enter only the model name part (after `foundation-model/`) into the **Model ID** field.

**3. Models with Inference Profiles (Provisioned Throughput)**

For models that do not support on-demand throughput (like Claude 3), you must create a Provisioned Throughput inference configuration.

1. Go to the **Bedrock Console > Provisioned Throughput**.
2. Select or create an **inference configuration**.
3. Copy the **Inference ARN** or ID. For example:
   ```
   bedrock:provisioned-model-inference/my-throughput-id
   ```
4. Use the `my-throughput-id` value in the **Model ID** field.


### Step 3. Test and Map the Model

Once you’ve provided credentials and model details, you can test your configuration and map model responses.

**1. Define Prompt Variables**

In the Prompt Variables section, add any variables used in your request payload.

For example:

* `prompt`: user input
* `system.prompt`: system instructions


**2. Define Request Body**

Use {{variableName}} to bind input fields dynamically.

Example payload:

```
{
  "prompt": "{{prompt}}",
  "max_tokens": 200,
  "temperature": 0.8
}
```

**3. Test the Configuration**

1. Provide test values for the input variables.
2. Click **Test** to invoke the model.
3. Review the raw response.

**Note**: If the call fails, ensure the IAM Role, STS endpoint, and model ID are valid .

**4. Map Output Fields**

Configure JSON Paths to extract:

* Model output (e.g., response text)
* Input and output token counts

Example:

<table>
  <tr>
   <td><strong>Field</strong>
   </td>
   <td><strong>JSONPath</strong>
   </td>
  </tr>
  <tr>
   <td>Output Text
   </td>
   <td><code>$.output.text</code>
   </td>
  </tr>
  <tr>
   <td>Input Token Count
   </td>
   <td><code>$.usage.input_tokens</code>
   </td>
  </tr>
  <tr>
   <td>Output Token Count
   </td>
   <td><code>$.usage.output_tokens</code>
   </td>
  </tr>
</table>








