# Email

Email is a communication channel through which customers can send inquiries, feedback, or requests to the customer service team for resolution or assistance. It allows for asynchronous communication, maintains a record of interactions, and efficiently handles customer inquiries. By adding the email channel to your Virtual Assistant (VA), end users can interact with it using any standard email client, such as *Microsoft Outlook* or *Yahoo*.

The email channel offers the following functionalities:

* Threaded email structure
* Collapsible email tiles
* Distribution to multiple recipients
* Standard Responses
* Attachments
* Drafts. [Learn more](https://docs.kore.ai/xo/console/interacting-with-customers/#emails).

You can use the Kore.ai Email domain or create your custom Email Domain to configure your email addresses.

To configure the email domains, go to **Contact Center AI** > **Flows & Channels** > **CHANNELS** > **Email**.  
<img src="../images/email-page.png" alt="Emails" title="Email" style="border: 1px solid gray; zoom:80%;">

## Kore.ai Email Domain

Contact centers need to enable forwarding to the email address configured in the Contact Center AI system. This ensures that any email received by the contact center from its end customer is automatically forwarded to the Kore domain. The Kore domain is linked to the experience flow, allowing seamless integration and management of customer inquiries.

With the capabilities of the experience flow, we can efficiently route incoming emails to appropriate agents, analyze customer intents, execute automation, and more. This streamlined process ensures that each customer query is addressed promptly and accurately.

Any reply email managed by either the agent or the bot is directly sent to the end customer. To maintain transparency and accountability, the customer contact center domain is included in the BCC (Blind Carbon Copy) field and the Reply-to field. This configuration ensures that communication remains open and accessible to all relevant parties.

Whenever the customer responds to the email thread, it is directed back to the customer contact center domain. From there, it is seamlessly forwarded to the Kore domain, ensuring a continuous and efficient communication loop.  
<img src="../images/email-flow.png" alt="Email Flow" title="Email Flow" style="border: 1px solid gray; zoom:80%;">

### Create a Kore Domain Email Address

Steps to create an email address in the Kore domain:

1. Click the **+ New Email Address** button.  
    <img src="../images/kore-new-email-address-button.png" alt="+ New Email Address" title="+ New Email Address" style="border: 1px solid gray; zoom:80%;">

2. Enter the following details.
    1. Email Address
    2. Display Name
    3. Choose whether to use the custom email for inbound, outbound, or both under **Additional Settings**.
    4. Choose whether you want to send a contact card to all users as a part of the introduction message under **Send contact card (.VCF)**.
    5. Under the Enable Channel section, select **Yes** to enable the channel.  
        <img src="../images/email-configuration-page.png" alt="Email Configuration Page" title="Email Configuration Page" style="border: 1px solid gray; zoom:80%;">

    6. Turn on the **Email Template Design (Optional)** toggle to configure the header and footer of the emails that are sent via the configured email address, and do the following:
        1. Click **Edit Header** and **Edit Footer** to configure the header and footer details.  
            <img src="../images/email-template-design.png" alt="Email Template Design" title="Email Template Design" style="border: 1px solid gray; zoom:80%;">

        2. In the **Edit** window, change the header and footer details, and click **Save**.
    7. Click **Preview** to see a preview of the Email template.  
        <img src="../images/email-template-preview.png" alt="Email Template Preview" title="Email Template Preview" style="border: 1px solid gray; zoom:80%;">

3. Click **Save.**
4. A success message is displayed and the email address is created.  
    <img src="../images/kore-email-created.png" alt="Email Address Created" title="Email Address Created" style="border: 1px solid gray; zoom:80%;">

### Attach a Flow to a Kore Domain Email Address

Steps to attach a flow to an email address in the Kore domain:

1. Go to **Flows & Channels** > **FLOWS** > **Start Flows**.  
    <img src="../images/start-flow.png" alt="Start Flows" title="Start Flows" style="border: 1px solid gray; zoom:80%;">

2. Click the ellipsis icon (**⋮**) beside the flow you want to attach to the email and click **Update**.  
    <img src="../images/update-flow.png" alt="Update" title="Update" style="border: 1px solid gray; zoom:80%;">

3. Select the email address and click **Update**.  
    <img src="../images/attach-email.png" alt="Attach Email" title="Attach Email" style="border: 1px solid gray; zoom:80%;">

4. A success message is displayed and the flow is attached to the email.  
    <img src="../images/flow-attached.png" alt="Flow Attached" title="Flow Attached" style="border: 1px solid gray; zoom:80%;">

### Publish Kore Domain Email Addresses

Steps to publish email addresses in the Kore domain:

1. Go to **Deploy** > **Deploy Management** > **Publish**.  
    <img src="../images/publish-page.png" alt="Publish Page" title="Publish Page" style="border: 1px solid gray; zoom:80%;">

2. Select the email address under channels and click **Proceed**.  
    <img src="../images/select-email.png" alt="Select Email" title="Select Email" style="border: 1px solid gray; zoom:80%;">

3. Enter the Comments and click **Confirm**.  
    <img src="../images/comments-publish.png" alt="Enter Comments" title="Enter Comments" style="border: 1px solid gray; zoom:80%;">

4. A success message is displayed and the email address is published.  
    <img src="../images/email-published.png" alt="Email Published" title="Email Published" style="border: 1px solid gray; zoom:80%;">

### Edit a Kore Domain Email Address

Steps to edit an email address in the Kore domain:

1. Click the ellipsis icon (**⋮**) beside the email address and click **Edit**.  
    <img src="../images/edit-kore-email.png" alt="Edit Email" title="Edit Email" style="border: 1px solid gray; zoom:80%;">

2. The email configuration window is displayed. Click **Update** after making the changes.  
    <img src="../images/update-configuration.png" alt="Update Button" title="Update Button" style="border: 1px solid gray; zoom:80%;">

### Delete a Kore Domain Email Address

Steps to delete an email address in the Kore domain:

1. Click the ellipsis icon (**⋮**) beside the email address and click **Delete**.  
    <img src="../images/delete-kore-email.png" alt="Delete Button" title="Delete Button" style="border: 1px solid gray; zoom:80%;">

2. Click **Delete** on the confirmation pop-up window.  
    <img src="../images/delete-kore-email-confirmation.png" alt="Delete Confirmation" title="Delete Confirmation" style="border: 1px solid gray; zoom:80%;">

## Custom Email Domain

Custom email domains add a professional look to your email communications, reinforcing your brand identity with every email you send or receive. Customers perceive custom emails as established, reliable, and legitimate compared to generic email addresses. For example, You can create [help@yourbusiness.com](mailto:help@yourbusiness.com), a branded email account that uses your organization's domain name instead of a domain provided by Kore.ai. You can add up to three email accounts (sales@, support@, info@, etc.) in each custom domain for better organization and delegation. By granting access to your email accounts within the domain, you can track the activity of the configured accounts, respond to incoming emails, and send outbound emails. Email filters are less likely to flag emails from custom domains as spam, ensuring better deliverability rates.

### Create a Custom Domain

Steps to create a custom domain:

1. Click the **+ New Domain** button.  
    <img src="../images/new-domain.png" alt="+ New Domain" title="+ New Domain" style="border: 1px solid gray; zoom:80%;">

2. In the Add Domain dialog box, enter the **Domain Name** and click **Create**.  
    <img src="../images/domain-name.png" alt="Domain Name" title="Domain Name" style="border: 1px solid gray; zoom:80%;">

3. A success message is displayed and the new domain is created.  
    <img src="../images/domain-created.png" alt="Domain Created" title="Domain Created" style="border: 1px solid gray; zoom:80%;">

### Delete a Custom Domain

Steps to delete a custom domain:

1. Click the ellipsis icon (**⋮**) on the right corner and click **Delete**.  
    <img src="../images/delete-domain.png" alt="Delete Domain" title="Delete Domain" style="border: 1px solid gray; zoom:80%;">

2. Click **Delete** on the confirmation pop-up window.  
    <img src="../images/delete-domain-confirmation.png" alt="Delete Domain Confirmation" title="Delete Domain Confirmation" style="border: 1px solid gray; zoom:80%;">

    !!! Note

        Custom domains can only be deleted when no email addresses are added to the domain.

### Create a Custom Email Address

Steps to create an email address in the custom domain:

1. Click **+ New Email Address**.  
    <img src="../images/new-custom-email.png" alt="+ New Email" title="+ New Email" style="border: 1px solid gray; zoom:80%;">

2. Enter the following details in the **Configuration** tab.
    1. Email Address
    2. Display Name
    3. Password
    4. Enter the following details to set up the mail SSL connection for Incoming and Outgoing emails.
        1. I
        2. Protocol
        3. Incoming/Outgoing email server
        4. Port
        5. Select “Use SSL to connect” if you want to use a Secure Socket Layer.
    5. Choose whether to use the custom email for inbound, outbound, or both under **Additional Settings**.
    6. Choose whether you want to send a contact card to all users as a part of the introduction message under **Send contact card (.VCF)**.
    7. Under the Enable Channel section, select **Yes** to enable the channel.  
        <img src="../images/custom-email-configuration.png" alt="Custom Email Configuration" title="Custom Email Configuration" style="border: 1px solid gray; zoom:80%;">

    8. Turn on the **Email Template Design (Optional)** toggle to configure the header and footer of the emails that are sent via the configured email address, and do the following:
        1. Click **Edit Header** and **Edit Footer** to configure the header and footer details.  
            <img src="../images/email-template-design.png" alt="Email Template Design" title="Email Template design" style="border: 1px solid gray; zoom:80%;">

        2. In the **Edit** window, change the header and footer details, and click **Save**.
    9. Click **Preview** to see a preview of the Email template.  
        <img src="../images/custom-template-preview.png" alt="Preview Template" title="Template PReview" style="border: 1px solid gray; zoom:80%;">

3. Click the **Test Connection** button to verify the domain ownership. A success message is displayed below the button upon successful completion.  
    <img src="../images/test-connection.png" alt="Test Connection" title="Test Connection" style="border: 1px solid gray; zoom:80%;">

4. Click **Save.**
5. A success message is displayed and the email address is created.
    <img src="../images/custom-email-created.png" alt="Custom Email Created" title="Custom Email Created" style="border: 1px solid gray; zoom:80%;">

    !!! Note

        You can create up to three custom email addresses in a custom domain.

### Edit a Custom Domain Email

Steps to edit an email address in the custom domain:

1. Click the ellipsis icon (**⋮**) beside the email address and click **Edit**.  
    <img src="../images/edit-custom-email.png" alt="Edit Button" title="Edit Button" style="border: 1px solid gray; zoom:80%;">

2. The email configuration window is displayed. Click **Save** after making the changes.  
    <img src="../images/update-custom-configuration.png" alt="Save Changes" title="Save Changes" style="border: 1px solid gray; zoom:80%;">

### Delete a Custom Domain Email

Steps to delete an email address in the custom domain:

1. Click the ellipsis icon (**⋮**) beside the email address and click **Delete**.  
    <img src="../images/delete-custom-email.png" alt="Delete Button" title="Delete Button" style="border: 1px solid gray; zoom:80%;">

2. Click **Delete** on the confirmation pop-up window.  
    <img src="../images/delete-custom-email-confirmation.png" alt="Delete Email Confirmation" title="Delete Email Confirmation" style="border: 1px solid gray; zoom:80%;">

## Email Blacklist

Email blacklisting allows admins to specify a list of blacklisted email addresses during email address creation preventing blocking interactions originating from blacklisted email addresses, automations, and subsequent agent transfers are prevented, reducing unnecessary processing, and ensuring that resources are allocated to valid interactions.

### Blacklist Verification

Upon receiving a new interaction, the system checks the incoming email address against the blacklist associated with the receiving email address.

* If a match is found between the incoming email address and the blacklist, any pre-configured automations linked to the receiving email address will be disabled for that specific interaction. Automated agent transfers triggered by the interaction will be prevented, ensuring that blacklisted emails do not initiate further actions within the system.
* If no match is found, the system will continue with the usual automation processes and agent transfer rules, handling the interaction as normal.

### Configure Email Blacklist

Steps to Configure Email Blacklist:

1. Click the **Email Blacklist** tab and turn on the **Enable Email Blacklist** toggle.  
    <img src="../images/email-blacklist-tab.png" alt="Email Blacklist Tab" title="Email Blacklist Tab" style="border: 1px solid gray; zoom:80%;">

2. You can add email addresses manually or using bulk upload.
    1. **Manual entry**:
        1. Enter the email address in the search dialog box and click **Add**.  
            <img src="../images/add-button.png" alt="Add Button" title="Add Button" style="border: 1px solid gray; zoom:80%;">

            !!! Note

                The search box can be used to search for existing email addresses or to add a new email address.
        2. The email address is updated successfully.  
            <img src="../images/email-blacklist-added.png" alt="Email Blacklist Added" title="Email Blacklist Added" style="border: 1px solid gray; zoom:80%;">

    2. **Bulk Upload**:
        1. Click **Bulk Upload**.  
            <img src="../images/bulk-upload.png" alt="Bulk Upload" title="Bulk Upload" style="border: 1px solid gray; zoom:80%;">

        2. A pop-up window is displayed. Click **Select a CSV file to Upload** and upload the CSV file. You can download a sample CSV file by clicking **Download sample CSV file**.  
            <img src="../images/select-csv.png" alt="Select CSV" title="Select CSV" style="border: 1px solid gray; zoom:80%;">

        3. The upload progress is displayed.  
        <img src="../images/upload-progress.png" alt="Upload Progress" title="Upload Progress" style="border: 1px solid gray; zoom:80%;">

        4. On completion, map the CSV file fields with system fields.  
            <img src="../images/map-fields.png" alt="Map Fields" title="Map Fields" style="border: 1px solid gray; zoom:80%;">

            !!! Note

                If the CSV file contains only one column, field mapping is not required and will not be displayed.

        5. Click **Validate**.  
            <img src="../images/validate.png" alt="Validate Button" title="Validate Button" style="border: 1px solid gray; zoom:80%;">

        6. The details of the mapped contacts, duplicates, and errors (if any) are displayed. Click **Save**.  
            <img src="../images/save-blacklist.png" alt="Save Button" title="Save Button" style="border: 1px solid gray; zoom:80%;">

        7. A success message is displayed and the email blacklist is updated.  
            <img src="../images/blacklist-updated.png" alt="Blacklist Updated" title="Blacklist Updated" style="border: 1px solid gray; zoom:80%;">

### Edit Blacklisted Email Addresses

1. Go to **Flows & Channels** > **CHANNELS** > **Emails** > Click the **Ellipsis** (**⋮**) icon.  
    <img src="../images/ellipsis-button.png" alt="Ellipsis Button" title="Ellipsis Button" style="border: 1px solid gray; zoom:80%;">

2. Click **Edit**.  
    <img src="../images/edit-blacklist.png" alt="Edit Button" title="Edit Button" style="border: 1px solid gray; zoom:80%;">

3. Do the required changes and click **Update**.

### Delete Blacklisted Email Addresses

Steps to delete blacklisted email addresses:

1. Select the email addresses you want to delete and click the **Delete (bin)** icon.  
    <img src="../images/delete-blacklist.png" alt="Delete Button" title="Delete Button" style="border: 1px solid gray; zoom:80%;">

2. A confirmation message is displayed. Click **Delete**.  
    <img src="../images/delete-blacklist-confirmation.png" alt="Delete Confirmation" title="Delete Confirmation" style="border: 1px solid gray; zoom:80%;">

3. A success message is displayed and the selected email addresses are deleted.  
    <img src="../images/blacklist-email-deleted.png" alt="Blacklist Email Deleted" title="Blacklist Email Deleted" style="border: 1px solid gray; zoom:80%;">

4. Click **Update**.