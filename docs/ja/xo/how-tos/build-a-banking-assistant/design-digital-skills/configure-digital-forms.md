# Configure Digital Forms

In this post, we explore how you can create an additional account through a Banking Bot. We will see how Digital Forms can be used to gather all the required information from the user and create the account.

For details on what Digital Forms are and how it is implemented in the XO platform, click <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/digital-skills/digital-forms/" target="_blank"> here</a>.

## Problem Statement

Consider a Banking Bot trying to address the following scenarios:

1. An already registered user wants to open an additional account.
2. There are three types of accounts that are available, each with further options:
    * **Savings Account**.
    * **Checking Account** with an option to opt for a Cash Card and set a Minumum Balance.
    * **Credit Card** with an option to choose the type of card to be Platinum, Gold, Silver or Basic.
    <img src="../images/problem-statement-banking-bot.png" alt="banking bot forms" title="banking bot forms" style="border: 1px solid gray; zoom:75%;">

### Prerequisites

* Bot building knowledge
* A Banking Bot


## Configurations

Let us consider each of the following scenarios:

1. Digital Form to gather input from the user;
2. Dialog Task to:
    * Trigger the above Digital Form; and
    * Capture the user-entered account information.


### Digital Form Configuration

Create a form to gather the following information:

* *Account Name* pre-populated with the user’s name with an option to change it;
* *Type of Account* that the user wants to create, default selection to Savings Account;
* Based on the type of account selected above the following details to be gathered:
    * Savings – no further information needed;
    * Checkings – whether Cash Card is required, if yes then the maximum withdrawal limit (range between $100 to $1000) to be enforced on that card.
    * Credit Card – the type of card required
        * Platinum card levies additional charge,
        * Gold,
        * Silver, or
        * Basic

#### Form Creation

1. From the Kore.ai Bot Builder platform, open the Banking Bot.
2. Select the **Build** tab from the top menu.
3. From the left navigation menu, select **Digital Skills** -> **Digital Forms** to access the Digital Forms page.
4. Click **New Form** and enter the following:
    * **Name**: name to the form, say _OpenAccount_.
    * **Display Name** for the form, say _Open an Account_.
    * **Description** of the form.
    * **Description**: Turn on the toggle to show a description of the form in the header.

5. **Select the form’s Header Style**: You can choose a specific header style from the listed illustrations – the circle indicates the position of logo/icon with respect to the title of the form in the header. 
    
Click the card to select the style. If it has a logo, you can upload an image file (png or jpg) for the logo.

!!!note

    During the Export of the Bot, the logo is not exported along with Digital Forms. So, while importing this Bot, you need to separately copy the logo image file and then manually reupload the logo.

<ol start="6"><li> <b>Save & Proceed</b> to the next step.</li>
<img src="../images/form-creation-digital-form.png" alt="digital form" title="digital form" style="border: 1px solid gray; zoom:75%;"></ol>

#### Form Editor

1. The Form Editor opens with components on the left, and a blank form. You can drag and drop components to the form as per your requirement.
2. By default, a **Submit button** is added to the form. This would trigger the submit event which would capture the user input and save in context object.
3. Drag and drop a **Text Field** component onto the form.
4. As soon as you drag and drop a component, its property settings panel will be displayed.
5. In that panel set the following values:
    * **Display Name** say _Name._
    * **Name** used for internal reference, say _accountname._
    * **Description** of the field.
    * **Placeholder** value to be displayed in the field when blank, say, _Enter the name of the account holder_.
    <img src="../images/Form-editor-general-settings.png" alt="general settings" title="general settings" style="border: 1px solid gray; zoom:75%;">

6. Next, a selection box for the type of account to be opened. Drag and drop a **Dropdown** component onto the form and set the following values:
    * **Display Name** say _Type_.
    * **Name** used for internal reference, say _accounttype_.
    * **Description** of the field.
    * **Placeholder** value to be displayed in the field when blank, say, _Select the type of account you want to open_.
    * Scroll and locate **Data Settings**, deselect **Multi Select** option and against **Dropdown values** click **Add Values** to enter the values – _Checkings, Savings, Credit Card_ You can mark one value, _Savings_, as default. This would be selected by default at the time of execution.
    <img src="../images/data-settings-default-selection.png" alt="data settngs default selection" title="data settngs default selection" style="border: 1px solid gray; zoom:75%;">

7. Next, for the Cash Card option when the account type is selected to be a Checkings account. Drag and drop a **Toggle** component onto the form and set the following values:
    * **Display Name** say _Cash Card_.
    * **Name** used for internal reference, say _cashcard._
    * **Description** of the field. In this case, the question, _Want a cash card?_
    * **Value** as _Yes_ when selected and _No_ when deselected.
    * Scroll and locate **Visibility Settings.** This component should be visible only when the account type is set to Checkings.
        * Add **Visibility Rules – Rule 1** for the field to be **Visible** when, select, _accounttype_ field, _=(Equal To)_ operator, _Value_ comparison with, _Checkings_ value.
        <img src="../images/visibility-settings-cash-card.png" alt="cash card visibility settings" title="cash card visibility settings" style="border: 1px solid gray; zoom:75%;">

8. If the user opts for cash card, then the withdrawal limit needs to be set on the same. Drag and drop a **Range Slider** component onto the form and set the following values:
    * **Display Name** say _Withdrawal Limit_.
    * **Name** used for internal reference, say _withdrawallimit._
    * **Description** of the field.
    * **Placeholder** value to be displayed in the field when blank, say, _Set the withdrawal limit_.
    * Deselect **Is Percentage**.
    * **Value** as _100_ for Min and _1000_ for Max.
    * Under **Data Settings**, you can set the **Default Value** to be 150, this would be pre-selected.
    * **Visibility Rules** would be a compound rule – account type is checkings and cash card is selected.
    * Scroll and locate **Visibility Settings.** This component should be visible only when the account type is set to Checkings and the Cash Card is opted.
        * Add **Visibility Rules – Rule 1** field to be visible when, select, **accounttype** field, _=(Equal To)_ operator, _Value_ comparison with, _Checkings_ value  AND selecting **cashcard** field, _=(Equal To)_ operator, _Value_ comparison with, _Yes_ value.
        * You can switch to **Advanced Mode** to enter the visibility rules.
        <img src="../images/visibility-settings-rule-1.png" alt="visibility settings rule 1" title="visibility settings rule 1" style="border: 1px solid gray; zoom:75%;">

9. For the Credit Card option, the user needs to further select the type of card. Drag and drop a **Radio Button** component onto the form and set the following values:
    * **Display Name** say  _Card Type._
    * **Name** used for internal reference, say _cardtype_.
    * **Description** of the field.
    * **Placeholder** value to be displayed in the field when blank, say, _Choose the type of credit card_.
    * Under **Data Settings**, you can set the **Radio values** to be _Platinum, Gold, Silver_, and _Basic_.
    * Scroll and locate **Visibility Settings.** This component should be visible only when the account type is set to Credit Card.
        * Set **Is visible** flag to _Yes_
        * Add **Visibility Rules – Rule 1** for the filed to be **Visible** when, select, **accounttype** field, _=(Equal To)_ operator, _Value_ comparison with, _Credit Card_ value.
        <img src="../images/data-settings-visibility-rules.png" alt="data settings visibility rule" title="data settings visibility rule" style="border: 1px solid gray; zoom:75%;">

10. Finally, the Pro-Tip, when user selects a Platinum card. Drag and drop a **Pro Tip** component onto the form and set the following values:
    * Set **Display Name** as _Platinum Tip._
    * **Name** used for internal reference, mention _platinumtip._
    * **Description** would be the tip you want to display, eg. _Additional charges will apply_.
    * Scroll and locate **Visibility Settings**. This component should be visible only when the account type is set to Credit Card.
        * Set **Is visible** flag to _Yes_
        * Add **Visibility Rules – Rule 1** for the field to be **Visible** when, select, **accounttype** field, _=(Equal To)_ operator, _Value_ comparison with, _Credit Card_ value AND selecting **cardtype** field, _=(Equal To)_ operator, _Value_ comparison with, _Platinum_ value.
        <img src="../images/add-visibility-rule-digital-forms.png" alt="add visibility rule" title="add visibility rule" style="border: 1px solid gray; zoom:75%;">

11. Your form is ready.
12. You can toggle between Desktop View and Mobile View to see how it looks in those devices.
<img src="../images/toggle-between-views.png" alt="toggle between views" title="toggle between views" style="border: 1px solid gray; zoom:75%;">

13. You can select how the VA handles the conversation when the user cancels the form. You can choose from two options:
    * **Discard the task and trigger End of Task Event**: This is the default option.
    <img src="../images/discard-task-trigger-end-of-task-event.png" alt="discard task trigger end of task event" title="discard task trigger end of task event" style="border: 1px solid gray; zoom:75%;">

Continue with this task and transition to this node: In the **Select Node** drop-down list, you can select any node present in the current dialog task.

<img src="../images/select-node-dropdown-list.png" alt="select node dropdown" title="select node dropdown" style="border: 1px solid gray; zoom:125%;">


!!!note

    The target node has to be in the same dialog, you cannot make a jump to a target node outside the current dialog. The list of target nodes only shows the local nodes.
    If the target node is not present during runtime, the platform presents the error Error in continuing the conversation, and the task should get discarded.

    Use the **Test** button to see a preview.

### Dialog Task Configuration

We will be creating a dialog task and adding a form node to trigger the Digital Form created in the above step and use a service node to make a service call to add the new account from the form data.

### Create Dialog Task

1. Select the **Build** tab from the top menu
2. From the left navigation menu, select **Conversational Skills -> Dialog Tasks.**
3. Click the **+** against the **Dialog Tasks** to create a new Task.
    * Enter **IntentName**, say, _OpenAccount_
    * **Create & Proceed** to open the dialog builder page.
4. Retain the Intent Node default settings, and close the Intent Node.
5. Click the **+** next to the intent node and select the **Form** option.
6. From the dropdown list select the form (_OpenAccount_) we created earlier.
<img src="../images/select-openaccount-form.png" alt="select open account form" title="select open account form" style="border: 1px solid gray; zoom:75%;">

7. You will be prompted to select the **Form Experience.** XO platform allows you to gather user input both from the form and through conversation based on the channel.
8. For this use case, let us select _Only Form UI_ experience.
9. A Form Node would be added, you can customize the form name, etc.
10. We are changing the **Name** to _OpenAccountForm_ and **Display Name** to _Form to open account_.
11. Next, we will see how to capture the values returned by the Form Node using a Script node and displaying the same.
12. Add a **Message Node** to the form node.
13. Set the **Name** to _FormMessage_ and **Display Name** to _Form Message_.
14. Click the **MANAGE RESPONSES** to open the message editor.
<img src="../images/message-node-manage-responses.png" alt="message node" title="message node" style="border: 1px solid gray; zoom:75%;">

15. Select the **JavaScript** tab and enter the following code. This code would capture from the context object, the data submitted by the user in the Form and display it accordingly.

```js
var message;
message = 'You have opened a '+context.forms.OpenAccount.accounttype+' account in the name of '+context.forms.OpenAccount.accountname;
if (context.forms.OpenAccount.accounttype == 'Checkings' && context.forms.OpenAccount.cashcard == 'Yes')
message = message + ' and opted for cash card with withdrawal limit set to '+ context.forms.OpenAccount.withdrawallimit;
if (context.forms.OpenAccount.accounttype == 'Credit Card')
  message = message + ' and opted for a '+ context.forms.OpenAccount.cardtype+' card';
print(message);
```

<img src="../images/javascript-code-design-forms.png" alt="sample weather bot" title="sample weather bot" style="border: 1px solid gray; zoom:75%;">

Your dialog with form is ready!

<ol start="16"><li><b>Talk to bot</b> and trigger the above dialog. The form will be displayed, enter the values and click Submit, the message would be displayed.</li>

<img src="../images/talk-to-bot-digital-forms.png" alt="javascript code" title="javascript code" style="border: 1px solid gray; zoom:75%;">

<li>You can use the context object as shown above it a <b>Script</b> or <b>Service</b> nodes for further processing.</li>
<li>Click <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/design-digital-skills/add-data-into-data-tables-from-ui-forms/" target="_blank">here</a> to learn how to add this data into data tables.</li></ol>