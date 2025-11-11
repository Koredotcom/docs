# Email Settings

Agents need the ability to add or remove recipients in the TO, CC, and BCC fields, while organizations require control over whether this capability is allowed. This ensures contact centers with strict compliance rules can restrict editing, while others maintain flexibility. The Email Settings group contains all generic email-related configurations.

Administrators can configure these settings by going to:

Contact Center AI > Configurations > Settings > System Settings > Email Settings.  
<img src="../images/email-settings.png" alt="Email Settings" title="Email Settings" style="border: 1px solid gray; zoom:70%;">

The Allow Agents to Edit Distribution Fields in Reply/Reply All setting enables agents to modify the TO, CC, and BCC fields when replying or replying all to email conversations.  
<img src="../images/edit-distribution.png" alt="Edit Distribution" title="Edit Distribution" style="border: 1px solid gray; zoom:70%;">

The Inline Email ID Suggestions setting displays suggestions to agents while typing.  
<img src="../images/inline-email-suggestion.png" alt="Inline Email Suggestions" title="Inline Email Suggestions" style="border: 1px solid gray; zoom:70%;">

Steps to configure Inline Email ID Suggestions:

1. Click **Bulk Upload**.  
    <img src="../images/bulk-upload.png" alt="Bulk Upload" title="Bulk Upload" style="border: 1px solid gray; zoom:70%;">

2. In the pop-up window, supervisors can either click to upload a file or drag and drop the file. The following columns are required to be added in the CSV:
    1. Contact Name
    2. Email Address
    3. Tags (Optional)  
        <img src="../images/click-to-upload.png" alt="Click to Upload" title="Click to Upload" style="border: 1px solid gray; zoom:70%;">

3. After the file is uploaded, map the CSV fields with the system fields and click **Validate**.  
    <img src="../images/map-fields.png" alt="Map Fields" title="Map Fields" style="border: 1px solid gray; zoom:70%;">

4. The validation results are displayed. Click **Save**.  
    <img src="../images/validation-results.png" alt="Validation Results" title="Validation Results" style="border: 1px solid gray; zoom:70%;">

5. The contact list is updated.  
    <img src="../images/contact-list.png" alt="Contact List Updated" title="Contact List Updated" style="border: 1px solid gray; zoom:70%;">

## Delete Contacts

Steps to delete contacts from the contact list:

1. Select the contact and click the Bin icon in the right corner to delete a contact.  
    <img src="../images/delete-contact.png" alt="Delete Contact" title="Delete Contact" style="border: 1px solid gray; zoom:70%;">

2. A pop-up appears, click **Delete** to confirm deletion.

Email Settings is an account-level setting that is enabled by default for all agents. Contact centers that require fixed distribution lists can disable the setting to prevent edits and ensure compliance.

### Related Link

* [Emails](../../../console/interacting-with-customers.md#emails)