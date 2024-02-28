# Update Data in Data Tables

In this post, we explore a Banking Bot scenario where the account-related data for a customer is stored in a Data Table. We will see how the data can be updated by a request from the user.

For details on what Data Tables are and how it is implemented in the XO platform, click <a href="https://developer.kore.ai/docs/bots/advanced-topics/data-as-a-service/" target="_blank"> here</a>.

## Problem Statement

Consider a Banking Bot, for a given customer, the following data is stored. This data needs to be updated as per customer request. Customers can update only email id and address details.

* Id;
* Name;
* Email id;
* Address; and
* Type

<img src="../images/problem-statement-update-data.png" alt="problem statement update data" title="problem statement update data" style="border: 1px solid gray; zoom:75%;">

## Prerequisites

* Bot building knowledge.
* A Banking Bot with access to the above-mentioned table, and data existing in that table (click <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/design-digital-skills/add-data-to-data-tables/" target="_blank"> here</a> for use case example to create and add data).

## Configurations

Let us consider each of the following scenarios one by one:

1. Dialog Task to:
    * Gather required information.
    * Invoke a service to update the customer information.

### Dialog Task Configuration

We will create a dialog task to gather the required information, and use a **Service** node to update the data table with the values thus gathered.

<img src="../images/dialog-task-configuration-update.png" alt="dialog task configuration" title="dialog task configuration" style="border: 1px solid gray; zoom:75%;">

#### Create Dialog Task

1. From the left navigation menu, select **Bot Tasks -> Dialog Tasks**.
2. Click the **+** icon against the **Dialog Tasks** to create a new Task.
    * Enter **IntentName**, say, _UpdateCustomer_.
    * **Create & Proceed** to open the dialog builder page.
3. Retain the Intent Node default settings, and close the Intent Node.
4. Click the **+** icon next to the intent node and add an **Entities** to capture the customer id: 

<table border="1.5">
<tr bgcolor="#ECECEC">
   <td>
    <strong>ENTITY NAME</strong>
   </td>
   <td>
    <strong>TYPE</strong>
   </td>
   <td>
    <strong>USER PROMPTS</strong>
   </td>
  </tr>
  <tr>
   <td>
    CustId
   </td>
   <td>
    String
   </td>
   <td>
    Enter your customer id
   </td>
  </tr>
</table>

<ol start="5"><li>First, we will fetch data from the table for the given <code>Cust Id</code> and then use a Logic node to control the process flow.</li></ol>

#### Fetch Data

You can use a Service call to fetch data from the table:

1. Click the **+** iconagainst the entity node.
2. Select **Service** -> **New Service Node** option.
3. From the **General Settings** section configure the following:
    * **Name** say _GetCustomerData_.
    * **Display Name** say _Get Customer Data_.
    * **Service Type** select _Data Service_.
    * **Type** select _Table_.
4. Under **Request Definition** click **Add Request** to define a request to fetch data from the table.
5. In the **Data Service Request Definition** page, enter the following:
    * **Choose Table Name** as _customertable_.
    * **Actions** as _Get Data_.
    * **Choose Filters** to select the _CustId = {{context.entities.CustId}}_.

<img src="../images/data-service-request-definition.png" alt="data service request definition" title="data service request definition" style="border: 1px solid gray; zoom:75%;">

<ol start="6"><li><b>Save</b> the definition and close the service node.</li>
<li>Add a <b>Message Node</b> to display the records fetches using the following context variable values, since we are fetching only one record, we are using a static _[0]_ reference to the row:</li></ol>

```
For the customer number entered, we have the following details: {{context.GetCustomerData.response.body.queryResult[0].CustName}}, {{context.GetCustomerData.response.body.queryResult[0].CustEmail}}, {{context.GetCustomerData.response.body.queryResult[0].Address}}, {{context.GetCustomerData.response.body.queryResult[0].CustType}}
```

#### Update Data

We will be using an entity node and a logic node to capture the inputs from the customer and to control the process flow:

1. Click the **+** icon against the last message node added above.
2. Select an **Entity Node** and add a _List of Items (enumerated)_ type entity with the following settings. 

<table border="1.5">
<tr bgcolor="#ECECEC">
   <td>
    <strong>DISPLAY NAME</strong>
   </td>
   <td>
    <strong>VALUE</strong>
   </td>
  </tr>
  <tr>
   <td>
    Email Id
   </td>
   <td>
    Email Id
   </td>
  </tr>
  <tr>
   <td>
    Address
   </td>
   <td>
    Address
   </td>
  </tr>
</table>

<ol start="3"><li>Add a <b>Logic Node</b> and based upon the value from the entity node above fetch either Email ID or Address from the customer, here <i>CustEmail</i> and <i>CustAddress</i> are the entities to capture customer email id and customer address.</li>

<img src="../images/logic-node.png" alt="logic node" title="logic node" style="border: 1px solid gray; zoom:75%;">

<li>Also populate the context variables with the current details, these variables would be used to update the data table.</li>

<img src="../images/populate-context-variables.png" alt="populate context varoiable" title="banking bot configure columns" style="border: 1px solid gray; zoom:75%;"></ol>

From the Email Id and Address entity trigger a **Script Node** to modify the context variables appropriately using the following script:

```js
if (context.entities.CustUpdateChoice == 'Address') {`

    context.custAdd = context.entities.CustAddress;
  }
else {
   context.custEmail = context.entities.CustEmail;
 }
```

<ol start="5"><li>Select <b>Service</b> -> <b>New Service Node</b> option.</li>
<li>From the <b>General Settings</b> section configure the following:</li>
    <ul><li><b>Name</b> say <i>UpdateCust</i>.
    <li><b>Display Name</b> say <i>Update Customer Data</i>
    <li><b>Service Type</b> select <i>Data Service</i>.
    <li><b>Type</b> select <i>Table</i>.</li></ul>
<li>Under <b>Request Definition</b> click <b>Add Request</b> to define a request to add data to the table.</li>
<li>In the <b>Data Service Request Definition</b> page, enter the following:</li>
    <ul><li><b>Choose Table Name</b> as <code>customertable</code> defined earlier.</li>
    <li><b>Actions</b> as <i>Update Data</i>.</li></ul></ol>

**Assign Values** from the entities defined as follows, remember you need to include all the fields and their values, else the field would be set to null value:

<table border="1.5">
<tr bgcolor="#ECECEC">
   <td>
        <strong>COLUMN</strong>
   </td>
   <td>
        <strong>ENTITY CONTEXT</strong>
   </td>
  </tr>
  <tr>
   <td>
        CustName
   </td>
   <td>
        {{context.CustName}}
   </td>
  </tr>
  <tr>
   <td>
        CustEmail
   </td>
   <td>
        {{context.CustEmail}}
   </td>
  </tr>
  <tr>
   <td>
        Address
   </td>
   <td>
        {{context.CustAddress}}
   </td>
  </tr>
  <tr>
   <td>
        CustType
   </td>
   <td>
        {{context.CustType}}
   </td>
  </tr>
  <tr>
   <td>
        CustId
   </td>
   <td>
        {{context.CustId}}
   </td>
  </tr>
</table>

<img src="../images/data-service-request-update.png" alt="data service request update" title="data service request update" style="border: 1px solid gray; zoom:75%;">

<ol start="9"><li>Add a <b>Message node</b> to display the success message.</li>
<li>Using <b>Talk to bot</b> option, enter the values when prompted and see the message being displayed.</li></ol>