# Usage Plans

	

		

			

Usage Plans help you manage your bots and workspaces while keeping track of their periodic billing and usage. On the analytics-driven **Plan & Usage** dashboard, you can view the conversations volume and billing on a daily or monthly basis. You can also track free credits usage, add funds to your account, and manage auto payments in a single place.

When you sign up on the Platform, the Kore.ai XO Platform associates all the workspaces with a default Standard Plan. A Standard Plan offers a pay-as-you-go model that supports eCommerce flexible and customized journeys for enterprises to launch virtual assistants. You can select a standard plan that comes with self-service features, or upgrade to a customized Enterprise Plan that offers “Enterprise-grade” features by[ contacting](https://kore.ai/services/) our service team.

We’ve put much thought into our usage plans so you can explore the Platform effortlessly and extensively based on your business and pricing goals. This is an essential element of our product-led growth approach for eCommerce customers.

The following plans are currently available on the latest version of the Kore.ai XO Platform:


## Standard Plan

As a new user, you get free credits worth \$500 at the workspace level, which you can share among the Virtual Assistants in the workspace. The plan follows **Conversation-based billing** where each conversation handled by a Bot linked to your account is billed at a unit price of $ 0.2, deducted from your free credits (if available), otherwise paid credits balance.

		

!!! note
    
    **Definition**: A conversation is an interaction with the bot for any length with no more than 15 minutes of inactivity.



You can leverage the[ basic features](https://developer.kore.ai/docs/bots/bot-settings/plan-usage/usage-plans/#Usage_Plan_Features) for your bots with a Standard Plan.

		

	

	

		

			

A Standard Plan’s key features include the following:



1. If a conversation ends with 15 minutes of inactivity, and the interaction starts again, it is considered a new conversation and billed.
2. Conversations-based Billing: The Standard Plan billing is done on the basis of the following primary units types:
    * **Number of Conversations**: The number of conversations considered as a billing unit. If the interaction starts again after 15 minutes of inactivity, it is considered a new conversation for billing.
    * **Proactive Notifications**: The number of event-based system notifications triggered on the Platform to the account owner.
    * **Alert Notifications**: The number of system alerts triggered on the Platform to the account owner. For example, Free Credits expiry alerts.
1. Free Credit Expires in 90 days: By default, a new workspace is created as a Standard Workspace and gets initial free credit of $500. The free credit expires in 90 days from the workspace creation date or the credit assignment date.




    ![alt_text](images/up(28).png "image_tooltip")


When Free credits expire, the following happen:



1. Any remaining free credits get lapsed (are treated as zero balance) and cannot be used anymore.
2. The free credits expiry impacts the utilization of credits, triggers low balance or zero balance emails, and highlights low or zero balance in the system warnings and messages.
3. The number of free credits that lapsed on expiry displays on the account owner’s dashboard.

!!! note

        **Important**: For an existing Standard Workspace, the remaining or unutilized free credit will expire in 90 days from the release date of this policy – March 19, 2023.

	

		

			


### **Free Credits Utilization**

The usage deduction from the paid balance starts only after the free credits are fully utilized or expired. This ensures that the Free Credits available can be used before they expire.

Here are other important considerations:



1. You can use free credits as required for one or more multiple virtual assistants mapped to your account/workspace.
2. You must add funds and purchase paid credits to ensure that a Virtual Assistant (VA) does not stop responding if free credits are consumed collectively by all the VAs.
3. For a Standard Account, all the conversations for all the virtual assistants are considered and deducted from the available free credits.
4. Multiple payment methods like ACH or Wire Transfer, in addition to Credit Cards, are available for paid credits.
5. You can track the Free Credits usage on the[ Usage Plan Dashboard](https://developer.kore.ai/docs/bots/bot-settings/plan-usage/usage-plans/#Usage_Plan_Dashboard).


### **Add Paid Credits**

To ensure that your Virtual Assistants in the Workspace respond after your Free Credits have exhausted or expired, you must add **Paid Credits**. The minimum top-up amount is **$100**.

The important considerations to add Paid Credits to a Virtual Assistant (Standard Workspace) are given below:



1. You can add paid credits to a particular virtual assistant from the Builder at any time in one of the following ways:
    * Add paid credits before the virtual assistant is published.
    * Add paid credits even if the workspace has free credits.
1. The Platform uses the Paid Credits only when the Free Credits have exhausted.
2. The paid credits can be mapped to the designated virtual assistant or shared among other VAs in the workspace.


## Enterprise Plan


 

## Usage Plan Features









## Navigating to Plan and Usage





<!-----

You have some errors, warnings, or alerts. If you are using reckless mode, turn it off to see inline alerts.
* ERRORs: 0
* WARNINGs: 0
* ALERTS: 37

Conversion time: 8.868 seconds.


Using this Markdown file:

1. Paste this output into your source file.
2. See the notes and action items below regarding this conversion run.
3. Check the rendered output (headings, lists, code blocks, tables) for proper
   formatting and use a linkchecker before you publish this page.

Conversion notes:

* Docs to Markdown version 1.0β35
* Tue Jan 02 2024 04:45:05 GMT-0800 (PST)
* Source doc: Usage Plans
* Tables are currently converted to HTML tables.
* This document has images: check for >>>>>  gd2md-html alert:  inline image link in generated source and store images to your server. NOTE: Images in exported zip file from Google Docs may not appear in  the same order as they do in your doc. Please check the images!

----->






## Payment Methods

The following payment modes are available on the Payment page when you add funds to the Platform:


### **PayPal (Default Selection)**

Link your PayPal email account to the Platform’s payment gateway to add paid credits.



### **Credit/Debit Card**

Initiate the transaction for paid credits using a valid credit/debit card. Add the _card number_, _account holder’s name_, _expiry date_, and _CVV security code_ to authorize the transaction and validate using an OTP.



### **Wire Transfer**

Select the wire transfer payment mode while adding funds. A wire transfer is a form of electronic payment that sends money directly from one bank account (Payer) to another (Payee). 




**Important Considerations**



* **View Order Details**: When you place an order by selecting the wire transfer method, it gets registered with pending payment clearance status. The order summary page provides you the total amount to transfer along with the break-up summary. Meanwhile, you should also receive an email from Paypro with the detailed steps to complete your Wire Transfer order. 
 


* **Ability to Add Funds during pending Wire Transfer**: A Wire Transfer process may take four to eight days to complete. The paid credits are loaded only after the transfer is successful. If the VA runs out of balance and your Wire Transfer order is still in ‘Pending’ status, you can add funds using an alternative payment method like a credit card or PayPal.


### **Add Funds and Set up Automatic Reload**

To set up automatic recharge for your account, follow the steps below:



1. On the Bot Builder, navigate to **Manage** > **Plan & Usage**.
2. Click **Add Funds** in the Usage Plan section.
    
    ![alt_text](images/up(3).png "image_tooltip")
    
3. In the **Add Funds** window, follow the steps below:
    * Enter the value for **Amount to Credit** to specify the amount you’d like to add to your account.
    * Enable **Automate your balance top-ups** if you want to automatically add funds to your account. Otherwise, disable this option. \
    **Note**: The automatic top-up will not work if you select the _Wire Transfer_ payment method.
    * Enter the value for **Auto reload for** (minimum value is $100).
    * Enter the value for **When Balance Drops Below** to specify the minimum credits to be maintained in your account reaching which the auto-recharge is done.
4. Click **Authorize Payment**. You will be redirected to the **Payment** Page hosted by **PayPro Global** to complete the purchase.
5. Enter the **Billing Information**, select a **Payment Method**, and enter the payment details.

6. Click **Submit Order**.


 The bot will be published after the payment is successful.


## Publishing your Virtual Assistant

You can publish your Virtual Assistants for a Standard Account under the standard or enterprise custom plans. For a standard plan with Free Credits, an **Admin Approval** is required to publish. However, the virtual assistant is **auto-published** when it is enabled for paid plans. For an **Enterprise Custom Plan**, the virtual assistants are auto-published. Please click[ here](https://developer.kore.ai/docs/bots/publish/publishing-bot/) to learn more about publishing a Virtual Assistant.

		

	

**Note**: A messaging channel should be enabled under **Deploy** > **Channels** before publishing a VA.

	

		

			


### Standard Account



* You can publish a virtual assistant for the first time to explore the Platform using free credits.
* Once you sign up, you are automatically upgraded to a Standard Plan. To publish a bot for the first time, you must add funds to your account and use paid credits.
* You can distribute the paid credits among the shared virtual assistants to publish them.


### **Standard Workspace with Free Credits**



1. The Publish request is instantly approved without any constraints/checks if the workspace has free credits. You can see the available billing units from the Plan and Usage module.
2. A plan selection is not required when publishing the virtual assistant.
3. Auto-approval is disabled by default for publishing the virtual assistant and can be enabled only when paid credits are purchased.

When you use a standard account with free credits, you will see the following attribution message on the Web UI channel indicating the Free Credits plan.





![alt_text](images/up(20).png "image_tooltip")


This message indicates using free credits. You can further explore the Platform before adding paid credits to your standard account and do the following:



* Publish a virtual assistant on your website using Kore. AI-hosted web UI channel (URL or code snippet).
* Make your VAs production-ready.

		

	

**Note**: The attribution to Kore.ai does not apply to Enterprise and standard accounts with paid credits.

	

		

			


### Standard Workspace with Zero Free Credits



* The virtual assistant cannot be published if no free credits remain in the workspace.
* The system notifies the owner to load credits to the virtual assistant for publishing.


### Publishing in the Enterprise Plan

Virtual assistants in an Enterprise Account are automatically published under the Enterprise Plan. Please[ contact us](https://kore.ai/contact-us/) to learn more.

 


### **First Publish Scenarios**

When you first publish a VA after subscribing to a Standard Plan, the following scenarios may apply:

**First Publish: Zero Balance**

For the first publish, when there is zero balance in your account, the following notification is displayed:





![alt_text](images/up(21).png "image_tooltip")


**Payment Processed**

For the first publish, you will be automatically upgraded to the Standard account when the payment is processed and the credits are added. The following notification appears:






![alt_text](images/up(21).png "image_tooltip")


		

	

**Note**: The **Publish Now** button appears when the credits are added, allowing you to publish the VA.

	

		

			

**VA Published with Leftover Shared Free Credits**

For a successful first VA publish, the following message appears when your account has existing free credits shared with the other VAs.





![alt_text](images/up(16).png "image_tooltip")
 


### **Notifications and Alerts for Subsequent Publish**

You can subsequently publish a VA when upgraded to a Standard Plan and have paid and free credit account balances. The system displays notifications for subsequent publish scenarios detailed below based on the availability of free and paid credits:

**Low Balance**

For a subsequent publish, when there is a low or negative balance in your account, the following message appears:





![alt_text](images/up(30).png "image_tooltip")


**Zero Paid and Free Credits Balances**

For a subsequent publish, when there are zero paid/free credits in your account, the following message appears:





![alt_text](images/up(42).png "image_tooltip")


**Paid Credits**



![alt_text](images/up(1).png "image_tooltip")


**Free Credits**




![alt_text](images/up(2).png "image_tooltip")


**Zero Paid Credits and Leftover/Existing Free Credits Balance**

The subsequent publish status is when the balance is zero paid credits/no funds are added, and leftover free credits are used for shared VAs.






![alt_text](images/up(16).png "image_tooltip")


**Paid Credits Available, and Zero/Positive Free Credits Balance Available**

When there is a positive paid credits balance but there are no free credits in your account, the following message appears:


![alt_text](images/up(7).png "image_tooltip")
 

**Previous Payment in Progress**

When you try to add funds and a previous payment is in progress for your account, the following message appears:





![alt_text](images/up(26).png "image_tooltip")



## **Upgrading a Standard Plan to an Enterprise Custom Plan**

You can upgrade the **Standard Plan** to an **Enterprise Custom Plan**, which offers premium features like Topic Modeler, Universal Bots, Higher Limits, On-premise Deployments, and more. The custom plan includes **session-based pricing**, 24/7 technical support via **Email**, **Phone** & **Video**, and **program guidance** from our team.

**Important Considerations**



* An Enterprise custom plan upgrade from a standard plan can only be done via Kore.ai customer support.
* The upgrade can be done via the Kore.ai XO **Bot Builder** and **Admin** Consoles.
* On the **Bot Builder** Console, the following applies:
    * If the auto-approval for deploy/publish requests is enabled for your account, you can upgrade the standard plan while publishing the assistant.
    * **Auto Approval** is enabled for all the accounts by default. Your enterprise administrator can disable it based on your organization’s policies.
    * You can submit the publish request to your administrator even when **Auto Approval** is enabled.
    * You can choose different plans for virtual assistants in the same account. You can assign some of your assistants to the Standard Plan and others to the Enterprise Custom plan.

To upgrade your standard plan, follow the below steps:



1. Click the **Manage** tab.
2. From the left menu, select **Plan & Usage**.
3. Click the **Upgrade Plan** link in the **Usage Plan** panel.
        ![alt_text](images/up(23).png "image_tooltip")
4. Click the **Contact us** button in the **Select Subscription Plan** window.




    ![alt_text](images/up(38).png "image_tooltip")


The system redirects to the Kore.ai XO Platform[ contact page](https://kore.ai/contact-us/), where you can fill in the contact form for further assistance.

		

	

	

		

			


## **Admin Console – Plan and Usage**

An **Admin** user can view and manage all the plan subscriptions for their own account and publish Virtual Assistants on the **Admin Console** like any end user. Additionally, the Admin user can approve VA publish requests from account owners based on their Usage Plan, and manage usage from a single dashboard under the **Billing** section.[ Learn more](https://developer.kore.ai/docs/bots/bot-settings/plan-usage/usage-plans/#Admin_Account).


## **Navigating to Plan and Usage**

		

	

**Note**: Only a user with **Admin** privileges can access the Admin Console.

	

		

			

To access the **Plan and Usage** feature on the **Admin Console**, follow the steps below:



1. On the Bot Builder, click the **profile** icon in the top right corner.
2. Click **Go to Admin Console**.
    ![alt_text](images/up(36).png "image_tooltip")
3. Login and navigate to **BILLING** > **PLAN & USAGE** on the left menu.



    ![alt_text](images/up(32).png "image_tooltip")
 		

	

**Note**: The **Billing** > **Plan and Usage** option does not appear on the Admin Console (left menu) for a shared account user.

	

		

			


### **Deployment Flow**

The admin can take action for a Standard Workspace VA deployment request based on the following scenarios:

**Standard Workspace with Free Credits**

The admin user can approve a deployment request without constraints/checks or any plan selection flows if the workspace has free credits.

**Standard Workspace without Free Credits**

If the standard workspace has exhausted all the free credits, the admin cannot approve the publish request until funds/ credits are added to the account.

**Standard Workspace with Paid Credits**

If a VAt account has paid credits, then the admin user can approve the deployment flow.


### **Adding Paid Credits**

The admin can add paid credits to the Standard Workspace in the following scenarios:



1. When the free credits shared by all the bots in a workspace expire.
2. When the free credits shared by all the bots in a workspace have exhausted, or there’s zero free credits balance.
3. When the free credits of a specific bot in a workspace expire.
4. When the free credits of a specific bot in a workspace have exhausted, or there’s zero free credits balance.
5. To set up the auto-recharge (reload) of credits for one or more bots.[ Learn more](https://developer.kore.ai/docs/bots/bot-settings/plan-usage/usage-plans/#Automatic_Recharge).


### **Utilization of Credits**

On the **Admin Console**, paid credits in the account are utilized as follows:



1. The platform provides the bar graph representation of the following usage metrics for each Virtual Assistant in a workspace:
    * **Requests**: The number of user initiated messages/requests to a Virtual Assistant in a billing session. A request count increments by 1 when a chat session ends.
    * **Conversations**: The total number of billing sessions between a Virtual Assistant and end user.
    * **Proactive notifications**: The proactive notifications delivered to the user by the Platform.
    * **Alert Notifications**: Alert task notifications (including Smart Alerts) delivered to the user by the Platform.

    * In addition to the bar graph, you can get a table view of the above metrics as shown below. **Total Units** is the sum of all the abovementioned metrics for s given period.



        ![alt_text](images/up(40).png "image_tooltip")




1. The platform deducts paid credits only from the **paid credits** balance. If there are no paid credits, the platform checks for free credits at the workspace level and does the following:
    * If a free credits positive balance exists, deductions happen from the balance.
    * If there are no free credits and the account needs a manual to reload, the virtual assistants in your workspace don’t respond until you add funds.
    * If there are no free credits and the account has auto-reload enabled, the platform does the following:
        * Automatically replenishes the allowed free credits.
        * Processes the requests.
        * Deducts from the paid credits and then deducts from the free credits once the paid credits are exhausted.

		

	

	

		

			


## **Emails and Notifications**

The Platform sends notifications and marketing emails to the bot developers/account owners at various stages of their Bot-building journey. For the **Usage Plans** feature. In a nutshell, these emails are classified as follows:



* Signup and Sign-in Flows.
* Ecommerce Flows (Manual and Auto-approvals).
* Support Plans, Marketing, and notifications.
* Invitation emails
* Publish and Other Update Emails.


### **System-Triggered Email Templates**

The following table describes the automatic emails triggered by the system when an event occurs:




		

	

	

		

			


## **Change the Bot Owner**

Similar to how the Admin user can change a Bot owner on the Bot Admin Console (BAC), the workspace owner or admin can also transfer the bot ownership from one user to another on the **Plan and Usage** page – for both published and unpublished bots.

**Important Considerations**

Please note the following considerations when using this feature:



1. The Master Admin can now change the bot owner on the BAC by navigating to **Administration** > **Bots Management**.[ Learn more](https://developer.kore.ai/docs/bots/bot-admin/bots-management/bot-management/#Change_Bot_Owner-2).
![alt_text](images/up(9).png "image_tooltip")
2. The admin can change bot ownership to any workspace user, even if the user is not on the bot team.
3. When the bot ownership is changed, all the permissions and rights granted to the bot owner for the specific bot are transferred to the new bot owner.
4. The new bot owner can manage the bot settings, tasks, and plans.


## **Steps to Change the Bot Owner**

To change the Bot owner, follow the steps mentioned below:



1. First, log in to your workspace.
2. Next, select the bot you want to change ownership for.
![alt_text](images/up(6).png "image_tooltip")
3. Next, click the **workspace** icon in the top-right corner.
4. Click **Manage**.
![alt_text](images/up(18).png "image_tooltip")
5. On the left menu, click **Team**.
6. Hover over the **Bot Owner** row, and click the **Configuration** icon.
7. Click **Change Owner**.
    ![alt_text](images/up(13).png "image_tooltip")
8. Select the new bot owner and role in the **Change bot owner** window.
9. Click **Proceed**.




    ![alt_text](images/up(34).png "image_tooltip")


Alternatively, to promote a workspace user to the Bot owner, follow the steps below:



1. After navigating to the **Team** page, hover over the entry of the user whom you wish to make the owner.
2. Click the **Configuration** icon.
3. Click **Promote as Owner**.
    ![alt_text](images/up(41).png "image_tooltip")
4. In the **Promote bot owner** window, select a role for the current bot owner.
5. Click **Save**.


    ![alt_text](images/up(19).png "image_tooltip")


**Alternative Navigation Flow**

You can also click the **Plan & Usage** option on the left menu for your workspace, and follow the steps below:



1. On the **Bots** list, click the **three-dotted** (ellipses) icon for the desired Bot entry.
2. Click **Change Bot Owner**.
    ![alt_text](images/up(31).png "image_tooltip")
3. Follow the instructions from step 8 in the "Steps to Change the Bot Owner" section.

**Result**

A success confirmation message appears, and The bot owner is updated on the **Team** and **Plan & Usage** pages.

![alt_text](images/up(13).png "image_tooltip")


		

	

	

		

			


## **Manage the Usage & Plan Details**

The Kore.ai XO Platform allows an authorized Admin user to manage the plans and billing information both in the Platform and on the Bot Admin Console (BAC). The workspace owner or master admin can transfer the bot ownership from one user to another and grant him the admin role. Once the Admin role is transferred, they can manage the **Plan and Usage** details – for both published and unpublished bots.

**Important Considerations**

Please note the following considerations when using this feature:



1. The Master Admin can change the bot owner on the BAC by navigating to Administration > Bots Management.[ Learn more](https://developer.kore.ai/docs/bots/bot-admin/bots-management/bot-management/#Change_Bot_Owner-2).
2. The admin can change bot ownership to any workspace user, even if the user is not on the bot team.
3. When the bot ownership is changed, all the permissions and rights granted to the bot owner for the specific bot are transferred to the new bot owner.
4. The new bot owner can manage the bot settings, tasks, upgrade plans, and change billing order.


## **Manage the Plan Details in the XO Platform**

Steps to manage the Usage and Plan details in the XO Platform:



1. Log in to your workspace.
2. Select the bot you want to manage the plan details for.
3. Click the **Profile Name** at the top-right corner.
4. Click **Manage**.
5. On the Plan & Usage page, click **Upgrade Plan**.
![alt_text](images/up(8).png "image_tooltip")


6. You can choose the Plan and upgrade the details. For information, see the[ Upgrading a Standard Plan to an Enterprise Custom Plan](https://developer.kore.ai/docs/bots/bot-settings/plan-usage/usage-plans/#Upgrading_a_Standard_Plan_to_an_Enterprise_Custom_Plan) section.
7. To manage users, select the **Bots** tab and choose the bot that you want to **Manage**.
![alt_text](images/up(5).png "image_tooltip")

8. On the Usage Plan page, you can add funds or upgrade plan details. For information, see the[ Add Funds to Your Plan](https://developer.kore.ai/docs/bots/bot-settings/plan-usage/usage-plans/#Add_Funds_to_your_Account_to_Buy_Paid_Credits)<span style="text-decoration:underline;"> </span>section.


#### **Manage the Plan Details in Bot Admin Console**

Steps to manage the Usage and Plan details in BAC:



1. Log in to the Bot Admin Console with admin user credentials.
2. Select the bot you want to manage the plan details for.
3. Navigate to **Billing > Plan & Usage** and select the Bot, then click **Manage**. 


    ![alt_text](images/up(14).png "image_tooltip")

4. On the Usage Plan page, you can add funds or upgrade plan details. For information, see the **Add Funds to Your Plan** section. 

    ![alt_text](images/up(5).png "image_tooltip")


		
