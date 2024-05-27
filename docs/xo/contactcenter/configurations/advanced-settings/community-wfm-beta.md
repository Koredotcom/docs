# Community WFM [Beta]

The Community WFM solution assists with forecasting, scheduling, strategically allocating resources, tracking attendance, and complying with constantly changing workplace regulations and reporting capability.

Contact Center AI integrates natively with the Community WFM application to provide the following features and functionalities

| Features                                    | Functionalities |
|---------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Forecasting                                 | - Skill-based Omnichannel forecasting with media-type service metrics <br>- User-definable data selection for forecasting <br>- Supports time of day and day of week shrinkage and service objectives <br>- Unlimited forecasts for the same date range and the creation of future forecasts                                                                                                                                            |
| Scheduling                                  | - Fast and accurate schedule optimization – fixed, floating, and rotating schedules <br>- Intraday schedule re-optimization of selected events <br>- Fully automated end-to-end scheduling bidding <br>- Schedule efficiency measurement and user-adjustable cost vs. coverage analysis                                                                                                                                                      |
| Automated Schedule Attendance Monitor (ASAM)| - ASAM is integrated with the phone system and the agent mobile app which provides an automated and streamlined approach to tracking agent arrival and attendance <br>- The Attendance Monitor in ASAM allows supervisors to view agents arriving at specific time intervals <br>- The Arrival Detail Console provides a dashboard of an agent’s status while streamlining the process of managing exceptions                          |
| Automated Schedule Adjustment Plans (ASAP)  | - ASAP provides a one-of-a-kind toolkit that enables analysts to create, save, and reuse an unlimited number of customizable strategies <br>- This on-demand feature allows analysts to increase, decrease or refine staffing levels, virtually eliminating time-consuming schedule modification processes                                                                                                                              |
| Reporting                                   | - Community WFM offers a comprehensive set of reports that provide the KPIs necessary for efficient WFM execution. Additionally, users can create custom reports and export data to other applications. The report pack contains multiple reports organized into the following classes: <br>  - Contact Volume reports <br>  - Published Forecast reports <br>  - Published Schedule reports <br>  - Intraday Analysis reports <br>  - Schedule Adherence reports <br>  - Administrative reports |

## Integrating Contact Center AI With Community WFM

Contact Center AI natively integrates with the Community WFM application.

!!! Note

    This feature is currently in Beta, and may contain bugs, unfinished work, or rough edges. Our product team is actively working on improving this feature, and we encourage you to try it and share your valuable feedback at support@kore.ai.

### Prerequisite

Before configuring the integration, note that the following Community WFM details are available in the Purchase Order agreement:

* Base URL,
* Account ID,
* API key.

### Configure and Enable Community WFM

1. Go to **CONFIGURATIONS** > **Advanced Settings** > **Community WFM [Beta]**.
2. Click **Community WFM**.  
<img src="../images/community-wfm.png" alt="Community WFM" title="Community WFM" style="border: 1px solid gray; zoom:80%;">

3. Provide the Community WFM details, including the **Base URL**, **Account ID**, and **API key**.  
<img src="../images/input-details-community-wfm.png" alt="Base URL, Account ID, and API key" title="Base URL, Account ID, and API key" style="border: 1px solid gray; zoom:80%;">

4. Community WFM includes Machine Learning models that analyze data and forecast future call volumes. To use this feature, you can enable data sharing from Contact Center AI to Community WFM by turning on the **Data sync** toggle. (Optional)  
<img src="../images/data-sync-toggle.png" alt="Base URL, Account ID, and API key" title="Base URL, Account ID, and API key" style="border: 1px solid gray; zoom:80%;">  

    !!! Note

        The system enables data sync from the current day onwards and does not sync the past data.
5. Click **Save**.

### Stop Data Sharing

You can disable data sharing by turning off the **Data sync** toggle.  
<img src="../images/data-sync-off-confirmation.png" alt="Data Sync Off Cofirmation" title="Data Sync Off Cofirmation" style="border: 1px solid gray; zoom:80%;">

Once you confirm, the data sync is disabled, and the data exchange between Contact Center AI and Community WFM stops.

For more information on Community WFM, visit: [https://www.communitywfm.com/](https://www.communitywfm.com/)
