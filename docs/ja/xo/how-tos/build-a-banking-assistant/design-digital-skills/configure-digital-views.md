# Configure Digital Views

In this post we explore how you can view your account details using a Digital View and a Banking Bot. We will see how this Digital View can be presented using Panels and Widgets. Widgets can be used to trigger Dialog Tasks and display appropriate messages and Panel can be used to hold these Widgets. 
We will also see how the Panel can be hosted on Web/Mobile Client using the Widget SDK.

For details on what Digital Views are and how it is implemented in the XO platform, click <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/digital-skills/digital-views/" target="_blank"> here</a>.

## Problem Statement

Consider a Banking Bot trying to address the following scenarios:

<video class="wp-video-shortcode" id="video-23376-1" width="360" height="528" preload="metadata" controls="controls"><source type="video/mp4" src="../images/WP_howto.mp4" /><a href="../images/WP_howto.mp4">Banking Bot Demo</a></video>

This document gives a step-by-step approach to achieve all the above-mentioned scenarios using – Digital Views (Panels, Widgets), Widget SDK and Web/Mobile Client.

## Prerequisites

* Bot building knowledge
* A <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/design-conversation-skills/create-a-sample-banking-assistant/" target="_blank"> Banking Bot</a> with a dialog as mentioned below:
    * <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/design-conversation-skills/create-a-sample-banking-assistant/#get-balance-intent" target="_blank"> Get Balance</a> – Dialog task prompting the user for their Account Number and Account Type and displaying the available balance in the account.
    <img src="../images/get-balance-dialog-digital-views.png" alt="get balance dialog" title="get balance dialog" style="border: 1px solid gray; zoom:75%;"> 

## Configurations

Let us consider each of the following scenarios one by one:

1. Dialog Task to display balance in a given account using Widget SDK channel.
2. Widgets to trigger the above dialog task and a Panel set with the widgets.
3. Panel to hold a widget displaying static JSON template message.

### Message Template

First, the Dialog task which would be triggered from the Widget should have a message definition for the Widget SDK channel.
<img src="../images/dialog-task-message-template.png" alt="dialog task message template" title="dialog task message template" style="border: 1px solid gray; zoom:75%;">

We are using the following message to display the account details:


```js
var output = 'The Balance in your' + context.entities.AccountType + ' account is ' + context.GetAccountBalance.response.body.Balance;
var message = {
    "elements": [
        {
            "title": "Account View",
            "sub_title": output,
            "icon": "https://kore.ai/wp-content/uploads/banking-home.png",
        }
    ]
};
print(JSON.stringify(message));
```

### Widgets Configuration

#### Dialog Task Widgets

We will be creating two Widgets to trigger a Dialog Task.

**Current Account:**

First, let us see how to configure a Widget to display balance from the current account of the user.

* Ensure that **Build** is selected from the top menu.
* From under **Digital Skills** open **Digital Views**.
* Click the **Create Widget** button.
* Give a Widget Name and a Display Name.
* Set the **Source**, we are triggering Dialog Task, hence select _Dialog Task_.
* **Select Dialog Task** as _Get Balance_, as per our use case.
* In the **Entity Assignment**, set the following entities (you can select from the drop box that appears as you type) as per the Dialog Task requirement:
    * **AccountType** to _current_.
    * **AccountNumber** to _1_.
You can use the **Open Dialog Task** icon, next to the select Dialog Task drop down, to open the dialog and check the entities needed.
<img src="../images/open-dialog-task-digital-views.png" alt="open dialog tasks" title="open dialog tasks" style="border: 1px solid gray; zoom:75%;">

* **Save** the widget.
* **Edit** the widget and click **Run & Preview** to see the widget output.
* **Save as preview** will set the output as the thumbnail against the widget.

**Savings Account**: Repeat the above steps for Account View from _savings_ account of the same account number.

<img src="../images/savings-account-widget.png" alt="savings account widget" title="savings account widget" style="border: 1px solid gray; zoom:75%;">

### Panel Configuration

The Widgets thus created need to be attached to a Panel for runtime display and execution.

1. Click the **Create Panel** button to create a Panel.
2. In the **New Panel** window, enter Panel Name, Display Name and a URL for Icon.
<img src="../images/new-panel-window.png" alt="new panel window" title="new panel window" style="border: 1px solid gray; zoom:75%;">

3. Click the **Add Widget** button to open the **Panel Management** window.
4. Use the **Add Widget** to select and add the Widgets that we want to display, in this case Account Balance and Current Account widgets.
<img src="../images/add-widgets.png" alt="add widgets" title="add widgets" style="border: 1px solid gray; zoom:75%;">

5. Use the **Test** button to see the widgets in action.
<img src="../images/see-widgets-in-action.png" alt="see widgets in action" title="see widgets in action" style="border: 1px solid gray; zoom:75%;">

### Panel with JSON Widgets

We will see how to create Widgets with static JSON content. We will use a JSON to display a pie chart.

1. Click on **Create Panel** to create a new panel and name it **JSON Example**.
2. Use the **More** icon and select **Panel Management**, there you will find the option to **Create Widget**. Click on that.

    <img src="../images/panel-management.png" alt="panel management" title="panel management" style="border: 1px solid gray; zoom:75%;">

<ol start="3"><li>In the <b>New Widget</b> dialog, enter the Name, and set the source to JSON.</li>
<img src="../images/configure-new-widget-dialog.png" alt="configure new widget dialog" title="configure new widget dialog" style="border: 1px solid gray; zoom:75%;"></ol>

Enter the following in the JavaScript Editor. This is a message template to display a pie chart with a break up for amounts spent under various heads like travel, food, and accommodation. For more on supported message templates, click <a href="https://docsinternal-kore.github.io/docs/xo/web-mobile-SDK-message-formatting-and-templates/" target="_blank"> here</a>. 

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

<ol start="4"><li><b>Test</b> the panel and you will see both the panel icons, click on each to see them in action.</li></ol>

<img src="../images/json-example-panel.png" alt="json example panel" title="json example panel" style="border: 1px solid gray; zoom:75%;">

## Publish

To publish the Bot first enable channels:

1. From left navigation menu, select **Channel** for publishing. For our use case we will select both Web/Mobile Client and Widget SDK channels.
2. Select the channels and from **Configurations** tab, make a note of the **Bot Name**, **Bot Id**, **Client Id** and **Client Secret**.
3. From left navigation menu, select **Publish** option. Under Tasks & languages section, ensure that the Widget and Panels we developed are selected for publication.
4. **Proceed** with the Publish.

## Hosting

We will be hosting the Panels in the web/mobile client. Click <a href="https://docsinternal-kore.github.io/docs/xo/app-settings/dev-tools/kore-ai-web-sdk-tutorial/" target="_blank">here</a> for more details on the Widget SDK usage.

1. Download the Kore.ai Widget SDK, go to <a href="https://github.com/Koredotcom/web-kore-sdk" target="_blank">Kore Web SDK</a>, and then click **Download**.
2. Extract all files to the `/SDKApp/sdk` folder.
3. Open the above SDK folder, and traverse to _UI_ folder.
4. Open the `kore-config.js`.
5. Configure your `botOptions` with the `web/mobile client` channel configurations copied  in  above  section.
    * `botOptions.botInfo`
    * `botOptions.clientId`
    * `botOptions.clientSecret`

6. Make other changes as per your requirements.
<img src="../images/configure-bot-options.png" alt="configure bot options" title="configure bot options" style="border: 1px solid gray; zoom:75%;"> 

7. Open the `kore-widgets-config.js`.
8. Configure your `botOptionsWiz` with the ‘_Widget SDK_’ channel configurations copied  in  above  section.
    * `botOptionsWiz.botInfo`
    * `botOptionsWiz.clientId`
    * `botOptionsWiz.clientSecret`

9. Make other changes as per your requirements.
<img src="../images/widget-config-changes.png" alt="widget configuration changes" title="widget configuration changes" style="border: 1px solid gray; zoom:75%;">

10. Open the `index_widgets_chat.html` file in the browser and see the chat window along with the widgets.
<img src="../images/index-widgets-chat.png" alt="index widgets" title="index widgets" style="border: 1px solid gray; zoom:75%;">

11. If you want to host the Panels individually use the `index_widgets.html` file. See the GitHub for hosting the same in your web site.