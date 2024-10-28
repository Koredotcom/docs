# Billing

The **Billing** section lets the Bot Admins view and track their Invoices and plan details.

## Billing Sessions

The Billing sessions are calculated based on

* Bot Usage (Usage Session)
    * A usage session is defined as ‘Fifteen minutes’ of user conversation with the bot. For example – If a user converses with the bot for 31 minutes, then it would be counted as 3 sessions (0-15, 16-30,31-End).
    * In the case of Human-agent transfer – If the user-bot interaction results in human agent transfer, the time spent with the human agent will be excluded from the bot session.

* Alerts Delivered (Alert Session)
    * Every alert delivered to a user will be counted as an Alert session. For example – If the user has set up to receive a sales report every 8 hours. In a day this user would consume 3 alert sessions.

For more information, refer to [Product-specific Billing Sessions](../manage-assistant/plan-and-usage/usage-plans.md#billing-session).

## Orders & Invoices

This section displays the history of Orders and Invoices and includes the fields as shown in the image:

<img src="../images/billing-img1.png" alt="Download invoices" title="Download invoices" style="border: 1px solid gray;zoom:70%;"/>

You have the option to download the Invoice from the invoice field.


!!! Note

    This section is not available for customers under the Enterprise plan.

## Plan & Usage

**Admin** users can view and manage all plan subscriptions for their account and published apps on the **Admin Console**. 
The Plan & Usage section displays all the Bots in your account, along with their status and balance.
An **information** icon highlights plan changes, such as downgrade notifications and expiring plans.
Click the **Ellipses** icon to change the Bot Owner.

<img src="../images/billing-img2.png" alt="Plan and Usage information" title="Plan and Usage information" style="border: 1px solid gray;zoom:70%;"/>

Hover over a line item to view the **Manage** option.
The **Manage** option displays the current plan based on eligibility and usage details. You can change the plan, add funds, and request for extension of your plan from here.

<img src="../images/billing-img3.png" alt="Plan based eligibility and usage details" title="Plan based eligibility and usage details" style="border: 1px solid gray;zoom:70%;"/>

### Navigating to Plan and Usage		

!!! note

      Only a user with **Admin** privileges can access the Admin Console.		

To access the **Plan and Usage** feature on the **Admin Console**, follow the steps below:

1. On the Bot Builder, click the **profile** icon in the top right corner.
2. Click **Go to Admin Console**.  
    <img src="../images/up(36).png" alt="Admin Console" title="Admin Console" style="border:1px solid gray;zoom:70%;"> 
    
3. Login and navigate to **BILLING** > **PLAN & USAGE** on the left menu.  
    <img src="../images/up(32).png" alt="Plan and Usage - Admin Console" title="Plan and Usage - Admin Console" style="border:1px solid gray;zoom:70%;">
        

!!! note

      The **Billing** > **Plan and Usage** option does not appear on the Admin Console (left menu) for a shared account user.