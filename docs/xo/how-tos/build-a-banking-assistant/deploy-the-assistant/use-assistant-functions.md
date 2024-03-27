# Use Assistant Functions

In this document we explore a Banking Bot scenario where Bot Functions can be used to reuse a piece of functionality. We see how the expenditure report can be programmed as a function and can be used for both Savings Account and Credit Card.

For details on what Bot Functions are and how they are implemented in the XO platform, click <a href="https://docsinternal-kore.github.io/docs/xo/app-settings/dev-tools/reusing-bot-functions-custom-script-file/#using-the-custom-script-file" target="_blank">here</a>.

## Problem Statement

In our <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/design-conversation-skills/create-a-sample-banking-assistant/" target="_blank">Banking Bot</a>, we have a reporting task:

* Monthtly Statement which gives the monthly balance amounts for a given Account number.
* Credit Card Statement gives an overview of the expenses for a given Credit Card.
* Both the reports are presented as pie chart and the input in both the cases is an array with month, amount values.

In this document, we will see how Bot Function can be used to avoid duplication of coding effort and ensure uniform presentation.

## Prerequisites

* Bot building knowledge
* A working bot. We will be using the Banking Bot from <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/design-conversation-skills/create-a-sample-banking-assistant/" target="_blank">here</a>.
* Following is the Script file with two functions using the message templates to display the data (see here for more on <a href="https://docsinternal-kore.github.io/docs/xo/web-mobile-SDK-message-formatting-and-templates/" target="_blank">message templates</a>:
    * _tableTemplate_: takes an two-dimensional array and displays the content in a tabular format
    * _pieTemplate_: takes an two-dimensional array and displays the content in a pie format

Copy the following content and save it as a `.js` file (say, _functionEX.js_)

```js
function tableTemplate(data){
var message = {
   "type": "template",
   "payload": {
   "template_type": "mini_table",
   "layout": "vertical",
   "text":"Monthly Balance Statement",
   "elements": []
  }
 };
 for (i=0; i < data.length; i++) {
   var j=0;
   var element = {
     "primary":[[data[i][j]],[data[i][j+1],"right"]],
     "additional":[[data[i][j+2],data[i][j+3]],[data[i][j+4],data[i][j+5]]]
   };
 message.payload.elements.push(element);
 }
 return JSON.stringify(message);
};

function pieTemplate(data){
  var message = {
   "type": "template",
   "payload": {
   "template_type": "piechart",
   "pie_type": "regular",
   "text": "Monthly Expense Report",
   "elements": []
   }
  };
 for (i=0; i < data.length; i++) {
  var element = {
   "title": data[i][0],
   "value": data[i][1]
   };
  message.payload.elements.push(element);
 }
 return JSON.stringify(message);
};
```

## Implementation Steps

1. Open the Banking Bot.
2. Select the **Build** tab from the top menu.
3. From **Configurations** select the **Bot Functions** section.
4. Click **Import** (or Import New) to open the Import **Custom Script** window.
5. Drag and drop or browse the script file that you saved from the Prerequisites section and click **Import**.
6. Once the success message is displayed click **Done**.
7. Your Script file is ready to use.
<img src="../images/import-new-bot-functions.png" alt="import new bot functions" title="import new bot functions" style="border: 1px solid gray; zoom:75%;">

8. Open the **Dialog Tasks** page and create a New Dialog Task called _“Monthly Statement”._
    * Add entities to capture the **Account Number** and **Account Type**.
    * Ideally, there would be a service call to fetch the monthly balance details. Here we will use static values for demonstration purposes.
    * Add a **Script** node using the **Bot Action** and enter the following – we are declaring an array carrying the balances for the months of January, February and March:
    `context.monthlyBal = [["Jan",100],["Feb",200],["Mar", 300]];`

    * Add a **Message** node to send this data to the Bot Function declared earlier and get the report.
        * From **Bot Responses** section, click **Manage Responses**
        * **Add Bot Response**, select _Web/Mobile Client_ as the **Channel**, switch to **JavaScript** tab and enter  the following code to display the values in a tabular format: <code>var info = context.monthlyBal; 
        print(tableTemplate(info));</code>

    * Add another **Message** node to send this data to the Bot Function declared earlier and get the report.
        * From **Bot Responses** section, click **Manage Responses**.
        * **Add Bot Response**, select _Web/Mobile Client_ as the **Channel**, switch to **JavaScript** tab and enter  the following code to display the values in a pie chart: <code>var info = context.monthlyBal; 
        print(pieTemplate(info));</code>

9. Close the dialog task and return to the **Dialog Tasks** page
10. Create a New Dialog Task called _“Credit Card Statement”._
    * Add entities to capture the **Account Number**.
    * Ideally, there would be a service call to fetch the monthly expenditure values. Here we will use static values for demonstration purposes.
    * Add a **Script** node within **Bot Action** node and enter the following – we are declaring an array carrying the expenditure values for all the months: 
    `context.monthlyExpenses = [["Jan",100],["Feb",200],["Mar", 300],["Apr",100],["May",400],["June", 500],["Jul",100],["Aug",200],["Sept", 300],["Oct",100],["Nov",100],["Dec", 300]];`

    * Add a **Message** node to send this data to the Bot Function declared earlier and get the report.
        * From **Bot Responses** section, click **Manage Responses**.
        * **Add Bot Response**, select _Web/Mobile Client_ as the **Channel**, switch to **JavaScript** tab and enter the following code to display the values in a pie chart. As you can see we are using the same function that was invoked in the previous dialog task.
        <code>var info = context.monthlyExpenses; 
        print(pieTemplate(info));</code>

<ol start="11"><li>Close the Dialog Task.</li>
<li><b>Talk to Bot</b> and try both the dialogs. Thus we have used the same function to display the reports in multiple places.</li>
<img src="../images/dialog-1.png" alt="dialog 1" title="dialog 1" style="border: 1px solid gray; zoom:75%;">

<img src="../images/dialog-2.png" alt="dialog 2" title="dialog 2" style="border: 1px solid gray; zoom:75%;"></ol>