# Dashboard

!!! Note

    This page refers to the Dashboard page of the Admin Console, for information on the Analytics Dashboard of the XO Platform refer here.

Upon accessing the [Admin Console](adminconsole.md){:target="_blank"}, you will be directed to its Dashboard page.

The **Dashboard** page of the Admin Console provides information related to assistant activity and a user overview of your company account.


## Dashboard Metrics

### Real-time Status

This gives an overview of your entire enterprise account at a given point in time. It is set to refresh every 10 minutes, which can be customized using the dropdown.

The Real Time Status includes:

* **Active Bots** – assistants that have one or more active sessions. Clicking on the expand arrow displays the name of the Active Bot along with the number of users interacting with it.
* **Active Channels** – clicking on the card expands the list of active channels along with the number of users using the same.
* **Active Agent Sessions** – agent sessions that are in progress at a given instance.


### Bot Metrics

By default, Bot metrics based on usage of **all bots** during the **last 24 hours** is displayed. You can customize the metrics displayed by the time period and bot selection.

Select the **Bot** for which you want to see the metrics and further select a **Task**(multiple selections allowed) within the assistant if needed. By default, the metrics for all Bots are displayed

The **Time Periods** you can select are:

* **7 Days** – Data aggregated over the past seven days is displayed.
* **24 Hours** – Data aggregated during the preceding 24 hours is displayed. This is the default setting.
* **Custom** – Click to display the Custom Date Range dialog that you can use to define a specific date period – start date, and the end data for displaying activity data. Selection up to a maximum of 90 days preceding the current date is allowed.
    * **Filters** can be applied to display Metrics for the following:
        * **conversation session type** (introduced in ver 8.0 – [see here for more details on the conversation sessions](../app-settings/advanced-settings/bot-sessions.md){:target="_blank"}) can be either one or both (default setting) of the following:
            * _interactive sessions_ – the conversation which include one or more messages from the user;
            * _non-interactive sessions_ – conversations where only assistant messages are presented without any message from the user;
        
        * over a specified **Channel;**
        * based upon the **meta tags** added at a message, user, or session levels. Multiple tags can be selected wherein the _‘AND’_ condition is applied ([see below](#tag-based-filters) for the applicability of the filter on widgets).

Bot Metrics provide access to the following information:

* An overview of the number of successfully **Completed Tasks**, **Total Users** (unique users) who have interacted with the assistant, and number of **Alerts Sent** is displayed.
* A graphic illustration of the **Messages and Conversation Sessions** by the hour. This includes
    * **Number of Messages** per hour/day based upon the time period selected. A message is defined as an interaction between the user and the assistant.
    * The number of **Conversation Sessions** per hour/day based upon the time period selected – Conversation Session is defined as the uninterrupted exchange of messages between the user and the assistant without change of intent even after a considerable idle time based on the assistant’s settings ([refer here for sessions configuration](../app-settings/advanced-settings/bot-sessions.md){:target="_blank"}).

* A chart depicting the **Billing Sessions** by the hour/day based upon the time period selected. These are the number of 15-minute uninterrupted volleys constituting a billing cycle.
* Hourly (or Daily) details of the **Successful Tasks** and **Active User** is displayed.
* The activity related to Successful Tasks, assistants used, and Active Users are also displayed.

<img src="../images/admin-console-dashboard-img1.png" alt="Bot metrics" title="Bot metrics" style="border: 1px solid gray;zoom:50%;"/>


## Tag based Filters

Post ver7.1 release of the XO Platform, you can filter the dashboard using meta tags added at a message, user or session levels. Multiple tags can be selected under the filter criteria, an ‘_and_‘ condition will be applied across multiple fields selected for filtering.

!!! Note

    This option is available only when one assistant is selected. Tag selection will be reset if you change the selection.

The following table provides the widget-wise applicability of meta tags on the dashboard.

| WIDGET TYPE                       | SESSION TAGS | USER TAGS | MESSAGE TAGS        |
|----------------------------------|--------------|-----------|---------------------|
| Realtime Widgets                 | Not Applicable | Not Applicable | Not Applicable |
| Completed Tasks                  | Applicable    | Applicable | Not Applicable |
| Alerts Sent                      | Applicable    | Applicable | Not Applicable |
| Total Users                      | Applicable    | Applicable | Not Applicable |
| Messages & Conversation Sessions | Applicable    | Applicable | Applicable for Chats |
| Successful Tasks                 | Applicable    | Applicable | Not Applicable |
| Active Users                     | Applicable    | Applicable | Not Applicable |
| Bots Used                        | Applicable    | Applicable | Not Applicable |
| Sessions Count                   | Not Applicable | Not Applicable | Not Applicable |