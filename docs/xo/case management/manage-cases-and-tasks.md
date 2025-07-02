# Manage Cases and Tasks

Agents can effectively manage cases and tasks to ensure timely resolutions and high customer satisfaction—from the moment they receive the assignments until they resolve them successfully.

## Manage Cases

Managing cases involves a systematic approach to ensure that all aspects of a case are addressed efficiently and effectively.

## Cases

A case is a formal record of a specific situation or problem that needs to be managed, addressed, or resolved. It refers to individual instances or records of an event, issue, or request that requires attention, tracking, and resolution.

### Access Manage Cases

This section displays the overview of all cases that an agent has efficiently handled and resolved customer issues. 

Access manage cases by navigating to **Contact Center AI** > **Case Management**> **Manage Cases**> **Cases**.

<img src="../images/accessing-cases.png" alt="Cases" title="Cases" style="border: 1px solid gray; zoom:70%;">

Each case in the system includes the following details:

* **ID:** Displays a unique identifier ID of a case or service request.

* **Title**: Displays a brief title describing the service request. 

* **Customer**: Displays the name of the customer who requested the case.

* **Channels**: Displays the channel name through which the request is made (Web or Mobile Client).

* **Status**: Displays the current state of the case.

* **Priority**: Displays the priority level of the case (Critical, High, Medium, Low).

* **Last Updated**: Displays the last updated date and time of the case.

* **ETA**: Displays the estimated due date. It is calculated based on the due date and system date. If it is overdue, then it is due today or the target date.

* **Assignee**: Displays the name of the agent to whom the case is assigned (not applicable for Unassigned, My Cases, and Closed).

The users can access the additional menu items for the Cases:

* **My Cases**: Cases assigned to the agent or back office employee.

* **My Tasks**: Tasks assigned to the agent or back office employee.

* **Closed**: Closed cases.

* **Search Cases**: Enables searching for specific cases based on field values or content (for example, case ID, status, priority, keywords in case descriptions or notes).

### Create Cases (Outside the Agent Console)

Steps to create a new case:

1. Access cases by navigating to **Contact Center AI** > **Case Management** > **Manage Cases** > **Cases**. The unresolved cases page displays.
    
    <img src="../images/manage-cases-new-case.png" alt="Create Cases" title="Create Cases" style="border: 1px solid gray; zoom:70%;">

2. Click **+ New Case**. the New Case dialog box is displayed with a default Case Number assigned.

    <img src="../images/new-case-managecase.png" alt="New Case" title="New Case" style="border: 1px solid gray; zoom:70%;">

3. In the **Requested by** field, enter the name of the customer.

4. Choose a **channel** type from the dropdown list.

    * For the **Voice**, select the customer's **phone number** and **Country** from the dropdown list.

    * For the **Web/Mobile Client**, enter the customer’s **email address**.

5. Select the case template from the **Case Type** dropdown list to capture the details about the customer's issue or query.

6. Select a **Due Date** to complete the case.

7. In the description, enter a conversation summary of the issue or service request.

8. Enter a **Title** for the case based on the issue raised by the customer.

9. Select the **(Critical/High/Medium/Low)** from the **Priority** level dropdown list. By default, the Status is set as Open.

11. Click **Save**. A success message is displayed, and a new case is created and assigned to an agent based on the case type assignment rules.

    !!! Note

        You must fill all the fields marked with a red asterisk (*).

### View Cases

A supervisor can view various cases created under the following menu items:

* **Unresolved**: Cases that are still active (work-in-progress) and not yet resolved or closed.

    <img src="../images/unresolved-cases.png" alt="Unresolved" title="Unresolved" style="border: 1px solid gray; zoom:70%;">

* **Unassigned**: Cases that are identified but not yet assigned to a case manager or team member.

    <img src="../images/unassigned-cases.png" alt="Unassigned" title="Unassigned" style="border: 1px solid gray; zoom:70%;">

* **All Cases**: Displays a comprehensive view of all cases within the system, regardless of their status.

    <img src="../images/manage-all-cases.png" alt="All Cases" title="All Cases" style="border: 1px solid gray; zoom:70%;">

* **My Cases**: Cases that are assigned to the agent or back office employee.

    <img src="../images/all-cases-my-cases.png" alt="My Cases" title="My Cases" style="border: 1px solid gray; zoom:70%;">

* **Closed**: Cases that are completed and closed.
    
    <img src="../images/manage-all-cases-closed.png" alt="Closed" title="Closed" style="border: 1px solid gray; zoom:70%;">

* **Search Cases**: Search for cases based on various field values (for example, case ID, status, priority).

    <img src="../images/search-cases.png" alt="Search Cases" title="Search Cases" style="border: 1px solid gray; zoom:70%;">

    !!! Note

        The supervisor can set the capacity limit of each case in the system for specific agents. The cases remain in the queue until an agent is available. 
        
    By clicking any of the existing **Unresolved** cases, you can view the following sections of a Case, such as associated tasks, customer details, current status, and activity logs.

    <img src="../images/manage-task-details.png" alt="Fields" title="Fields" style="border: 1px solid gray; zoom:70%;">

    The following is one example of an **Unresolved** Case details that includes the following sections:

* **Description**: Displays a summary of the service request issue.

    <img src="../images/case-details-desc.png" alt="Fields" title="Fields" style="border: 1px solid gray; zoom:70%;">

* **Tasks**: Displays the number of tasks created against a case assigned to an agent, which includes the unique task ID, task name, agent name, task status, and task priority level. 

    *  **Add New Task**: Allows you to add new tasks related to a case.

        <img src="../images//case-task.png" alt="Case Details" title="Case Details" style="border: 1px solid gray; zoom:70%;">

    * **Custom**: This message appears when the **Custom Task** checkbox option is enabled for agents about a case while creating **Case Templates**. 

    * **Activity**: Shows the specific actions taken to manage a case.

    * **Add Comments**: Shows the comment box related to an activity entered by the supervisor or agent.        

        <img src="../images/add-activity-comment.png" alt="Comments" title="Comments" style="border: 1px solid gray; zoom:70%;">

    * **Add Comment and Send as Email**: Allows you to add a comment and send as an email (along with the email address) before saving it to the comment.

        <img src="../images/activity-comment.png" alt="Comments" title="Comments" style="border: 1px solid gray; zoom:70%;">

    * **Email**: Displays the email and standard response template to add the required details of the case.

        <img src="../images/email-attachment.png" alt="Email" title="Email" style="border: 1px solid gray; zoom:70%;">

    * **File Attachment**: Displays the image or file attachment icons to support the case when you click the attachment icon.
        
        <img src="../images/attached-file-cases.png" alt="File Attachment" title="File Attachment" style="border: 1px solid gray; zoom:70%;">

    * **Standard Responses**: Displays the predefined text signatures to quickly select and send to the customers.

        <img src="../images/signature.png" alt="Standard Responses" title="Standard Responses" style="border: 1px solid gray; zoom:70%;">

    * **Edit Comments**: Displays you to edit the entered comment related to the case.
       
       <img src="../images/view-comments.png" alt="Edit Comments" title="Edit Comments" style="border: 1px solid gray; zoom:70%;">

    * **Format**: Displays formatting icons to edit your email content, such as bold, italic, ordered list, and so on.

        <img src="../images/comment-box-format.png" alt="Comment Box Format" title="Comment Box Format" style="border: 1px solid gray; zoom:70%;">

    * **Events**: Displays the associated events related to the cases and tasks.

        <img src="../images/activity-events.png" alt="Event Activity" title="Event Activity" style="border: 1px solid gray; zoom:70%;">

    * **Case Details**: Displays the information where the agent can view the following case details of a case, such as:

        * **Status**: Displays the current status of the case.

        * **Priority**: Displays the priority level of the case.

        * **Assignee**: Displays the name of the agent that the case is assigned to or handled by.

        * **Reporter**: Displays the name of the user who has assigned the case.

        * **Customer**: Displays the customer's name.

        * **Due Date** Displays the date and time when the case is due.
           
            <img src="../images/case-details-status.png" alt="Case Details Status" title="Case Details Status" style="border: 1px solid gray; zoom:70%;">

    * **More Information:** Displays the additional details about the case, such as:

        * **Last Updated by:** Displays the user name who has last updated the case.

        * **Last Updated On:** Displays the last updated date and year of the case.

        * **Created by:** Displays the user who has created the case.

        * **Requested by:** Displays the user name who has made the service request.

        * **Created On:** Displays the service request date and year that the case was created.

        * **Channel:**: Displays the channel mode (Voice or Web/Mobile Client) of the case.

            <img src="../images/more-info.png" alt="More Info" title="More Info" style="border: 1px solid gray; zoom:70%;">

            !!! Note

                As an agent, you can manually update the case status based on progress or updates received from back office employees and other agents. For instance, you can create additional tasks to address any outstanding issues if the case is not marked as **Closed**.

### Transfer or Update Cases

The agent can transfer a case to another agent by selecting the **Assignee** from the dropdown list.

<img src="../images/case-transfer.png" alt="Transfer" title="Transfer" style="border: 1px solid gray; zoom:70%;">

### Update or Resolve Case Status

Under the case details section, select the **Resolve** from the status dropdown list.

<img src="../images/resolved-case-update.png" alt="Comments" title="Comments" style="border: 1px solid gray; zoom:70%;">

When the review processes are completed by the agent, the agent can view all the case statuses, including Closed, Open, Resolved, and so on, from the agent **Dashboard** > **My Cases** > **Closed**.

<img src="../images/closed-my-cases.png" alt="Closed Cases" title="Closed Cases" style="border: 1px solid gray; zoom:70%;">

To view the status of all closed cases on the Dashboard and Manage Cases, see [Analyze Case Management](https://docsinternal-kore.github.io/docs/xo/case%20management/case-analysis-dashboard/?h=cases+and+tasks#analyze-cases-and-tasks){:target="_blank"}.

   <img src="../images/manage-all-cases-closed.png" alt="Managed Closed Cases" title="Managed Closed Cases" style="border: 1px solid gray; zoom:70%;">

Ensure all required actions and activities associated with the task are completed and changed to resolve with a proper comment before closing the case.
       
 <img src="../images/resolved-case-update.png" alt="Resolved Cases" title="Resolved Cases" style="border: 1px solid gray; zoom:70%;">

Review the case to ensure that all aspects of the requested issue are addressed and resolved satisfactorily. 

Ensure all processes and tasks are completed before marking the case and all associated tasks as **Resolved**, and then change the status of the case to **Closed**.

<img src="../images/case-closed-status.png" alt="Closed Status" title="Closed Status" style="border: 1px solid gray; zoom:70%;">

## Manage Tasks

Managing tasks is essential for ensuring that all necessary actions are taken to resolve cases efficiently and effectively.

## Tasks

In case management, you can configure and manage task assignment rules for newly created cases to ensure efficient allocation of tasks to agents or back office employees based on availability, capacity, and skills. This process ensures that all necessary actions are up-to-date with proper task information, comments, and task statuses to manage efficiently. 

In this, you (agent) can do the following:

* View and update all required fields in the assigned task (active or inactive).

* Provide comments on the task for tracking progress and providing context.

* Change the status of the task to the next level upon completion.

* Assign the task to itself, and can transfer the task to another agent or to another back office employee.

* Select another agent from the list and reassign the task.

* View all details of the task assigned to them, including any previous comments and status changes.

* Create, edit, or delete tasks until the case is closed.

    !!! Note

        When a task is transferred to a new assigned agent or updated by the agent, all the task-related notification is sent by the system to the agent.

#### Task Notifications

Agents are notified through the case management system (Console) when any new tasks are assigned. 

<img src="../images/task-notofications.png" alt="Task Notification" title="Task Notification" style="border: 1px solid gray; zoom:70%;">

#### Access Tasks

Select **Tasks** in the left navigation panel of Case Management. This page shows the overview of all tasks that an agent is handling related to a case, including planning, assigning, tracking, and completing the tasks to achieve the desired case outcomes.

You can access Manage Tasks by navigating to **Contact Center AI** > **Case Management** > **Manage Cases** > **Tasks**.

<img src="../images/manage-cases-tasks.png" alt="Tasks" title="Tasks" style="border: 1px solid gray; zoom:70%;">

Agent can view the following menu items for the **Tasks**:

* **Unresolved**: Tasks that are still active (work-in-progress) and not yet resolved or closed. 

    <img src="../images/unresolved-tasks.png" alt="Unresolved Tasks" title="Unresolved Tasks" style="border: 1px solid gray; zoom:70%;">

    All the **Tasks** include the following list of items:

    * **ID**: Displays the task ID.

    * **Case ID**: Displays the case ID.

    * **Title**: Displays the task title. 

    * **Status**: Displays the task status.

    * **Priority**: Displays the priority level of the task.

    * **ETA**: Displays the estimated time for an agent to take action or complete the assigned task.

    * **Last Updated**: Displays the last date of the updated task.

    * **Assignee**: Displays the name of the agent to whom the task is assigned. This option is not available for **Unresolved**, **Unassigned**, **All Tasks**, **My Tasks**, and **Closed**.

        !!! Note

            The agent can easily switch between custom tasks and task templates.

* **My Tasks**: Tasks that are assigned to the agent or back office employee.

* **Closed**: Tasks that are closed.

* **Search Tasks**: Enables searching for specific tasks based on field values or content (for example, case ID, status, priority, keywords in task descriptions or notes).

    !!! Note

        The agent cannot create or edit tasks once a case is closed. The system prevents task creation if required fields are missing or invalid.

    A supervisor can view the following menu items for the tasks:

* **Unassigned**: Tasks that are identified and not assigned yet to a case manager or team member.

* **All Tasks**: A comprehensive view that includes all tasks within the system, regardless of their status.

#### Add New Task

Steps to **Add New Task**:

1. Click any of the cases from the **Tasks** page to create a new task.

    <img src="../images/add-new-task.png" alt="Add New Task" title="Add New Task" style="border: 1px solid gray; zoom:70%;">

2. Click the **+ Add New Task**. By default, the New Task dialog box is displayed with a default Task Number assigned.	
 
    <img src="../images/new-task.png" alt="New Task" title="New Task" style="border: 1px solid gray; zoom:70%;">

3. Select the Task Type for the related case from the dropdown list provided.

4. Select a **Due Date** to complete the task.

5. Enter a case **Description** based on the conversation case summary.

6. Enter a case **Title** based on the issue raised by the customer.

7. Select the task **Priority (Critical, High, Medium, Low)** from the dropdown list.
8. By default, the **Status** is set to **Open**.

9. Click **Save**. A success message of the task creation is displayed, and a new custom task is created and assigned to the agent.

    !!! Note

        All the red asterisk (*) marked fields are mandatory to fill up.

    <img src="../images/task-message-successful.png" alt="Task Creation Successful" title="Task Creation Successful" style="border: 1px solid gray; zoom:70%;">

#### View Tasks Components

This page shows the task description, task details, current status, and activity logs.

Click any existing unresolved tasks to expand and view detailed information, and the following page appears.

<img src="../images/view-tasks.png" alt="View Tasks" title="View Tasks" style="border: 1px solid gray; zoom:70%;">

The above page includes the following list of items:

* **Description**: Displays the allotted task description.

* **Activity**: Displays the specific actions taken to manage a task.

    * **Comments**: Displays the comments related to that activity received by the supervisor or entered by the agent.

    * **Edit Comments**: Allows you to edit the entered comments related to the task.

    * **Delete**: Displays the delete icon option to delete your comment.

    * **Attach Image or File**: Displays the image or file attached to the case.

    * **Events**: Displays the associated events to that activity.

        <img src="../images/activity-associated-events.png" alt="Associated Activity" title="Associated Activity Comments" style="border: 1px solid gray; zoom:70%;">

* **Task Details:** Displays the following task details information, such as:

    * **Status**: Displays the status mode of the task.

    * **Priority**: Displays the priority level of the task.

    * **Assignee**: Displays the name of the agent to whom the task is assigned.

    * **Reporter**: Displays the name of the user who has assigned the task.

    * **Due Date**: Displays the date and time by which the task is to be completed.

    * **Sample**: Displays the sample documents attached for this task.

        <img src="../images/task-details-items.png" alt="Task Details" title="Task Details" style="border: 1px solid gray; zoom:70%;">

* **More Information**: Displays additional details about the task, such as:

    * **Last Updated by**: Displays the user name who has last updated the task.

    * **Last Updated On**: Displays the last updated date and year of the task.

    * **Created by**: Displays the user who has created the task.

    * **Created On**: Displays the task request date and year that is created.

        <img src="../images/more-info.png" alt="More Info" title="More Info" style="border: 1px solid gray; zoom:70%;">

#### Transfer Task

An agent can transfer a task to another agent by selecting the Assignee from the dropdown.

**Task Assignment**

* **Assignee Allocation**: Allotment of the task to the appropriate agent based on expertise, workload, and availability.
    
    <img src="../images/assignee-allocation.png" alt="Assignee Allocation" title="Assignee Allocation" style="border: 1px solid gray; zoom:70%;">

* **Set Priorities**: Set priority levels (High, Medium, Low, Emergency, and so on) for each task to focus efforts where they are most needed.
    
    <img src="../images/set-priority.png" alt="Set Priorities" title="Set Priorities" style="border: 1px solid gray; zoom:70%;">

#### Review Task Activity

This helps agents to understand the history of the task or case and the reason behind specific actions.

**Task Monitor**:

* **Dashboard Monitor:** Check to visualize task statuses, outstanding items, and overall workload.

    <img src="../images/task-monitor.png" alt="Dashboard Monitor" title="Dashboard Monitor" style="border: 1px solid gray; zoom:70%;">

* **Track Activity:** After tasks are completed, collect the feedback through comments and event details to review the progress of each task.

Steps to View Task **Activity**:

1. Click the **Expand** icon in the **Activity** section to view the activity related to an Event.	

2. Click the **Comments** tab to view/add comments.

    <img src="../images/view-activity.png" alt="Comments" title="Comments" style="border: 1px solid gray; zoom:70%;">

3. Click **Save**.

    <img src="../images/resolved-issue.png" alt="View Comments" title="View Comments" style="border: 1px solid gray; zoom:70%;">

4. You can edit, delete, or add supported image files related to the task activity addressed.

5. Click the **Events** tab to view all the events of a case that includes changes in status, updates, or actions taken by agents.

    <img src="../images/activity-events.png" alt="Events" title="Events" style="border: 1px solid gray; zoom:70%;">

After tasks are completed, ensure that all the issues of the customers are addressed. All comments and events are filled with appropriate details created against each task. This plays a crucial role in tracking the progress of all communication made by the agents and ensuring that all relevant information is captured throughout the case lifecycle for future reference. 

#### Update Task Status 

Under the Task Details section, select the **Resolve** from the status dropdown list.

 <img src="../images/closed-task.png" alt="Update Task Status" title="Update Task Status" style="border: 1px solid gray; zoom:70%;">

**Task Closure**:

**Note:** Change each task’s status from 'Resolved' to 'Closed' once you complete all required actions. After completing all review processes, you can view the task status—such as Closed, Open, or Resolved—from the Agent **Dashboard > My Tasks > Closed**.

 <img src="../images/my-tasks-closed.png" alt="Task Closure" title="Task Closure" style="border: 1px solid gray; zoom:70%;">

## Agent Console

Agent console displays essential information for agents using the Case Management Console, focusing on the initiation of customer interactions, case creation processes, and managing cases and tasks. It streamlines the case management workflow, ensuring quick response times and effective issue resolution.

### Prerequisites

Before managing cases and tasks, ensure the following prerequisites are completed:

* Set up a Channel and Chat or Voice Bot with Customer Support dialogs. 

* Customers must have the option to select an agent during Bot or Voice interactions or conversations.

* The customer should select the agent transfer option to initiate agent interaction.

## Case Creation Process

### Create a case

The system creates cases based on the configuration defined in Case Templates. You can handle a customer case using two methods: Automated or On-Demand.

#### Automated

The process of automated case creation are configured using public APIs for channels such as emails and voicemails. Use these public APIs to get case details, update case details, and delete case details. 

!!! Note

    When automated case creation is enabled, every qualified conversation automatically derives the case data, and thus, a case is created.

#### On demand

On-demand refers to the live conversation with a customer through any channel (email, chat, or voice). The agent reviews the customer's issue or query and creates a case accordingly. Agents and Supervisors can create cases in the following ways:

* [Offline Conversation](#offline-conversation-67)

* [Live Conversation](#live-conversation-70)

**Note:** Administrators can enable the on demand feature in the "**Manage Cases**" section and assign it to a specific agent instead of enabling it for everyone.

### Offline Conversation

Agents and supervisors can manually create cases based on information that are not linked to real-time interaction, such as Emails, Voice Calls, or Chat messages. This process does not require an active conversation with the customer or access to the console that requires to manage customer issues and inquiries even outside of live interactions.

The agents can create a case using the following processes: 

* [Agent Console](#new-case-creation-68)

* [Manage Cases ](#manage-cases-43)

### Create a New Case

Steps to create a new case:

1. Navigate to **Contact Center AI** > **Agent Console**. The Agent Console displays.	

    <img src="../images/console-page.png" alt="Agent Console" title="Agent Console" style="border: 1px solid gray; zoom:70%;">

2. Click the **+** icon, and then click **Create Case**. The New Case dialog box is displayed with a Case Number assigned along with the form.

    <img src="../images/manage-new-case-unassigned.png" alt="Create Case" title="Create Case" style="border: 1px solid gray; zoom:70%;">

3. In the **Requested by** field, enter the Name of the customer who has requested to create a new case, for an Issue, Inquiry, Complaint, or a Service request.

4. Select a communication channel from the **Channels dropdown list (Voice** or **Web** or **Mobile Client**).

    * **Voice**: Select the Phone Number from the dropdown list, and add the selected country phone number that a customer belongs to.

    * **Web/Mobile Client**: Enter the **Customer’s Email** address.

5. Select the appropriate case template from the **Case Type** dropdown list, and complete it by capturing the details about the customer's issue or query.

6. Enter the case **Title** based on the issue raised by the customer.

7. Enter the case **Description** based on the conversation summary.

8. Select the **Due Date** for the case.

9. Select the case **Priority (Critical, High, Medium, Low)** from the dropdown list.

10. By default, the **Status** is set to **Open**.

11. Select the appropriate options in the **Sample** field to support the new case.

12. Click **Save**. A success message is displayed, and a new case is created. 

    !!! Note

        The created case gets assigned to agents based on the case type assignment rules.

### Live Conversation

Agents create and track cases during real-time interactions via email, voice, or chat, enabling them to address customer issues promptly while the conversation is ongoing.

### Agent Transfer

When a customer requests an agent, the system transfers the conversation by initiating a transfer workflow.

 <img src="../images/ai-agent-transfer.png" alt="Comments" title="Comments" style="border: 1px solid gray; zoom:70%;">

* **Notification Alert**

    The agent receives a notification alert in the agent console while a conversation is transferred to an agent. [Learn more](https://docs.kore.ai/xo/console/managing-incoming-interactions/){:target="_blank"}.
    
    <img src="../images/agent-transfer.png" alt="Notification Alert" title="Notification Alert" style="border: 1px solid gray; zoom:70%;">

* **Identify the Issue or Inquiry**

Once the system notifies the agent, the agent reviews the conversation and identifies the customer's issue or inquiry using the basic information the customer provides.

**Tip:** Based on the conversations, the agent provides relevant information to customers or suggests actions to resolve the issue. For example, "Refrigerator Cooling Issue”, the agent suggests troubleshooting steps based on the customer details received.

<img src="../images/basic-customer-info.png" alt="Comments" title="Comments" style="border: 1px solid gray; zoom:70%;">
    
* **Follow-up Questions**

    To further troubleshoot, the agent requires additional details from the customer that includes:

    * **Troubleshooting Questions:** The agent provides additional details to address the issues based on the use cases or queries raised. For example, the Brand Name, Model Number, Part Issue, Image of the Defective part, Sample [Attachments](https://docs.kore.ai/xo/console/interacting-with-customers/?h=attachment#sending-attachments-to-customers){:target="_blank"}, [Agent Forms](https://docs.kore.ai/xo/contactcenter/configurations/agent-forms/configure-agent-forms/){:target="_blank"}, [Add Link](https://docs.kore.ai/xo/console/interacting-with-customers/){:target="_blank"} (Web or Email address), and Create New Case.

    * **Create a New Case**: If additional information or follow-up is required, the agent can create a new case by clicking the New Case icon, using the details gathered from the customer.

        <img src="../images/create-new-case.png" alt="Comments" title="Comments" style="border: 1px solid gray; zoom:70%;">

### Case Creation via Live Interaction Pane

To create a new case through live interaction:

1. Click the **New Case** (<img src="../images/new-case-icon.png" style="zoom:100%;"></img>) icon. The **New Case** dialog box displays with a case number along with the form.

    <img src="../images/basic-info.png" alt="Comments" title="Comments" style="border: 1px solid gray; zoom:70%;">

2. Select the appropriate case template from the **Case Type** dropdown list, and capture the details of the customer's issue or query to complete it.

3. Enter the case **Title** based on the issue raised by the customer.

4. Enter the case **Description** based on the conversation summary. 

5. Select the **Due Date** for the case.

6. Select the case **Priority** (**Critical**, **High**, **Medium**, **Low**) from the dropdown list. By default, the **Status** is set to **Open**. 

7. Select the appropriate options in the **Sample** field to support the new case.

8. Click **Save**. A success message is displayed, and a new case is created and assigned to an agent.    

    <img src="../images/new-case-number.png" alt="New Case" title="New Case" style="border: 1px solid gray; zoom:70%;">

### Case Notification Alert

* **Alert Notification for Agent:** The system notifies the agent as soon as a case is assigned to them. 

* ** Click the bell notification (<img src="../images/bell-icon.png" style="zoom:100%;"></img>) icon to view all previous notifications. 

    <img src="../images/previous-notify.png" alt="Previous Notifications" title="Previous Notifications" style="border: 1px solid gray; zoom:70%;">
       
### Case Creation During a Voice Call

To create a new case during the voice call:

1. Click the New Case (<img src="../images/new-case-icon.png" style="zoom:100%;"></img>) icon shown on the voice call screen to open a case form that includes all required conversation details, such as the transcript and relevant customer information.

    <img src="../images/voice-call.png" alt="Voice Call Screen" title="Voice Call Screen" style="border: 1px solid gray; zoom:70%;">

2. Select the appropriate case template from the **Case Type** dropdown list. The template is displayed with the **Assigned to**, **Title**, and **Description** details.

    <img src="../images/new-case-template.png" alt="Case Template" title="Case Template" style="border: 1px solid gray; zoom:70%;">

3. Select the (**Critical**, **High**, **Medium**, **Low**) from the Priority dropdown list. By default, the **Status** is set to **Open**.

4. From the **Account Type** dropdown list, select the type of account associated with the case.

5. From the **Product Type** dropdown list, select the type or category of the product (or service) related to the case.

6. Click **Save** to submit the case.

### Case Creation via Email

The agent can use this feature to create a case via email while interacting with the customer. 

To create a case via email:

1. Navigate to **Contact Center AI** > **Flows & Channels** > **Digital**. 

    <img src="../images/digital-navigation.png" alt="Digital" title="Digital" style="border: 1px solid gray; zoom:70%;">

2. Select **Email** to create a new email domain. The created domain appears.
    
    <img src="../images/digital-email.png" alt="Domain Email" title="Domain Email" style="border: 1px solid gray; zoom:70%;">

3. Click **New Email Address** to register an email address for the domain. [Learn more](https://docsinternal-kore.github.io/docs/xo/channels/add-email-channel/#create-a-kore-domain-email-address){:target="_blank"}.

    <img src="../images/domain-email.png" alt="Domain Email" title="Domain Email" style="border: 1px solid gray; zoom:70%;">

4. Attach a **Flow Experience** to your **Custom** or **Kore domain Email Address**. [Learn More](https://docsinternal-kore.github.io/docs/xo/channels/add-email-channel/?h=add+email#attach-a-flow-to-a-kore-domain-email-address){:target="_blank"}.

5. Publish your Custom or Kore domain Email Address. [Learn More](https://docsinternal-kore.github.io/docs/xo/channels/add-email-channel/?h=add+email#publish-kore-domain-email-addresses){:target="_blank"}.

6. Compose an **Email** from your mailbox with the required information and click **Send**. The agent receives an email transfer acceptance response and initiates the customer interaction.
    
    <img src="../images/customer-interaction.png" alt="Customer Interaction" title="Customer Interaction" style="border: 1px solid gray; zoom:70%;">

7. Click **Reply** to gather information about the issue by interacting with the customer.

    <img src="../images/customer-reply.png" alt="Customer Reply" title="Customer Reply" style="border: 1px solid gray; zoom:70%;">

8. Click the **New Case** (<img src="../images/new-case-icon.png" style="zoom:100%;"></img>) icon to register a new case or service request. ([Learn more](https://docsinternal-kore.github.io/docs/xo/case%20management/manage-cases-and-tasks/?h=offline+conversation#create-a-new-case)).

    <img src="../images/transfer-call.png" alt="Comments" title="Comments" style="border: 1px solid gray; zoom:70%;">

9. Use the **Transfer** option to forward the **Email** conversation to another agent.

    <img src="../images/call-transfer.png" alt="Comments" title="Comments" style="border: 1px solid gray; zoom:70%;">

10. Select **End** to close the conversation after you register or address the issue.