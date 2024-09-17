# Using Custom Tags to Filter Assistant Metrics

In this How-To, we will explore a scenario in a Banking Bot, where, various metrics will be used to analyze the bot performance.

For details on what Bot Metrics are and how they are implemented in the XO Platform, click <a href="https://docsinternal-kore.github.io/docs/xo/analytics/automation/introduction/" target="_blank">here</a>.

## Problem Statement

A Banking Bot client can track the following metrics:

* Frequent Intents used by customers;
* Usage split based on the customer type;

This document gives a detailed step-by-step approach to viewing the above statistics from the Bot Metrics page and apply filters based on <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/analyse-the-assistant/using-custom-tags-to-filter-assistant-metrics/" target="_blank">Custom Meta Tags</a>.

## Prerequisites

<ul><li>Bot building knowledge.</li>
<li>Custom Meta Tags usage, click <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/analyse-the-assistant/using-custom-tags-to-filter-assistant-metrics/" target="_blank">here</a> to learn more.</li>
<li>A <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/design-conversation-skills/create-a-sample-banking-assistant/" target="_blank">Banking Bot</a> with the dialogs as mentioned below:</li>
<ul>
<li><strong><a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/design-conversation-skills/create-transfer-funds-task/" target="_blank">Transfer Money</a></strong> – Dialog task walking the user through the steps in transferring money.</li>

<img src="../images/transfer-money-dialog.png" alt="transfer money dialog" title="transfer money dialog" style="border: 1px solid gray; zoom:75%;"></ul></ul>

In this dialog, we have included a Script node to add Custom Meta Tag, TransferValue, based upon the amount transferred. Following script was used:

```js
if(context.entities.TransferAmount[0].amount > 50000)
{
    tags.addSessionLevelTag("TransferValue","HighValue");
}
if(context.entities.TransferAmount[0].amount > 10000)
    tags.addSessionLevelTag("TransferValue","MediumValue");
    if(context.entities.TransferAmount[0].amount > 0)
    tags.addSessionLevelTag("TransferValue","LowValue");
 ```   

<img src="../images/script-node-add-custom-meta-tag.png" alt="script node to add custom metatag" title="script node to add custom metatag" style="border: 1px solid gray; zoom:75%;">

**Manage Payee** – For the user to manage their payee list.
<img src="../images/manage-payee-list.png" alt="manage payee list" title="manage payee list" style="border: 1px solid gray; zoom:75%;">

Here we have a Script assigning customerType meta tags:

```js
if(context.custType == 3)
{
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

Let us consider how each of the metrics mentioned in the problem statement can be viewed from the Metrics.

1. From the left navigation panel, under **Analyze** click **Metrics**.
2. The page will display the **Intent found** metrics to include successful utterances, intents, userid of the user,  and other details.
3. These are the successful intents in the past one week as captured by the Bot.
4. Click the **Filter** button to customize the report.<img src="../images/apply-filter-to-customise.png" alt="apply filters" title="apply filters" style="border: 1px solid gray; zoom:75%;"> 

5. Customize the **Date period**, **Languages**, **Channel**, and the **Task/Intent** you want to capture.
6. Since we want to track the **Transfer Money** intent, we have selected accordingly. 
<img src="../images/track-transfer-money.png" alt="track transfer money" title="track transfer money" style="border: 1px solid gray; zoom:75%;">

7. We want the report of all the interactions by the _Gold_ and _Premium_ customers doing _High Value_ money transfers.
8. For this select the **Custom Tags** as follows (you can select the tag name and tag value from the type ahead drop down:

    * **Customer Type** – _Gold, Premium_.
    * **Transfer Value** – _HighValue_.
    <img src="../images/custom-tags-edit.png" alt="custom tag edit" title="custom tag edit" style="border: 1px solid gray; zoom:75%;">

9. On applying the filter, you will see the updated Metrics page. Note that tags filter is applied only on the published version on the bot.
10. You can repeat the above steps for all metrics like **Intent not found**, **Failed task**, etc.