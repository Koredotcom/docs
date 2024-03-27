# Build a Custom Dashboard

In this post, we create a dashboard using various metrics to analyze the performance of a Virtual Assistant and identify trends for business needs using a Banking Bot as an example.

## Problem Statement

As a Banking Bot client, you want to track the following metrics:

<ul><li><a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/analyse-the-assistant/create-custom-dashboard/#dollar-value-breakup" target="_blank">Dollar Value Breakup</a></li>

<li><a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/analyse-the-assistant/create-custom-dashboard/#customer-type-summary" target="_blank">Customer Type Summary</a></li>

<li><a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/analyse-the-assistant/create-custom-dashboard/#task-fulfillment-trend" target="_blank">Task Fulfillment Trend</a>.</li>

<li><a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/analyse-the-assistant/create-custom-dashboard/#top-failure-tasks" target="_blank">Top Failure Tasks</a>.</li>

<li><a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/analyse-the-assistant/create-custom-dashboard/#channel-volume-trend" target="_blank">Channel Volume Trend</a>.</li>

<li><a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/analyse-the-assistant/create-custom-dashboard/#filter-the-messages-using-the-having-clause" target="_blank">Filter the Messages using the Having clause</a>.</li></ul>

You can create a custom dashboard to achieve all the scenarios listed above, with detailed step-by-step instructions as described in the following sections.

Once the Dashboard is configured for the listed scenarios, it looks like below.

<img src="../images/configured-dashboard.png" alt="configured dashboard" title="configured dashboard" style="border: 1px solid gray; zoom:75%;">

## Prerequisites

<ul><li>Bot building knowledge.</li>

<li>Custom Meta Tags usage. Click <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/analyse-the-assistant/using-custom-tags-to-filter-assistant-metrics/" target="_blank">here</a> for more information.</li>

<li>A <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/design-conversation-skills/create-a-sample-banking-assistant/" target="_blank">Banking Bot</a> with the dialogs as follows:
</li>

<ul><li><a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/design-conversation-skills/create-transfer-funds-task/" target="_blank">Transfer Funds</a> – The Dialog task walking the user through the steps in transferring money.</li>

<img src="../images/transfer-funds-dialog-task.png" alt="transfer funds" title="transfer funds" style="border: 1px solid gray; zoom:75%;"></ul></ul>

In this dialog, we have included a Script node to add Custom Meta Tag, TransferValue, based upon the amount transferred. The following script is used:

```js
if(context.entities.TransferAmount[0].amount > 50000){`
tags.addSessionLevelTag("TransferValue","HighValue");
}
if(context.entities.TransferAmount[0].amount > 10000)
tags.addSessionLevelTag("TransferValue","MediumValue");
if(context.entities.TransferAmount[0].amount > 0)
    tags.addSessionLevelTag("TransferValue","LowValue");
```

<img src="../images/add-custom-metatag.png" alt="add custom metatag" title="add custom metatag" style="border: 1px solid gray; zoom:75%;">

**Manage Payee** – For the user to manage their payee list.

<img src="../images/manage-payee-dialog.png" alt="manage payee dialog" title="manage payee dialog" style="border: 1px solid gray; zoom:75%;">

Here we have a Script that assigns a value to the customerType meta tags:

```js    
if(context.custType == 3){
     tags.addUserLevelTag("CustomerType","Premium");
    }
    if(context.custType == 2){
       tags.addUserLevelTag("CustomerType","Gold");
    };
    if(context.custType == 1){
       tags.addUserLevelTag("CustomerType","Regular");
};
```

## Implementation

Let’s consider how each metric mentioned in the problem statement can be implemented using widgets from the Custom Dashboard.

* From the left navigation panel, under **Dashboard** click **Custom Dashboard.**
* Click **Create New Dashboard**.
<img src="../images/create-custom-dashboard.png" alt="create custom dashboard" title="create custom dashboard" style="border: 1px solid gray; zoom:75%;">

*  Use the **Add Widget** button to add widgets for the above scenarios. You can add up to 4 widgets per row and organize them by moving anywhere within the row or across the rows on the dashboard. You can also manually resize the widgets.

The details for each widget are explained in the following sections.

### Dollar Value Breakup

1. Click **Add Widget**
2. Query setup:
    * **Dataset** – _Analytics_
    * **Select** – _sessionTag.TransferValue as TransferValue,count(taskName)_. This will let the platform know what data to fetch. Here we are using the session tag values added to the Transfer Amount task against the total number of tasks executed.
    * **Group By** – _sessionTag.TransferValue._
    * **Run** to see the results from the above query.
3. Widget Setup
    * Select **Pie chart**.
    * Set **Dimension** to TransferValue.
    * Set **Metrics** to count(taskName).
    <img src="../images/create-new-dashboard.png" alt="create new dashboard" title="create new dashboard" style="border: 1px solid gray; zoom:75%;">

4. See the **Preview** and if all is fine, click **Update to Dashboard**.
    <img src="../images/dollar-value-breakup.png" alt="dollar value breakup" title="dollar value breakup" style="border: 1px solid gray; zoom:75%;">

### Customer Type Summary

This query provides usage statistics based on the customer type.

Repeat the steps listed in the previous section (<a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/analyse-the-assistant/create-custom-dashboard/#dollar-value-breakup" target="_blank">Dollar Value Breakup</a>) with the following details:

1. Click **Add Widget**.
2. Query setup:

    * **Dataset** – _Analytics_.
    * **Select** – _userTag.CustomerType as CustomerCategory, count(taskName)_.
    * **Group By** – _userTag.CustomerType_.
    * **Run** to see the results from the above query.

3. Widget Setup

    * Select **Bar chart**.
    * Set **Dimension** to _CustomerCategory_.
    * Set **Metrics** to _count(taskName)_.
    <img src="../images/customer-type-summary.png" alt="customer type summary" title="customer type summary" style="border: 1px solid gray; zoom:75%;">

4. See the **Preview** and then click **Update to Dashboard**.

### Task Fulfillment Trend

This query provides day-wise task success vs. failure trends.

Repeat the steps listed in the previous section with the following details:

1. Click **Add Widget**.
2. Query setup:

    * **Dataset** – _Analytics._
    * **Select** – _date,metricType, count(metricType) as TotalTasks_.
    * **Filter By** – _metricType_ = ‘successtasks’ or metricType = ‘failedtasks’.

We want to see only Success or Failed Tasks.

* **Group By** – _date,metricType._
* **Run** to see the results from the above query.

3. Widget Setup

    * Select **Bar chart**.
    * Set **Dimension** to _date_.
    * Set **Metrics** to _TotalTasks_.
    * Set **Overlay** to _metricType_.
    <img src="../images/widget-set-up-bar-chart.png" alt="widget setup bar chart" title="widget setup bar chart" style="border: 1px solid gray; zoom:75%;">

4. See the **Preview** and then click **Update to Dashboard**.

### Top Failure Tasks

This query provides top tasks that are failing.

Repeat the steps listed in the previous section with the following details:

1. Click **Add Widget**.
2. Query setup:

    * **Dataset** – _Analytics._
    * **Select** – _taskName as TaskName,count(taskName) as Failures._
    * **Filter By** – _metricType_ = ‘_failedtasks_’.

We want to see only Failed Tasks.

* **Group By** – _taskName._
* **Run** to see the results from the above query.

3. Widget Setup

    * Select **Table chart**.
    * Set **Dimension** to _TaskName_ and _Failures_.
    <img src="../images/set-dimension.png" alt="set dimension" title="set dimension" style="border: 1px solid gray; zoom:75%;">

4. See the **Preview** and then click **Update to Dashboard.**

### Channel Volume Trend

This query provides channel-wise usage details.

Repeat the steps listed in the previous section with the following details:

1. Click **Add Widget**.
2. Query setup:
    * **Dataset** – _Messages._
    * **Select** – _date,channel,count(messageId)._
    * **Group By** – _date,channel._
    * **Run** to see the results from the above query.
3. Widget Setup
    * Select **Line chart**.
    * Set **Dimension** to _date._
    * Set **Metrics** to _count(messageId)._
    * Set **Overlay** to _channel_.
    <img src="../images/widget-setup.png" alt="widget setup" title="widget setup" style="border: 1px solid gray; zoom:75%;">

4. See the **Preview** and then click **Update to Dashboard**.

You Custom Dashboard is ready. Set the **Date Range** to see the required metrics for the scenarios.

#### Filter the Messages using the Having Clause

This query uses a **Having** clause, to display the number of filtered messages for _userIds_, where the user has interacted with the virtual assistant more than 12 times. The query setup and result are described below.

Repeat the steps listed in the previous section with the following details:

1. Click **Add Widget**.
2. Query setup:
    * **Dataset** – _Messages_.
    * **Select** – _count(messageId),userId_.
    * **Group By** – _userId_.
    * **Having** – _count(messageId) > 12_.
    * **Run** to see the results from the above query.
3. Widget Setup
    * Select **Table chart**.
    * Set **Dimension** to _count(messageId),userId._
4. The following is a result when you just retrieve the count of all messages, grouping by the userId.
<img src="../images/retrieve-count-of-messages.png" alt="retrieve count" title="retrieve count" style="border: 1px solid gray; zoom:75%;"> 

5. The following is a result when you retrieve the count of messages, grouping by the userId, using the Having clause.
<img src="../images/retrieve-information.png" alt="retrieve information" title="retrieve information" style="border: 1px solid gray; zoom:75%;"> 

6. See the **Preview** and then click **Add to Dashboard**.
<img src="../images/click-add-to-dashboard.png" alt="add to dashboard" title="add to dashboard" style="border: 1px solid gray; zoom:75%;"> 

The Having clause widget is added to the dashboard as shown in the following screenshot.
<img src="../images/having-clause-widget.png" alt="having clause widget" title="having clause widget" style="border: 1px solid gray; zoom:75%;">