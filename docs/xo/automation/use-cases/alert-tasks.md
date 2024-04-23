# Alert Tasks

Alert Tasks deliver timely, relevant, and personalized information from enterprise systems to customers and employees by polling the relevant service in real time or according to a user-defined schedule. These alerts contain detailed information such as name, ID, notes, amount, and more, in a variety of formats for each channel.

## Key Features

* **Scheduled Alerts**: Users can schedule alerts to trigger according to the days, times, and frequencies they specify.
* **Filtered Alerts**: Users can configure alerts to trigger when certain thresholds are met such as amounts, dates, text matches, and more.

## Example Use Cases

The following are a few example use cases for alert tasks:

* Time or location-based promotional offers.
* Scheduled delivery updates.
* Inventory level changes.
* Critical issue notification.
* Weather related alerts.
* Cross-company status changes.

## Configuration

To configure an alert task, you must configure the following settings:

### General Settings

The first step is to define what the task looks like to the end-user. The General Settings include details such as task name, connection mode, descriptions, and a few advanced settings such as task demo, search keywords, etc.

1. Open the VA in which you want to create the alert task.
2. Navigate to **Virtual Assistant > USE CASES > Alert Tasks**.
3. Click **Create Alert Task**.
    
    <img src="../images/create-new-alert-task.png" alt="new alert task" title="new alert task" style="border: 1px solid gray; zoom:75%;"> 

4. Enter the information required by the Alert Task, according to the table below.

<table border="1.5">
<tr bgcolor="#ECECEC">
   <td><strong>FIELD NAME</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
  </tr>
  <tr>
   <td>Task Name
   </td>
   <td>The name of the alert task displayed on the Platform.
   </td>
  </tr>
  <tr>
   <td>Display Name
   </td>
   <td>The name of the alert task is displayed in the Store. The Task Name doubles up as the display name by default. However, you can change the display name.
   </td>
  </tr>
  <tr>
   <td>Connection Type
   </td>
   <td>Select one of these connection types for the task:
<ul>

<li><strong>Webhook</strong> – The web application pushes data to a task URL endpoint provided by Kore.ai.

<li><strong>RSS</strong> – The web service returns RSS feeds when polled by Kore.ai, and may require end-user login credentials.

<li><strong>Webservice</strong> – The web service sends data to Kore.ai when polled by Kore.ai using the end-user account login credentials.
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>Connection Mode
   </td>
   <td>When the <strong>Connection Type</strong> is set to <strong>Webservice</strong>, specify the <strong>Connection Mode</strong> for the connection as:
<ul>

<li><strong>REST</strong> – The alert task uses a REST API connection. or

<li><strong>SOAP</strong> – The alert task uses a SOAP API connection.
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>Input Preconditions:
   </td>
   <td>The intent will be detected only if any of the context tags specified as pre-conditions are available in the context at the time of intent detection. This setting is available after clicking More Options.
   </td>
  </tr>
  <tr>
   <td>Context Output:
   </td>
   <td>Define the context tags to be set in the context when this intent is initiated. This setting is available after clicking More Options.
   </td>
  </tr>
</table>

<img src="../images/create-alert-task-settings.png" alt="create alert task" title="create alert task" style="border: 1px solid gray; zoom:75%;"> 

### Advanced Settings

To configure the advanced settings for the task, expand the section and enter the relevant details.

<img src="../images/alerts-advanced-settings.png" alt="advanced settings" title="advanced settings" style="border: 1px solid gray; zoom:75%;">

The following table describes the fields in the **Advanced Settings** section of the **General** tab.

<table border="1.5">
<tr bgcolor="#ECECEC">
   <td><strong>FIELD NAME</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
  </tr>
  <tr>
   <td>Task Install Confirmation Message
   </td>
   <td>The message displayed to the end-user when the task is successfully set up.
   </td>
  </tr>
  <tr>
   <td>Turn Off Confirmation Messages
   </td>
   <td>Select <strong>Yes</strong> to disable confirmation of the execution of a task when using NLP. When <strong>No</strong> is selected, the user is asked to confirm the task before running it.
   </td>
  </tr>
  <tr>
   <td>Search Keywords
   </td>
   <td>Specify one or more search words an end-user can use to help locate this task in the Kore.ai Bot Store.
   </td>
  </tr>
  <tr>
   <td>Task Demo Link
   </td>
   <td>Enter the demo link, for example, to display a task demo icon next to the task displayed in the Store.
   </td>
  </tr>
</table>

## Authorization

You must define how the end-user must be authorized to get the alert task notification message. For example, _Twitter_ is an alert task using web services that require an authorized end-user. The authorization for the alert task is the same end-user log-in username and password for _Twitter_ to allow Kore.ai to access the end-user account and poll for the alert task data.

!!!note

    Authorization for alert tasks with the Connection Type set to Webhook is not required as part of the alert task configuration.

After you define the general settings for an alert task, the next step is to go to the **Authorization** section on the **API Request** tab.

To get started with defining the **Authorization** for a task,

1. On the **API Request** tab, click the **Expand** icon in the **Authorization** section.
2. If you have previously defined authorization for this task, you can select from the **Authorization Provider** drop-down list. If your task does not require authentication, you can select **None** in the **Authorization Provider** drop-down list as shown in the following image.
3. To define a new authorization provider, click **Create New**.
4. On the **New Authorization Mechanism** window, select the type of authorization used by your bot from the **Authorization Type** drop-down list.
5. You can choose one of the following types of authorization:
    * **Basic Auth**: A standard protocol to collect username and password information. Kore.ai uses SSL encryption in combination with basic authentication to help secure end-user information. Click <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/alert-task-basic-auth/" target="_blank">here</a> for the configuration details.
    * **OAuth v2 Password Grant Type** – Define a custom authorization type for non-standard web service authorization types. Click <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/alert-task-oauth-password-grant-type/" target="_blank">here</a> for the configuration details.
    * **OAuth v2 Client Credential**
    * **OAuth v1** – Enables web applications or web services to access protected resources using an API without end-users having to disclose their login credentials to Kore.ai. Click <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/alerts-oauth-v1/" target="_blank">here</a> for the configuration details.
    * **OAuth v2** – The newest version of the OAuth protocol focusing on specific authorization flows for web applications and web services. Click <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/alerts-oauth-v2/" target="_blank">here</a> for the configuration details.
    * **API Key** – An identification and authorization token generated or provided by a web application or web service used to identify the incoming application request, and in some cases, also provide authentication for secure access. Click <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/alert-task-using-api-key/" target="_blank">here</a> for the configuration details.
    <img src="../images/alerts-authorization.png" alt="alerts authorization" title="alerts authorization" style="border: 1px solid gray; zoom:75%;"> 

### API Requests

Configure the API request that asks for data from your website, system, or web application for the task. You can configure the API Request Settings as an action task for WebHook, Rest, SOAP, or RSS APIs. You can define API Parameters, optional API task Initializer, API Request pre- or post-processor, and the API Request. You also need to add a Response Sample expected from your API Request payload.

After you define the authorization mechanism and then click **Save Auth**, you are ready to configure the alert task request. The configuration settings for an alert task request are based on the **Connection Type** that you define for the task:

* Configuring API Request for WebHook service. Click <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/alert-tasks-webhook-api/" target="_blank">here</a> for details.
* Configuring API Request for REST service. Click <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/alert-task-rest-api/" target="_blank">here</a> for details.
* Configuring API Request for SOAP service. Click <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/alert-tasks-soap-api/" target="_blank">here</a> for details.
* Configuring API Request for RSS service. Click <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/alert-tasks-rss-api-request/" target="_blank">here</a> for details.

## Bot Responses

After you describe your alert task **General** tab settings and then configure the alert task **API request chain**, you are ready to define how the alert task results are displayed to the end-user. This section describes how to configure an **alert task response**.

To define the response object for an alert task, there are two sections:

* **Report Template Definition** – For some tasks, you may want to display report data to the end-user as a link that can display the payload response using a template, such as a table, contact card, or formatted for a specific message type such as a weather report.

!!!note
    
    This section is not used for webhook alert tasks, action tasks, or RSS alert tasks. 

Refer <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/alert-tasks-report-templates/" target="_blank">here</a> for Configuring the Report Template Definition.

* **Message Definition** – In this section, you define the look and feel of the data presented to the end-user when the alert is displayed based on the payload delivered by the webhook. <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/alert-tasks-message-definition/" target="_blank">Learn more</a>.

## Alert Settings

Define the schedule or filter settings for the alert. schedule alerts to trigger according to the days, times, and frequencies they specify, whereas filtered alerts trigger when certain thresholds are met such as amounts, dates, text matches, and more.

After you define the **General** tab settings for your Alert task, configure the **API request chain**, define the **Bot response message**, then you are ready to **define the settings for the task**, such as filters, when the alert task runs, and other advanced options. This section describes how to define the parameters on the **Settings** tab for an alert task.

!!!note

    This section does not apply to webhook alert tasks.

To configure the settings for an alert task, other than a webhook alert task, you will need to define:

* **Filters** – You can define filters for end-users to limit the results of an alert task to the results an end-user needs. For example, you can define a filter for the name, or account, or business. When the alert is set up by the end-user, and the filter applied, only alert messages that meet the filter specifications are displayed to the end-user. For more information, see <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/alert-tasks-defining-filters/" target="_blank">Defining Filters for a Task</a>.
* **Schedule** – Alert tasks only reach out to a web service for data when the VA makes a request. For each task, you need to define when, and how often the web service is queried for data for an alert message. You can define the scheduling options presented to the end-user when the task is set up, as well as the default schedule for the task. For more information, see <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/alert-tasks-configuring-the-schedule/" target="_blank">Configuring the Schedule for a Task</a>.
* **Advanced Settings** – In the Advanced Settings section, you can define alert task settings for enabling and limiting the initial set of alert messages displayed to the end-user when the task is set up, define alert message reminders, and if required, prevent duplicate messages sent to the user. For more information, see <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/alert-tasks-advanced-settings/" target="_blank">Define Advanced Settings</a>. 

## Version Namespaces

Associate the Variable Namespaces to be used to execute this task. The system will use the variables only from these Namespaces to execute this task. 

<img src="../images/alert-task-associate-namespace.png" alt="Associate Namespace" title="Associate Namespace" style="border:1px solid gray;zoom:70%;">

This option is only available if you have enabled Namespaces. [Learn more](../../../app-settings/managing-namespace/){:target="_blank"}.

<img src="../images/version-namespaces.png" alt="version namespaces" title="version namespaces" style="border: 1px solid gray; zoom:75%;"> 

## View Logs

You may need to troubleshoot alert tasks. In the Kore.ai Bot Builder tool, you can view logged events for configured and published alert tasks that interact with the XO Platform and third-party applications. The **View Logs** command displays archived log events for each alert task instance that you can use to view the alert task request and the application response.

In the **Alert Tasks** section, click the **Settings** (gear) icon for the task to view logs for, and then click **View Logs**. The **Logs** page for the bot alert task opens.
<img src="../images/alert-tasks-settings.png" alt="alert tasks settings" title="alert tasks settings" style="border: 1px solid gray; zoom:75%;"> 


You can refresh the entries on the **Logs** page when needed.

Each log entry represents the results of the alert task as a JSON response.

```js
{
    "requestLogs": [{
        "name": "Request 1",
        "request": {
            "endpoint": "http://www.moneycontrol.com/rss/{channel}.xml",
            "pathFields": {
                "channel": "latestnews",
                "lastRun": "2016-12-02T16:50:45Z",
                "now": "2016-12-02T16:56:37Z",
                "today": "2016-12-02"
            },
            "payloadFields": {},
            "headerFields": {
                "If-Modified-Since": "Fri, 02 Dec 2016 16:30:28 GMT",
                "If-None-Match": "\"525734-3a49-5426bfa6dff80\""
            }
        },
        "response": {
            "status": 200,
            "headers": {
                "server": "Kore.aiOps",
                "last-modified": "Fri, 02 Dec 2016 16:50:10 GMT",
                "accept-ranges": "bytes",
                "content-encoding": "gzip",
                "pragma": "no-cache",
                "content-length": "3554",
                "content-type": "application/xml",
                "vary": "Accept-Encoding",
                "expires": "Wed, 11 Jan 1984 05:00:00 GMT",
                "cache-control": "max-age=0, no-cache, no-store, must-revalidate",
                "age": "0",
                "connection": "keep-alive"
            },
            "body": " \n\t \n\t \n\t\t\t\n\t\t\t\tMoneycontrol Latest News\n\t\t\t\tLatest News from Moneycontrol.com\n\t\t\t\thttp://www.moneycontrol.com\n\t\t\t\tFri, 02 Dec 2016 22:20:01 +0530\n\t\t\t\tMoneycontrol.com\n\t\t\t\t\n\t\t\t\t\thttp://img1.moneycontrol.com/images/top2010/moneycontrol_logo.png\n\t\t\t\t\tMoneycontrol Logo\n\t\t\t\t\thttp://www.moneycontrol.com\n\t\t\t\tFeed provided by Moneycontrol.\n\t\t\t\t\n\t\tPradhan proposes Rs 900 crore 2G Ethanol Plant in Odisha\n\t\thttp://www.moneycontrol.com/news/wire-news/pradhan-proposes-rs-900-crore-2g-ethanol-plantodisha_8058641.html\n\t\t<img src="http://www.moneycontrol.com/news_image_files/default/200x200_default_img_grey.png" alt="Pradhan proposes Rs 900 crore 2G Ethanol Plant in Odisha" title="Pradhan proposes Rs 900 crore 2G Ethanol Plant in Odisha" border="0″ width="75″ height="75″ align=" left" hspace="5″/> Union Minister Dharmendra Pradhan\ntoday proposed a 2G Ethanol Plant in Bargarh district at an\ninvestment of Rs 900 crore and suggested the Odisha government\nto develop Paradip on the lines of Jurong island of Singapore.\n\t\tFri, 02 Dec 2016 22:16:04 +0530\n\t\thttp://www.moneycontrol.com/news/wire-news/pradhan-proposes-rs-900-crore-2g-ethanol-plantodisha_8058641.html\n\t\t\n\t\t\n\t\tNote ban impact: How Vidisha farmers are coping\n\t\thttp://www.moneycontrol.com/news/cnbc-tv18-comments/note-ban-impact-how-vidisha-farmerscoping_8058621.html\n\t\t<img src="http://www.moneycontrol.com/news_image_files/2014/a/ARCHANA4_200_0102.png" alt="Archana Shukla" title="Archana Shukla" border="0″ width="75″ height="75″ align=" left" hspace="5″/> The government's decision to ban old Rs 500 and Rs 1000 notes has made life difficult for small famers. Trading is a hassle and life in the Madhya Pradesh town is almost at a standstill.\n\t\tFri, 02 Dec 2016 22:14:01 +0530\n\t\thttp://www.moneycontrol.com/news/cnbc-tv18-comments/note-ban-impact-how-vidisha-farmerscoping_8058621.html\n\t\t\n\t\t\n\t\tCash crunch not a worry for grocery e-tailer BigBasket\n\t\thttp://www.moneycontrol.com/news/business/cash-crunch-notworry-for-grocery-e-tailer-bigbasket_8058601.html\n\t\t<img src="http://www.moneycontrol.com/news_image_files/2016/b/bigbasket.png" alt="Cash crunch not a worry for grocery e-tailer BigBasket" title="Cash crunch not a worry for grocery e-tailer BigBasket" border="0″ width="75″ height="75″ align=" left" hspace="5″/> While the demonetisation scheme is acting as a hurdle for many sectors, for BigBasket it is a blessing in disguise. The company has upped its revenue projection by 20 percent in the financial year 2017. \n\t\tFri, 02 Dec 2016 22:13:12 +0530\n\t\thttp://www.moneycontrol.com/news/business/cash-crunch-notworry-for-grocery-e-tailer-bigbasket_8058601.html\n\t\t\n\t\t\n\t\tMallya PMLA case: Court confirms Rs 1,411 attachment order\n\t\thttp://www.moneycontrol.com/news/business/mallya-pmla-case-court-confirms-rs-1411-attachment-order_8058581.html\n\t\t<img src="http://www.moneycontrol.com/news_image_files/2016/v/Vijay_Mallya_Kingfisher_Mallya_london_200x200.png" alt="Mallya PMLA case: Court confirms Rs 1,411 attachment order" title="Mallya PMLA case: Court confirms Rs 1,411 attachment order" border="0″ width="75″ height="75″ align=" left" hspace="5″/> A special anti-money laundering\r\ncourt here has confirmed an attachment of assets order worth\r\nRs 1,411 crore issued by the ED against UBHL and others in\r\nconnection with its money laundering probe against liquor\r\nbaron Vijay Mallya and others.\n\t\tFri, 02 Dec 2016 22:00:03 +0530\n\t\thttp://www.moneycontrol.com/news/business/mallya-pmla-case-court-confirms-rs-1411-attachment-order_8058581.html\n\t\t\n\t\t\n\t\tRussian central bank said it was victim of attempted cyber heist\n\t\thttp://www.moneycontrol.com/news/world-news/russian-central-bank-said-it-was-victimattempted-cyber-heist_8058321.html\n\t\t<img src="http://www.moneycontrol.com/news_image_files/2016/2/2016-12-02T151033Z_1_LYNXMPECB114Y_RTROPTP_2_RUSSIA-CENBANK-LIQUIDITY-RATES_200.JPG" alt="Russian central bank said it was victim of attempted cyber heist" title="Russian central bank said it was victim of attempted cyber heist" border="0″ width="75″ height="75″ align=" left" hspace="5″/> The bank said it managed to recover some of that amount – USD26 million — but it did not say if that meant the rest had been stolen.\n\t\tFri, 02 Dec 2016 21:46:45 +0530\n\t\thttp://www.moneycontrol.com/news/world-news/russian-central-bank-said-it-was-victimattempted-cyber-heist_8058321.html\n\t\t\n\t\t\n\t\tBank of England's Haldane warns against hasty rate hike\n\t\thttp://www.moneycontrol.com/news/world-news/bankenglands-haldane-warns-against-hasty-rate-hike_8058361.html\n\t\t<img src="http://www.moneycontrol.com/news_image_files/2016/2/2016-12-02T125207Z_1_LYNXMPECB10TS_RTROPTP_2_BRITAIN-BOE_200.JPG" alt="Bank of England's Haldane warns against hasty rate hike" title="Bank of England's Haldane warns against hasty rate hike" border="0″ width="75″ height="75″ align=" left" hspace="5″/> The Bank of England's chief economist, Andrew Haldane, said on Friday it would be risky to raise interest rates too hastily and that he was comfortable with the BoE's recent shift to a neutral stance on what its next monetary policy move should be.\n\t\tFri, 02 Dec 2016 21:44:54 +0530\n\t\thttp://www.moneycontrol.com/news/world-news/bankenglands-haldane-warns-against-hasty-rate-hike_8058361.html\n\t\t\n\t\t\n\t\tTourists begin to feel the pinch of cash crunch\n\t\thttp://www.moneycontrol.com/news/current-affairs/tourists-begin-to-feelpinchcash-crunch_8057981.html\n\t\t<img src="http://www.moneycontrol.com/news_image_files/ai/foreign_tourists_190.png" alt="Tourists begin to feel the pinch of cash crunch" title="Tourists begin to feel the pinch of cash crunch" border="0″ width="75″ height="75″ align=" left" hspace="5″/> The demonetisation move is impacting various segments of the society. The tourists coming to India are also feeling the pinch of the cash crunch. \n\t\tFri, 02 Dec 2016 21:33:53 +0530\n\t\thttp://www.moneycontrol.com/news/current-affairs/tourists-begin-to-feelpinchcash-crunch_8057981.html\n\t\t\n\t\t\n\t\tPolitical funding audits key to success of demonetisation: Pros\n\t\thttp://www.moneycontrol.com/news/economy/political-funding-audits-key-to-successdemonetisation-pros_8058301.html\n\t\t<img src="http://www.moneycontrol.com/news_image_files/2016/a/Ashok_Lahiri_200.png" alt="Ashok Lahiri" title="Ashok Lahiri" border="0″ width="75″ height="75″ align=" left" hspace="5″/> The political parties must be open to audits, believe both Govinda Rao, former member, PMEA and Ashok Lahiri, former chief economic advisor. \n\t\tFri, 02 Dec 2016 21:33:32 +0530\n\t\thttp://www.moneycontrol.com/news/economy/political-funding-audits-key-to-successdemonetisation-pros_8058301.html\n\t\t\n\t\t\n\t\tCore Diagnostics gets $12mn funding from investors\n\t\thttp://www.moneycontrol.com/news/business/core-diagnostics-gets-3612mn-fundinginvestors_8058561.html\n\t\t<img src="http://www.moneycontrol.com/news_image_files/2016/d/Dollar_rupee_ip_down_200x200.png" alt="Core Diagnostics gets $12mn funding from investors" title="Core Diagnostics gets $12mn funding from investors" border="0″ width="75″ height="75″ align=" left" hspace="5″/> Core Diagnostics has received USD 12 million (around Rs 82 crore) funding from various investors including US-based F-Prime Capital Partners.\n\t\tFri, 02 Dec 2016 21:24:15 +0530\n\t\thttp://www.moneycontrol.com/news/business/core-diagnostics-gets-3612mn-fundinginvestors_8058561.html\n\t\t\n\t\t\n\t\tItzCash ties up with 100 cos for pre-paid cards\n\t\thttp://www.moneycontrol.com/news/business/itzcash-ties-up100-cos-for-pre-paid-cards_8058541.html\n\t\t<img src="http://www.moneycontrol.com/news_image_files/2015/c/creditcardrewardpoints200X200.png" alt="ItzCash ties up with 100 cos for pre-paid cards" title="ItzCash ties up with 100 cos for pre-paid cards" border="0″ width="75″ height="75″ align=" left" hspace="5″/&
amp;
gt; Digital payments facilitator ItzCash has signed up with 100 small- and large-sized companies to offer pre-loaded salary cards for their employees in the wake of cash withdrawal limits from banks post ban on Rs 500/1000 notes.\n\t\tFri, 02 Dec 2016 21:24:13 +0530\n\t\thttp://www.moneycontrol.com/news/business/itzcash-ties-up100-cos-for-pre-paid-cards_8058541.html\n\t\t\n\t\t\n\t\tAmul to launch camel milk in next 3 months\n\t\thttp://www.moneycontrol.com/news/business/amul-to-launch-camel-milknext-3-months_8058521.html\n\t\t<img src="http://www.moneycontrol.com/news_image_files/2014/p/pro_amul_taaza_full_cream_milk_200_5901.png" alt="Amul to launch camel milk in next 3 months" title="Amul to launch camel milk in next 3 months" border="0″ width="75″ height="75″ align=" left" hspace="5″/> With food safety regulator FSSAI setting new standards for camel milk, dairy major GCMMF, which sells products under the Amul brand, today said it will launch camel milk in the next three months.\n\t\tFri, 02 Dec 2016 21:24:12 +0530\n\t\thttp://www.moneycontrol.com/news/business/amul-to-launch-camel-milknext-3-months_8058521.html\n\t\t\n\t\t\n\t\tPar Panel asks coal PSUs to recover dues worth Rs 13,745 cr\n\t\thttp://www.moneycontrol.com/news/current-affairs/par-panel-asks-coal-psus-to-recover-dues-worth-rs-13745-cr_8058501.html\n\t\t<img src="http://www.moneycontrol.com/news_image_files/2012/c/coalindia.png" alt="Par Panel asks coal PSUs to recover dues worth Rs 13,745 cr" title="Par Panel asks coal PSUs to recover dues worth Rs 13,745 cr" border="0″ width="75″ height="75″ align=" left" hspace="5″/> A Parliamentary panel has raised concerns over Rs 13,745 crore in dues to coal PSUs – CIL, SCCL and NLC – and asked them to recover the amount, which can adversely impact their financial position.\n\t\tFri, 02 Dec 2016 21:24:11 +0530\n\t\thttp://www.moneycontrol.com/news/current-affairs/par-panel-asks-coal-psus-to-recover-dues-worth-rs-13745-cr_8058501.html\n\t\t\n\t\t\n\t\tRuPay card usage jumps 118% in 1st week of demonetisation\n\t\thttp://www.moneycontrol.com/news/business/rupay-card-usage-jumps-1181st-weekdemonetisation_8058481.html\n\t\t<img src="http://www.moneycontrol.com/news_image_files/2015/r/rupay_200x200.png" alt="RuPay card usage jumps 118% in 1st week of demonetisation" title="RuPay card usage jumps 118% in 1st week of demonetisation" border="0″ width="75″ height="75″ align=" left" hspace="5″/> RuPay card usage jumped by over 118.6 per cent in the week following demonetisation that took effect from November 8 mid-night while the overall debit and credit card transactions recorded an increase of 70.5 per cent.\n\t\tFri, 02 Dec 2016 21:24:10 +0530\n\t\thttp://www.moneycontrol.com/news/business/rupay-card-usage-jumps-1181st-weekdemonetisation_8058481.html\n\t\t\n\t\t\n\t\tBoB raises Rs 1,000 cr; SB of Travancore eyes Rs 600 cr\n\t\thttp://www.moneycontrol.com/news/business/bob-raises-rs-1000-cr-sbtravancore-eyes-rs-600-cr_8058461.html\n\t\t<img src="http://www.moneycontrol.com/news_image_files/2016/b/Banks_Queue_Bank_of_Baroda_200x200.png" alt="BoB raises Rs 1,000 cr; SB of Travancore eyes Rs 600 cr" title="BoB raises Rs 1,000 cr; SB of Travancore eyes Rs 600 cr" border="0″ width="75″ height="75″ align=" left" hspace="5″/> Public sector player Bank of Baroda has raised Rs 1,000 crore by issuing bonds that are compliant with global capital adequacy norms or Basel III.\n\t\tFri, 02 Dec 2016 21:24:09 +0530\n\t\thttp://www.moneycontrol.com/news/business/bob-raises-rs-1000-cr-sbtravancore-eyes-rs-600-cr_8058461.html\n\t\t\n\t\t\n\t\tDCB Bank launches Cippy Wallet app for 'cash free' payments\n\t\thttp://www.moneycontrol.com/news/business/dcb-bank-launches-cippy-wallet-app-for-cash-free-payments_8058441.html\n\t\t<img src="http://www.moneycontrol.com/news_image_files/2014/d/dcb_200.png" alt="DCB Bank launches Cippy Wallet app for 'cash free' payments" title="DCB Bank launches Cippy Wallet app for 'cash free' payments" border="0″ width="75″ height="75″ align=" left" hspace="5″/> Hopping on to the cashless drive, new generation private lender DCB Bank today launched Cippy Wallet app for digital payments.\n\t\tFri, 02 Dec 2016 21:24:08 +0530\n\t\thttp://www.moneycontrol.com/news/business/dcb-bank-launches-cippy-wallet-app-for-cash-free-payments_8058441.html\n\t\t\n\t\t"
        },
        "executionTime": "4917 ms"
    }],
    "alertsData": [{
        "uxmap": {
            "channel": "default",
            "body": "<%    var newLink = " + title + ";\n  print(newLink);  %><%print(\"
\");%><% %>"
        },
        "payload": "{\"title\":[\"Pradhan proposes Rs 900 crore 2G Ethanol Plant in Odisha\"],\"link\":[\"http://www.moneycontrol.com/news/wire-news/pradhan-proposes-rs-900-crore-2g-ethanol-plantodisha_8058641.html\"],\"description\":[\" Union Minister Dharmendra Pradhan\\ntoday proposed a 2G Ethanol Plant in Bargarh district at an\\ninvestment of Rs 900 crore and suggested the Odisha government\\nto develop Paradip on the lines of Jurong island of Singapore.\"],\"pubDate\":[\"Fri, 02 Dec 2016 22:16:04 +0530\"],\"guid\":[\"http://www.moneycontrol.com/news/wire-news/pradhan-proposes-rs-900-crore-2g-ethanol-plantodisha_8058641.html\"],\"hash\":\"f7dbaed7ebe3d9cb5f265779bd969da6\",\"_fields_\":{\"channel\":\"latestnews\"},\"_labels_\":{\"channel\":\"Latest News\"},\"secretKey\":\"n-5bd95008-81be-56d1-9030-0eafbf36a10d\",\"contentType\":\"application/xml\",\"_last_run\":\"2016-12-02T16:50:45.363Z\"}",
        "response": {
            "channel": "default",
            "body": "Pradhan proposes Rs 900 crore 2G Ethanol Plant in Odisha
",
            "updatedSessionStore": {
                "EnterpriseContext": {},
                "BotContext": {},
                "UserContext": {},
                "UserSession": {},
                "BotUserSession": {}
            }
        }
    }, {
        "uxmap": {
            "channel": "default",
            "body": "<%    var newLink = " + title + ";\n  print(newLink);  %><%print(\"
\");%><% %>"
        },
        "payload": "{\"title\":[\"Note ban impact: How Vidisha farmers are coping\"],\"link\":[\"http://www.moneycontrol.com/news/cnbc-tv18-comments/note-ban-impact-how-vidisha-farmerscoping_8058621.html\"],\"description\":[\" The government's decision to ban old Rs 500 and Rs 1000 notes has made life difficult for small famers. Trading is a hassle and life in the Madhya Pradesh town is almost at a standstill.\"],\"pubDate\":[\"Fri, 02 Dec 2016 22:14:01 +0530\"],\"guid\":[\"http://www.moneycontrol.com/news/cnbc-tv18-comments/note-ban-impact-how-vidisha-farmerscoping_8058621.html\"],\"hash\":\"ef03827acaf965207c72d21905ecc804\",\"_fields_\":{\"channel\":\"latestnews\"},\"_labels_\":{\"channel\":\"Latest News\"},\"secretKey\":\"n-5bd95008-81be-56d1-9030-0eafbf36a10d\",\"contentType\":\"application/xml\",\"_last_run\":\"2016-12-02T16:50:45.363Z\"}",
        "response": {
            "channel": "default",
            "body": "Note ban impact: How Vidisha farmers are coping
",
            "updatedSessionStore": {
                "EnterpriseContext": {},
                "BotContext": {},
                "UserContext": {},
                "UserSession": {},
                "BotUserSession": {}
            }
        }
    }, {
        "uxmap": {
            "channel": "default",
            "body": "<%    var newLink = '' + title + '';\n  print(newLink);  %><%print(\"
\");%><% %>"
        },
        "payload": "{\"title\":[\"Mallya PMLA case: Court confirms Rs 1,411 attachment order\"],\"link\":[\"http://www.moneycontrol.com/news/business/mallya-pmla-case-court-confirms-rs-1411-attachment-order_8058581.html\"],\"description\":[\" A special anti-money laundering\\r\\ncourt here has confirmed an attachment of assets order worth\\r\\nRs 1,411 crore issued by the ED against UBHL and others in\\r\\nconnection with its money laundering probe against liquor\\r\\nbaron Vijay Mallya and others.\"],\"pubDate\":[\"Fri, 02 Dec 2016 22:00:03 +0530\"],\"guid\":[\"http://www.moneycontrol.com/news/business/mallya-pmla-case-court-confirms-rs-1411-attachment-order_8058581.html\"],\"hash\":\"ca41e9749166e2c0b47191460289b6b3\",\"_fields_\":{\"channel\":\"latestnews\"},\"_labels_\":{\"channel\":\"Latest News\"},\"secretKey\":\"n-5bd95008-81be-56d1-9030-0eafbf36a10d\",\"contentType\":\"application/xml\",\"_last_run\":\"2016-12-02T16:50:45.363Z\"}",
        "response": {
            "channel": "default",
            "body": "Mallya PMLA case: Court confirms Rs 1,411 attachment order
",
            "updatedSessionStore": {
                "EnterpriseContext": {},
                "BotContext": {},
                "UserContext": {},
                "UserSession": {},
                "BotUserSession": {}
            }
        }
    }, {
        "uxmap": {
            "channel": "default",
            "body": "<%    var newLink = " + title + ";\n  print(newLink);  %><%print(\"
\");%><% %>"
        },
        "payload": "{\"title\":[\"Cash crunch not a worry for grocery e-tailer BigBasket\"],\"link\":[\"http://www.moneycontrol.com/news/business/cash-crunch-notworry-for-grocery-e-tailer-bigbasket_8058601.html\"],\"description\":[\" While the demonetisation scheme is acting as a hurdle for many sectors, for BigBasket it is a blessing in disguise. The company has upped its revenue projection by 20 percent in the financial year 2017. \"],\"pubDate\":[\"Fri, 02 Dec 2016 22:13:12 +0530\"],\"guid\":[\"http://www.moneycontrol.com/news/business/cash-crunch-notworry-for-grocery-e-tailer-bigbasket_8058601.html\"],\"hash\":\"6f5635c0d5e19f73f8690859a4bd4f1d\",\"_fields_\":{\"channel\":\"latestnews\"},\"_labels_\":{\"channel\":\"Latest News\"},\"secretKey\":\"n-5bd95008-81be-56d1-9030-0eafbf36a10d\",\"contentType\":\"application/xml\",\"_last_run\":\"2016-12-02T16:50:45.363Z\"}",
        "response": {
            "channel": "default",
            "body": "Cash crunch not a worry for grocery e-tailer BigBasket
",
            "updatedSessionStore": {
                "EnterpriseContext": {},
                "BotContext": {},
                "UserContext": {},
                "UserSession": {},
                "BotUserSession": {}
            }
        }
    }]
}
```