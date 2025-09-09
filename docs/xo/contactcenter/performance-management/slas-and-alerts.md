# SLAs & Alerts

SLAs and Alerts targets establish the acceptable threshold for key performance indicators, such as Average Speed to Answer, Response Service Level, Abandonment Rate, and Transfer Rate, for interactions, including voice calls and chats.

Administrators can access service levels by going to **Contact Center AI** > **PERFORMANCE MANAGEMENT** > **SLAs & Alerts**.  
<img src="../images/sla-page.png" alt="SLAs & Alerts Tab" title="SLAs & Alerts Tab" style="border: 1px solid gray; zoom:70%;">

The following information is displayed:  
<img src="../images/information.png" alt="Information" title="Information" style="border: 1px solid gray; zoom:70%;">

## Service Level

### Create a New Service Level

Steps to create a new service level:

1. Click the **+ New Service Level** button at the upper-right corner.  
    <img src="../images/new-service-level.png" alt="New Service Level" title="New Service Level" style="border: 1px solid gray; zoom:70%;">

2. On the New Service Level Rule pop-up window, enter a **Name** and **Description** for the service rule and click **Next**.  
    <img src="../images/new-service-level-rule.png" alt="New Service Level Rule" title="New Service Level Rule" style="border: 1px solid gray; zoom:70%;">

    The service level configuration screen is displayed.  
    <img src="../images/service-level-configuration-page.png" alt="Configuration" title="Configuration" style="border: 1px solid gray; zoom:70%;">

3. Click and select the **Queues** and **Channels** from the drop-down menus.  
    <img src="../images/queues-and-channels.png" alt="Queues and Channels" title="Queues and Channels" style="border: 1px solid gray; zoom:70%;">

4. Click **+ Add triggers** and choose a trigger.  
    <img src="../images/add-triggers.png" alt="Add Triggers" title="Add Triggers" style="border: 1px solid gray; zoom:70%;">

    Based on your selected trigger, you can choose the following:  

    **Abandonment rate**:  
    <img src="../images/abandonment-rate.png" alt="Abandonment Rate" title="Abandonment rate" style="border: 1px solid gray; zoom:70%;">

    **Average speed to answer (ASA)**:  
    <img src="../images/average-speed-to-answer.png" alt="Average Speed to Answer" title="Average Speed to Answer" style="border: 1px solid gray; zoom:70%;">

    **Response Service Level (RSL)**:  
    <img src="../images/response-service-level.png" alt="Response Service Level" title="Response Service Level" style="border: 1px solid gray; zoom:70%;">

    **Transfer rate**:  
    <img src="../images/transfer-rate.png" alt="Transfer Rate" title="Transfer Rate" style="border: 1px solid gray; zoom:80%;">

5. Click **+ Add an action** and choose an action.  
    <img src="../images/add-an-action.png" alt="Add an Action" title="Add an Action" style="border: 1px solid gray; zoom:70%;">  

    Based on your selected action, you can choose the following:  
    **Alert**:  
    <img src="../images/alert.png" alt="Alert" title="Alert" style="border: 1px solid gray; zoom:70%;">

    **Email**:  
    <img src="../images/email.png" alt="Email" title="Email" style="border: 1px solid gray; zoom:70%;">

6. Click **Save** to create the service level.  
    <img src="../images/save-service-level.png" alt="Save Service Level" title="Save Service Level" style="border: 1px solid gray; zoom:70%;">

    A confirmation message is displayed, and the service level is created.

### Edit a Service Level

Steps to edit a service level:

1. Click the **Edit** button.  
    <img src="../images/edit-sla.png" alt="Edit Service Level" title="Edit Service Level" style="border: 1px solid gray; zoom:70%;">

2. Make the necessary changes to the service level and click **Save**.  
    <img src="../images/edit-and-save.png" alt="Edit and Save Service Level" title="Edit and Save Service Level" style="border: 1px solid gray; zoom:70%;">

    A confirmation message is displayed.

### Edit a Service Level Name

Steps to edit a service level name:

1. Click the **Edit** button.  
    <img src="../images/edit-sla.png" alt="Edit Service Level" title="Edit Service Level" style="border: 1px solid gray; zoom:70%;">

2. Click the **Settings** icon.  
    <img src="../images/settings-icon.png" alt="Settings" title="Settings" style="border: 1px solid gray; zoom:70%;">

3. Edit the Service Level Name or Description and click **Apply**.  
    <img src="../images/apply-edit.png" alt="Apply Edit" title="Apply Edit" style="border: 1px solid gray; zoom:70%;">

4. Click **Save**.  
    <img src="../images/revised-service-level-name.png" alt="Revised Service Level Name" title="Revised Service Level Name" style="border: 1px solid gray; zoom:70%;">

    The revised service level name is displayed.

### Delete a Service Level

Steps to delete a service level:

1. Click the **Delete** button.  
    <img src="../images/delete-sla.png" alt="Delete" title="Delete" style="border: 1px solid gray; zoom:70%;">

2. Click **Yes** to confirm.  
    <img src="../images/delete-service-level.png" alt="Delete" title="Delete" style="border: 1px solid gray; zoom:70%;">

3. A notification is displayed, and the service level is deleted.

## General Alerts

Administrators and Supervisors use this flexible alert system to configure and receive alerts for operational metrics and general system events.

Example:

Alerts to be triggered when users perform specific activities like:

* Exporting the **Interaction Details Report**
* Exporting data from the **Interaction Dashboard**
* Exporting the **Interaction Details Report by Segment**

### Create a General Alert

Steps to create a new General Alert:

1. Click **+ New Alert** at the top right corner.  
    <img src="../images/new-alert.png" alt="New Alert" title="New Alert" style="border: 1px solid gray; zoom:70%;">

2. Enter a **Name** and **Description** in the pop-up window and click **Next**.  
    <img src="../images/alert-name-description.png" alt="Alert Name" title="Alert Name" style="border: 1px solid gray; zoom:70%;">

    The general alerts page is displayed.  
    <img src="../images/general-alert-config.png" alt="Alert Config" title="Alert Config" style="border: 1px solid gray; zoom:70%;">

3. Click and select the **Area of the system**. When a selection is made, the Trigger is auto-populated.  
    <img src="../images/area-of-the-system.png" alt="System Area" title="System Area" style="border: 1px solid gray; zoom:70%;">  

    **Analytics** > **Interactions**

    1. Click and select the trigger.  
        <img src="../images/triggers.png" alt="Triggers" title="Triggers" style="border: 1px solid gray; zoom:70%;">

    2. Select the number of times the system exports data within the selected time interval.  
        <img src="../images/time-interval-times.png" alt="Interval Times" title="Interval Times" style="border: 1px solid gray; zoom:70%;">

    3. Click and add Actions. You can add both Alert and Email.  
        <img src="../images/add-action.png" alt="Actions" title="Actions" style="border: 1px solid gray; zoom:70%;">

    4. Select the Alert type (Critical/Warning) and select the people to whom the alert will be sent.  
        <img src="../images/alert-type-people.png" alt="Alert Type" title="Alert Type" style="border: 1px solid gray; zoom:70%;">

    5. Click **Save**.  
        <img src="../images/save-alert.png" alt="Save Alert" title="Save Alert" style="border: 1px solid gray; zoom:70%;">

        A notification is displayed, and the alert is created.

    **Voicemail in Agent Console**

    1. Select the Queues, No. of Voice Mails, and the Time Interval.   
        <img src="../images/when.png" alt="Configure Alert" title="Configure Alert" style="border: 1px solid gray; zoom:70%;">

    2. Select the Alert type (Critical/Warning) and select the people to whom the alert will be sent.  
        <img src="../images/then.png" alt="Select Trigger" title="Select Trigger" style="border: 1px solid gray; zoom:70%;">

    3. Click **Save**.  
        <img src="../images/save-voicemail-configuration.png" alt="Save Alert" title="Save Alert" style="border: 1px solid gray; zoom:70%;"> 

        A notification is displayed, and the alert is created.

### Edit  a General Alert

Steps to edit a general alert

1. Click the **Edit** button.  
    <img src="../images/edit-alert-icon.png" alt="Edit Alert" title="Edit Alert" style="border: 1px solid gray; zoom:70%;">

2. Make the necessary changes to the general alert and click **Save**.  
    <img src="../images/edit-alert.png" alt="Edit and Save Alert" title="Edit and Save Alert" style="border: 1px solid gray; zoom:70%;">

    A confirmation message is displayed.

### Edit a General Alert Name

Steps to edit a service level name:

1. Click the **Edit** button.  
    <img src="../images/edit-alert-icon.png" alt="Edit Alert" title="Edit Alert" style="border: 1px solid gray; zoom:70%;">

2. Click the **Settings** icon.  
    <img src="../images/alert-settings.png" alt="Alert Settings" title="Alert Settings" style="border: 1px solid gray; zoom:70%;">

3. Edit the Alert Name or Description and click **Apply**.  
    <img src="../images/edit-alert-pop-up.png" alt="Apply" title="Apply" style="border: 1px solid gray; zoom:70%;">

4. Click **Save**. The revised alert name is displayed.  
    <img src="../images/alert-name-updated.png" alt="Alert Updated" title="Alert Updated" style="border: 1px solid gray; zoom:70%;">

### Delete a General Alert

Steps to delete a General Alert:

1. Click the **Delete** button.  
    <img src="../images/delete-alert.png" alt="Delete Alert" title="Delete Alert" style="border: 1px solid gray; zoom:70%;">

2. Click **Delete**.  
<img src="../images/confirm-delete-alert.png" alt="Confirm Delete Alert" title="Confirm Delete Alert" style="border: 1px solid gray; zoom:70%;">

3. A confirmation message is displayed, and the alert is deleted.