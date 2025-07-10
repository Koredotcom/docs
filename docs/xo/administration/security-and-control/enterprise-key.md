# Enterprise Key Management

Enterprise Key Management is a crucial security feature on the platform designed to safeguard data through encryption. The feature provides organizations with extensive control over their data encryption strategies. Administrators can utilize the Enterprise Key page to manage data encryption keys, which protect sensitive information stored on Kore.ai servers. This encompasses all enterprise data, user information, and bot-related content. 

The platform offers two primary approaches to key management:

* **Default Kore.ai Encryption** - Automatic encryption using platform-managed keys
* **Bring Your Own Key (BYOK)** - Custom encryption using organization-controlled keys

## Default Encryption Key Management

### How It Works

By default, Kore.ai automatically encrypts all enterprise data using a platform-managed encryption key. This includes:

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

2. Click the **Refresh** button.
3. The system will generate and apply a new encryption key immediately.

## Bring Your Own Key (BYOK)

BYOK empowers enterprises to use their own Customer Master Keys (CMKs) for encrypting specific application or bot data. This feature provides:

* Enhanced control over encryption keys.
* Alignment with organizational compliance requirements.
* Compatibility with existing key management infrastructure.
* Support for public cloud SaaS deployments.


### Implementation Steps


**1. Initiate BYOK Setup**

* On the Admin Console, navigate to the **Enterprise Key** menu.
* Click **Create Key** under the **Bring Your Own Key** section.  
<img src="../images/byok_1.png" alt="BYOK" title="BYOK" style="border: 1px solid gray;zoom:70%;"/>

**2. Configure Cloud Provider Details**

* Select your **Cloud Provider** from the dropdown menu.
* Enter the appropriate key identifier:
    * **For AWS**: ARN (Amazon Resource Name) of your CMK
    * **For Azure**: Key Vault URL
* Provide authentication credentials:
    * **For AWS**: Role ARN
    * **For Azure**: Tenant ID

**3. Set Enforcement Date**

* Choose an **Enforcement Date** for when the encryption will begin.
This date determines when your CMK will start encrypting data. Plan this date carefully to ensure a smooth transition.

**4. Test Connection**

* Click **TEST Connection** to verify the configuration.
The system will validate Key accessibility, Proper permissions, and Authentication credentials.  If the test is successful, the **NEXT** button will be enabled.


**5. Select Applications and Bots**

* On the next screen, users will see a list of all **Apps/Bots** in the workspace that will be encrypted with the provided CMK.   
<img src="../images/byok_2.png" alt="BYOK" title="BYOK" style="border: 1px solid gray;zoom:70%;"/>

* Review the list of all applications and bots in your workspace.
* By default, all items are selected for CMK encryption.
* Optionally deselect specific apps/bots to keep them on the default Kore.ai encryption.
* Consider your security requirements when making selections.

**6. Complete Setup**

* Click **Proceed** to finalize the configuration.
* Your CMK will be added to the enterprise keys list.
* Encryption will begin on the specified enforcement date.

!!!note

    Users can modify the CMK (update the ARN and retest) until the Enforcement Date. After this date, they can only rotate the key or update the list of Apps/Bots encrypted with the CMK.
