# Adding the Email Channel

When you add the email channel to your VA, the XO Platform automatically generates the email address for end users to communicate with your assistant. By default, the email address syntax is <code>< bot name >@bots.kore.com</code>.

For example, <b><i>customer-support@bots.kore.com</i></b> Optionally, you can add a custom name, such as <b><i>my-bot@bots.kore.com</i></b>.

!!!note

    A maximum of 5000 characters are allowed for the email channel. This character limit is configurable for on-premise installation.

By adding the email channel to your VA, end users can interact with it using any standard email client, such as _Microsoft Outlook_ or _Yahoo_.

## Configure a Custom Display Name

Developers can now define custom display names for configured email addresses with the optional **Display Name** field. 

Providing the display name ensures that the name linked to the sender’s email address is visible to the end user in the sender’s email profile. 

An example of how a display name, when provided, appears to the end user is given below:  
<img src="../images/email-display-name-configure.png" alt="email display name sample configuration" title="email display name sample configuration" style="border: 1px solid gray;zoom:50%;"/>

For more details, please refer to **Step 3** in the next section.

When **Display Name** is not provided, the email profiles appear with the sender’s name linked to the email address and the text “_Bot (via Kore)_” to the end user.  
<img src="../images/banking-support-display-name.png" alt="banking support sample display name" title="banking support sample display name" style="border: 1px solid gray;zoom:50%;"/>

## Steps to Add the Email Channel

1. On the UX Platform, go to **Channels & Flows** > **Channels** > **Digital** > **All** > **Email** on the left navigation menu. 

2. In the **Email** window, change the first portion of the address set to the VA name (default value) for **Email to this bot can be sent to the below email address**.  
<img src="../images/email-field-entry.png" alt="email field" title="email field" style="border: 1px solid gray;zoom:50%;"/>

3. **(Optional)** Enter the value for **Display Name** to customize how the configured email address will appear to the end user.

    !!!note

        A maximum of 30 characters are allowed for the display name, including special characters, numbers, and spaces.  
    <img src="../images/add-display-name.png" alt="add display name" title="add display name" style="border: 1px solid gray;zoom:50%;"/>

<ol start="4"><li>Choose whether you want to send a contact card to all users as a part of the introduction message under <b>Send contact card (.VCF)</b>.  

<img src="../images/send-contact-card.png" alt="send contact card" title="send contact card" style="border: 1px solid gray;zoom:50%;"/></li>

<li>Under the <b>Enable Channel</b> section, select <b>Yes</b> to enable the channel.  
<img src="../images/enable-email-channel.png" alt="enable email channel" title="enable email channel" style="border: 1px solid gray;zoom:50%;"/></li>

<li><b>(Optional)</b> Turn on the <b>Email Template Design (Optional)</b> toggle to configure the header and footer of the emails that are sent via the configured email address, and do the following:</li></ol>
<ul><li>Click <b>Edit Header</b> and <b>Edit Footer</b> to configure the header and footer details.  
<img src="../images/optional-selection-email-template.png" alt="email template design enable" title="email template design enable" style="border: 1px solid gray;zoom:50%;"/></li>

<li>In the <b>Edit</b> window, change the header and footer details, and click <b>Preview</b> to see the changes.  
<img src="../images/edit-window-change-header-footer.png" alt="change header and footer" title="change header and footer" style="border: 1px solid gray;zoom:50%;"/></li>

<li>Click <b>Save</b>.  
<img src="../images/edit-window-click save.png" alt="Click Save" title="Click Save" style="border: 1px solid gray;zoom:50%;"/></li></ul>

<ol start="7"><li>In the <b>Email</b> window, click <b>Save</b>. The <i>Channel added successfully</i> message is displayed.  
<img src="../images/email-template-design-header-footer.png" alt="email template design header and footer" title="email template design header and footer" style="border: 1px solid gray;zoom:50%;"/></li></ol>

After enabling the channel and verifying all the configurations, you can optionally publish the assistant for the new channel. Learn more about[ Publishing your Virtual Assistant](../deploy/publishing-bot.md).

To learn more about working with Channels within the Kore.ai XO Platform, please see [Channel Enablement.](../channels/adding-channels-to-your-bot.md)