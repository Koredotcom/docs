# Add Data from Digital Forms

In this page, we explore a scenario in a Banking Bot where the user can create an additional account.

We will see how data collected from the UI Forms can be used to create the account in a Data Table.

For details on what UI Forms are and how they are implemented on the XO Platform, click <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/digital-skills/digital-forms/" target="_blank">here</a>.

For details on Data Tables and their implementation on the XO Platform, click <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/design-digital-skills/add-data-to-data-tables/" target="_blank"> here</a>.

## Problem Statement

Consider a Banking Bot trying to address the following scenarios:

1. An already registered user wants to open an additional account.
2. There are three types of accounts that are available, each with further options:
    * Savings Account.
    * Checking Account with an option to opt for a Cash Card and set a Minimum Balance.
    * Credit Card with an option to choose the type of card to be _Platinum, Gold, Silver_ or _Basic_.
3. The above data is collected from the user using a UI form.
4. This data needs to be updated to the data table.

## Prerequisites

* Bot building knowledge
* A Banking Bot with access to
    * Customer details table as created <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/design-digital-skills/add-data-to-data-tables/#table-creation" target="_blank"> here</a>.
    * Account details table, using the same steps shown in the above link create the following data table:
        * **Name**, say _accountdetails;_
        * **Description**, say _Account details Table;_
        * Under the **Column** section add the following details:

<table border="1.5">
<tr bgcolor="#ECECEC">
   <td>
            <strong>COLUMN NAME</strong>
</li>  
</ul>
</li>  
</ul>
</li>  
</ul>
   </td>
   <td>
            <strong>TYPE</strong>
   </td>
   <td>
            <strong>REQUIRED</strong>
   </td>
   <td>
            <strong>ADDITIONAL SETTINGS</strong>
   </td>
  </tr>
  <tr>
   <td>
            AccountId
   </td>
   <td>
            number
   </td>
   <td>
            Yes
   </td>
   <td>
            Encrypted & Max Length of 5
   </td>
  </tr>
  <tr>
   <td>
            AccountName
   </td>
   <td>
            string
   </td>
   <td>
            Yes
   </td>
   <td>
            –
   </td>
  </tr>
  <tr>
   <td>
            AccountType
   </td>
   <td>
            string
   </td>
   <td>
            No
   </td>
   <td>
            –
   </td>
  </tr>
  <tr>
   <td>
            CustId
   </td>
   <td>
            number
   </td>
   <td>
            Yes
   </td>
   <td>
            Reference table & column as
<p>

            <em>customertable.CustId</em>
   </td>
  </tr>
  <tr>
   <td>
            CashCard
   </td>
   <td>
            string
   </td>
   <td>
            No
   </td>
   <td>
            –
   </td>
  </tr>
  <tr>
   <td>
            WithdrawalLimit
   </td>
   <td>
            number
   </td>
   <td>
            No
   </td>
   <td>
            –
   </td>
  </tr>
  <tr>
   <td>
            CCType
   </td>
   <td>
            string
   </td>
   <td>
            No
   </td>
   <td>
            –
   </td>
  </tr>
</table>

<img src="../images/update-form.png" alt="update form" title="update form" style="border: 1px solid gray; zoom:75%;">

UI Form we will be using the UI Form configured as shown <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/design-digital-skills/configure-digital-forms/" target="_blank"> here</a>.

## Configurations

Let us consider each of the following scenarios one by one:

Dialog Task to:

* Capture the customer id.
* Trigger the UI Form to gather account details.
* Invoke the service node to add the account data.

### Dialog Task Configuration

We will be creating a dialog task and adding a form node to trigger the UI Form created in the above step and use a service node to make a service call to add the new account from the form data.
<img src="../images/dialog-task-configuration-ui-form.png" alt="dialog task configuration" title="dialog task configuration" style="border: 1px solid gray; zoom:75%;">

#### Create Dialog Task

1. From the left navigation menu, select **Bot Tasks** -> **Dialog Tasks**.
2. Click the **+** icon against the **Dialog Tasks** to create a new Task.
    * Enter **IntentName** say, _AddAccount_.
    * **Create & Proceed** to open the dialog builder page.
3. Retain the Intent Node default settings, and close the Intent Node.
4. Click the **+** icon next to the intent node and select the **Entity** node. This will be used to capture the customer id
    * Enter **Name** say, _CustId_.
    * Select **Type** as _Number_.
    * **User Prompt** as _Enter your Customer Id_.
    * Close the entity node.
5. Add a **Service** node to check for the validity of the customer id entered.

<img src="../images/check-customer-id-validity.png" alt="check customer id validity" title="check customer id validity" style="border: 1px solid gray; zoom:75%;">

<ol start="6"><li>Add a <b>Logic</b> node to proceed with the Form if the customer id is valid else prompt for the customer id.</li>
<img src="../images/logic-node.png" alt="logic node" title="logic node" style="border: 1px solid gray; zoom:75%;"></ol>

The _InvalidCustId_ is a **Message** node with the following JavaScript:

```js
context.entities.CustId = null;
print('You have entered an invalid customer id, try again');
```

<ol start="7"><li>Next, add a <b>Form</b> node and from the dropdown list select the form (<i>OpenAccount</i>).</li>
    <ul><li>You will be prompted to select the <b>Form Experience</b>. The XO Platform allows you to gather user input both from the form and through conversation based on the channel.</li>
    <li>For this use case, let us select <i>Only Form UI</i> experience.</li>
    <li>A Form Node would be added, you can customize the form name, etc.</li>
    <li>We are changing the <b>Name</b> to <i>OpenAccountForm</i> and <b>Display Name</b> to <i>Form to open account</i>.</li></ul>
<li>Using a <b>Service</b> node, fetch any existing account details for the customer id.</li>
<li>Next, we will see how to capture the values returned by the Form Node using a <b>Script</b> node and process the same to get the next account id value and set to null the unwanted fields.</li></ol>

Use the following script to get the next account id

```js
var resultSet = context.GetAcctData.response.body.queryResult;
var id = 0;
if (!resultSet.length) {
    id=1;
} else {
    for (var i=0; i<resultSet.length; i++) {
        if (id < resultSet[i].AccountId) {
            id = resultSet[i].AccountId;
         }
        }
    id++;    
    }
context.accountid = id;
context.name=context.GetCustData.response.body.queryResult[0].CustName;

//set unwanted fields to null
if (context.forms.OpenAccount.accounttype == 'Savings')
	{ context.cashcard = null;
	  context.withdrawallimit = null;
	  context.cardtype = null;
	  context.type=context.forms.OpenAccount.accounttype;
	  }

if (context.forms.OpenAccount.accounttype == 'Checkings')
	{ context.cardtype = null;
      context.cashcard = context.forms.OpenAccount.cashcard;
	  context.withdrawallimit = context.forms.OpenAccount.withdrawallimit;
	  context.type=context.forms.OpenAccount.accounttype;
	  }

if (context.forms.OpenAccount.accounttype == 'Credit Card')
	{ context.cashcard = null;
	  context.withdrawallimit = null;
	  context.cardtype = context.forms.OpenAccount.cardtype;
	  context.type=context.forms.OpenAccount.accounttype;
}
```

<ol start="10"><li>Use a <b>Service</b> node to add the account details using the context variables populated in the previous Script node.</li>
<img src="../images/service-node-to-add-account-details.png" alt="service node to add account details" title="service node to add account details" style="border: 1px solid gray; zoom:75%;">

<li>Your dialog with form and service nodes to update the data table is ready.</li>
<li><b>Talk to bot</b> and follow the steps to add an account to a given customer id.</li></ol>