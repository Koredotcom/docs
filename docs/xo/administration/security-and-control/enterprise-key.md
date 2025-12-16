# Enterprise Key Management

Enterprise Key Management is a crucial security feature on the platform designed to safeguard data through encryption. The feature provides organizations with extensive control over their data encryption strategies. Administrators can utilize the Enterprise Key page to manage data encryption keys, which protect sensitive information stored on Kore.ai servers. This encompasses all enterprise data, user information, and app-related content. 

The platform offers two primary approaches to key management:

* **Default Encryption** - Automatic encryption using platform-managed keys.
* **Bring Your Own Key (BYOK)** - Custom encryption using organization-controlled keys.

## Default Encryption Key Management

### How It Works

By default, the platform automatically encrypts all enterprise data using a platform-managed encryption key. This includes:

* User data and profiles
* Bot configurations and conversations
* Enterprise settings

### Key Rotation

The encryption key follows a regular rotation schedule to maintain security:

* **Automatic rotation**: Every 60 days
* **Manual rotation**: Available on demand through the admin console

### Managing Default Keys

To generate a new enterprise data encryption key:

1. Navigate to the **Enterprise Key** page in the **Security & Control** module.  
<img src="../images/bac-enterprise-key.png" alt="Enterprise key" title="Enterprise key" style="border: 1px solid gray;zoom:70%;"/>

2. Click the **Refresh** button. The system will generate and apply a new encryption key immediately.

## Bring Your Own Key (BYOK)

### Overview

Bring Your Own Key (BYOK) encryption in Kore’s public cloud SaaS gives enterprises complete control over their encryption keys while protecting sensitive data. 
With BYOK, organizations use their own Customer Master Keys (CMKs) to encrypt application and bot data, ensuring stronger security and compliance.

Kore’s BYOK solution integrates with external key management systems such as AWS Key Management Service (KMS) and Azure Key Vault. Customers retain ownership of their encryption keys while leveraging Kore’s secure, scalable cloud platform with HSM-backed keys.

### Prerequisites

**General Requirements**

* Active Kore SaaS subscription with BYOK feature enabled
* Administrative access to your cloud environment (AWS or Azure)
* Network connectivity between the Kore platform and your key management service

**AWS Prerequisites**

* AWS account with KMS service enabled
* IAM permissions to create roles and policies
* Existing Customer Managed Key (CMK) or permissions to create one

**Azure Prerequisites**

* Azure subscription with Key Vault service enabled
* Azure AD Global Administrator privileges
* Existing Key Vault or permissions to create it

### AWS KMS Configuration


**Step 1: Prepare Customer Managed Key (CMK)**

**Create New CMK**

1. Navigate to AWS KMS console.
2. Click **Create key** → **Symmetric** → **Encrypt and decrypt**.
3. Configure key policy to allow administrative access.
4. Save the **CMK ARN**:
     arn:aws:kms:&lt;region>:&lt;account-id>:key/&lt;key-id>

**Use Existing CMK**

Select the existing CMK in the console and copy its ARN.

**Step 2: Create IAM Role for Kore Application**

**Create the Role**

1. Navigate to **IAM** > **Roles** > **Create role.**
2. Select **Another AWS account** and enter Kore’s AWS Account ID (shared by Kore).
3. Click **Next**.
4. Name the role (for example, `KoreByokAccessRole`).
5. Navigate to Trust relationships > Edit trust policy and replace with the following policy:


```
{ "Version": "2012-10-17",
 "Statement": [
   {
  "Effect": "Allow",
     "Principal": {
       "AWS": "arn:aws:iam::<KORE-ACCOUNT-ID>:root"
     },
     "Action": "sts:AssumeRole",
     "Condition": {
       "StringEquals": {
         "sts:ExternalId": "<EXTERNAL-ID-PROVIDED-BY-KORE>"
       }
     }
   }
 ]
}
```

**Step 3: Create and Attach Permissions Policy**

**Create KMS Permissions Policy**

1. Navigate to IAM > Policies > Create policy.
2. Select JSON tab.
3. Enter the following policy:


            ```
            {
            "Version": "2012-10-17",
            "Statement": [
            { "Sid": "AllowKMSOperations",
                "Effect": "Allow"
                "Action": [
                "kms:Encrypt",
                "kms:Decrypt",
                "kms:ReEncrypt*",
                "kms:GenerateDataKey*",
                "kms:DescribeKey"
                ],
                "Resource": "<YOUR-CMK-ARN-FROM-STEP-1>"
            }
            ]
            }

            ```

3. Name the policy (for example, `KoreByokKmsPolicy`)  
4. Create the policy and attach it to your IAM role.

**Step 4: Update CMK Key Policy**

1. Navigate to KMS > Customer managed keys.
2. Select your CMK and edit the key policy to include:

```
{
 "Sid": "AllowKoreApplicationAccess",
 "Effect": "Allow",
 "Principal": {
   "AWS": "arn:aws:iam::<YOUR-ACCOUNT-ID>:role/<ROLE-NAME>"
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

**Step 5: Test Configuration**

Run the following AWS CLI command to verify if  the role can access your CMK:

```
aws sts assume-role 
 --role-arn arn:aws:iam::<YOUR-ACCOUNT-ID>:role/<ROLE-NAME> 
 --role-session-name test-session

aws kms describe-key 
 --key-id <YOUR-CMK-ARN> 
 --region <YOUR-REGION>
```
### Azure Key Vault Configuration

**Step 1: Authorize Kore Application in Your Tenant**

**Option 1: Admin Consent URL**

1. Log in to Azure portal as Global Administrator.
2. Navigate to the following URL (replace `&lt;YOUR-TENANT-ID>` and `&lt;KORE-CLIENT-ID>`):

    ```
         https://login.microsoftonline.com/<YOUR-TENANT-ID>/adminconsent?client_id=<KORE-CLIENT-ID

    ```

3. Review permissions and grant admin consent.

**Option 2: Azure CLI**

1. Open Azure Cloud Shell or install Azure CLI locally.
2. Login as Global Administrator:  ```az login```
3. Create service principal: ```az ad sp create --id '<KORE-CLIENT-ID>'```

**Step 2: Prepare Key Vault and Key**

1. In Azure Portal, create a **Key Vault** if one doesn’t exist.
2. Configure:
    * **Resource group**: Select or create
    * **Key vault name**: Choose unique name
    * **Region**: Select appropriate region
    * **Pricing tier**: Standard or Premium
3. Note the Key Vault URI: `https://&lt;vault-name>.vault.azure.net/`

Create RSA Key (if needed)

1. In your Key Vault, navigate to **Keys**
2. Click **Generate/Import**
3. Configure:
    * **Options**: Generate
    * **Name**: Choose descriptive name
    * **Key type**: RSA
    * **RSA key size**: 2048 or 4096
4. Note the Key Identifier URL.

**Step 3: Configure Key Vault Access**

Assign Key Vault Permissions  

1. Navigate to **Access control (IAM)** in your Key Vault.
2. Click **Add role assignment**. 
3. Configure:
    * **Role**: Key Vault Crypto User
    * **Assign access to**: User, group, or service principal 
    * **Members**: Search for Kore application name  
3. Click **Review + assign**

**Step 4: Configure Network Access**

1. **Recommended:** Enable a private endpoint for Kore platform access.
2. Alternatively, allow trusted Microsoft services and Kore IP ranges.

### AI for Service Configuration

**1. Initiate BYOK Setup**

1. On the Admin Console, navigate to the **Enterprise Key** menu.
2. Click **Create Key** under the **Bring Your Own Key** section. 

<img src="../images/byok_1.png" alt="BYOK" title="BYOK" style="border: 1px solid gray;zoom:70%;"/>

**2. Configure Cloud Provider Details**

1. Select your **Cloud Provider** from the dropdown menu (AWS or Azure).
2. Enter Key name (For Azure)- Name of your RSA key
3. Enter the appropriate key identifier:
    * **For AWS**: ARN (Amazon Resource Name) of your CMK
    * **For Azure**: Key Vault URL
4. Provide authentication credentials:
    * **For AWS**: Role ARN
    * **For Azure**: Tenant ID

**3. Set Enforcement Date**: Choose an **Enforcement Date** for when the encryption will begin. This date determines when your CMK will start encrypting data. Plan this date carefully to ensure a smooth transition.

**4. Click Test Configuration** to validate connection

1. System performs:
    * Connectivity test to your KMS/Key Vault
    * Authentication verification
    * Encryption/decryption round-trip test
2. Verify all tests pass before proceeding.

**5. Select Applications and Bots**

1. On the next screen, you will see a list of all **Apps/Bots** in the workspace that will be encrypted with the provided CMK.  
    
    <img src="../images/byok_2.png" alt="BYOK" title="BYOK" style="border: 1px solid gray;zoom:70%;"/>

2. Review the list of all applications and bots in your workspace.
    * By default, all items are selected for CMK encryption.
    * Optionally deselect specific apps/bots to keep them on the default Kore.ai encryption.
    * Consider your security requirements when making selections.

**6. Complete Setup**: Click **Proceed** to finalize the configuration. Your CMK is added to the enterprise keys list. Encryption begins on the specified enforcement date.

!!! Note
    
    Admins can modify the CMK (update the ARN and retest) until the Enforcement Date. After this date, they can only rotate the key or update the list of Apps/Bots encrypted with the CMK.

**Related Links**

* AWS KMS Developer Guide:[ https://docs.aws.amazon.com/kms/](https://docs.aws.amazon.com/kms/){:target="_blank"}
* Azure Key Vault Documentation:[ Azure Key Vault documentation](https://docs.microsoft.com/en-us/azure/key-vault/){:target="_blank"}

