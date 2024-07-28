# Dashboard

The campaign dashboard allows campaign managers to track the progress and other essential metrics related to campaigns.

To access dashboards, go to **Contact Center AI** > **Campaigns** > **Dashboard**.
<img src="../images/dashboard-main-page.png" alt="Dashboard Page" title="Dashboard Page" style="border: 1px solid gray; zoom:80%;">

The following details related to campaigns are displayed on the dashboard:

1. **Campaign name** - Name of the campaign. For example: Campaign 1.
2. **Campaign type** - Agentless (Voice campaigns only)
3. **Progress** - Progress of the campaign. For example: 3 of 10.
4. **Status** - Ready, Active, Paused, Rerun, or Completed.
5. **Campaign Start Date and Time** - Date and Time when the campaign started. For example: Started on Sep 29<sup>th</sup>, 2023 11:03 am

Clicking any campaign displays detailed information related to the selected campaign.

### Voice Campaigns

<img src="../images/campaign-details-dashboard.png" alt="Voice Campaign Details" title="Voice Campaign Details" style="border: 1px solid gray; zoom:80%;">  

Campaign Name: Agentless

#### Overview

This section displays the following information:

* **Progress** - Progress of the campaign.
* **Connected Calls** - Count and percentage of connected calls.
* **Unconnected Calls** - Count and percentage of unconnected calls, including calls that go into the retry state.
* **Avg. Call Duration** - Average Duration of all the connected calls in the campaign.

#### Disposition

This section displays the following information:

**Outbound Dialer System Disposition** - The following dispositions are assigned by the dialer system:

* **Connected**: If the call is answered, a human voice or voicemail is detected.
* **No Answer**: No answer after a full ring.
* **Busy**: If the dialed number is busy.
* **Failed**: If the call was dialed but not connected or couldn’t be dialed as the number is invalid.
* **Canceled**: If the customer canceled the call.
* **Completed**: If the call is answered, then the agent disconnects it, and a disposition is included.
* **Agent Disposition (Top 5)**- Top 5 dispositions selected by agents.

Hovering over the dispositions shows their counts.

### SMS Campaigns

<img src="../images/sms-campaign-detailed.png" alt="SMS Campaign Details" title="Voice Campaign Details" style="border: 1px solid gray; zoom:80%;">  

Campaign Name: Up-sell of Feature

#### Overview

This section displays the following information:

* **Progress** - Progress of the campaign.
* **Messages Delivered** - Total count of messages delivered in the campaign.
* **Delivery Rate** - The percentage of SMS sent and received by recipients (SMS received/SMS sent X 100).

#### Messages Delivered

This section displays the total count of messages delivered. You can select from the following options:

* Last 24 hours
* Last 07 days
* Last 30 days

Hovering over the hours/days shows the count of messages delivered and the delivery rate.  
<img src="../images/hover-over-details.png" alt="SMS Campaign Dashboard Hover" title="Voice Campaign Dashboard Hover" style="border: 1px solid gray; zoom:80%;"> 

Related Link

* [Dialer Campaign History Report](../../../analytics/contact-center/reports/dialer-campaign-history-report.md)