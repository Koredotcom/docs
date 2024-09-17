# Agent Login Logout Summary Report

## Generating the Agent Login Logout Summary Report

Agent Login Logout Summary Report is a detailed report of an agent’s login and logout events.

Steps to generate the Agent Login Logout Summary Report:

1. On the Reports tab, click **New Report**.
2. In the list of reports, Select the Agent Login Logout Summary Report.
3. Enter the **Report Name** and **Report Description**.
4. Select a **Time Period**.
5. Select **Data Filters**.
6. Select Report Generation and choose from the following options::
    * Schedule
        * Run On Demand
        * Schedule
    * Select Format
        * PDF
        * CSV
    * Send To (single email address or a mailing list)
7. Click **Create**.
8. The **Agent Login Logout Summary Report** is generated.
<img src="../images/agent-login-logout-report-created.png" alt="Agent Login Logout Summary Report Created" title="Agent Login Logout Summary Report Created" style="border: 1px solid gray; zoom:100%;">

9. Click the **Run** icon as shown below to generate the report.
<img src="../images/run-login-logout-summary-report.png" alt="Run Agent Login Logout Summary Report" title="Create Agent Login Logout Summary Report" style="border: 1px solid gray; zoom:100%;">

While generating reports you have two options, Run On Demand and Schedule.

**Run On Demand**: While creating a new report or editing an existing report, the schedule of the report can be set to run on demand.

**Schedule**: While creating a new report or editing an existing report, the schedule of the report can be changed. The use of the schedule is the standard way to generate a report. If the report is scheduled for later then it will automatically be generated on the scheduled day and time without the need to click Run.

10. First, the report object is configured (as PDF) and then the report output is generated as PDF.
Click the **PDF/Page** icon to download the report.
<img src="../reports/images/pdf-agent-login-logout-summary.png" alt="PDF Agent Login Logout Report" title="PDF Agent Login Logout Report" style="border: 1px solid gray; zoom:100%;">

    !!! Note

        The red dot beside the report indicates that it was generated within the last 24 hours. You can download, save, and view the report in PDF format.

The Agent Login Logout Summary Report is generated and available for download.
<img src="../images/agent-login-logout-summary-report-output.png" alt="Agent Login Logout Summary Report Output" title="Agent Login Logout Summary Report Output" style="border: 1px solid gray; zoom:100%;">

### About Report Fields

  <tr>
   <td>**FIELD**

   </td>
   <td>**DESCRIPTION**

   </td>
   <td>**EXAMPLE**

   </td>
  </tr>
  <tr>
   <td>Login

   </td>
   <td>DateTime at which the Agent logged in, starting a new session.

   </td>
   <td>“01/06/23 15:57:17”

   </td>
  </tr>
  <tr>
   <td>Logout

   </td>
   <td>DateTime at which the Agent logged out, ending a session.

   </td>
   <td>“01/06/23 15:57:17”

   </td>
  </tr>
  <tr>
   <td>Duration

   </td>
   <td>Duration of the Session (Logout – Login).

   </td>
   <td>“64:39:22”

   </td>
  </tr>

#### Related Link

* [Reports List](../reports/reports-list.md)