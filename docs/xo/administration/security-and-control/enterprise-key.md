# Enterprise Key

On the **Enterprise Key** page in the **Security & Control** module of the Bots Admin Console, you can view, or regenerate your enterprise data encryption key.

By default, enterprise data, including user data, is automatically encrypted using this key when stored on Kore.ai servers. The encryption key is reissued every 60 days, or whenever manually refreshed by an admin.

<img src="../images/bac-enterprise-key.png" alt="Enterprise key" title="Enterprise key" style="border: 1px solid gray;zoom:70%;"/>

To generate a new enterprise data encryption key, click **Refresh**.

**Bring Your Own Key (BYOK)**

BYOK allows enterprises to use their own **Customer Master Keys (CMKs)** to encrypt specific app or bot data. This ensures enhanced control and security, enabling organizations to manage encryption keys in alignment with their compliance and security requirements, even in public cloud SaaS deployments.

Steps to avail BYOK encryption:

1. In the **Admin Console**, go to the **Enterprise Key** menu and click **Create Key** under **Bring Your Own Key**.
2. Select the Cloud Provider from the dropdown and enter the ARN or Key Vault URL of the **Customer Master Key (CMK)**.
3. Enter the **Role ARN key/Tenant ID** based on your cloud provider.
4. Select an **Enforcement Date**. This is the date data will be encrypted using the provided customer key (CMK).  
5. Once entered, users will be asked to **TEST** **Connection**.
6. If the test is successful, the **NEXT** button will be enabled.  
<img src="../images/byok_1.png" alt="BYOK" title="BYOK" style="border: 1px solid gray;zoom:70%;"/>
7. On the next screen, users will see a list of all **Apps/Bots** in the workspace that will be encrypted with the provided CMK. By default, all will be selected.
8. If the user unselects certain Apps/Bots, those will be encrypted with the **DEFAULT Key** (Kore CMS).
9. Click **Proceed** to add the customer CMK to the list of **Enterprise Keys** used in the encryption process.  
<img src="../images/byok_2.png" alt="BYOK" title="BYOK" style="border: 1px solid gray;zoom:70%;"/>

!!!note

    Users can modify the CMK (update the ARN and retest) until the Enforcement Date. After this date, they can only rotate the key or update the list of Apps/Bots encrypted with the CMK.
