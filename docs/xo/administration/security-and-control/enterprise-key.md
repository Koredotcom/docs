# Enterprise Key Management

Enterprise Key Management is a crucial security feature on the platform designed to safeguard data through encryption. The feature provides organizations with extensive control over their data encryption strategies. Administrators can utilize the Enterprise Key page to manage data encryption keys, which protect sensitive information stored on Kore.ai servers. This encompasses all enterprise data, user information, and bot-related content. 

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

Bring Your Own Key (BYOK) encryption for Kore's public cloud SaaS deployments allow enterprises to encrypt their data while retaining full control over their encryption keys. Enterprises can use their own Customer Master Keys (CMKs) for encrypting specific app or bot data. 

Key benefits 

* Enhanced security by allowing customers to manage their own encryption keys.
* Flexibility to choose which apps/bots are encrypted with each key.
* Granular control over encryption key management.
* Improved compliance with data protection regulations.


### Implementation Steps

**1. Initiate BYOK Setup**

  1. On the Admin Console, navigate to the **Enterprise Key** menu.
  2. Click **Create Key** under the **Bring Your Own Key** section.  
<img src="../images/byok_1.png" alt="BYOK" title="BYOK" style="border: 1px solid gray;zoom:70%;"/>

**2. Configure Cloud Provider Details**

 1. Select your **Cloud Provider** from the dropdown menu.
 2. Enter the appropriate key identifier:
     * **For AWS**: ARN (Amazon Resource Name) of your CMK
     * **For Azure**: Key Vault URL
 3. Provide authentication credentials:
     * **For AWS**: Role ARN
     * **For Azure**: Tenant ID

**3. Set Enforcement Date**: Choose an **Enforcement Date** for when the encryption will begin.
   This date determines when your CMK will start encrypting data. Plan this date carefully to ensure a smooth transition.

**4. Test Connection**: Click **TEST Connection** to verify the configuration. 
    The system will validate Key accessibility, Proper permissions, and Authentication credentials.  If the test is successful, the **Next** button will be enabled.


**5. Select Applications and Bots**

 1. On the next screen, you will see a list of all **Apps/Bots** in the workspace that will be encrypted with the provided CMK.   
 <img src="../images/byok_2.png" alt="BYOK" title="BYOK" style="border: 1px solid gray;zoom:70%;"/>

 2. Review the list of all applications and bots in your workspace.
    
    * By default, all items are selected for CMK encryption.
    * Optionally deselect specific apps/bots to keep them on the default Kore.ai encryption.
    * Consider your security requirements when making selections.

**6. Complete Setup**: Click **Proceed** to finalize the configuration. 
    Your CMK will be added to the enterprise keys list. Encryption will begin on the specified enforcement date.

!!!note

    Admins can modify the CMK (update the ARN and retest) until the Enforcement Date. After this date, they can only rotate the key or update the list of Apps/Bots encrypted with the CMK.
