# Travel VA: Configure Digital Views

In this How-To, we will explore a scenario in a Travel Planning Assistant, where with just one click a user can view upcoming bookings. We will see how this Digital View can be presented using Panels and Widgets. Widgets can be used to trigger Dialog Tasks and display appropriate messages; while Panels can be used as containers to hold these Widgets.

We will also see how the Panel can be hosted on a Web/Mobile Client using the Widget SDK.

For details on what Digital Views are and how they are implemented in the XO Platform, click <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/digital-skills/digital-views/" target="_blank">here</a>.

## Problem Statement

Consider a Travel Planning assistant helping a user retrieve upcoming bookings. Rather than displaying this in text form, the assistant can use Digital Views to provide the information more effectively and in a more visually appealing manner.

## Prerequisites

To go through these configurations, you need to know at least the basics of the following XO Platform features:

* <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-travel-planning-assistant/create-a-travel-virtual-assistant/" target="_blank">Building a Virtual Assistant</a>: This is because your assistant needs to have been already built when you begin working on your views.
* <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/digital-skills/digital-views/" target="_blank">Working with Digital Views</a>.

You also need a Dialog Task that handles upcoming bookings. Read more about working with the Dialog Builder.

## Configurations

Let us consider each of the following scenarios one by one:

1. **Dialog Task** to display Upcoming Bookings, using the Widget SDK Channel.
2. **Widgets** to trigger the above dialog task and a Panel set with the widgets.
3. A **Panel** to hold a widget displaying a static JSON template message.

### Message Template

First, the Dialog task which would be triggered from the Widget should have a message definition for the Widget SDK channel.

<img src="../images/widget-message-template.png" alt="widget message template" title="widget message template" style="border: 1px solid gray; zoom:75%;">  

We are using the following message to display the upcoming bookings.

```js
var lastBooking, dateAfterFifteenDays

lastBooking = BotUserSession.get('bookedFlightInfo')

if(lastBooking === undefined || lastBooking === null) {

lastBooking = {}

dateAfterFifteenDays = koreUtil.moment().add(15, 'days').format('D MMM YYYY')

lastBooking['travelDate'] = dateAfterFifteenDays

lastBooking['passengerCount'] = 1

lastBooking['flyingFrom'] = 'Orlando, FL, USA'

lastBooking['flyingTo'] = 'New York, NY, USA'

}

var message = {

"templateType": "List",

"widgetName": "Upcoming Bookings",

"description": "Shows future bookings",

"headerOptions": {

},

"elements": [

{

"image": {

"image_type": "image",

"image_src": "https://demo.kore.ai/barefoot/sites/default/files/demo_uploads/panelwidgetupcoming.png"

},

"title": "Date of Journey: " + lastBooking['travelDate'],

"subtitle": "Passengers: " + lastBooking['passengerCount'],

"value":

{

"layout":

{

"align": "centre",

"colSize": "25%"

},

"type":"button",

"text":"",

"button":

{

"title": "Web CheckIn",

"theme": "#3377FF",

"type": "postback",

"payload": "I want to do web check-in",//+title,

"utterance": "I want to do web check-in"//+title

}

},

"details": [

{

"image": {

"image_type": "image",

"image_src": "https://demo.kore.ai/barefoot/sites/default/files/demo_uploads/Panelfrom.png"

},

"description": "Flying from: " + lastBooking['flyingFrom']

},

{

"image": {

"image_type": "image",

"image_src": "https://demo.kore.ai/barefoot/sites/default/files/demo_uploads/Panelto.png"

},

"description": "Flying to: " + lastBooking['flyingTo']

                }

            ]

        }

    ]

}

print(JSON.stringify(message));
```

### Widget Configuration

We will be creating a Widget that triggers a Dialog Task in order to display upcoming bookings for a user. To do so, let us follow the steps below:

* Ensure that **Build** is selected from the top menu.
* From under **Digital Skills** open **Digital Views**.
* Click the **Create Widget** button.
* Provide a **Widget Name** and a **Display Name**.
* Set the **Source**, we are triggering Dialog Task, hence select _Dialog Task_.
* **Select Dialog Task** as _Upcoming Bookings_, as per our use case
* **Save** the widget.
* **Edit** the widget and click **Run & Preview** to see the widget output.
* **Save as preview** will set the output as the thumbnail against the widget.
<img src="../images/set-widget-values.png" alt="set widget values" title="set widget values" style="border: 1px solid gray; zoom:75%;">  

Once configured, your Widget might look like this:

<img src="../images/configured-widget.png" alt="configured widget" title="configured widget" style="border: 1px solid gray; zoom:75%;">  

### Panel Configuration

The Widgets thus created need to be attached to a Panel for runtime display and execution.

1. Click the **Create Panel** button to create a Panel. We will be creating a **Bookings** Panel, within which to integrate the Widget we just created.
2. In the **New Panel** window, enter the **Panel Name**, **Display Name** and a **URL** for its Icon.
<img src="../images/enter-panel-details.png" alt="enter panel details" title="enter panel details" style="border: 1px solid gray; zoom:75%;">  

3. Click the **Add Widget** button to open the **Panel Management** window.
<img src="../images/add-widget-to-panel-management.png" alt="add widget to panel management" title="add widget to panel management" style="border: 1px solid gray; zoom:75%;"> 

4. Use the **Add Widget** option to select and add the Widgets that we want to display, in this case the Upcoming Bookings widget. You can use this window to add further widgets to the Bookings panel if you like.
<img src="../images/add-widget-digital-skills.png" alt="add widget" title="add widget" style="border: 1px solid gray; zoom:75%;"> 
 

5. Use the **Test** button to see the widget in action. This will open the **Talk to Bot** feature, where you can ask the VA for Upcoming Bookings. If your setup is successful, you should be shown the widget we just created. 

### Panel with JSON Widgets

Next, we will see how to create Widgets with static JSON content. We will use a JSON to display a pie chart.

1. Create a Widget and call it **Travel Spend**.
2. In the **New Widget** dialog, enter the Name, and set the source to JSON.
<img src="../images/json-widget.png" alt="json widget" title="json widget" style="border: 1px solid gray; zoom:75%;"> 

Enter the following in the JavaScript Editor. This is a message template to display a pie chart with a break up for amounts spent under various heads like travel, food, and accommodation. For more on supported message templates, <a href="https://docsinternal-kore.github.io/docs/xo/web-mobile-SDK-message-formatting-and-templates/" target="_blank">refer here</a>.

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
    "value": "568.10",
           "displayValue": "$ 568"
        },
        {

          "title": "Food",
          "value": "324.50",
          "displayValue": "$ 324"
        }
      ]
    };

print(JSON.stringify(message));
```

<ol start="3"><li><b>Create a Panel</b> and name it <b>Travel Spend Breakdown</b>.</li>
<li>Add the <b>Travel Spend Widget</b> to the <b>Travel Spend Breakdown Panel</b>.</li>
  <img src="../images/travel-spend-widget.png" alt="travel spend widget" title="travel spend widget" style="border: 1px solid gray; zoom:75%;"> 

<li><b>Test</b> the panel and you will see it in action.</li></ol>
  <img src="../images/travel-spend-breakdown.png" alt="travel spend breakdown" title="travel spend breakdown" style="border: 1px solid gray; zoom:75%;"> 

## Publishing

To publish the Assistant, first enable channels:

1. From the left navigation menu, select **Channel** for publishing. For our use case we will select both Web/Mobile Client and Widget SDK channels.
2. Select the channels and from the **Configurations** tab, make a note of the **Bot Name**, **Bot Id**, **Client Id** and **Client Secret**.
3. From the left navigation menu, select the **Publish** option. Under the Tasks & languages section, ensure that the Widget and Panels we developed are selected for publication.
4. **Proceed** with the Publish.

Learn more about <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-travel-planning-assistant/design-digital-skills/configure-digital-views/#publishing" target="_blank">publishing your Virtual Assistant</a>. 

## Hosting

We will be hosting the Panels in the web/mobile client. Click <a href="https://docsinternal-kore.github.io/docs/xo/app-settings/dev-tools/kore-ai-web-sdk-tutorial/" target="_blank">here</a> for more details on the Widget SDK usage.

1. Download the Kore.ai Widget SDK, go to <a href="https://github.com/Koredotcom/web-kore-sdk" target="_blank">Kore SDK</a>, and then click **Download**.
2. Extract all files to the `/SDKApp/sdk` folder.
3. Open the above SDK folder, and traverse to the **UI** folder.
4. Open the `kore-config.js` file.
5. Configure your `botOptions` with the following _web/mobile client_ channel configurations copied  in the above section.
    * `botOptions.botInfo`
    * `botOptions.clientId`
    * `botOptions.clientSecret`
6. Make other changes as per your requirements.
<img src="../images/widget-code-edit-1.png" alt="widget code edit 1" title="widget code edit 1" style="border: 1px solid gray; zoom:75%;"> 

7. Open the `kore-widgets-config.js` file.
8. Configure your `botOptionsWiz` with the following _Widget SDK_ channel configurations copied in the above section.
    * `botOptionsWiz.botInfo`
    * `botOptionsWiz.clientId`
    * `botOptionsWiz.clientSecret`
9. Make other changes as per your requirements.
<img src="../images/widget-code-edit-2.png" alt="widget code edit 2" title="widget code edit 2" style="border: 1px solid gray; zoom:75%;"> 

10. Open the `index_widgets_chat.html` file in the browser and see the chat window along with the widgets.
11. If you want to host the Panels individually use the `index_widgets.html` file.