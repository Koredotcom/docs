# Travel VA: Use Bot Functions

In this document we explore Bot Functions for a travel VA that can help reuse the same functionality in several places. We will see how a travel spend report can be programmed as a function and used, for example, to send to users upon request in different circumstances, to integrate with apps or create digital views. 

For details on the Bot Functions are and how they are implemented in the XO Platform, click <a href="https://docsinternal-kore.github.io/docs/xo/app-settings/dev-tools/reusing-bot-functions-custom-script-file/#updating-the-custom-script-file" target="_blank">here</a>.

## Problem Statement

In a Travel Planning Assistant used by a travel agency, we have a reporting task that requires the VA to provide information on how much a traveller has spent in different categories, as part of a booking made via the agency. 

This information can be provided in several ways. For the purpose of this article, we will demonstrate how to create a dialog task that sends the user these details upon request, and how to create a widget, as part of a Digital View, that will display the information, say within an app that is integrated via the Widget SDK.

## Prerequisites

* To go through these configurations, you need to know at least the basics of <a href="https://docsinternal-kore.github.io/docs/xo/virtual-assistants-overview/?h=overview#building-intelligent-conversational-virtual-assistants" target="_blank">building a Virtual Assistant</a>. 

* A pre-built Virtual Assistant. We will use the <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-travel-planning-assistant/create-a-travel-virtual-assistant/" target="_blank">Travel Planning VA</a> for this example.

* The Script file has the following functions that use the message templates to display the data. (Refer <a href="https://docsinternal-kore.github.io/docs/xo/web-mobile-SDK-message-formatting-and-templates/" target="_blank">here</a> for more information on message templates): 
 
    * **tableTemplate** – </em>takes a two-dimensional array and displays the content in a tabular format.
 
    * **pieTemplate** – </em>takes a two-dimensional array and displays the content in a pie format.
    
Copy the following content and save it as a <em>.js</em> file (say, <em>functionEX.js</em>)

```js
function tableTemplate(data){ 
 var message = { 
   "type": "template", 
   "payload": { 
   "template_type": "mini_table", 
   "layout": "vertical", 
   "text":"Travel Spend", 
   "elements": []  } 
 }; 
 for (i=0; i &lt; data.length; i++) { 
   var j=0; 
   var element = { 
     "primary":[[data[i][j]],[data[i][j+1],"right"]], 
     "additional":[[data[i][j+2],data[i][j+3]],[data[i][j+4],data[i][j+5]]]   }; 
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
   "text": "Travel Spend", 
   "elements": []   } 
  }; 
 for (i=0; i &lt; data.length; i++) { 
  var element = { 
   "title": data[i][0], 
   "value": data[i][1]   }; 
  message.payload.elements.push(element); 
 } 
 return JSON.stringify(message); 
};
```
## Implementation

### Import the Bot Function Script

To begin using Bot Functions, you first need to import a script into your assistant, by following the steps below:

1. Open the Travel Planning Assistant.
2. Select the **Build** tab from the top menu.
3. From **Configurations** select the **Bot Functions** section.
4. Click **Import** (or Import New) to open the Import Custom Script window.
5. Drag and drop or Browse the script file that you saved from the Prerequisites section and click **Import**.
6. Once the success message is displayed click **Done**.

    Your Script file is ready to use!

    <img src="../images/import-bot-function-script.png" alt="test bot function" title="test bot function" style="border: 1px solid gray; zoom:75%;"> 

### Create a Dialog Task

1. Open the **Dialog Tasks** page and create a New Dialog Task called “*Get Travel Spend*”.
2. Add entities to capture the **Flight Number** and **Fare**.
3. Ideally, there would be a service call to fetch the details. Here we will use static values for demonstration purposes.
4. Add a **Script** node using the **Bot Action** and enter the following – we are declaring an array carrying the spent amount on Airlines, Hotels and Experiences.

    `context.travelspend = [["Airlines",1264],["Hotels",568],["Experiences", 324];`

<ol start="5"><li>Add a <strong>Message</strong> node to send this data to the Bot Function declared earlier and get the report.</li> 
<li>From <strong>Bot Responses</strong> section, click <strong>Manage Responses</strong>.</li> 
<li><strong>Add Bot Response</strong>, select <em>Web/Mobile Client </em>as the <strong>Channel</strong>, switch to <strong>JavaScript</strong> tab and enter the following code to display the values in a tabular format:
<br><code>var info = context.travelspend;<br>print(tableTemplate(info));</code></li> 
<li>Add another <strong>Message</strong> node to send this data to the Bot Function declared earlier and get the report.</li>
<ul> 
<li>From <strong>Bot Responses</strong> section, click <strong>Manage Responses</strong>.</li>
<li><strong>Add Bot Response</strong>, select <em>Web/Mobile Client </em>as the <strong>Channel</strong>, switch to <strong>JavaScript</strong> tab and enter the following code to display the values in a pie chart:<br><code>var info = context.travelspend;<br>print(pieTemplate(info));</code>
</li> 
</ul>
<li>Close the Dialog Task.
</li>
</ol>

### Create a Widget

The bot function can also be used to create a Widget using Digital Views, as follows:

1. Go to **Build > Digital Skills > Digital Views**.
2. Click **Create Widget**.
3. Name your Widget as _Travel Spend_.
4. Select _Pie Chart_ as the **Template Hint**.
5. You can link the Widget to the Dialog Task you just created. For this example, we will choose _JSON_ as the **Source** to populate the data for this widget.
6. Add the following script:

```js
var message =
{
      "templateType": "piechart",
      "pie_type": "regular",
      "title": "Summary",
      "description": "monthly report",
      "elements": [
        {
          "title": "Airlines",
          "value": "1264.0",
          "displayValue": "$ 1,234"
        },
        {
          "title": "Hotels",
          "value": "568",
          "displayValue": "$ 568"
        },
        {
          "title": "Experiences",
          "value": "324",
          "displayValue": "$ 324"
        }
      ]
    };
print(JSON.stringify(message));
```

## Testing

Use <strong>Talk to Bot</strong> and try both functions. Thus we have used the same function to display the reports in multiple places.

<img src="../images/bot-function-testing.png" alt="test bot function" title="test bot function" style="border: 1px solid gray; zoom:75%;"> 