# Wallboards

## Overview

Wallboards enhance the ability to oversee operations efficiently and effectively. Contact Center Administrators and Supervisors can create, edit, and delete the wallboards. Their fixed, high-resolution display ensures that users can access clear and consistent information, suitable for high-definition screens and full-screen viewing.

## Launch Wallboard

Steps to launch the wallboard:

1. Click the (**...**) icon and click **Launch Wallboard**. The Wallboard is displayed in a new browser tab.  
    <img src="../images/ccai-launch-wallboard.png" alt="Launch Wallboard" title="Launch Wallboard" style="border: 1px solid gray; zoom:80%;">

    You can also access wallboards by going to **Contact Center AI** > **Analytics** > **CONTACT CENTER** > **Wallboards**.  
        <img src="../images/ccai-analytics-wallboards.png" alt="Wallboards Page" title="Wallboards Page" style="border: 1px solid gray; zoom:80%;">

2. The data on the dashboard is refreshed after 60 seconds. The data in the live widgets refreshes every second.  
    <img src="../images/ccai-center-wide-wallboard.png" alt="Centerwide Wallboard" title="Centerwide Wallboard" style="border: 1px solid gray; zoom:80%;">

### Wallboard Widgets

The following widgets on the wallboard show data related to the KPIs of the contact center for the configured time duration.

* The wallboard name is displayed at the top of the wallboard.  
    <img src="../images/ccai-wallboard-name.png" alt="Wallboard Name" title="Wallboard Name" style="border: 1px solid gray; zoom:80%;">

* The top section of the wallboard shows the following widgets:  
    <img src="../images/ccai-top-widets.png" alt="Top Widgets" title="Top Widgets" style="border: 1px solid gray; zoom:80%;">

<table>
  <tr>
   <td>
<strong>Name</strong>
   </td>
   <td><strong>Live/Time based</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td>Waiting
   </td>
   <td>Live
   </td>
   <td>Count of all conversations waiting in all queues.
   </td>
  </tr>
  <tr>
   <td>With Agent
   </td>
   <td>Live
   </td>
   <td>Count of all conversations currently with Agents.
   </td>
  </tr>
  <tr>
   <td>Longest Wait
   </td>
   <td>Live
   </td>
   <td>Duration of the longest wait of any conversation currently in a waiting state.
   </td>
  </tr>
  <tr>
   <td>Overdue
   </td>
   <td>Live
   </td>
   <td>Count of all conversations currently overdue with Agents.
   </td>
  </tr>
  <tr>
   <td>Handled
   </td>
   <td>Time-based
   </td>
   <td>Count of all conversations handled (completed) by the contact center.
   </td>
  </tr>
  <tr>
   <td>Closed
   </td>
   <td>Time-based
   </td>
   <td>Count of all conversations closed properly by agents at the contact center.
   </td>
  </tr>
  <tr>
   <td>Abandoned
   </td>
   <td>Time-based
   </td>
   <td>Count of all conversations abandoned by users in queues.
   </td>
  </tr>
  <tr>
   <td>Avg. Speed To Answer (ASA)
   </td>
   <td>Time-based
   </td>
   <td>ASA of all conversations.
   </td>
  </tr>
</table>

* The bottom section of the wallboard shows the following data related to the queues.  
    <img src="../images/ccai-bottom-table.png" alt="Bottom Table" title="Bottom Table" style="border: 1px solid gray; zoom:80%;">

<table>
  <tr>
   <td>
<strong>Name</strong>
   </td>
   <td><strong>Live/Time based</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td>Queues
   </td>
   <td>NA
   </td>
   <td>Names of the configured queues.
   </td>
  </tr>
  <tr>
   <td>Offered
   </td>
   <td>Time-based
   </td>
   <td>Count of all conversations offered in the queue.
   </td>
  </tr>
  <tr>
   <td>Waiting
   </td>
   <td>Live
   </td>
   <td>Count of all conversations waiting in the queue.
   </td>
  </tr>
  <tr>
   <td>Load
   </td>
   <td>Live
   </td>
   <td>The current load on the queue in percentage.
   </td>
  </tr>
  <tr>
   <td>CSAT
   </td>
   <td>Time-based
   </td>
   <td>Average CSAT of all conversations in this queue/count of all conversations with CSAT in the queue.
   </td>
  </tr>
  <tr>
   <td>Long Wait
   </td>
   <td>Live
   </td>
   <td>Duration of the longest wait by any conversation currently waiting in the queue.
   </td>
  </tr>
  <tr>
   <td>Closed
   </td>
   <td>Time-based
   </td>
   <td>Count of conversations closed properly in the queue.
   </td>
  </tr>
</table>

* If the enable scroll text toggle is turned on, the configured text displays at the bottom of the page at the selected speed.  
    <img src="../images/ccai-marquee-text.gif" alt="Marquee Text" title="Marquee Text" style="border: 1px solid gray; zoom:80%;">

#### Related Link

* [Configure Wallboards](../../contactcenter/configurations/wallboards/configure-wallboards.md)