# Adding the Twilio SMS Channel

To add Twilio SMS as a channel, you must set up a Programmable SMS app, define the messaging service, and associate the bot with a Twilio Phone Number. When you add the Twilio channel to your bot, end-users for your bot can interact with your bot using text messages.

To add the Twilio SMS channel, follow the below steps:



1. **Setup Account** – Login to Twilio developer portal and set up an account.
2. **Setup Messaging Service** – In the Programmable Messages section, create a messaging service
3. **Add Phone Number** – Associate a Twilio Phone Number to your bot.

## Setup Twilio Developer Account

To add the Twilio Channel, follow the below steps:

The following procedure requires an active _Twilio_ account for developers with access to the Twilio Console. For more information, refer to _Creating a Twilio Trial Account_ later in this topic.



1. In **Bots** section of the Bot Builder, click the bot that you want to add the Twilio SMS channel to.
2. On the **Channels** tab, click the **Twilio SMS** icon. The **Twilio SMS Channel** page is displayed.
3. [Login ](https://www.twilio.com/)to Twilio developer portal.
4. Under the **Settings** section, click the **General** tab.
5. Create your API credentials, if you have not already set up your account.
6. Copy your **Account SID** and **Auth Token** and enter them in the **Configurations** tab of the Twilio channel page.
<img src="../images/twilio.png" alt="Twilio channel" title="Twilio channel" style="border: 1px solid gray; zoom:70%;">
<img src="../images/twilio1.png" alt="Twilio channel configuration" title="Twilio channel configuration" style="border: 1px solid gray; zoom:70%;">


7. Go to the **Programmable SMS** section from the **All Products & Services** menu.
8. Click **Create New Messaging Service** option. Provide a name for your messaging service and select Use Case as **Chat Bot/Interactive 2-way**.
<img src="../images/twilio2.png" alt="Twilio messaging service" title="Twilio messaging service" style="border: 1px solid gray; zoom:70%;">
<img src="../images/twilio3.png" alt="Twilio programmable sms" title="Twilio programmable sms" style="border: 1px solid gray; zoom:70%;">


9. After creating the service, make note of the **Service SID** of this service and enter it in the **Configurations** tab of the Twilio SMS channel page.
10. Under **Inbound Settings** section, select the **Process Inbound Messages** option and update the **Request URL** and **Fallback URL** fields with the information provided in **Configurations** tab of the Twilio SMS channel page.
11. Under **Outbound Settings**, update the **Status Callback Request URL** field with the information provided in the **Configurations** tab.
<img src="../images/twilio4.png" alt="Twilio Inbound Settings" title="Twilio Inbound Settings" style="border: 1px solid gray; zoom:70%;">


    !!! note

        The Callback URL now includes the **_streamid_** in the API request to identify the virtual assistant being accessed. When an incoming request is qualified with this identifier, it helps with traceability, troubleshooting, and remediation at the network level during anomalies like malicious calls or unusual bot activity.    

12. Under **Copilot Features** section, make sure that **Sticky Sender**, **MMS Converter**, **Scaler**, **Short Code Reroute,** and **Country Code Geomatch** options are enabled.
13. **Save** your changes and proceed.
14. To add a number, go to the **Numbers** section and associate a Twilio Phone Number to this bot. If you do not have a Twilio Number, you must buy one.
<img src="../images/twilio5.png" alt="Twilio Phone Number" title="Twilio Phone Number" style="border: 1px solid gray; zoom:70%;">

15. Go to the **Configurations** tab in the Twilio SMS channel page to review and complete the channel setup.


## Edit the Twilio Channel

To edit the Twilio channel, follow the below steps:


1. Hover over the channel and click to modify.
2. You can make necessary updates to your channel configurations and save them. You can also [disable or delete the channel.](./adding-channels-to-your-bot.md#editing-testing-disabling-or-deleting-channels)

3. Select one of the following commands to modify the channel:
  * **Disable/Enable**
    * Click **Disable** to temporarily disable the use of the Twilio SMS channel for your bot. To enable the use of the Twilio SMS channel, click **Enable**.
  * **Delete**
    * Click **Delete**.
    * On the **Delete Confirmation** dialog box, click **OK** to permanently delete the bot channel configuration.

!!! warning

      This operation is permanent, and cannot be undone.

## Create a Twilio Trial Account

1. You can sign up and create a free _Twilio_ trial account at [https://www.twilio.com/try-twilio](https://www.twilio.com/try-twilio).
2. After you create an account, you can sign in and open the **Twilio** **Console Dashboard**.
3. In the **Account Summary** section, you can find the **Account SID** and **Auth Token**.
<img src="../images/twilio7.png" alt="Twilio Console  Dashboard" title="Twilio Console Dashboard" style="border: 1px solid gray; zoom:70%;">

4. Copy the **Account SID** and **Auth Token** and save for configuring the Twilio channel settings in Kore.ai Bot Builder. You also need a telephone number for your end users to send text message interactions to for your bot.
5. On the **Dashboard** page, you can scroll down and click Numbers. The **Phone Numbers Dashboard** is displayed.
6. Click **Numbers** on the left menu to display the **Numbers** page. Click **Buy a number**.
<img src="../images/twilio8.png" alt="Twilio Phone Number Dashboard" title="Twilio Phone Number Dashboard" style="border: 1px solid gray; zoom:70%;">


7. On the **Get Started with Phone Numbers** page, click **Get your first Twilio phone number.**
8. On the corresponding dialog box, you can find the phone number that you must configure the Kore.ai Twilio channel.
9. Click **Buy This Number** to save the number to your account.
<img src="../images/twilio9.png" alt="Get Started with Twilio Phone" title="Get Started with Twilio Phone Settings" style="border: 1px solid gray; zoom:70%;">


10. The phone number is saved and accessible from the **Home** screen on the **Dashboard**. You are now ready to configure the Twilio channel in Kore.ai Bot Builder.

**Related Links**

* [How do I include an Image in an Outbound Twilio SMS (MMS)?](../kb/how-do-i-include-an-image-in-an-outbound-twilio-sms-mms.md)