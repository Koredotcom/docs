# Adding the Email Channel

When you add the email channel to your VA, Kore.ai automatically generates the email address that the end-users can send an email for communications with your assistant. By default, the email address syntax is **&lt; bot name >.kore@m.&lt; kore host >**. For example, **myemail.kore@m.app-bots.kore.com**. Optionally, you can click **Change** to add a custom name, such as **MyBot.kore@m.app-bots.kore.com.**

!!! note

      You can add 5000 characters for the email channel. This character limit is configurable for the On-Prem installation.


By adding the email channel to your VA, end-users can interact with it using any standard email client, such as _Microsoft Outlook_ or _Yahoo_.

Steps to add the email channel:


1. In the XO Platform, select the assistant that you want to work with.
2. Go to **Channels & Flows** > **Channels** > **Digital** > **All** > **Email**.
3. In the **Email** field, you can change the first portion of the address set to the VA name by default.
4. Choose whether you want to send a contact card to all users, as part of the introduction message.
5. Under the **Enable Channel** section, select **Yes** to enable the channel.
<img src="../images/email.png" alt="email channel configuration" title="email channel configuration" style="border: 1px solid gray; zoom:70%;">


6. (Optional) Turn on the **Email Template Design** toggle to configure the header and footer of the emails that are sent via the configured email address.
<img src="../images/email1.png" alt="email template designer" title="email template designer" style="border: 1px solid gray; zoom:70%;">


7. Click **Edit Header** and **Edit Footer** to configure the header and footer details.
<img src="../images/email2.png" alt="email footer " title="email footer" style="border: 1px solid gray; zoom:70%;">


8. In the Edit dialog window, change the header and footer details, and click **Preview** to see the changes.
<img src="../images/email3.png" alt="email preview " title="email preview " style="border: 1px solid gray; zoom:70%;">


9. Click **Save**.
<img src="../images/email4.png" alt="save email channel configuration" title="save email channel configuration" style="border: 1px solid gray; zoom:70%;">

10. On the Email Channel Configurations page, click **Save**. The _Channel added successfully_ message is displayed.

Once the channel is enabled and all configurations are verified, you can optionally publish the assistant to make it available for end-users, with the new channel. Learn more about[ Publishing your Virtual Assistant](../deploy/publishing-bot).

To learn more about working with Channels within the Kore.ai XO Platform, please see[ Channel Enablement.](../changelog/folder/adding-channels-to-your-bot)
