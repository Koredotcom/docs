# Defining a Fixed-Column Table Report

With some tasks, you may want to add a link to a message sent to a user that contains data too large for a message, for example, an message with a picture, abstract, and a link to a full article or report. This topic describes how to define a table report with fixed-column widths.
The table report type can be displayed to an end-user when the URL for this table is clicked in a message. In the following illustration, the message sent to the end-user contains a link to the table report called Your Daily Tasks.

<p id="gdcalert1" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image1.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert2">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

![alt_text](images/image1.png "image_tooltip")

When the user clicks the link in the message, a fixed-column table report shows the data for the columns defined with a table header, optional table description, and a header row with fixed-column sizes as shown in the following illustration for the _Your Daily Tasks_ report.

<p id="gdcalert2" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image2.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert3">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

![alt_text](images/image2.png "image_tooltip")


## To define a fixed-column table report

To complete the following procedure, you must have already defined a task, such as an alert task, or information task, that you want to add a fixed-column table report link to. Complete the steps in the following procedure to define a table report with fixed columns.


1. In Bot Builder, select the task for the Bot that you want to add a table report link to.

    !!! Note
    
        Only unpublished tasks can be modified.

2. Click the **Settings** <img src="../images/settings-icon.png"> icon, and then click **Edit**.
3. On the **Bot Response** tab for the task that you want to add a table report to, click the **Expand** <img src="../images/expand-icon.png"> icon for the **Report Template Definition** section.
4. In the **Link Title** field, enter the link text to display to the end-user in the task post, for example, _Your DailyTasks_.
5. In the **Header** field, enter the title of the report to display when the table report is displayed to the end-user.
6. In the **Details** field, optionally enter any end-user help information displayed directly below the **Header** in the report, for example, _Here are the description details for the Your Daily Tasks list in Fixed Columns._
7. In the **Template** drop-down list, select **Fixed Column Table**.
8. Click **Edit Template**. The **Table Configuration** dialog is displayed.
9. Click **Add Column**. The **Column Configuration** dialog is displayed as shown in the following illustration.

    <p id="gdcalert5" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image5.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert6">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

    ![alt_text](images/image5.png "image_tooltip")

10. In the **Column Name** field, enter the first column title, for example, _Task – Fixed Column Report_.
11. In the  **Data Type** field, select one of the following data types for the information displayed in the column:  
    1. **String**
    2. **Number**
    3. **Date**

12. Enable **Is a link** if the data in the column is a hyperlink. When enabled:  
    1. In the **Link Label** field, enter the JavaScript to display the text for the link, for example, `print(Name);` .
    2. In the **URL Value** field, enter the JavaScript to display the data to output when the **Link Label** is clicked, for example, `print("https://login.salesforce.com/" + Id);`

13. If **Is a link** is not enabled, then enter the JavaScript to display the value for the column, for example, `print(StageName);`.
14. In the **Display it as an image** section, select **Yes** if the column value is an image.
15. In the **Display it as HTML** section, select **Yes** if the column value contains HTML content.
16. In the **Is this column Sortable** section, select **Yes** if the end-user should be able to sort the column.
17. In the **Fixed Column** section, select **Yes** if the end-user is abled to set the column width
18. Click **Done**. The **Table Configuration** dialog is displayed with the new column added as shown in the following illustration.

    <p id="gdcalert6" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image6.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert7">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

    ![alt_text](images/image6.png "image_tooltip")

19. Repeat Steps 9 – 18 for each additional column in the report, click **Save** to save the column configurations, and then click **Close**.
20. In the **Report Template Definition** section, click **Save** to save the table report

    The table is saved _Successfully saved response data_ message is displayed at the top of the page.
