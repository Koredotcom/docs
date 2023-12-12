# **Create Custom Dashboard Filters**

Prior to the Version 10.0 release, you had to add filter conditions in the ‘**Filter by**’ clause for individual widgets within a dashboard. There was no provision to filter the records at a dashboard level. The platform now allows you to create custom filters that filter the data for all the widgets across a custom dashboard.

You can either add or update the custom filters for the dashboard.


```
Note: The date selection filter is a default filter that gets applied to all the widgets across the dashboard.
```



## Add Filters

To add one or more filters at the Custom Dashboard level, perform the following steps:



1. Click the **Add Filter** button to go to the **Configuration** panel shown below.

    

<p id="gdcalert1" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image1.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert2">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image1.png "image_tooltip")



    ```
Note: Tooltips are available for all the fields in the Add Custom Filter panel except the Preview Date. Using the Preview Date, you can select a date range to display the data.
```



     \


<p id="gdcalert2" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image2.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert3">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image2.png "image_tooltip")



    The Platform currently supports 3 types of filters:

* **Drop-down list:** Allows you to choose from a list of values based on the selected field name within the dataset or meta tag. You can set one or more values as ‘default values’ for this control.
    * This is an optional feature.
    * The existing values of the selected field are displayed in ascending order as suggestions. Either choose from the suggested values or add a new value.

        ```
Note: By adding a new value, you can create filters for values that are not available for the VA.
```


* **Alphanumeric Text field:** You can choose from the existing values of the selected field as suggestions in ascending order or add a new value. Adding a new value creates filters for the values which are not available in the VA.
* **Numeric Text field:** You can choose a numeric range by providing values at the **‘From Value’** and **‘To Value’** fields. On applying this filter, results in each widget are filtered out based on the From and To values defined in the filter.
1. Enter the **Filter Name.**
2. Select a field from any of the following data sources in the **Filter Source** drop-down:
* **Sessions (Dataset)** – It presents all the fields captured by the platform during conversation sessions.
* **User Tag (Custom Tag)** – It presents the Custom user tags generated in the VA to choose from. You can also add a user tag which is not yet available in the VA.
* **Message Tag (Custom Tag)** – It presents the Custom message tags generated in the VA to choose from. You can also add a message tag which is not yet available in the VA.
* **Session Tag (Custom Tag)**– It presents the Custom session tags generated in the VA to choose from. You can also add a session tag which is not yet available in the VA.

The fields in the Sessions dataset are supported for custom filters. Messages and Analytics dataset filters are not supported.

See Datasets and Fields to understand more.


    

<p id="gdcalert3" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image3.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert4">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image3.png "image_tooltip")


For custom filters, we can use fields either from the Sessions dataset or from Message, User, or Session tags. We can add filters for the existing tags and also the tags that are not available in the VA. See Custom Meta Tags to understand more.


```
Note: Based on the Filter Source, select the fields in the Field Name drop-down. In case of Custom Tags, you can select any of the existing tags or add a tag that is not available in the VA.
```




1. Click the button **Save & Preview** to save and preview the filter details.
2. You can also select a **Default** filter to be applied to all the widgets in the entire dashboard.

    

<p id="gdcalert4" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image4.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert5">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image4.png "image_tooltip")


3. Click the button **Add to Dashboard** in the preview panel to add the filter to the dashboard.
4. Click the button **Apply** if you want to apply the filter to the dashboard.

    ```
Note: The default filter is added at the dashboard level (highlighted in the screenshot) and you can select the value from the LoB drop-down to apply to all the widgets.
```



    

<p id="gdcalert5" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image5.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert6">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image5.png "image_tooltip")




## Manage Filters

All the filters added to the dashboard are displayed on the Custom Dashboards home page. You can edit or delete a filter added to the Custom Dashboard.


```
Note: The default Date Filter cannot be edited or deleted.
```



### Update Filter

You can perform the following steps to update the filters of the Custom Dashboard:



1. Click the **Manage Filter** drop-down button. The options **Add Filter** and **Update Filter** are displayed.

    

<p id="gdcalert6" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image6.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert7">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image6.png "image_tooltip")


2. Select the **Update Filter** option. The panel **Update Custom Filter** is displayed as shown below.

    

<p id="gdcalert7" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image7.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert8">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image7.png "image_tooltip")


3. Select a filter from the **Choose Filter** drop-down menu.

    

<p id="gdcalert8" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image8.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert9">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image8.png "image_tooltip")


4. Edit the details as per the requirement, in the **Configuration** panel.
5. Click the **Preview** button. The **Preview Filter** pop-up is displayed as shown in the preceding screenshot. Select a value from the drop-down as per the requirement.
6. Click the **Update filter** button to update the details.

    

<p id="gdcalert9" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image9.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert10">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image9.png "image_tooltip")


7. Click **Proceed** in the displayed pop-up to confirm the updates.


### Delete Filter

You can perform the following steps to delete the filters of the Custom Dashboard:



1. In the **Update Custom Filter** panel, select the filter to be deleted from the **Choose Filter** drop-down.

    

<p id="gdcalert10" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image10.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert11">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image10.png "image_tooltip")


2. Click the button **Delete** to delete the selected filter.

    

<p id="gdcalert11" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image11.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert12">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image11.png "image_tooltip")


3. Click **Proceed** in the displayed pop-up to confirm the deletion.


### More Filters

If more than two filters are added to the dashboard, then they are displayed in the **More Filters** drop-down next to the first two added filters. \


<p id="gdcalert12" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image12.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert13">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image12.png "image_tooltip")



## Filter Configurations

The following list details the filtering configurations available on the Custom Dashboard:

**Set Default Value**



* Whenever a Custom Dashboard is loaded or refreshed, the ‘_default values_’ of the dashboard level filters are applied for all the widgets in that Custom Dashboard.
* If the default value is not set, then the filter is not applied to any of the widgets in the dashboard.
* If the default value is set, the filter is applied as per the filter component type as follows:
    * If the dropdown is used, all the values are selected as the default values and filtered.
    * If a date range is selected, the records between the **From Date** and **To Date**, including both dates, are filtered.
    * — If only the ‘**From Date**’ is selected, the records equal to or greater than the value in the ‘ **From Date**’ are filtered. \
— If only the ‘**To Date**’ is selected, the records less than or equal to the value in the ‘**To Date**’ are filtered. If a numeric range is selected, then the records that are between the **From Value** and **To Value**, including both the values, are filtered.
    * — If only the ‘**From Value**’ is selected, the records equal to or greater than that value are filtered. \
— If only the ‘**To Value**’ is selected, the records less than or equal to that value are filtered. If a text field is selected, the records that contain the exact value are filtered.
* The system dynamically appends the dashboard-level filters to each of the widget’s ‘Filter’ conditions during query execution.
* If the filter is not applicable for any of the widgets, then the data for that widget is not loaded, and a message is displayed. This usually happens when the dashboard filter’s dataset differs from the dataset used to define the widget.



<p id="gdcalert13" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image13.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert14">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image13.png "image_tooltip")



```
Note: As per the settings in the Kore config, the maximum number of allowed Dashboard-level filters is 5.
```