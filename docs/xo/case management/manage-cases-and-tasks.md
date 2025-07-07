# Manage Cases and Tasks

Agents effectively manage cases and tasks to ensure timely resolutions and high customer satisfaction—from the moment they receive assignments until they successfully resolve them.

## Manage Cases

A case represents a formal record of a specific situation or problem that requires management, attention, or resolution. It encompasses individual instances or records of events, issues, or requests that demand attention, tracking, and resolution.

Managing cases involves a systematic approach to ensure that all aspects of a case are addressed efficiently and effectively.

### Access Manage Cases

To access cases, navigate to **Contact Center AI > Case Management > Manage Cases > Cases**.  
<img src="../images/accessing-cases.png" alt="Cases" title="Cases" style="border: 1px solid gray; zoom:70%;">

Each case in the system includes the following details:

* **ID:** Displays a unique identifier ID of a case or service request.

* **Title:** Displays a brief title describing the service request. 

* **Customer:** Displays the name of the customer who requested the case.

* **Channels:** Displays the channel name through which the request is made (Web or Mobile Client).

* **Status:** Displays the current state of the case.

* **Priority:** Displays the priority level of the case (Critical, High, Medium, Low).

* **Last Updated:** Displays the last updated date and time of the case.

* **ETA:** Displays the estimated due date. It is calculated based on the due date and system date. If it is overdue, then it is due today or the target date.

* **Assignee:** Displays the name of the agent to whom the case is assigned (not applicable for Unassigned, My Cases, and Closed).

The users can access the additional menu items for the Cases:

* **My Cases:** Cases assigned to the agent or back office employee.

* **My Tasks:** Tasks assigned to the agent or back office employee.

* **Closed:** Closed cases.

* **Search Cases:** Enables searching for specific cases based on field values or content (for example, case ID, status, priority, keywords in case descriptions or notes).

### Create Cases (Outside the Agent Console)

Steps to create a new case:

1. Access cases by navigating to **Contact Center AI > Case Management > Manage Cases > Cases**. The unresolved cases page displays.  
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

A supervisor can view various cases of the following statuses:

* **Unresolved:** Cases that are still active (work-in-progress) and not yet resolved or closed.

* **Unassigned:** Cases that are identified but not yet assigned to a case manager or team member.

* **All Cases:** Displays a comprehensive view of all cases within the system, regardless of their status.

* **My Cases:** Cases that are assigned to the agent or back office employee.

* **Closed:** Cases that are completed and closed.
    
* **Search Cases:** Search for cases based on various field values (for example, case ID, status, priority).

    !!! Note

        The supervisor can set the capacity limit of each case in the system for specific agents. The cases remain in the queue until an agent is available. 
        
    By clicking any of the existing **Unresolved** cases, you can view the following sections of a Case, such as associated tasks, customer details, current status, and activity logs.  
    <img src="../images/manage-task-details.png" alt="Fields" title="Fields" style="border: 1px solid gray; zoom:70%;">

    The following is one example of an **Unresolved** Case details that includes the following sections:

* **Description:** Displays a summary of the service request issue.

* **Tasks:** Displays the number of tasks created against a case assigned to an agent, which includes the unique task ID, task name, agent name, task status, and task priority level. 

    *  **Add New Task:** Allows you to add new tasks related to a case.  
    <img src="../images//case-task.png" alt="Case Details" title="Case Details" style="border: 1px solid gray; zoom:70%;">

    * **Custom:** This message appears when the **Custom Task** checkbox option is enabled for agents about a case while creating **Case Templates**. 

    * **Activity:** Displays the specific actions taken to manage a case.

    * **Add Comments:** Displays the comment box related to an activity entered by the supervisor or agent.  
    <img src="../images/add-activity-comment.png" alt="Comments" title="Comments" style="border: 1px solid gray; zoom:70%;">

    * **Add Comment and Send as Email**: Allows you to add a comment and send as an email (along with the email address) before saving it to the comment.  
    <img src="../images/activity-comment.png" alt="Comments" title="Comments" style="border: 1px solid gray; zoom:70%;">

    * **Email:** Displays the email and standard response template to add the required details of the case.  
    <img src="../images/email-attachment.png" alt="Email" title="Email" style="border: 1px solid gray; zoom:70%;">

    * **File Attachment:** Displays the image or file attachment icons to support the case when you click the attachment icon.  
    <img src="../images/attached-file-cases.png" alt="File Attachment" title="File Attachment" style="border: 1px solid gray; zoom:70%;">

    * **Standard Responses:** Displays the predefined text signatures to quickly select and send to the customers.  
    <img src="../images/signature.png" alt="Standard Responses" title="Standard Responses" style="border: 1px solid gray; zoom:70%;">

    * **Edit Comments:** Displays you to edit the entered comment related to the case.  
    <img src="../images/view-comments.png" alt="Edit Comments" title="Edit Comments" style="border: 1px solid gray; zoom:70%;">

    * **Format:** Displays formatting icons to edit your email content, such as bold, italic, ordered list, and so on.  
    <img src="../images/comment-box-format.png" alt="Comment Box Format" title="Comment Box Format" style="border: 1px solid gray; zoom:70%;">

    * **Events:** Displays the associated events related to the cases and tasks.  
    <img src="../images/activity-events.png" alt="Event Activity" title="Event Activity" style="border: 1px solid gray; zoom:70%;">

    * **Case Details:** Displays the information where the agent can view the following case details of a case.

    * **More Information:** Displays the additional details about the case.

            !!! Note

                As an agent, you can manually update the case status based on progress or updates received from back office employees and other agents. For instance, you can create additional tasks to address any outstanding issues if the case is not marked as **Closed**.

### Transfer or Update Cases

The agent can transfer a case to another agent by selecting the **Assignee** from the dropdown list.  
<img src="../images/case-transfer.png" alt="Transfer" title="Transfer" style="border: 1px solid gray; zoom:70%;">

### Update or Resolve Case Status

1. Under the case details section, select the **Resolve** from the status dropdown list.  
<img src="../images/resolved-case-update.png" alt="Comments" title="Comments" style="border: 1px solid gray; zoom:70%;">

2. When the review processes are completed by the agent, the agent can view all the case statuses, including Closed, Open, Resolved, and so on, from the agent **Dashboard > My Cases > Closed**.  
<img src="../images/closed-my-cases.png" alt="Closed Cases" title="Closed Cases" style="border: 1px solid gray; zoom:70%;">

3. To view the status of all closed cases on the Dashboard and Manage Cases, see [Analyze Case Management](#analyze-cases-and-tasks){:target="_blank"}.  
<img src="../images/manage-all-cases-closed.png" alt="Managed Closed Cases" title="Managed Closed Cases" style="border: 1px solid gray; zoom:70%;">

4. Ensure all required actions and activities associated with the task are completed and changed to resolve with a proper comment before closing the case.  
<img src="../images/resolved-case-update.png" alt="Resolved Cases" title="Resolved Cases" style="border: 1px solid gray; zoom:70%;">

5. Review the case to ensure that all aspects of the requested issue are addressed and resolved satisfactorily. 

6. Ensure all processes and tasks are completed before marking the case and all associated tasks as **Resolved**, and then change the status of the case to **Closed**.  
<img src="../images/case-closed-status.png" alt="Closed Status" title="Closed Status" style="border: 1px solid gray; zoom:70%;">

## Manage Tasks

Task management helps agents resolve cases efficiently by ensuring all necessary actions are completed. You can configure assignment rules for new cases to allocate tasks to agents or back office employees based on their availability, capacity, and skills. The system automatically sends notifications to agents when tasks are transferred or updated, providing current task information, comments, and status updates for streamlined management.

The Agent can perform the following actions:

* View and update all required fields in the assigned task (active or inactive).

* Provide comments on the task for tracking progress and providing context.

* Change the status of the task to the next level upon completion.

* Assign the task to itself, and can transfer the task to another agent or to another back office employee.

* Select another agent from the list and reassign the task.

* View all details of the task assigned to them, including any previous comments and status changes.

* Create, edit, or delete tasks until the case is closed.

### Task Notifications

Agents are notified through the case management system (Console) when any new tasks are assigned.  
<img src=">../images/task-notofications.png" alt="Task Notification" title="Task Notification" style="border: 1px solid gray; zoom:70%;">

### Access Tasks

To access manage tasks, navigate to **Contact Center AI > Case Management > Manage Cases > Tasks**.  
<img src="../images/manage-cases-tasks.png" alt="Tasks" title="Tasks" style="border: 1px solid gray; zoom:70%;">

    !!! Note

        The agent can easily switch between custom tasks and task templates.

### Add New Task

To Add a New Task:

1. Click on any of the cases from the **Tasks** page.  
<img src="../images/add-new-task.png" alt="Add New Task" title="Add New Task" style="border: 1px solid gray; zoom:70%;">

2. Click the **+ Add New Task**. By default, the New Task dialog box is displayed with a default Task Number assigned.  
<img src="../images/new-task.png" alt="New Task" title="New Task" style="border: 1px solid gray; zoom:70%;">

3. Select the Task Type for the related case from the dropdown list provided.

4. Select a **Due Date** to complete the task.

5. Enter a case **Description** based on the conversation case summary.

6. Enter a case **Title** based on the issue raised by the customer.

7. Select the task **Priority (Critical, High, Medium, Low)** from the dropdown list. By default, the **Status** is set to **Open**.

8. Click **Save**. A success message of the task creation is displayed, and a new custom task is created and assigned to the agent.

    !!! Note

        All the red asterisk (*) marked fields are mandatory to fill up.
<img src="../images/task-message-successful.png" alt="Task Creation Successful" title="Task Creation Successful" style="border: 1px solid gray; zoom:70%;">

      !!! Note

        The agent cannot create or edit tasks once a case is closed. The system prevents task creation if required fields are missing or invalid.

### View Tasks Components

This section displays the task description, task details, current status, and activity logs. Click any existing unresolved tasks to expand and view detailed information.  
<img src="../images/view-tasks.png" alt="View Tasks" title="View Tasks" style="border: 1px solid gray; zoom:70%;">

### Transfer Task

An agent can transfer a task to another agent by selecting the Assignee from the dropdown.

To assign a task:

1. Allot the task to the appropriate agent based on expertise, workload, and availability.

2. Set priority levels (High, Medium, Low, Emergency, and so on) for each task to focus efforts where they are most needed.

### Review Task Activity

Review task activity enables agents to understand the task or case history and the rationale for specific actions.

To monitor a task:

1. To view task statuses, outstanding items, and overall workload, check the dashboard.  
<img src="../images/task-monitor.png" alt="Dashboard Monitor" title="Dashboard Monitor" style="border: 1px solid gray; zoom:70%;">

2. After tasks are completed, collect the feedback through comments and event details to review the progress of each task.

To view task activity:

1. In the **Activity** section, select the **Expand** icon.

2. Click the **Comments** tab to view/add comments.  
<img src="../images/view-activity.png" alt="Comments" title="Comments" style="border: 1px solid gray; zoom:70%;">

3. Click **Save**. You can edit, delete, or add supported image files related to the task activity addressed.  
<img src="../images/resolved-issue.png" alt="View Comments" title="View Comments" style="border: 1px solid gray; zoom:70%;">

4. Click the **Events** tab to view all the events of a case that includes changes in status, updates, or actions taken by agents.  
<img src="../images/activity-events.png" alt="Events" title="Events" style="border: 1px solid gray; zoom:70%;">

After you complete tasks, verify that all customer issues are addressed. Ensure that all comments and events contain appropriate details for each task. This information helps track agent communication progress and captures all relevant information throughout the case lifecycle for future reference.

### Update Task Status 

Under the Task Details, select the **Resolve** from the status dropdown.  
<img src="../images/closed-task.png" alt="Update Task Status" title="Update Task Status" style="border: 1px solid gray; zoom:70%;">

### Task Closure

Change each task's status from **Resolved** to **Closed** after you complete all required actions. After you complete all review processes, you can view the task status (such as Closed, Open, or Resolved) from the Agent **Dashboard > My Tasks > Closed**.  
<img src="../images/my-tasks-closed.png" alt="Task Closure" title="Task Closure" style="border: 1px solid gray; zoom:70%;">


## Agent Console

The Agent console displays essential information for agents who use the Case Management Console. It focuses on initiating customer interactions, creating cases, and managing cases and tasks. The console streamlines the case management workflow to ensure quick response times and effective issue resolution.

## Prerequisites

Before managing cases and tasks, ensure the following prerequisites are completed:

* Set up a Channel and Chat or Voice Bot with Customer Support dialogs. 

* Customers must have the option to select an agent during Bot or Voice interactions or conversations.

* The customer should select the agent transfer option to initiate agent interaction.

## Create a case

The system creates cases based on the configuration defined in Case Templates. You can handle a customer case using two methods: Automated or On-Demand.

### Automated

The process of automated case creation are configured using public APIs for channels such as emails and voicemails. Use these public APIs to get case details, update case details, and delete case details. 

!!! Note

    When automated case creation is enabled, every qualified conversation automatically derives the case data, and thus, a case is created.

### On demand

On-demand refers to the live conversation with a customer through any channel (email, chat, or voice). The agent reviews the customer's issue or query and creates a case accordingly. Agents and Supervisors can create cases in the following ways:

* [Offline Conversation](#offline-conversation)

* [Live Conversation](#live-conversation)

!!! Note

    Administrators can enable the on demand feature in the **Manage Cases** section and assign it to a specific agent instead of enabling it for everyone.

## Offline Conversation

Agents and supervisors can manually create cases based on information that are not linked to real-time interaction, such as Emails, Voice Calls, or Chat messages. This process does not require an active conversation with the customer or access to the console that requires to manage customer issues and inquiries even outside of live interactions.

The agents can create a case using the following processes: 

* [Agent Console](#create-a-new-case)

* [Manage Cases](#manage-cases)

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

## Live Conversation

Agents create and track cases during real-time interactions via email, voice, or chat, enabling them to address customer issues promptly while the conversation is ongoing.

## Agent Transfer

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

1. Click the **New Case**.  
<img src="../images/new-case-icon.png" style="zoom:100%;"></img> icon. The **New Case** dialog box displays with a case number along with the form.

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

* **Click the bell notification:** Icon to view all previous notifications.
       
### Case Creation During a Voice Call

To create a new case during the voice call:

1. Click the New Case icon shown on the voice call screen to open a case form that includes all required conversation details, such as the transcript and relevant customer information.  
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

1. Navigate to **Contact Center AI > Flows & Channels > Digital**.  
<img src="../images/digital-navigation.png" alt="Digital" title="Digital" style="border: 1px solid gray; zoom:70%;">

2. Select **Email** to create a new email domain. The created domain appears.  
<img src="../images/digital-email.png" alt="Domain Email" title="Domain Email" style="border: 1px solid gray; zoom:70%;">

3. Click **New Email Address** to register an email address for the domain. [Learn more](../channels/add-email-channel.md#create-a-kore-domain-email-address){:target="_blank"}.  
<img src="../images/domain-email.png" alt="Domain Email" title="Domain Email" style="border: 1px solid gray; zoom:70%;">

4. Attach a **Flow Experience** to your **Custom** or **Kore domain Email Address**. [Learn More](../channels/add-email-channel.md#delete-a-kore-domain-email-address){:target="_blank"}.

5. Publish your Custom or Kore domain Email Address. [Learn More](../channels/add-email-channel.md#publish-kore-domain-email-addresses){:target="_blank"}.

6. Compose an **Email** from your mailbox with the required information and click **Send**. The agent receives an email transfer acceptance response and initiates the customer interaction.  
<img src="../images/customer-interaction.png" alt="Customer Interaction" title="Customer Interaction" style="border: 1px solid gray; zoom:70%;">

7. Click **Reply** to gather information about the issue by interacting with the customer.  
<img src="../images/customer-reply.png" alt="Customer Reply" title="Customer Reply" style="border: 1px solid gray; zoom:70%;">

8. Click the **New Case** icon to register a new case or service request. [Learn more](#create-a-new-case).  
<img src="../images/transfer-call.png" alt="Comments" title="Comments" style="border: 1px solid gray; zoom:70%;">

9. Use the **Transfer** option to forward the **Email** conversation to another agent.  
<img src="../images/call-transfer.png" alt="Comments" title="Comments" style="border: 1px solid gray; zoom:70%;">

10. Select **End** to close the conversation after you register or address the issue.