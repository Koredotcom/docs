# AWS KMS BYOK Integration Setup

Integrating AWS Key Management Service (KMS) with our application establishes a secure connection between your encryption keys and our multi-tenant platform, enabling Bring Your Own Key (BYOK) functionality. This document provides step-by-step instructions for the following:

1. Ensure you have a KMS Customer Managed Key ready for integration.
2. Create an IAM role for our application with the appropriate trust policy.
3. Configure permissions for KMS operations and attach them to the role.
4. Grant the IAM role access to your Customer Managed Key.
5. Share the required information to complete the integration.

For detailed guidance on AWS KMS, refer to the [AWS KMS Developer Guide](https://docs.aws.amazon.com/kms/latest/developerguide/overview.html).

## Prerequisites

**We will provide you with**:

* **Our AWS Account ID**: A 12-digit identifier (e.g., 123456789012) required to configure the IAM role trust policy

**You will provide us with**:

* **Role ARN**: The ARN of the IAM role you create (e.g., `arn:aws:iam::&lt;your-account-id>:role/&lt;role-name>`)
* **CMK ARN**: The ARN of your KMS Customer Managed Key (e.g., `arn:aws:kms:&lt;region>:&lt;your-account-id>:key/&lt;key-id>`)

## Ensure you have a KMS Customer Managed Key

Verify that you have a Customer Managed Key (CMK) in AWS KMS for encryption purposes.

1. **Note the CMK ARN** (e.g., `arn:aws:kms:&lt;region>:&lt;your-account-id>:key/&lt;key-id>`), which can be found on the key's details page in the KMS console.
2. **Save this ARN** as you will share it with our team during the integration process.

##  Create an IAM role for our application

Set up an IAM role that our application can assume to access your KMS key.

1. **Navigate to IAM** > **Roles** > **Create role** in the AWS Console.
2. **Select "Another AWS account"** and enter our AWS Account ID (provided via email or customer portal).
3. **Name the role** (e.g., `YourAppAccessRole`) and create it.
4. **Note the Role ARN** (e.g., `arn:aws:iam::&lt;your-account-id>:role/YourAppAccessRole`).

**Configure the trust policy**

1. Go to **IAM** > **Roles** > **Your role** > **Trust relationships** > **Edit trust policy**.
2. **Set the trust policy** as follows:

```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::<our-account-id>:root"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}

```
## Configure KMS permissions for the role

Create and attach a permissions policy that allows the necessary KMS operations.

1. **Navigate to IAM** > **Policies** > **Create policy** > **JSON**.
2. **Create a permissions policy** with the following JSON:

```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "AllowKMSActions",
      "Effect": "Allow",
      "Action": [
        "kms:Encrypt",
        "kms:Decrypt",
        "kms:ReEncrypt*",
        "kms:GenerateDataKey*",
        "kms:DescribeKey"
      ],
      "Resource": "<your-cmk-arn-from-step-1>"
    }
  ]
}
```
3. **Name the policy** (e.g., `YourAppKMSAccessPolicy`) and create it.
4. **Attach the policy to the role** by going to **IAM** > **Roles** > **Your role** > **Add permissions** > **Attach policies**.

## Grant the role access to your Customer Managed Key

Authorize the IAM role to access your CMK by updating the key policy.

1. **Navigate to the KMS console** > **Customer managed keys** and select your CMK.
2. **Go to the Key policy tab** and switch to **Edit** mode.
3. **Add the following policy statement** to the existing policy's Statement array, replacing `&lt;your-role-arn>` with the Role ARN from step 2:

```json
{
  "Sid": "AllowYourAppAccess",
  "Effect": "Allow",
  "Principal": {
    "AWS": "<your-role-arn>"
  },
  "Action": [
    "kms:Encrypt",
    "kms:Decrypt",
    "kms:ReEncrypt*",
    "kms:GenerateDataKey*",
    "kms:DescribeKey"
  ],
  "Resource": "*"
}
```
4. **Save the updated key policy.**

## Share required information

Provide our team with the following details to complete the integration:

* Your **Role ARN** from step 2 (e.g., `arn:aws:iam::&lt;account-id>:role/&lt;role-name>`)
* Your **CMK ARN** from step 1 (e.g., `arn:aws:kms:&lt;region>:&lt;account-id>:key/&lt;key-id>`)

These steps ensure our application can securely access your CMK for BYOK functionality while maintaining the highest security standards.
