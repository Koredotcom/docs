# Dashboard

The campaign dashboard allows campaign managers to track the progress and other essential metrics related to campaigns.

To access dashboards, go to **Contact Center AI** > **Campaigns** > **Dashboard**.
<img src="../images/dashboard-main-page.png" alt="Dashboard Page" title="Dashboard Page" style="border: 1px solid gray; zoom:80%;">

The following details related to campaigns are displayed on the dashboard:

1. **Campaign name** - Name of the campaign. For example: Campaign 1.
2. **Campaign type** - Agentless.
3. **Progress** - Progress of the campaign. For example: 3 of 10.
4. **Status** - Ready, Active, Paused, Rerun, or Completed.
5. **Campaign Start Date and Time** - Date and Time when the campaign started. For example: Started on Sep 29th, 2023 11:03 am
<img src="../images/campaign-details-dashboard.png" alt="Campaign Details" title="Campaign Details" style="border: 1px solid gray; zoom:80%;">

    Clicking any campaign displays detailed information related to the selected campaign.
    <img src="../images/campaign-dashboard-detailed.png" alt="Campaign Metrics" title="Campaign Metrics" style="border: 1px solid gray; zoom:80%;">

## Agentless Dialer

### Overview

This section displays the following information:

* **Progress** - Progress of the campaign.

* **Connected Calls** - Count and percentage of connected calls.

* **Unconnected Calls** - Count and percentage of unconnected calls, including calls that go into the retry state.

* **Avg. Call Duration** - Average Duration of all the connected calls in the campaign.

### Disposition

This section displays the following information:

**Outbound Dialer System Disposition** - The following dispositions are assigned by the dialer system:

* **Connected**: If the call is answered, a human voice or voicemail is detected.
* **No Answer**: No answer after a full ring.
* **Busy**: If the dialed number is busy.
* **Failed**: If the call was dialed but not connected or the call couldn’t be dialed as the number is invalid.
* **Canceled**: If the call was canceled by the customer.
* **Completed**: If the call is answered, then disconnected by the agent, and a disposition is included.
* **Agent Disposition (Top 5)**- Top 5 dispositions selected by agents.

Related Link

* [Dialer Campaign History Report](../../../analytics/contact-center/reports/dialer-campaign-history-report.md)