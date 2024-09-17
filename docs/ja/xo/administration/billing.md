# Billing

The billing section has been added to the Bot Admin Console from ver 7.0, to enable the Bot Admins to view and track their Invoices and plan details.

!!! Note

    This page is not available for customers under the Enterprise plan.


### Billing Sessions

The Billing sessions are calculated based on

* Bot Usage (Usage Session)
    * A usage session is defined as ‘Fifteen minutes’ of user conversation with the bot. For example – If a user converses with the bot for 31 minutes, then it would be counted as 3 sessions (0-15, 16-30,31-End).
    * In the case of Human-agent transfer – If the user-bot interaction results in human agent transfer, the time spent with the human agent will be excluded from the bot session.

* Alerts Delivered (Alert Session)
    * Every alert delivered to a user will be counted as an Alert session. For example – If the user has set up to receive a sales report every 8 hours. In a day this user would consume 3 alert sessions.


### Invoices

The Invoice section displays the Invoice history listing the Id, validity period and amount paid.

You have the option to download the Invoice. Hover over the Invoice you want to download to see the download icon.

<img src="../images/billing-img1.png" alt="Download invoices" title="Download invoices" style="border: 1px solid gray;zoom:70%;"/>


### Plan & Usage

The Plan & Usage section lists all the published Bots in your account along with the Plan under which they were published, the validity period, and the usage details.

Information icons to indicate any plan changes like downgrade messages and expiring plans are also displayed.

<img src="../images/billing-img2.png" alt="Plan and Usage information" title="Plan and Usage information" style="border: 1px solid gray;zoom:70%;"/>


**Manage** option displays the current plan based eligibility and the usage details. Note that there is no renewal date for free bots.

<img src="../images/billing-img3.png" alt="Plan based eligibility and usage details" title="Plan based eligibility and usage details" style="border: 1px solid gray;zoom:70%;"/>

The **Cancel Subscription** option allows you to cancel the current subscription for the selected bot.

**Change Plan** option gives you a list of all plans with the plan offerings with the current plan indicated. From here you can choose to **Select Plan**. [Refer here](../manage-assistant/plan-and-usage/overview.md) for plan details.

Once you select to change a plan order details will be displayed and you will be prompted to enter the address details. **Confirm Payment** will redirect to the payment gateway to capture the billing details.
