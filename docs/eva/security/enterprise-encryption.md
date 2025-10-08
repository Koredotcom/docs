# Enterprise Encryption

**Enterprise Encryption** secures organizational data with flexible, enterprise-grade encryption options that meet both compliance and operational needs. Administrators can choose between a **system-generated Default Key** for quick setup or **Bring Your Own Key (BYOK)** for maximum control.

<img src="../images/enterprise-encryption_1.png" alt="enterprise-encryption" title="enterprise-encryption" style="border: 1px solid gray; zoom:80%;">

## Default Encryption Key Management

Default encryption keys provide a quick and secure setup without additional configuration.

**Viewing Default Key**

The default encryption key is displayed in the main interface, providing immediate visibility into your current encryption configuration.

### Managing Keys

* **Copy** -- Click **Copy** to add the key to your clipboard.
* **Refresh** -- Click **Refresh** to generate a new key instantly.

!!! note

    Default keys remain active and functional only when BYOK is not activated.

## Bring Your Own Key (BYOK) Configuration

Bring Your Own Key (BYOK) encryption for public cloud SaaS deployments allows enterprises to encrypt their entire account data while retaining full control over their encryption keys. Enterprises can use their own Customer Master Keys (CMKs) for encrypting all organizational data.

**Important Security Considerations**:

* Once BYOK is configured, you cannot revert to default keys.
* You must safeguard your encryption key to prevent data loss.
* BYOK configurations cannot be deleted or changed once activated - contact support if modifications are needed.

### Prerequisites

Before configuring BYOK, ensure you have:

* An active **AWS** or **Azure** account with encryption services enabled.
* Permissions to create and manage ARNs (AWS) or Key Vault credentials (Azure).
* Access to the required resource identifiers.
* Completed setup steps in your **Azure tenant** or **AWS account** (refer to [Azure](../security/azure-enterprise-encryption.md) and [AWS](../security/aws-enterprise-encryption.md) developer documentation for details).

### BYOK Setup Process

Follow this guided configuration to integrate your cloud provider's encryption services seamlessly. The setup process includes validation steps to ensure your configuration works correctly before activation.

### Implementation Steps

1. **Start Setup**
    1. Navigate to **Admin Console > Enterprise Encryption**.
    2. Under **Bring Your Own Key**, click **Create Key**.
2. **Configure Cloud Provider Details**
    3. **Select Provider** – Choose **AWS** or **Azure**.
    4. **Enter Identifiers**:
        1. **AWS** – Provide the ARN of your CMK and Role ARN.
        2. **Azure** – Provide the Key Vault URL and Tenant ID.
    5. **Additional Inputs**:
        3. **AWS** – Account ID (with copy option).
        4. **Azure** – Client ID and Client Name (with copy option).
3. **Test Connection**
    6. Click **Test Connection** to validate:
        5. Key accessibility
        6. Correct permissions
        7. Authentication credentials
    7. If successful, click **Next**.
4. **Finalize Setup**: Click **Proceed** to complete the configuration.
   
## Post-Activation Key Management

Once BYOK is active:

* The system automatically enforces BYOK for all encryption operations.
* **View Only** -- Key details can be viewed but not edited, ensuring integrity. Default key actions (copy, refresh) are disabled.
* **No Removal Option** -- BYOK configurations are permanent once activated. Contact support if you need to make changes to your encryption setup.