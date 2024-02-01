# Service Node

The Service Node is a component type in a dialog task that you can use to add an API service to make REST or SOAP requests to third-party web services. You can use this node when you have the parameters needed for the API request using an entity or other nodes to capture the user input.

## Add the Node

Service Nodes can only be added as part of a Bot Action node. Therefore, before you can add a Service Node, you need to add a Bot Action node. [Read more about Bot Action Nodes](../bot-action-node/){:target="_blank"}.

!!! Note

    Post v9.0 of the XO )Platform, the Service node is categorized under the Bot Action node. For details on the Bot Action node, [click here](../bot-action-node/){:target="_blank"}.

Keeping this in mind, the setup of a Service node in a dialog task involves the following steps:

1. Open the dialog task to add the Service node.
2. Create and/or expand a Bot Action node.
3. Add a Service node in the designated place. For steps related to adding nodes, [refer here](../../using-the-dialog-builder-tool/#add-nodes){:target="_blank"}.
4. The Service window is displayed with the **Component Properties** tab selected by default.
5. To connect a Service node to a node outside of its containing Bot Action node, please read our article about the [Bot Action Node](../bot-action-node){:target="_blank"}.

    <p id="gdcalert1" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image1.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert2">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

    ![alt_text](images/image1.png "image_tooltip")



## Configure the Node


### Component Properties

!!! Note

    All changes made to the Component Properties tab will affect all instances of the Service node, across Dialog Tasks. 

To configure the Component Properties tab, please follow the steps below:

1. On the **Component Properties** tab, under the **General Settings** section, enter the **Name** and **Display Name** of your Service node. 
2. Choose a **Service Type** from the drop-down list:
    1. **Custom Service** – Define an API request to a third-party web service. This is the default setting.
    2. **HTML to Image** – Define HTML to render as an image using JavaScript. For example, to compose HTML or the value of a key in a web service response that contains HTML markup as a string that you want to convert to an image.
    3. **URL to Image** – Define a web page URL to load to render an image.
    4. **Custom Authentication Service** – Define a URL to a third-party application that provides the authentication services necessary for the task flow. [Learn more](../../implementing-custom-authentication){:target="_blank"}.
    5. **Alert Subscription Service** – Define contextually relevant alerts to be sent proactively to the user as a part of the dialog journey.
    6. **Data Service** – Define CRUD operations to query and manipulate the data for any given data table/table view.

3. Based on the service type selected, select the **Type/Sub Type** from the respective drop-down lists or **Auth URL**.
4. Under the **Request Definition** section, click **Define Request**.
5. The **Define Request for &lt; _ServiceXXXX_ >** dialog is displayed, as shown in the following illustration.

    <p id="gdcalert2" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image2.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert3">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

    ![alt_text](images/image2.png "image_tooltip")

    !!! Note
    
        In the case of a Custom Authentication Service, the Request Definition section does not apply and you can see a Response.

    <p id="gdcalert3" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image3.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert4">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

    ![alt_text](images/image3.png "image_tooltip")

    Depending on the Service Type selected, refer to one of the following sections in this topic:

    1. [Defining a Custom Service](../working-with-the-service-node/#custom){:target="_blank"}
    2. [Defining a URL to Convert to Image](#define-a-url-to-convert-to-image)
    3. [Defining HTML to Convert to Image](#define-html-to-convert-to-image)
    4. [Defining Alert Subscription Service](#define-an-alert-subscription-service)
    5. [Defining Data Service](#define-a-data-service)

6. Under **Advanced Controls**, select the maximum wait time for the **Timeout** for service node calls and decide how the bot can respond or choose an alternate path when timeout occurs. You can configure the following settings:
    1. **Timeout(Seconds)**: Select the maximum wait time from the drop-down list. The timeout range can be any value between _1 Second_ to _20 Seconds_. The default value is _5 Seconds_.
    2. **Timeout error handling**: Choose how the bot should respond when the timeout occurs.
        * **Close the Task and trigger Task Execution Failure Event**, or
        * **Continue with the task and transition to this node**; select the node to which the service call can transition in the flow.

        <p id="gdcalert4" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image4.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert5">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

        ![alt_text](images/image4.png "image_tooltip")

7. In the **Variable Namespaces** section, associate the variable namespaces to execute this node and its transitions. This option is visible only when the Variable Namespace is enabled for the VA. You can go with the task level settings or customize it for this node. For more information, refer to [Managing Namespace](../../../../../app-settings/managing-namespace){:target="_blank"}.


### Instance Properties

!!! Note

    The settings in the Instance Properties tab are specific to the current dialog task and do not reflect in other dialog tasks that use this node.

Use the Instance Properties to define any user tags that you want to set.

1. On the Service node properties panel, click the **Instance Properties** tab.
2. Under the **Custom Tags** section, add tags to build custom profiles of your VA’s conversations. [Click here for more](../../../../../analytics/automation/custom-dashboard/custom-meta-tags){:target="_blank"}.

    <p id="gdcalert5" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image5.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert6">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

    ![alt_text](images/image5.png "image_tooltip")


### Connections Properties

Since they are contained within Bot Action nodes, Service nodes cannot be connected on their own to any other nodes outside the Bot Action node to which they belong. Connections can only be made with nodes contained within the same Bot Action node. 

From the node’s **Connection Properties** tab, you can configure the following:

* **Service Node Connections**: The node within the Bot Action to execute next, after the Service node runs. 
* **Bot Action Connections**, where you can update the node to trigger after the Bot Action group is executed. Updates made here will apply to all nodes within the same Bot Action. 

For both connection types you can write conditional statements based on the values of any Entity or Context Objects in the dialog task, or you can use Intents for transitions. 

!!! Note
    
    The conditions configured here are applicable only for this instance and will not affect this node when being used in any other dialog.

To set up node connection conditions, please follow the steps outlined in [Adding IF-Else Conditions to Node Connections. ](../../node-connections/nodes-conditions){:target="_blank"}

<p id="gdcalert6" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image6.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert7">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

![alt_text](images/image6.png "image_tooltip")


## Service Types

You can define the Service Type as:

* **Custom Service** – Define an API request to a third-party web service. This is the default setting.
* **HTML to Image** – Define HTML to render as an image using JavaScript. For example, to compose HTML or the value of a key in a web service response that contains HTML markup as a string that you want to convert to an image.
* **URL to Image** – Define a web page URL to load to render an image.
* **Custom Authentication Service** – Define a URL to a third-party application that provides the authentication services necessary for the task flow.
* **Alert Subscription Service** – Define contextually relevant alerts to be sent proactively to the user as a part of the dialog journey.
* **Data Table Service** – Define CRUD operations to query and manipulate the data for any given data table/table view assigned to the Virtual Assistant.


### Define a Custom Service

1. When you select **Custom Service** in the **Service Type**, then in the **Sub-Type** field, select one of the options:
    1. **REST** – The API web service is using REST services.
    2. **SOAP** – The API web service is using SOAP services.

2. In the **Request Definition** section, click **Define Request** to specify the settings for the web service type.
3. The **Define Request for &lt; _Service Node Name_ >** dialog is displayed as shown in the following illustration.
4. In the **Request URL** field, in the first field, select the HTTP method used for the request. You can select:
    1. **POST**– Used to send data to the server. For example, customer information, file upload, and so forth using HTML forms.
    2. **PUT**– Replaces the content of the target resource with the content sent.
    3. **PATCH** – Appends the content of an existing target resource with the content sent.
    4. **DELETE** – Deletes the content of an existing target resource.
    5. **GET** – Returns the content of an existing target resource

5. In the second field of the **Request URL**, specify the URL for the dialog task response to process at Kore.ai. For example, http://koremessenger.com/postURL. Add query or path parameters as part of the URL, if required. To use entity node values as parameters, use the following syntax for accessing the `Context` object: https://myDomain.com/{{context.entities.topic}} for the `context.entities.topic`. You must use the double brackets `{{ context.object }}`. For more information, refer to [Context Object](../../../context-object){:target="_blank"}.
    1. Optionally, click **Show Advanced**, and select  

        1. **Yes** in the **Access Using A Connector** field if access for Kore.ai assistants is using the Kore.ai connector agent. For more information, refer to [Using the Kore.ai Connector](../../../../../administration/kore-ai-connector){:target="_blank"}.  
        2. **Yes** in the **De-Identification of PII Data** to redact any sensitive information types that users share with your assistants. For more information, refer to [Redacting Personally Identifiable Information](../../../../../app-settings/advanced-settings/pii-data-masking){:target="_blank"}
    
    2. In the **Auth** tab, select the type of authorization needed for this service node call, or define a new authorization type if needed. For more information, refer to [Setting Up Authentication](../../../../../app-settings/dev-tools/bot-authorization/bot-authentication){:target="_blank"}.
    3. In the **Headers** tab, specify the headers as key/value pairs if required to access the specified request URL.  Authentication headers are auto-generated based on the authorization type specified on the **Auth** tab. You need to define any other standard headers. For example, Content-type, Accept, or any custom headers. Headers defined here are only applicable to this service node.
    4. In the **Body** tab, select the body content type. You can select:
        * **application/x-www-form-urlencoded** – Also known as Multipart/Form-data, which is an encoding type that allows files to be sent through an HTTP POST request method if you want to allow a user to upload a file from a form. You can add key/value pairs that are encoded by the XO Platform.
        * **application/json** – Use JSON to transmit data between the Kore.ai servers and your VA’s web application. Any JSON is sent with the request without any processing.
        * **application/xml** – For SOAP services, pass XML payload using POST methods. You can pass entity node values as part of the XML, using the following syntax for accessing the `Context` object: https://myDomain.com/{{context.entities.topic}} for the `context.entities.topic`. You must use the double brackets `{{ context.object }}`. For more information, refer to [Context Object](../../../context-object/){:target="_blank"}.
    
    5. In the **Test Request** tab, click **Test** to optionally send your API request URL using the specified Auth type, HTTP headers, and body parameters, if defined. The response is displayed in the text area. Click **Save as Sample Response** to save the test response as the sample response for this node.
    6. Click **Save** to save the request for the service node and close the **Define Request for &lt; _Service Node Name_ >** dialog.

6. In the **Sample Response** section, optionally click **Add Sample Response** to display the **Add Sample Response** dialog that you can use to manually enter or paste a sample response.
7. Optionally, in the **Add Sample Response** drop-down list, you can select:
    1. **JSON** – A list of JSON key/value pairs available in the request URL response used in other nodes as variables.
    2. **RAW** – A list of key/value pairs that are used in other nodes as variables.

8. In the **Component Properties** section, select the maximum wait time for the **Timeout** for service node calls and decide how the bot can respond or choose an alternate path when timeout occurs. You can configure the following settings.
    1. **Timeout(Seconds)**: Select the maximum wait time from the drop-down list. The timeout range can be any value between _1 Second_ to _20 Seconds_. The default value is **5 Seconds**.
    2. **Timeout error handling**: Choose how the bot should respond when the timeout occurs.
        * **Close the Task and trigger Task Execution Failure Event**, or
        * **Continue with the task and transition to this node**; select the node to which the service call can transition in the flow.


### Define a URL to Convert to Image

1. When you select **URL to Image** in the **Service Type**, the **Type** setting is read-only.
2. In the **Request Definition** section, click **Define Request** to specify the settings when the **URL to Image** is selected for **Service Type**. The **Define Request for &lt; _Service Node Name_ >** dialog is displayed as shown in the following illustration.
3. In the **URL to Convert** field, enter the URL for the image. The syntax when using a `Context` object key in a URL is to enclose the object name in double brackets, for example, https://myURLimage.com/**{{context.entities.imageName}}**.
4. In the **Render Sizes** section, specify a name for the image size. For example, for an iPhone or tablet, enter the **Width** and **Height** in pixels; then click **+Add** to add additional sizes, or click **Add** to save and close the dialog.
5. Click **Save** to save the request for the service node and close the **Define Request for &lt; _Service Node Name_ >** dialog.

!!! Note

    By default, the webpage loading time is configured as 2 seconds. If the page loads within 2 seconds, then a screenshot is captured. Otherwise, a blank page is displayed.


### Define HTML to Convert to Image

1. When you select **HTML to Image** in the **Service Type**, the **Type** setting is read-only.
2. In the **Request Definition** section, click **Define Request** to specify the settings when **HTML to Image** is selected for **Service Type**. The **Define Request for &lt; _Service Node Name_ >** dialog is displayed as shown in the following illustration.
3. In the **HTML to Convert** field, enter the HTML for the image.
4. In the **Render Sizes** section, specify a name for the image size. For example, for an iPhone or tablet, enter the **Width** and **Height** in pixels; then click **+Add** to add additional sizes, or click **Add** to save and close the dialog.

The following is an example for converting HTML to an image:

```
<head>

<link href="../assets/styles.min.css" rel="stylesheet"/>

<title>HTML: Print Wide HTML Tables</title>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

<style>

 .style1 {

    border-collapse: collapse;

    }

 .style1 th {

    background-color: #DDDDDD;

    white-space: nowrap;

    }

 .style1 .d {

    white-space: nowrap;

    }

 .style1 .n {

    padding-left: 20px;

    text-align: right;

    }

</style>

</head>

<body>

<table id="table1" class="style1" border="1" cellpadding="4" cellspacing="0">

 ///TODO Add Table Rows here.

</table>

<input type="button" id="print-button" value="Make this table printable contact@ {{context.session.UserContext.emailId}}"/>

<script>

/*

* HTML: Print Wide HTML Tables

* http://salman-w.blogspot.com/2013/04/printing-wide-html-tables.html

*/

$(function() {

$("#print-button").on("click", function() {

  var table = $("#table1"),

      tableWidth = table.outerWidth(),

      pageWidth = 600,

      pageCount = Math.ceil(tableWidth / pageWidth),

      printWrap = $("<div></div>").insertAfter(table),

      i,

      printPage;

  for (i = 0; i < pageCount; i++) {

     printPage = $("<div></div>").css({

         "overflow": "hidden",

         "width": pageWidth,

         "page-break-before": i === 0 ? "auto" : "always"

       }).appendTo(printWrap);

  table.clone().removeAttr("id").appendTo(printPage).css({

     "position": "relative",

     "left": -i * pageWidth

    });

  }

table.hide();

$(this).prop("disabled", true);

});

});

</script>

</body>

</html>
```

The preceding HTML example, when table rows are added into the example, can render the following image to an end-user.

<p id="gdcalert7" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image7.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert8">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

![alt_text](images/image7.png "image_tooltip")


### Define an Alert Subscription Service

You can now automatically subscribe your users to send contextually relevant alerts as part of the dialog journey. For example, a person booking a flight ticket for a specific date is auto-subscribed to get regular updates on the weather forecast for the destination city.

To set up an alert subscription service, follow the below steps:

1. Open the **Component Properties** tab of the service node to which you want to associate the alert.
2. Under the **General Settings** section, select **Auto Subscription Service** from the **Service Type** drop-down list.
3. Click **Define Request**.  
  
    !!! Note
    
        To create an alert subscription service, you must base it on an existing alert task. Users are auto-subscribed to the alert task on reaching the associated service node in the dialog.

4. On the Smart/Automatic Alerts dialog box, select an alert task from the **Choose Alert** drop-down list. The list consists of only the published alert tasks related to your VA.
5. Enter the necessary information as explained below.


#### Alert Subscription (Smart Alert) Configurations

In a typical alert setup, the alert parameters, filters, and other necessary details are entered by the users. Since this is an auto-subscription for alerts, you need to configure those details as a developer.

**Alert Parameters**

These vary according to the alert you select. Provide the default parameter values to use for the Alert Subscription service.

In this example, the parameters defined for the alert are _Topic Name_ and _News Region_. Since the idea is to send weather forecasts to the user for the destination city, you can set the parameter values as _Weather Forecast_ and _context.entity.destinationcity_ respectively.

**Filters**

These vary according to the alert you select. Provide the filter criteria to use for the Alert Subscription service.

**Alert Frequency**

Provide the frequency to send alert notifications. You need to select a Scheme, Frequency, and Time Frame.

1. From the **Select Scheme** drop-down list, select daily, weekday, or weekend, depending on when you want to send the alert.
2. From the **Select Frequency** drop-down list, select _Every_ if you want to send multiple alerts at regular intervals of time in a day or select _at_ to send one alert at a specific time of the day.
3. From the **Select Time** drop-down list, select an interval time value or a time of the day, depending on the frequency value chosen above.

    For example, _Daily At 6 a.m._ means that an alert is sent to the user every day at 6 a.m.

**Smart Alert Expiry**

Configure when to expire sending alerts to the users from one of the following options:

1. **Duration**: Stops sending notification after the entered number of days from the date of subscription.
2. **Number of Notifications**: Stops sending alerts after an entered number of notifications are sent.

**Alert Upgrades**

Define the expected behavior of this alert if an upgraded version of the underlying alert task (the published alert that you have selected at the beginning) is published.

1. **Remove Existing Instances –** All existing subscriptions of this smart alert are removed and users will no longer receive notifications. Users are auto-subscribed to the upgraded alert task only when they execute the dialog and reach the service node in the dialog journey.
2. **Allow Users To Manually Upgrade Subscription –** Users will receive an upgrade notification on the selected channel which is a link that guides them through to upgrade their auto-subscription. If the upgrade is successful, the user will receive a success notification.


### Define a Data Service

1. When you select **Data Service** in the **Service Type**, the **Type** setting provides two options:
    1. Table – choose this option to perform CRUD operations on the data table.
    2. View – choose this option to fetch data from a table view.

        !!! Note
        
            Your VA should have permission to access the table/view. The owner of the table/view has to grant this permission, [click here for how](../../../../../administration/data/data-table/#assignments){:target="_blank"}.

2. In the **Request Definition** section, click **Define Request** to specify the operation you want to perform. [Click here for details.](../../../../../administration/data/data-as-service){:target="_blank"}


## Next Steps

For the Service Node you set up, you might want to:

* Implement Custom Authentication, [refer here](../../implementing-custom-authentication){:target="_blank"}; or
* Enable 2-way SSL, [refer here](../../enabling-2-way-ssl-for-service-nodes/){:target="_blank"}.