# Plan and Usage

Plan and Usage help you manage your apps and workspaces while keeping track of their periodic billing and usage. The **Plan Information** section provides information on your current plans for all the products. You can also view your billing cycle, modify your current plans, and compare them from here. On the analytics-driven **Usage Trends** dashboard, you can monitor the usage patterns of your App Interactions with customers.

## Plan Comparison

Kore.ai XO Platform offers the following plans:

* Essential: Everything you need to get started building an AI Chatbot.
* Advanced: Everything in Essential plus higher limits and more advanced features to help your AI Chatbot do more.
* Enterprise: Everything in Advanced plus enterprise features, custom pricing, and highest limits designed for enterprise.

For more information on plans, features, and pricing, visit our [Plan Comparison and Pricing](https://kore.ai/pricing) page.


## Billing Session

### Key Billing Rules

* Automation AI: Billed per 15-minute of activity.
* CCaaS: Billed per Agent Seats (named or concurrent).
* Add-ons: Billed separately. 

### Product-Specific Billing Sessions

* Automation AI: A billing session is 15 minutes of user conversation with the bot. For example, if a user converses with the bot for 31 minutes, it would be counted as 3 sessions (0-15, 16-30, 31-End).
* Search AI: This is included in Automation AI, and the same billing session is applied. 
* Contact Center AI: It’s billed per the agent seats:
    * Named Seats: Each agent gets a dedicated seat. For example, if 100 agents work across 3 shifts, you will be billed for 100 seats.
    * Concurrent Seats: This is based on the maximum number of simultaneously logged-in agents. For example, if a maximum of 50 agents work per shift across 3 shifts (150 total agents), you will be billed only for 50 seats.  
* Agent AI: It’s billed per the agent seats, similar to Contact Center AI as explained above.
* Add-ons: They are billed separately from the plan. For details, see the Add-ons and Services section on the [pricing](https://kore.ai/pricing/) page. 


## Navigating to Plan and Usage

To access the **Plan and Usage**, follow the steps below:

1. Log in to the XO Platform and select the app to see its **Plan and Usage**.
2. Navigate to **Product Switcher > Billing > Manage > Plan and Usage**.  
<img src="../images/navigating-to-plan-and-usage.gif" alt="Navigating to Plan and Usage" title="Navigating to Plan and Usage" style="border: 1px solid gray;"/>

### Plan Information
Here, you can find detailed information about your current plan and product usage. You can also modify or upgrade your plan directly from here.  
<img src="../images/plan-information.png" alt="Nplan-information" title="plan-information" style="border: 1px solid gray;"/>

### Usage Trends
Here, you can monitor the usage patterns of your App Interactions with customers.

## Payment Methods

The following payment modes are available on the Payment page when you add funds to the Platform:

### PayPal (Default Selection)

Link your PayPal email account to the Platform’s payment gateway to add paid credits.

<img src="../images/up(24).png" alt="Payment Method" title="Payment Method" style="border: 1px solid gray;"/>


### Credit/Debit Card

Initiate the transaction for paid credits using a valid credit/debit card. Add the _card number_, _account holder’s name_, _expiry date_, and _CVV security code_ to authorize the transaction and validate using an OTP.

<img src="../images/up(10).png" alt="Credit/Debit Card" title="Credit/Debit Card" style="border: 1px solid gray;"/>

### Wire Transfer

Select the wire transfer payment mode while adding funds. A wire transfer is a form of electronic payment that sends money directly from one bank account (Payer) to another (Payee). 
<img src="../images/up(4).png" alt="Wire Transfer" title="Wire Transfer" style="border: 1px solid gray;"/>

**Important Considerations**

* **View Order Details**: When you place an order by selecting the wire transfer method, it gets registered with pending payment clearance status. The order summary page provides you the total amount to transfer along with the break-up summary. Meanwhile, you should also receive an email from Paypro with the detailed steps to complete your Wire Transfer order. 
 
  <img src="../images/up(12).png" alt="order details" title="Order details" style="border: 1px solid gray;"/>

* **Ability to Add Funds during pending Wire Transfer**: A Wire Transfer process may take four to eight days to complete. The paid credits are loaded only after the transfer is successful. If the VA runs out of balance and your Wire Transfer order is still in ‘Pending’ status, you can add funds using an alternative payment method like a credit card or PayPal.


### Subscribe and Modify the Plan
To subscribe to a new plan or modify an existing plan, follow the steps below:

1. On the Platform, navigate to **Manage** > **Plan & Usage**.
2. In the **Plan Information** section, click **Subscribe** to sign up for a new plan, or click **Modify** to adjust your existing plan. 
   <img src="../images/up(3).png" alt="Subscription" title="Subscription" style="border: 1px solid gray;"/>  
   <img src="../images/up(35).png" alt="modify" title="modify" style="border: 1px solid gray;"/>


3. Select the plan and then click **Proceed and Modify**  
   <img src="../images/up(20).png" alt="Proceed and Modify" title="Proceed and Modify" style="border: 1px solid gray;"/>

4. Enter the **Billing Information**, select a **Payment Method**, and enter the payment details.


5. Click **Submit Order**.

   <img src="../images/up(25).png" alt="Submit Order" title="Submit Order" style="border: 1px solid gray;"/>


## Deployment Flow

The admin can take action for a Standard Workspace app deployment request based on the following scenarios:

**Standard Workspace with Free Credits**

The admin user can approve a deployment request without constraints/checks or any plan selection flows if the workspace has free credits.

**Standard Workspace without Free Credits**

If the standard workspace has exhausted all the free credits, the admin cannot approve the publish request until funds/ credits are added to the account.

**Standard Workspace with Paid Credits**

If an account has paid credits, then the admin user can approve the deployment flow.

## Emails and Notifications

The Platform sends notifications and marketing emails to the bot developers/account owners at various stages of their Bot-building journey. For the **Usage Plans** feature. In a nutshell, these emails are classified as follows:


* Signup and Sign-in Flows.
* Ecommerce Flows (Manual and Auto-approvals).
* Support Plans, Marketing, and notifications.
* Invitation emails
* Publish and Other Update Emails.


### System-Triggered Email Templates

The following table describes the automatic emails triggered by the system when an event occurs:


<table>
  <tr>
   <td><strong>Email Template Name</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td colspan="2" ><strong>Sign-up and Sign-in Flows</strong>
   </td>
  </tr>
  <tr>
   <td>Sign-up – Email Confirmation
   </td>
   <td>An account verification link is sent to the user to complete the setup.
   </td>
  </tr>
  <tr>
   <td>Signup – Resend Email Confirmation
   </td>
   <td>Account sign-up confirmation email with the verification link triggered on the user’s request.
   </td>
  </tr>
  <tr>
   <td colspan="2" ><strong>Ecommerce Flows for the Free Plan- Virtual Assistant</strong>
   </td>
  </tr>
  <tr>
   <td>First Time Publish – Auto Approval – Free Credits
   </td>
   <td>This email is sent to the VA owner when a VA is published for the first time, and the account has leftover free credits shared by all the VAs and zero paid credits.
   </td>
  </tr>
  <tr>
   <td>First Time Publish – Admin Approval – Free Credits
   </td>
   <td>This email is sent to the VA owner after the administrator approves a VA’s publish request for the first time. In this case, the account has leftover free credits shared by all the VAs and zero paid credits.
   </td>
  </tr>
  <tr>
   <td>First Time Publish – Auto Approval – Paid Credits
   </td>
   <td>When a VA is published for the first time using auto-approval, this email is sent to the owner, and the account has paid credits.
   </td>
  </tr>
  <tr>
   <td>First Time Publish – Admin Approval – Paid Credits
   </td>
   <td>This email is sent to the owner when a VA is published for the first time after the admin’s approval and the account has paid credits.
   </td>
  </tr>
  <tr>
   <td colspan="2" ><strong>Ecommerce Flows for the Standard Plan- Virtual Assistant</strong>
   </td>
  </tr>
  <tr>
   <td>Standard Plan – Purchases for a Bot
   </td>
   <td>This email is sent to the VA owner/admin who makes a purchase (first or subsequent) for a Usage plan for a VA that is published. The email contains the following information:
<ul>

<li>Bot Name

<li>Previous Balance

<li>Order Amount

<li>Purchase Date

<li>Current Balance

<li>Auto-Recharge Status (Activated / Not Activated).

<li>Auto Recharge Amount (shown if auto-reload is enabled).

<li>Minimum Credit to be Maintained (shown only if auto-reload is enabled).
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>Standard Plan – Auto Reloads
   </td>
   <td>This email is sent to the VA owner when an automatic purchase is successful (auto-reload is enabled for the account).
<p>
The email contains the following information:
<ul>

<li>Bot Name

<li>Previous Balance

<li>Order Amount

<li>Purchase Date

<li>Current Balance

<li>Auto-Recharge Status (Activated / Not Activated).

<li>Auto Recharge Amount (shown if auto-reload is enabled).

<li>Minimum Credit to be Maintained (shown only if auto-reload is enabled).
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td><strong>Order Confirmation</strong>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Order Invoice
   </td>
   <td>This email is sent to the VA owner for a PayPal order confirmation along with the following invoice details:
<ul>

<li>Order Invoice link

<li>Invoice Number

<li>Date

<li>Plan

<li>Plan Price

<li>Invoice Total

<li>Customer Control Panel URL
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td><strong>Auto-Recharge</strong>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Auto Recharge is Enabled
   </td>
   <td>This email is sent to the VA owner when auto-recharge is enabled for a VA. The email contains the following details:
<ul>

<li>Bot Name

<li>Auto Reload Status – Activated

<li>Auto Reload Amount

<li>Minimum Credit to be Maintained

<li>Payment (mode)

<p>
<strong>Note</strong>: Auto-reload can only be enabled if the user has made one or more previous purchases.
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>Auto Recharge is Disabled
   </td>
   <td>This email is sent to the VA owner when auto-recharge is deactivated for a VA. The email contains the following details along with the reactivation link:
<ul>

<li>Bot Name

<li>Auto Reload Status – Not Activated
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td><strong>Wallet Balance and Credits</strong>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Low Balance Alert
   </td>
   <td>This email is sent as a reminder when auto-reload is disabled or fails and the account balance reaches the lower threshold limit. A link to activate auto-reload is available in the email.
<p>
<strong>Note</strong>: The low balance limit is set to <strong>$ 50</strong>.
   </td>
  </tr>
  <tr>
   <td>Paid Wallet Balance 0 and No free credits to backup
   </td>
   <td>This email is sent to the owner when the paid and free credits have been exhausted.
<p>
When there are no free credits to back up the zero balance for paid credits, this email triggers and displays a <strong>recharge now</strong> link.
   </td>
  </tr>
  <tr>
   <td>Paid Wallet Balance goes below 0 – Free credits available
   </td>
   <td>The email is sent to the owner when the paid credits have been exhausted but shared free credits are available at the workspace level. This email displays a <strong>recharge now</strong> link.
   </td>
  </tr>
  <tr>
   <td>Free credits exhausted – Inactive bots
   </td>
   <td>The email is sent to the VA owner when the free credits have been exhausted at the workspace level and paid credits have not been added or have been exhausted. This email displays a <strong>recharge now</strong> link.
   </td>
  </tr>
  <tr>
   <td>Free credits exhausted – Workspace Summary
   </td>
   <td>The email is sent to the workspace owner when the free credits have been exhausted at the workspace level. The email displays a usage summary for each VA with the Free Credits consumption and current status information.
   </td>
  </tr>
  <tr>
   <td><strong>WorkSpace Plan Switch</strong>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Workspace Plan Switch
   </td>
   <td>The email is sent to the workspace owner when the workspace plan is switched to a new plan.
   </td>
  </tr>
  <tr>
   <td>Workspace Plan Switch – Impacted VAs
   </td>
   <td>The email is sent to the VA owner (only once, if a user is a VA owner for multiple bots) when the workspace plan is switched to a new plan. An <strong>Explore Benefits</strong> link is displayed in the email.
   </td>
  </tr>
  <tr>
   <td><strong>Auto-reload Failure</strong>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Auto-recharge Failure – Credit Card
   </td>
   <td>This email is triggered to the VA owner if the credit card cannot be authorized for payment. The subscription plan name and the subscription price are displayed in the email.
   </td>
  </tr>
  <tr>
   <td>Auto-recharge Failure – PayPal
   </td>
   <td>This email is triggered to the VA owner if there is an error when charging the card for the payment via PayPal. The following details are displayed in the email:
<ul>

<li>Previous Charge Attempted On (date).

<li>Invoiced Amount

<li>Payment Method – <em>Payment mode information on the card</em>.
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td><strong>Payment Method Expiry</strong>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Reminder – Payment Method Nearing Expiry
   </td>
   <td>This email is sent when the payment method (card) is nearing the expiration date. A link to update the payment information is displayed in the email.
   </td>
  </tr>
  <tr>
   <td>The payment method has expired
   </td>
   <td>This email is sent when the payment method (card) has expired. A link to update the payment information is displayed in the email.
   </td>
  </tr>
  <tr>
   <td><strong>Subscription Cancellation</strong>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Subscription has been Canceled
   </td>
   <td>This email is sent when the VA owner cancels the subscription made via the PayPal payment mode. The following details are displayed:
<ul>

<li>Plan

<li>Plan price

<li>Plan Cancellation Date
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td><strong>Support Plans</strong>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Purchase
   </td>
   <td>This email is sent to the VA owner for a paid support plan purchase confirmation. The following details are displayed:
<ul>

<li>Bot Name

<li>Plan: <em>Enhanced Support/Enterprise Support</em>.

<li>Plan Price: <em>$x charged Annually / Monthly</em>.

<li>Plan Activated on: <em>Date</em>

<li>Next Renewal on: <em>Date</em>
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>Invoice
   </td>
   <td>This email is sent to the VA owner to share the invoice for a support plan purchase. The following details are displayed in the email:
<ul>

<li>Order Invoice link

<li>Invoice Number

<li>Date

<li>Plan

<li>Plan Price

<li>Invoice Total

<li>Customer Control Panel URL
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>Support Plan Auto-renewal
   </td>
   <td>This email is sent five days before the renewal to the VA owner. It notifies about the automatic renewal on the specific date along with the following details:
<ul>

<li>Bot Name

<li>Plan: <em>Enhanced Support/Enterprise Support</em>.

<li>Plan Price: <em>$x charged Annually / Monthly</em>.

<li>Renewal Date: <em>Date</em>

<p>
<strong>Note</strong>: A URL to update the payment method is provided to help the user update the payment information.
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>Support Plan Problem with Processing the Renewal Payment
   </td>
   <td>This email is sent to the VA owner when the payment for a renewal fails. The following details are displayed:
<ul>

<li>Bot Name

<li>Plan: <em>Enhanced Support/Enterprise Support</em>.

<li>Plan Price: <em>$x charged Annually / Monthly</em>.

<li>Charge Attempted On: <em>Date</em>

<li>Payment method

<p>
<strong>Note</strong>: A URL to update the payment method is provided to help the user switch to an alternative payment method.
</li>
</ul>
   </td>
  </tr>
</table>
