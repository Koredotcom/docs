# Adherence Heatmap

The **Adherence Heatmap** feature helps supervisors visualize trends in agent adherence to specific metrics over time. It highlights the number of interactions along with the adherence percentages, specifically where agents fail to meet set metrics. This allows you to filter out non-compliant interactions. By analyzing the heatmap, you can easily identify problem areas, monitor agent compliance across evaluation forms or queues, and pinpoint agents who need special attention. This provides valuable insights, enabling supervisors to make informed decisions and take targeted actions for agents improvement. Additionally, you can multi-select languages from the All Languages drop-down menu.

You can access **Adherence Heatmap** by navigating to **Contact Center AI** > **Quality AI** > **Analyze** > **Adherence Heatmap**.
<img src="../adher-heatmap/images/adherence-heatmap-landing-page.png" alt="Agent Leaderboard" title="Agent Leaderboard" style="border: 1px solid gray; zoom:100%;">

!!! Note

    To view this feature, you must enable **Auto QA** in the **Settings**.

From the drop-down list, you can select an evaluation form to visualize the adherence metrics in the heatmap.  

The adherence heatmap has the following key sections:

## Visualization Basis

This outlines how adherence metrics are displayed and calculated for a selected form across different date ranges. 

* **Adherence % Calculation**

    This is calculated by comparing:  
    <img src="../adher-heatmap/images/adher-calc.png" alt="Agent Leaderboard" title="Agent Leaderboard" style="border: 1px solid gray; zoom:100%;">

    The % adherence for each tile (box) in the heatmap is calculated based on evaluation form, agent, and date range. 

* **Applicability of Metrics** 

    This depends on the form of the queue selected.

    * For static metrics (by question), the metric applies to all terminated or failed interactions in the respective queue (form).
    * For dynamic metrics (by question), the metric applies only when the relevant trigger is detected; if the trigger is missing, the metric is not applicable.

* **Color Coding & Display** 

    This displays the heatmap tile (box) color based on the calculated adherence %.

    Each tile is colored based on the adherence percentage. 

    Red means 0%, green means 100%, and the color gradually changes in 10% steps between red and green. Grey is used when the adherence percentage is not applicable.  
        <img src="../adher-heatmap/images/color-coding -bar.png" alt="Agent Leaderboard" title="Agent Leaderboard" style="border: 1px solid gray; zoom:100%;">

* **Hover Tooltip**

    This displays the **% adherence** and the **number of calls adhered** to for each date range selected.

    * If there are no interactions for a selected date range and filter, it does not display any interactions.  
        <img src="../adher-heatmap/images/no-interaction.png" alt="No Interaction" title="No Interaction" style="border: 1px solid gray; zoom:100%;">

    * In the Weekly view, hovering over the tile shows the date range used for the adherence calculation, along with the adherence percentage, interactions adhered, and the total number of interactions. Weekly view is displayed when you select more than 7 days from the Calendar.  
        <img src="../adher-heatmap/images/weekly-view.png" alt="Weekly View" title="Weekly View" style="border: 1px solid gray; zoom:100%;">

## Filters

This allows supervisors to drill down into agent performance based on selected criteria chosen. This outlines the following filter types based on the form, date range, and agent selected. 

**Date Range Filter**

You can filter data within a specific date range. By default, the range is set to the last 7 days, depending on the selected queue. Timezone settings are based on the user's system time zone.
<img src="../adher-heatmap/images/date-range-view.png" alt="Agent Leaderboard" title="Agent Leaderboard" style="border: 1px solid gray; zoom:100%;">

**Date Range View**: 

You can select from three views (Daily, Weekly, and a Custom range):

* **Daily View**: When the selected date range is 1-14 days, and each tile shows adherence for a specific day, with a horizontal scroll option if the date range is more than 7 days.  
<img src="../adher-heatmap/images/daily-view.png" alt="Daily View" title="Daily View" style="border: 1px solid gray; zoom:100%;">

* **Weekly View**: When the selected range is more than 14 days, and each tile shows adherence for the full week, with similar scrolling and display logic as the daily view.  
<img src="../adher-heatmap/images/weekly-view.png" alt="Weekly View" title="Weekly View" style="border: 1px solid gray; zoom:100%;">

* **Custom Range View**: All interaction data from the given date (12:00:00 AM to 11:59:59 PM), in the agent’s time zone, limited to **31** days.  
<img src="../adher-heatmap/images/custom-range-view.png" alt="Custom Range View" title="Custom Range View" style="border: 1px solid gray; zoom:100%;">

**Evaluation Form**

This allows you to select forms across all queues that agents are part of. You can set a form as the default, which will be persisted across sessions (heatmap page and the QA dashboard). If a different form is marked as default, it will replace the previous selection.  
<img src="../adher-heatmap/images/eva-form.png" alt="Agent Leaderboard" title="Agent Leaderboard" style="border: 1px solid gray; zoom:100%;"> 

**Agent**

By default, all agents in the selected queues get displayed. In this, all agents under the queues that the selected form is assigned are displayed. You can search, multi-select agents by name, and apply filters accordingly. When the agent filters are applied, the adherence heatmap is recalculated for the selected agents within the selected queue. This displays the adherence data only for the selected agents and their completed interactions.  
<img src="../adher-heatmap/images/agents-list.png" alt="Agent Leaderboard" title="Agent Leaderboard" style="border: 1px solid gray; zoom:100%;"> 

!!! Note

    Only the tiles within the visible date range will be shown, and the others will be greyed-out. The date marker for these greyed-out dates will not appear at the top of the map.   
 <img src="../adher-heatmap/images/greyed-out-tiles.png" alt="Greyed-out" title="Greyed-out" style="border: 1px solid gray; zoom:100%;"> 

## Click-through Functionality

This describes the functionality of a heatmap interface for tracking agent adherence to specific metrics over a selected date range (selected agent, date range, and adherence status).  
<img src="../adher-heatmap/images/click-through.png" alt="Agent Leaderboard" title="Agent Leaderboard" style="border: 1px solid gray; zoom:100%;"> 

The clickable date range tiles (each box is a metric) display the interactions for the selected agents, showing the following metrics for each date:  

* **Adherence Display**: Adherence percentages are shown within colored boxes, with color matching the heatmap’s color scheme. You can sort the adherence column by percentage, defaulting to the least adherence first.   
<img src="../adher-heatmap/images/adherence-percentage-column-sorting.png" alt="Adherence Display" title="Adherence Display" style="border: 1px solid gray; zoom:100%;"> 

* **Heatmap Interaction**: Click a date range tile (box) in the heatmap to open a window that displays agent-wise adherence percentage for the selected metric, ordered from least to most adherence. This displays the percentage count of adherence interactions.
<img src="../adher-heatmap/images/adherence-percentage-count.png" alt="Heatmap Interaction" title="Heatmap Interaction" style="border: 1px solid gray; zoom:100%;"> 

* **View Interactions**: Click the **View Interactions** button, which directs you to the [Conversation Mining](https://docs.google.com/document/u/0/d/1Ushu0NJ27_Fml-1Iqgib-uVccol8jY0ZV4xdvJCnmDk/edit) page, where you can view all the agents' failed interactions. The applied filters (as **Unsaved**) include the evaluation metric name or metric used, queues, and metric qualification or the number of failed interactions (pass/fail).  
<img src="../adher-heatmap/images/conv-mining-failed-interactions.png" alt="View Interactions" title="View Interactions" style="border: 1px solid gray; zoom:100%;"> 

**View Interactions Filter Parameters**

Following are the filter parameters of **View Interactions**:

* Displays agents' names at the end of the list who do not have any applicable interactions for that metric.  
<img src="../adher-heatmap/images/not-applicable.png" alt="No Applicable Interaction" title="No Applicable Interaction" style="border: 1px solid gray; zoom:100%;"> 

* Displays “No interactions” for N/A cases and “No failed interactions” for agents with 100% adherence. The "View Interactions" button gets disabled for agents with no applicable interactions or those with 100% adherence.  

<img src="../adher-heatmap/images/no-interactions-with-failed-interactions.png" alt="No Interactions" title="No Interactions" style="border: 1px solid gray; zoom:100%;"> 

!!!Note

    * By clicking the **View Interaction** button, users get redirected from the **Adherence Heatmap** to the **Conversation Mining** page, where they can view failed interactions and see the tags that explain the filtering criteria in the **Conversation Mining** page based on the metric clicked-through.

    <img src="../adher-heatmap/images/conv-mining-interaction-notification-tag.png" alt="No Interactions" title="No Interactions" style="border: 1px solid gray; zoom:100%;"> 
       
    * All these notification tags are shown only when the agent navigates to **Conversation Mining** from **Adherence Heatmap**, and not directly in the **Conversation Mining** page. 

**Action**: 

* **Filter Heatmap by Agent**: By clicking this icon, you can filter the heatmap metrics of any individual agent within a selected date range as displayed in the following **View Interactions** screen.  
<img src="../adher-heatmap/images/heatmap-by-agent.png" alt="Filter Heatmap by Agent" title="Filter Heatmap by Agent" style="border: 1px solid gray; zoom:100%;"> 

* **View Failed Interactions in Conversation Mining**: By clicking on any agent interaction icon filter will take you to the **Adherence Heatmap** page, displaying data for the selected agent.    
<img src="../adher-heatmap/images/no-failed-interactions.png" alt="No Interactions" title="No Interactions" style="border: 1px solid gray; zoom:100%;"> 

**QA or Supervisor Dashboard**: This displays a simplified version of the **Adherence Heatmap** from the QA Dashboard that displays data for the last 7 days with a default evaluation form selection, and no click-through functionality. You can choose an evaluation form from the drop-down menu, and set it as the default within the QA Dashboard. For more information, see [Supervisor Dashboard](https://docsinternal-kore.github.io/docs/xo/quality-management/analyze/dashboard/#adherence-heat-map).
