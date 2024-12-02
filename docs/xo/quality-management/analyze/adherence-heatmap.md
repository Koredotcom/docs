# Adherence Heatmap

The **Adherence Heatmap** feature helps supervisors visualize trends in agent adherence to specific metrics over time. It highlights the number of interactions along with the adherence percentages, specifically where agents fail to meet set metrics. This allows you to filter out non-compliant interactions. By analyzing the heatmap, you can easily identify problem areas, monitor agent compliance across evaluation forms or queues, and pinpoint agents who need special attention. This provides valuable insights, enabling supervisors to make informed decisions and take targeted actions for agents improvement. 

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

    * The % adherence for each tile (box) in the heatmap is calculated based on evaluation form, agent, and date range.
* **Applicability of metrics** 

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
    * In the Weekly view, hovering over the tile shows the date range used for the adherence calculation, along with the percentage and the number of interactions.  
        <img src="../adher-heatmap/images/tile-display.png" alt="Agent Leaderboard" title="Agent Leaderboard" style="border: 1px solid gray; zoom:100%;">

## Filters

This allows supervisors to drill down into agent performance based on selected criteria chosen. This outlines the following filter types based on the form, date range, and agent selected.

**Date Range Filter**

You can filter by a specific date range. The default range, based on queue selection, is the last 7 days. Timezone settings are based on the user's system time zone.  
<img src="../adher-heatmap/images/date-range-view.png" alt="Agent Leaderboard" title="Agent Leaderboard" style="border: 1px solid gray; zoom:100%;">

**Date Range View**: 

You can select from three views (Daily, Weekly, and a Custom range):

* **Daily View**: When the selected date range is 1-14 days, and each tile shows adherence for a specific day, with a horizontal scroll option if the date range is more than 7 days.
* **Weekly View**: When the selected range is more than 14 days, and each tile shows adherence for the full week, with similar scrolling and display logic as the daily view.

**Evaluation Form**

This allows you to select forms across all queues that agents are part of. You can set a form as the default, which will be persisted across sessions (heatmap page and the QA dashboard). If a different form is marked as default, it will replace the previous selection.  
<img src="../adher-heatmap/images/eva-form.png" alt="Agent Leaderboard" title="Agent Leaderboard" style="border: 1px solid gray; zoom:100%;"> 

**Agent**

By default, all agents in the selected queues get displayed. In this, all agents under the queues that the selected form is assigned are displayed. You can search, multi-select agents by name, and apply filters accordingly. When the agent filters are applied, the adherence heatmap is recalculated for the selected agents within the selected queue. This displays the adherence data only for the selected agents and their completed interactions.  
<img src="../adher-heatmap/images/agents-list.png" alt="Agent Leaderboard" title="Agent Leaderboard" style="border: 1px solid gray; zoom:100%;"> 

!!! Note

    Only the tiles within the visible date range will be shown, and the others will be greyed-out. The date marker for these greyed-out dates will not appear at the top of the map.

The clickable date range tiles (each box is a metric) display the interactions for the selected agents, showing the following metrics for each date:  
<img src="../adher-heatmap/images/no-interaction.png" alt="Agent Leaderboard" title="Agent Leaderboard" style="border: 1px solid gray; zoom:100%;"> 

* **Heatmap Interaction**: Click a date range tile (box) in the heatmap to open a window that displays agent-wise adherence for the selected metric, ordered from least to most adherence. This displays the count of adherence interactions.
* **Adherence Display**: Adherence percentages are shown within colored boxes, with color matching the heatmap’s color scheme. You can sort the adherence column by percentage, defaulting to the least adherence first.
* **View Interactions**: Click the **View Interactions** button, which directs you to the [Conversation Mining](https://docs.google.com/document/u/0/d/1Ushu0NJ27_Fml-1Iqgib-uVccol8jY0ZV4xdvJCnmDk/edit) page, where you can see all interactions across agents within the selected date range where the evaluation metric name, queue name, and metric qualification (fail). This shows the Total number of interactions of the evaluation metrics for the selected agents

By clicking any agent’s name to filter the heatmap for that agent within the selected date range, while closing the window.  
<img src="../adher-heatmap/images/view-interactions.png" alt="Agent Leaderboard" title="Agent Leaderboard" style="border: 1px solid gray; zoom:100%;"> 

The following filters are available for **View Interactions**:

* The selected date range
* The clicked agent
* The relevant queues and metric/form
* Interactions where adherence to the selected metric is not met

Clicking the **View Interactions** button takes you to the **Conversation Mining **page, where you can see all the failed interactions of the agents. By selecting the Unsaved filter, you can see the passed/failed metrics in relevant queues, based on the selected date range.

**Action**: 

* **Agent filter**: Clicking any agent filter icon automatically filters the metrics for that agent within the selected date range, as shown on the next screen, based on the agent selected in the **View Interactions** screen.

* **Filter Interaction**: Clicking any agent interaction icon filters that agent's interactions within the selected date range, as shown on the following screen, based on the agent chosen in the **View Interactions** screen.

    **QA Dashboard**: This displays the condensed version of the heatmap, which is available in the QA Dashboard, showing only the last 7 days, with a default form selection and no clickthrough functionality. In this, you can select a form from the drop-down and mark it as default within the QA Dashboard.   
    <img src="../adher-heatmap/images/conv-mining.png" alt="Agent Leaderboard" title="Agent Leaderboard" style="border: 1px solid gray; zoom:100%;"> 
