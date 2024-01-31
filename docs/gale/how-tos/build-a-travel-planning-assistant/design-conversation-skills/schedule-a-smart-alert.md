# Travel VA: Schedule a Smart Alert

In this help page, we will explore a scenario for a Travel Planning Assistant where the user requires weather updates daily for a preferred location. We will configure an **Alert** task to achieve this. We will also enable an auto-subscription on this task.

For details on an Alert task and its implementation on the XO Platform, click <a href="https://developer.kore.ai/docs/bots/bot-builder-tool/alert/notification-tasks/" target="_blank">here</a>.

## Problem Statement

A registered user of a Virtual Assistant(VA) requires a weather update in the form of an alert at a specified time of the day and/or at a specified interval of time.
<img src="../images/weather-alert-problem-statement.png" alt="problem statement weather alert" title="problem statement weather alert" style="border: 1px solid gray; zoom:75%;">

## Prerequisites

* A working and published VA. We are using a <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-travel-planning-assistant/create-a-travel-virtual-assistant/" target="_blank">Travel Planning Assistant</a>.
* Access to a web service that provides weather updates. We are using a REST service hosted at <a href="http://api.openweathermap.org/" target="_blank">api.openweathermap.org</a>. If you want to use this service, you need to register to their free alert service as we will be using the API key to access their APIs.

## Implementation

### Set Up an Alert Task

**Alert tasks** can be used to deliver timely, relevant, and personalized information from enterprise systems to customers and employees by polling the relevant service in real-time or according to a user-defined schedule. To add an Alert Task, follow the steps below:

1. From **Build > Conversational Skills** add an **Alert Task**.
2. On the **Task Details** page, follow the steps below:
    * Enter a **Task Name**, for example, _Get Daily Weather_.
    * Select *Webservice* for **Connection Type**.
    * Choose *REST* for **Connection Mode**.
    * Click **Create & Proceed**.
    <img src="../images/set-up-alert-task.png" alt="add dialog task" title="add dialog task" style="border: 1px solid gray; zoom:75%;">

    * You will be directed to the **Alert Settings** page. Review and modify the **General Settings** if needed. For our use case, we do not need to modify any settings.

### Configure the API Request

Select the **API Request** tab, and follow the steps below:

1. Set the **Content Type** to _JSON_. We do not need to set the **Authorization Provider** for our use case. Configure it only if the API you are using has any authorization requirements.
2. Set **Parameter** to gather the _Preferred City_ from the user. Ensure that it is set as a **Mandatory** field.
<img src="../images/gather-preferred-city.png" alt="gather preferred city info" title="gather preferred city info" style="border: 1px solid gray; zoom:75%;">

3. We will not need any **Initializer** requirements for our use case. Use this in case any JavaScript needs to be executed before the request is sent.
4. Under **Request** click **Add API** to add the service API that needs to be invoked. We use the _GET_ method from the following API: `http://api.openweathermap.org/data/2.5/weather?q={cityname}&APPID=<your-app-id>`
5. The **AppID** in the above URL is assigned to you by **OpenWeather** when you sign up. You can find it from the <a href="https://home.openweathermap.org/api_keys" target="_blank">API Keys</a> section after you login to your account. Notice that the **Parameters** list is populated automatically with the parameters entered earlier.
6. **Save** the API.
<img src="../images/smart-alert-save-api.png" alt="save api" title="save api" style="border: 1px solid gray; zoom:75%;">

7. **Test** the API to ensure that the configuration is proper. Enter a sample city name, when prompted and ensure you get a success message and a proper Response.
8. **Save** your settings.