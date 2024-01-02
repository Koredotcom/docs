# Add Data to Data Tables

In this post, we explore how to add account-related data for a customer with the help of a Banking Bot. We see how the required information gathered from the user can be stored in a data table.

For details on what Data Tables are and how it is implemented in the XO platform, click <a href="https://developer.kore.ai/docs/bots/advanced-topics/data-as-a-service/" target="_blank"> here</a>.

## Problem Statement

Consider a Banking Bot, for a given customer, the following data needs to be stored:

* Id
* Name
* Email id
* Address
* Type

<img src="../images/banking-bot-configure-columns.png" alt="banking bot configure columns" title="banking bot configure columns" style="border: 1px solid gray; zoom:75%;">

## Prerequisites

* Bot building knowledge;
* A Banking Bot.

## Configurations

Let us consider each of the following scenarios one by one:

1. Define Data Table with the above requirements;
2. Dialog Task to:
    * Gather required information; and
    * Invoke a service to update the customer information.

### Data Table Configuration

Create a Data Table to hold the following information:

* CustId – A unique identifier for a customer;
* CustName – Name of the customer;
* CustEmail – Email id of the customer;
* CustType – Type of customer – Regular, Preferred, etc.
* Address – Customer Address;

#### Table Creation

1. Log in to the Kore.ai Bot Builder platform.
2. Select the **Data** tab.
<img src="../images/select-data-tab.png" alt="select data tab" title="select data tab" style="border: 1px solid gray; zoom:100%;">

3. Click the **New Table** button.
4. In the New Table page enter the following:
    * **Name**, say _customertable;_
    * **Description**, say _Table containing customer details;_

5. Under the **Column** section add the following details: 


<table border="1.5">
<tr bgcolor="#ECECEC">
   <td>
    <strong>COLUMN NAME</strong>
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
    CustId
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
    CustName
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
    Address
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
    CustType
   </td>
   <td>
    string
   </td>
   <td>
    No
   </td>
   <td>
    Default Value as Preferred
   </td>
  </tr>
  <tr>
   <td>
    CustEmail
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

<img src="../images/add-column-details.png" alt="add column details" title="add column details" style="border: 1px solid gray; zoom:75%;">

<ol start="6"><li>Under the <b>Indexes</b> section add an index for CustId to be unique.</li>
<img src="../images/indexes-section.png" alt="indexes section" title="indexes section" style="border: 1px solid gray; zoom:75%;">

<li>Click <b>Create</b> and your table is ready.</li>
<li>Under the <b>Bot Assignments</b> add the bot which would be using this table, say <i>Banking Bot</i>, and give <i>Read</i>, <i>Write</i> and <i>Delete</i> permissions. <i>Delete</i> permission is optional since we would not be deleting data.</li>
<img src="../images/bot-assignments.png" alt="bot assignments" title="bot assignments" style="border: 1px solid gray; zoom:75%;"></ol>

### Dialog Task Configuration

We will be creating a dialog task to gather the required information, and use a Service node to update the data table with the values thus gathered.

<img src="../images/dialo-task-configuration.png" alt="dialog task configuration" title="dialog task configuration" style="border: 1px solid gray; zoom:75%;">

#### Create Dialog Task

1. From the left navigation menu, select **Bot Tasks** -> **Dialog Tasks**.
2. Click the **+** icon against the **Dialog Tasks** to create a new Task, and follow the steps below:
    * Enter **IntentName**, say, _AddCustomer_
    * **Create & Proceed** to open the dialog builder page.
3. Retain the Intent Node default settings, and close the Intent Node.
4. Click the **+** icon next to the intent node and add four **Entities** as follows: 

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
    CustName
   </td>
   <td>
    String
   </td>
   <td>
    Enter your name
   </td>
  </tr>
  <tr>
   <td>
    CustEmail
   </td>
   <td>
    Email
   </td>
   <td>
    Enter your email id
   </td>
  </tr>
  <tr>
   <td>
    CustAddress
   </td>
   <td>
    City
   </td>
   <td>
    Enter your address city
   </td>
  </tr>
  <tr>
   <td>
    CustType
   </td>
   <td>
    List of items (enumerated)
   </td>
   <td>
    Select your income range
   </td>
  </tr>
</table>

<ol start="5"><li><code>CustType</code> can be Basic, Preferred, or Premium based on the income level of the customer. For this purpose, we have used a static list to populate the CustType value as follows:</li>
<img src="../images/basic-cust-type.png" alt="basic cust type" title="basic cust type" style="border: 1px solid gray; zoom:75%;">

<li>For generating the CustID, we need to get the last customer id in the table and add one to it. For this, we will first fetch data from the table and then use a Script node to process the id.</li></ol>

#### Fetch Data

You can use a Service call to fetch data from the table:

1. Click the **+** icon of the last entity node.
2. Select **Service** -> **New Service Node** option.
3. From the **General Settings** section configure the following:
    * **Name** say _GetLastCustId_
    * **Display Name** say _Get Customer Data_
    * **Service Type** select _Data Service_
    * **Type** select _Table_.
4. Under **Request Definition** click **Add Request** to define a request to fetch data from the table.
5. In the **Data Service Request Definition** page, enter the following:
    * **Choose Table Name** as _customertable_
    * **Actions** as _Get Data_.
    <img src="../images/configure-data-service-request.png" alt="configure data service request" title="configure data service request" style="border: 1px solid gray; zoom:75%;">

6. **Test** and **Save** the definition and **close** the service node.
7. Add a **Script** node to process the values fetched from the data service to obtain the value for the next customer id using the following script:

```js
var resultSet = context.GetLastCustId.response.body.queryResult;
var id = 0;
if (!resultSet.length) {
    id=1;
} else {
    for (var i=0; i<resultSet.length; i++) {
        if (id < resultSet[i].CustId) {
            id = resultSet[i].CustId;
         }
        }
    id++;    
    }
context.lastID = id;
```

<ol start="8"><li>Now we have all the required data to add to the table.</li></ol>

#### Add Data

We will be using a Service call to add data to the table:

1. Click the **+** icon against the last Entity node added above.
2. Select **Service** -> **New Service Node** option.
3. From the **General Settings** section configure the following:
    * **Name** say _AddCustData_.
    * **Display Name** say _Add Customer Data_.
    * **Service Type** select _Data Service_.
    * **Type** select _Table_.
4. Under **Request Definition** click **Add Request** to define a request to add data to the table.
5. In the **Data Service Request Definition** page, enter the following:
    * **Choose Table Name** as _customertable_ defined earlier.
    * **Actions** as _Add Data_.
6. **Assign Values** from the entities defined as follows:

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
        {{context.entities.CustName}}
   </td>
  </tr>
  <tr>
   <td>
        CustEmail
   </td>
   <td>
        {{context.entities.CustEmail}}
   </td>
  </tr>
  <tr>
   <td>
        Address
   </td>
   <td>
        {{context.entities.CustAddress}}
   </td>
  </tr>
  <tr>
   <td>
        CustType
   </td>
   <td>
        {{context.entities.CustType}}
   </td>
  </tr>
  <tr>
   <td>
        CustId
   </td>
   <td>
        {{context.lastID}}
   </td>
  </tr>
</table>

<img src="../images/data-service-request.png" alt="data service request" title="data service request" style="border: 1px solid gray; zoom:75%;">

<ol start="7"><li>Add a <b>Message node</b> to display the values added using the following response format:</li></ol>

```js
Customer account created for: {{context.GetCustData.response.body.queryResult[0].CustName}}, {{context.GetCustData.response.body.queryResult[0].CustEmail}}, {{context.GetCustData.response.body.queryResult[0].CustAddress}}, {{context.GetCustData.response.body.queryResult[0].CustType}}
```

<ol start="8"><li>Using <b>Talk to bot</b> option, enter the values when prompted and see the message being displayed.</li></ol>