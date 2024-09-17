# Schedule a Smart Alert

In this post, we explore a scenario for a travel Bot, where the user needs to be provided with weather updates daily for a preferred location. We use an Alert task to achieve the same. We also see how auto-subscription can be enabled on this Alert task, making it smart.

For details on what Alert task is and how it is implemented in the XO platform, click <a href="https://developer.kore.ai/docs/bots/bot-builder-tool/alert/notification-tasks/" target="_blank"> here</a>.

## Problem Statement

A registered user of a Bot needs to be sent a weather update in the form of an alert, on a pre-specified time of the day and/or at a specified interval of time. A sample is given below:
<img src="../images/sample-weather-bot.png" alt="sample weather bot" title="sample weather bot" style="border: 1px solid gray; zoom:75%;">

In this document, we show how an Alert Task can be used to cater to such situations and take appropriate action.

## Prerequisites

* Basic Bot building knowledge.
* A working Bot, we are using a <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/design-conversation-skills/create-a-sample-banking-assistant/" target="_blank">Banking Bot</a>.
* Access to a web service that gives a weather updates. We are using a REST service hosted at: <a href="http://api.openweathermap.org/" target="_blank">open weather map</a>. 

If you want to use this service, you need register to their **free alerts** as we use the API key to access their APIs.

## Implementation

### Setting an Alert Task

Alert tasks can be used to deliver timely, relevant, and personalized information from enterprise systems to customers and employees by polling the relevant service in real-time or according to a user-defined schedule.

#### Steps to Set up an Alert Task

1. From **Build** > **Conversational Skills**, click **Alert Task** to create one.
2. On the **Task Details** page, follow the steps below:
    * Enter a **Task Name**, say _Get Daily Weather_.
    * Choose the **Connection Type**, we go with _Webservice_.
    * Choose the **Connection Mode**, we use _REST_.
    * Click **Create & Proceed**.
    <img src="../images/create-alert-task.png" alt="create alert task" title="create alert task" style="border: 1px solid gray; zoom:75%;">

3. You will be directed to the <b>Alert Settings</b> page. Follow the steps below to complete the setup.

    1. Review and modify the **General Settings** if needed. For our use case, we do not need to modify any settings here.
    2. Select the **API Request** tab and follow the steps below:
        * Ensure that the **Content Type** is set to _JSON_.
        * We do not need to set **Authorization Provider** for our use case. Configure the same if the API you are using has any authorization requirements.
        * Set **Parameter** to gather the _preferred City_ from the User. Ensure that it is set as a **Mandatory** field. This is the API requirement.
        <img src="../images/set-task-parameter.png" alt="set task parameter" title="set task parameter" style="border: 1px solid gray; zoom:75%;">

        * We will not need any **Initializer** requirements for our use case. Use this in case any JavaScript needs to be executed before the request is sent.
        * Under **Request** click **Add API** to add the service API that needs to be invoked. We are using a _GET_ method from the following API: `http://api.openweathermap.org/data/2.5/weather?q={cityname}&APPID=<your-app-id>`.
            * The **APPID** in the above url is assigned to you by OpenWeather when you sign up. You can find it from the <a href="https://home.openweathermap.org/api_keys" target="_blank">API keys</a> section after you login to your account.
            * Notice that the **Parameters** list is populated automatically with the parameters entered earlier.
        * **Save** the API.

            <img src="../images/add-api.png" alt="add api" title="add api" style="border: 1px solid gray; zoom:75%;">

        * **Test** the API to ensure that the configuration is proper. Enter a sample city name, when prompted and ensure you get a success message and a proper Response.
        * **Save** the response.

Next we need to format the **Bot Response.** For our use case, we will be parsing the weather description, temperature and humidity details returned by the API call to be presented to the user. 
We are using the following rich text to achieve the same: 

```js
Todays weather details: <%=weather[0].description%>
Temperature: <%=main.temp%>
Humidity: <%=main.humidity%> 
```

<img src="../images/parse-input.png" alt="input keys" title="input keys" style="border: 1px solid gray; zoom:75%;">

<ul><li>The values returned by the API call can be accessed from the <b>Variable Keys</b> option.</li>
<li>Clicking it opens the <b>Request/Response Keys</b> window. The various variables available are categorized.</li>
<li>Expand <b>Response Keys</b> section to access the response from API call.</li>
<li>Select the key for the value you want to display.</li> 
<li>Click <b>OK</b>. The key will be inserted in the editor in the appropriate format. For example, <code><%=weather[0].description%></code>.</li></ul>

<img src="../images/request-response-keys.png" alt="request response keys" title="request response keys" style="border: 1px solid gray; zoom:75%;">

* **Save** the Message Definition.
* Select **Settings** tab and expand the **Schedule** section. Use this section to configure an initial schedule, these are the options that are provided to the user to choose from for the initial setup. 
For example, in this example, we have set the schedule to be at 10:30 am daily followed by an update every 4 hrs. The user may choose just once at 10:30 am and not get the further updates.
<img src="../images/schedule-alert.png" alt="parse input" title="parse input" style="border: 1px solid gray; zoom:75%;">

* Click **Finish Setup**.

### Execution

Before publishing and sharing the Bot with a user, you can test it from the **Talk to bot** feature.

1. Launch **Talk to bot**.
2. Initiate the schedule task, **Get Daily Weather** (name of the Alert Task we configured).
3. You will be prompted to enter city name.
4. Next you will be prompted to enter a specific time, you can enter a time or enter “every x minutes”.
5. As you can see if the time you enter does no match the scheduled time configured, the nearest time will be presented. Same is the case with the frequency setting.
<img src="../images/banking-bot-execution.png" alt="banking bot execution" title="banking bot execution" style="border: 1px solid gray; zoom:75%;">

6. This is a one-time setup. From this point onwards whenever you launch Talk to Bot for this Bot, you will be given the Weather Alert at the specified time.
7. The user can trigger the task using the Alert Task name, just like any other Dialog Task and set up the alert manually. The experience User will have when they start using your Bot will be similar to the above-mentioned flow.


### Smart Alert

You can set the alert for the user automatically by adding the **Alert Subscription Service** type Service node in a welcome dialog task.

!!!note

    Only published Alert Tasks are available for Alert subscription.

1. Add a **Service Node** in the Dialog which will act as the trigger for the Alert Task.
2. Set the **Service Type** to _Alert Subscription_ Service.
<img src="../images/service-type-alert.png" alt="service type alert" title="service type alert" style="border: 1px solid gray; zoom:75%;">

3. Click **Define Request** and select the already configured Alert Task. In this case, _Get Daily Weather_. 

<ol start="4">
<li>You will be navigated to the <strong>Smart/Automatic Alerts</strong> window.
<li>Set up the <strong>Alert Parameters</strong> as required.</li>
<li>Set the <strong>Alert Frequency</strong>.</li>
<li>You can set the <b>Alert Expiry</b> values based on either the duration of the subscription or the number of notifications sent, these will come in handy in case your subscription to the service is limited. Here we have set the <strong>Number of Notification</strong> to a <em>maximum value</em>.</li>
<li>You can also define the <strong>Alert Upgrade </strong>behavior in case the Alert task is updated and published.</li>
<li>Click<strong> Save</strong>.<strong><br></strong></li>

<img src="../images/automatic-alerts.png" alt="automatic alerts" title="automatic alerts" style="border: 1px solid gray; zoom:75%;">

<li>You can trigger this task from Welcome or onConnect Event, so the user can enter their preferred city and time.</li>
<li>On setup, the first time this service node is hit the subscription will be in effect without user intervention.</li></ol>