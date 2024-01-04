# Define a Card Layout with Group By Report

With some tasks, you may want to add a link to a message sent to a user that contains data too large for a message, for example, a message with a picture, abstract, and a link to a full article or report. This topic describes how to define a card layout with group by report that displays a related set of data groups, for example, a weekly appointment calendar summary.
The card layout with group by report type can be displayed to an end-user when the URL for this report type is clicked in a message. In the following illustration, the message sent to the end-user contains a link to the card layout with group by report called My Calendar Weekly Summary. The message contains the title of the summary report, but not the detailed data.


<p id="gdcalert1" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image1.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert2">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image1.png "image_tooltip")

When the user clicks the link in the message, a card layout with group by report is displayed with a detailed list of grouped items with a card header, optional card description, and a header row as shown in the following illustration for the _My Calendar Weekly Summary_ report as a list of calendar appointments scheduled for the upcoming week.


<p id="gdcalert2" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image2.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert3">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image2.png "image_tooltip")



## To define a card layout with group by report

To complete the following procedure, you must have already defined a task, such as an alert task, or information task, that you want to add a card layout with group by report link to. Complete the steps in the following procedure to define a card layout with group by report.

1. In Bot Builder, select the task for the Bot that you want to add a card layout with group by report link to.

    !!! Note
    
        Only unpublished tasks can be modified.

2. Click the **Settings** <img src="../images/settings-icon.png"> icon, and then click **Edit**.
3. On the **Bot Response** tab for the task that you want to add a card layout with group by report to, click the **Expand** <img src="../images/expand-icon.png"> icon for the **Report Template Definition** section.
4. In the **Link Title** field, enter the link text to display to the end-user in the task post, for example, _My Calendar Weekly Summary_.
5. In the **Header** field, enter the title of the report to display when the table report is displayed to the end-user, for example, _My Calendar Weekly Summary Report_.
6. In the **Details** field, optionally enter any end-user help information displayed directly below the **Header** in the report, for example, _Here are the description details for my Today’s Summary card layout report._
7. In the **Template** drop-down list, select **Card Layout With Group By**.
8. Click **Edit Template**. The **Card Layout Configuration** dialog is displayed.
9. In the **Card Title** text area, enter your custom JavaScript to display the title data for your card, for example, a static title such as `print("Today's Summary Report");` or you can use payload keys, for example, `print(summary);`.
10. Click **Add Item**. The **Item Configuration** dialog is displayed as shown in the following illustration.

    <p id="gdcalert5" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image5.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert6">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

    ![alt_text](images/image5.png "image_tooltip")

11. In the **Item Name** field, enter the first column title, for example, _When_.
12. In the  **Data Type** field, select one of the following data types for the information displayed in the column:  
    1. **String**
    2. **Number**
    3. **Date**

13. Enable **Is a link** if the data in the column is a hyperlink. When enabled:  
    1. In the **Link Label** field, enter the JavaScript to display the text for the link, for example, `print(date);` .
    2. In the **URL Value** field, enter the JavaScript to display the data to output when the **Link Label** is clicked, for example, 
    
        `print("https://login.salesforce.com/" + date);`

        If **Is a link** is not enabled, then enter the JavaScript to display the value for the column in the **Item Value** text area, for example,
        
        ```
        if (typeof (date) !== 'undefined') {
            if (date.length > 200) {
                print(date.substr(0, 100) + " ... more");
                } else {
                print(date);
            }
        }
        ```

14. In the **Display it as an image** section, select **Yes** if the column value is an image.
15. In the **Display it as HTML** section, select **Yes** if the column value contains HTML content.
16. In the **Group by this column** section, click **Yes** if the report items are to be grouped by this item.
17. In the **Action Payload Key Mapping** field, you can display a response key as a link by mapping an action response key, for example, _createdDate_, to the **Item Value** field displayed to the end-user as the item **When** as shown in the previous illustration.
18. Click **Done**. The **Card Layout Configuration** dialog is displayed with the new column added as shown in the following illustration.

    <p id="gdcalert6" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image6.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert7">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

    ![alt_text](images/image6.png "image_tooltip")

19. Repeat Steps 10 – 19 for each additional column in the report, click **Save** to save the column configurations, and then click **Close**.
20. In the **Report Template Definition** section, click **Save** to save the card layout with group by report.

    The table is saved _Successfully saved response data_ message is displayed at the top of the page.
