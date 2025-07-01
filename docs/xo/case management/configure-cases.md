# Configure Cases

The configure cases feature allows you to create cases for customer inquiries, issues, and complaints, enhancing communication between customers and your service team. This section walks you through the case configuration process.

Enables administrators to configure the system to specific business needs through several key components:

* **[Fields](#fields-configuration-12)**: Create and manage custom data fields that agents use to collect relevant information during case resolution.

* **[Task Templates](#task-templates-configuration-18)**: Develop standardized task sets to streamline management across various cases.

* **[Case Templates](#case-templates-configuration-25)**: Design customizable forms with predefined tasks to guide agents through common issues, improving consistency and efficiency.

* **[Status](#status-configuration-33)**: Define and manage case statuses to track the progress of cases throughout their lifecycle.

* **[Priority](#priority-configuration-38)**: Set up priority levels to determine the urgency and order where agents can address the corresponding cases and tasks.

* **[User Management]**: Add agents, assign roles, and set capacity limits for channels and cases. Configure skills and manage agent queues. [Learn More](https://docs.kore.ai/xo/user-management/manage-users/?h=user+manage#user-management-section-features){:target="_blank"}. 

By configuring the above elements, create a case management system aligned with your specific workflows to improve agent productivity and enhance customer service quality.

## Fields Configuration

Fields are pieces of data that agents need to collect for a case. The system includes default required fields to create custom fields with different formats, such as dropdowns, checkboxes, phone numbers, emails, and URLs, based on your business needs. Using the **Fields** section, you can create and manage these fields and use them to customize case templates.

### Access Fields

Steps to access fields:

1. Access case management **Fields** by navigating to **Contact Center AI** > **Case Management** > **Configuration** > **Fields**.

    <img src="../images/config-fields.png" alt="Fields" title="Fields" style="border: 1px solid gray; zoom:70%;">

2. Select **Fields** from the left navigation panel in Case Management. 

3. The **Fields** page displays listing system fields and management options. 

### Add New Field

Steps to add a new field:

1. On the **Fields** page, click **+ New Field**. 

    <img src="../images/new-field-create.png" alt="New Field" title="New Field" style="border: 1px solid gray; zoom:70%;">

2. On the **New Field** page, complete the **General Settings** sections sequence.

    <img src="../images/general-settings.png" alt="General Settings" title="General Settings" style="border: 1px solid gray; zoom:70%;">

#### General Settings

1. Enter the **Display Name** for the field.

2. Provide a unique **Name** for internal reference.

3. Add a **Description** to explain the field's purpose (optional).

4. Select the **Field Format** from the dropdown (text, number, drop-down, multi-select, checkbox, phone number, email, or URL).

5. Enter **Placeholder** text to appear before you enter a value.

6. Enable the toggle switch for **Read-only** if needed.

7. Enter the **Tooltip Text** to display when you hover over the field.

#### Data Settings

1. In the **Data Settings**, add the **Default Value** (based on the field format), and click **Save**. 

    <img src="../images/data-settings.png" alt="Data Settings" title="Data Settings" style="border: 1px solid gray; zoom:70%;">

    !!! Note

        For the **Number** field format, enter the value and press the Enter key.

2. For the dropdown field format, click **Add Values** to enter and save values (enable the **Multi Select** if needed).  

#### Validation Settings

Validation Settings options vary by field format. ****Radio Button**, **Dropdown**, and **Checkbox** fields display the **Default Error Message** option, while other formats show only **Validate** and **Validation Rule**.

<img src="../images/validation-settings.png" alt="Validation Settings" title="Validation Settings" style="border: 1px solid gray; zoom:70%;">

1. In the **Default Error Message**, enter an **Error Message** to display if validation fails.

2. From the **Validate** dropdown, select when validation should occur:

    1. Choose **On Blur** to validate when you leave the field.

    2. Choose **On Change** to validate as you type.

3. Select **+Add Validation Rule** to set specific validation criteria.

4. Click **Save** to add the new field after completing all sections. 

### Edit Fields

Steps to edit fields:

1. On the **Fields** page, click the vertical ellipsis (<img src="../images/ellipsis-icon.png" style="zoom:50%;"></img>) button to edit the Custom fields added. 

    <img src="../images/edit-fields.png" alt="Edit Fields" title="Edit Fields" style="border: 1px solid gray; zoom:70%;">

    !!! Note

    In the **Fields** section, only the custom fields are editable. The system fields are not editable. 

2. Click **Edit** to open the edit **Field** page.

    <img src="../images/edit-field-page.png" alt="Edit Field Page" title="Edit Field Page" style="border: 1px solid gray; zoom:70%;">

3. Modify the required fields in **General Settings**, **Data Settings**, and **Validation Settings**.

4. Click **Save** to update your changes. 

### Delete Fields

Steps to delete fields:

1. On the **Fields** page, click the vertical ellipsis (<img src="../images/ellipsis-icon.png" style="zoom:50%;"></img>) button to delete the required fields.

    <img src="../images/delete-fileds.png" alt="Delete Field Page" title="Delete Field Page" style="border: 1px solid gray; zoom:70%;">

2. Select **Delete** to confirm. the following warning pop-up dialog box appears.
    
    <img src="../images/delete-confirm.png" alt="Delete Warning" title="Delete Warning" style="border: 1px solid gray; zoom:70%;">

    !!! Note

    Deleting any fields affects the use case templates that are currently in use.

## Task Templates Configuration

A Task template is the layout presented to agents for a case. It allows the agents to see when creating or managing a task. Task templates help you manage tasks by prioritizing, assigning, tracking, and automating them across various tools. You can customize templates to set default assignments (unassigned, queue, individual agent, or task creator) and include extra fields for specific tasks.

### Access Task Templates

Steps to access **Task Templates**:

Access case management **Task Templates** by navigating to **Contact Center AI** > **Case Management** > **Configuration**> **Task Templates**.

<img src="../images/task-templates.png" alt="Task Templates" title="Task Templates" style="border: 1px solid gray; zoom:70%;">

The **Task Templates** page displays the following items:

* **Name**: Displays the task request name.

* **Description**: Displays the purpose of the task.

* **Created by**: Displays the administrator's name who created the task template.

* **Status**: Displays the current status of the template (configured or other possible states).

* **Active**: Displays whether a task template is currently active or inactive. 

* **Search**: Allows you to search relevant task templates by name.

### Create New Task Templates

In the **Task Templates**, you can create and apply a standardized set of tasks across multiple cases to simplify task management and to maintain consistency.

Steps to create a new task template:

1. On the **Task Templates** page, click **+ New Task Template**. 

    <img src="../images/task-templates.png" alt="New Task Templates" title="New Task Templates" style="border: 1px solid gray; zoom:70%;">

2. On the following **New Task Template** page, complete the **Basic Information** section sequence.

    #### Basic Information

    A task is a form that back-office employees or agents use to complete work on a Case.

    <img src="../images/new-task-template-basic-info.png" alt="New Task Template Basic Info" title="New Task Template Basic Info" style="border: 1px solid gray; zoom:70%;">

1. Enter a **Name** for the task template that distinguishes it from others.

2. Enter a brief **Description** about the task template for what it is used for and what tasks it includes.

3. Based on your preferences, you can choose the following **Default Assignee** options provided:

    * **Unassigned**: By default, when a case is created with this configuration, it is not assigned to any individual.

        <img src="../images/default-assignee-unassigned.png" alt="Unassigned" title="Unassigned" style="border: 1px solid gray; zoom:70%;">

    * **Queues**: As an administrator, you can create custom queues for agents to handle specific tasks, such as one contact center agents for conversations and another for back-office agents.

        <img src="../images/default-assignee-queue.png" alt="Queues" title="Queues" style="border: 1px solid gray; zoom:70%;">

    * **Individual Agent**: Assign to a specific agent automatically.

        <img src="../images/individual-agent.png" alt="Individual Agent" title="Individual Agent" style="border: 1px solid gray; zoom:70%;">

    * **Task Creator**: Assign the task to you if you have created it.

        <img src="../images/task-creator.png" alt="Task Creator" title="Task Creator" style="border: 1px solid gray; zoom:70%;">

4. Click **Next** to move to the **New Task Template - Add Fields** page.

    <img src="../images/new-task-template-basic-info.png" alt="New Task Template" title="New Task Template" style="border: 1px solid gray; zoom:70%;">

    !!! Note

    The administrator configures the task assignment and escalation rules so that tasks are efficiently allocated to agents or back office employees upon agent case creation, ensuring the timely resolution of cases.

#### Add Fields

In the **Add Fields**, add more fields to ensure that agents provide data for specific information, and you can mark these fields as required or not.

Steps to add fields:

1. Click **+ Add Fields** to add **Custom** fields to the new task template.

    <img src="../images/edit-add-fields.png" alt="Custom" title="Custom" style="border: 1px solid gray; zoom:70%;">

    !!! Note

    Every task template must include an assignee, set to a default value of either a queue for an individual agent or an agent group.

2. Click **Create** to finalize the task template.

    <img src="../images/add-fields-create.png" alt="Create" title="Create" style="border: 1px solid gray; zoom:70%;">

### Edit Task Templates

Steps to edit new task:

1. On the **Task Templates** page, click the vertical ellipsis (<img src="../images/ellipsis-icon.png" style="zoom:50%;"></img>) button to edit the Custom task template. 

    <img src="../images/edit-task-template.png" alt="Edit Task Template" title="Edit Task Template" style="border: 1px solid gray; zoom:70%;">

2. Select **Edit** to modify the basic information as required.

    <img src="../images/edit-basic-info.png" alt="Edit Basic Info" title="Edit Basic Info" style="border: 1px solid gray; zoom:70%;">

3. Modify the required fields or add new fields if needed.

    <img src="../images/edit-add-fields.png" alt="Modify" title="Modify" style="border: 1px solid gray; zoom:70%;">

4. Click **Update** to save changes.

### Delete Task Templates

Steps to delete task template:

1. On the **Task Templates** page, click the vertical ellipsis (<img src="../images/ellipsis-icon.png" style="zoom:50%;"></img>) button to delete the Custom task template. 

<img src="../images/delete-task-template.png" alt="Delete Task Template" title="Delete Task Template" style="border: 1px solid gray; zoom:70%;">

2. Click **Delete** to **confirm**.

    <img src="../images/delete-confirm.png" alt="Delete" title="Delete" style="border: 1px solid gray; zoom:70%;">

    !!! Note

    Only administrators can deactivate cases and restrict agent access to case types. You cannot delete any cases as this affects associated templates that are currently in use.

## Case Templates Configuration

Case templates are pre-designed forms that assist agents in gathering and organizing information for various customer issues. With this feature, you can create a template that includes a name, description, and default assignment (unassigned, queue, individual agent, or case creator). These templates have default fields, add custom fields to as needed. Additionally, you can define specific tasks to be completed within the case templates.

As a user, you can view a list of all cases, including details of their active or inactive status, as created by the administrator. Apply filters or use search to find specific case types.

### Access Case Templates

Steps to access case templates:

1. Access case management **Case Templates** by navigating to **Contact Center AI** > **Case Management** > **Configuration**> **Case Templates**.

    <img src="../images/case-templates.png" alt="Case Template" title="Case Template" style="border: 1px solid gray; zoom:70%;">

    The **Case Templates** include the following attributes:

    * **Name**: Displays the unique identifier case template name, used to label and categorize cases (see agents).

    * **Description**: Displays the description of customer issues found in each case.

    * **Created by**: Displays the name of the administrator who created the template.

    * **Status**: Displays the flows or dialogs status that are Draft or Published.

    * **Active**: By default, a case template remains in active mode. 

    * If it is active and the administrator deactivates a case template, a warning message appears, indicating that agents cannot use it.

    * If it is inactive, agents cannot select or apply it to new cases, but the template remains in the system for future use.

    * **Search**: Allows searching for templates by name only.

### Creating a New Case Template

Steps to create a new case template**:

1. On the **Case Templates** page, click **+ New Case Template**. 

    <img src="../images/case-templates-creation.png" alt="New Case Template" title="New Case Template" style="border: 1px solid gray; zoom:70%;">

2. In the **New Case** panel, complete the following sections in sequence.

    #### Basic Information

    A case template is a form that agents see and refer to for different types of customer issues. It can be used to configure and manage the case effectively. 

    <img src="../images/new-case-basic-inf.png" alt="Basic Information" title="Basic Information" style="border: 1px solid gray; zoom:70%;">

    a. Enter a **Name** for the new case type for easy identification. 
    
    !!! Note
            
        Case numbers auto-generate in '*C000XXX*’ format.

    b. Enter a brief **Description** explaining the template's purpose.

    c. Based on your preferences, choose the following **Default Assignee** options provided: 

    * **Unassigned**: By default, the new case is not automatically assigned upon creation.
        
        <img src="../images/unassigned.png" alt="Unassigned" title="Unassigned" style="border: 1px solid gray; zoom:70%;"> 
            
    * **Queues**: Administrators can create queues for specific agent groups and assign them to a particular case. Customize queues or use defaults, such as creating one for contact center agents and another for back office employees.

        <img src="../images/new-case-queues.png" alt="Case Creator" title="Case Creator" style="border: 1px solid gray; zoom:70%;">
            
        !!! Note

            You should configure a fifteen-case limit per agent. If the case limit is exceeded, the system keeps additional cases in the queue.

        * **Individual Agent**: The cases automatically get assigned to a specific individual agent.         

            <img src="../images/new-case-individual-agent.png" alt="Individual Agent" title="Individual Agent" style="border: 1px solid gray; zoom:70%;"> 

        * **Case Creator**: The cases assigned to the user who has created and initiated the task.

            <img src="../images/new-case-creator.png" alt="Case Creator" title="Case Creator" style="border: 1px solid gray; zoom:70%;">

3. Click **Next** to proceed to the following **Case Fields** page.    

    <img src="../images/add-case-fields.png" alt="Case Fields" title="Case Fields" style="border: 1px solid gray; zoom:70%;">

#### Case Fields

In Case Fields, add new fields to ensure that agents provide data for specific information, and mark all the newly added fields as required or not for validation.

!!! Note

    Ensure that the fields where agents enter data are marked as required. Adding more than one field is allowed.

Steps to add fields:

1. Click **+ Add Fields** to include Custom fields.

    <img src="../images/add-case-fields.png" alt="Add Fields" title="Add Fields" style="border: 1px solid gray; zoom:70%;">

2. For each field, specify:

    * **Field Name**: Specify the Field Name, such as Customer Name, Issue Description.

    * **Type**: Specify agent-created (Custom) or admin-defined (System).

    * **Validation**: Mark the essential or newly added fields as required or not.

    * **Action**: Delete if the specified field is not required.

3. Click **Next** to proceed to the **Task** page.

    <img src="../images/new-case-next.png" alt="New Case Task" title="New Case Task" style="border: 1px solid gray; zoom:70%;">

#### Task

Task refers to a specific action or set of actions completed as part of managing a case. Tasks are often assigned to individuals or teams responsible for completing them.

1. Enable the **Custom Task** toggle switch if required for agents who can create their custom tasks in a case.

2. Click **+ Add Task** from the **Add Task** menu to create a specific task for agents.

3. Select the **Task Name** from the drop-down list provided.

4. Click **Create**. 

   <img src="../images/new-case-task.png" alt="Add Task" title="Add Task" style="border: 1px solid gray; zoom:70%;">

### Edit Case Templates

Steps to edit new case template:

1. On the **Case Templates** page, click the three vertical ellipsis (<img src="../images/ellipsis-icon.png" style="zoom:50%;"></img>) button to edit the custom case templates. 

   <img src="../images/edit-case-temlate.png" alt="Edit Case Template" title="Edit Case Template" style="border: 1px solid gray; zoom:70%;">

2. Click **Edit** to modify **Basic Information**, **Name**, and **Description**, and click **Next**.

   <img src="../images/edit-basic-info-case.png" alt="Modify basic Info" title="Edit Case Fields" style="border: 1px solid gray; zoom:70%;">

3. Modify **Case Fields** (**Field Name**, **Type**, **Validation**, or **Action**), and click **Next**.

   <img src="../images/case-fields-edit.png" alt="Edit Case Fields" title="Edit Case Fields" style="border: 1px solid gray; zoom:70%;">

4. Modify **Task** Fields (**Custom Task**, **Add Task,** or **+Add Task**) in the **Task Name** search list to add new fields if required, and click **Update** to save changes.

   <img src="../images/edit-task-case.png" alt="Modify Task" title="Modify Task" style="border: 1px solid gray; zoom:70%;">

### Delete Case Templates

Steps to delete the case template:

1. On the **Case Templates** page, click the three vertical ellipsis (<img src="../images/ellipsis-icon.png" style="zoom:50%;"></img>) button. 

   <img src="../images/delete-case-confirm.png" alt="Delete Case Template" title="Delete Case Template" style="border: 1px solid gray; zoom:70%;">

2. Click **Delete** to confirm. When you delete this, the following warning popup dialog box appears.

   <img src="../images/delete-case-template.png" alt="Delete" title="Delete" style="border: 1px solid gray; zoom:70%;">

## Status Configuration

Status configuration in case management helps to track the progress and current state of cases and tasks, ensuring they are managed effectively and efficiently. There are five different statuses (Progress, On Hold, Resolved, and Closed) by default, but you can create and manage both default and custom statuses to meet your business requirements.

There are two main categories of statuses:

* **System Statuses**: You cannot edit the system-defined statuses, which are predefined.

* **Custom Statuses**: Created by administrators to meet specific business needs, which you can edit, activate/deactivate, or delete as needed.

### Access Status Configuration

Access case management **Status** by navigating to **Contact Center AI** > **Case Management** > **Configuration** > **Status**.

   <img src="../images/new-status-access.png" alt="New Status" title="New Status" style="border: 1px solid gray; zoom:70%;">

### Manage Existing Status

You cannot edit a system status. However, you can change both Custom and System status to Active and Inactive using the toggle switch. You cannot use the inactive status anywhere else. 

### Add New Status

Steps to add a new status:

1. On the **Status** page, click **+ New Status**.    

   <img src="../images/new-status-access.png" alt="Status" title="Status" style="border: 1px solid gray; zoom:70%;">

2. In the **New Status** panel, do the following:

    1. Enter the **Name** for the status.

    <img src="../images/new-status-fields.png" alt="New Status" title="New Status" style="border: 1px solid gray; zoom:70%;">

    2. From the **Status Type** dropdown, select one of the following:

        * **Open**

        * **In Progress**

        * **On Hold**

        * **Resolved**

        * **Closed**

    3. Add a **Description** to provide context or explanation for the status's purpose (Optional).

    4. Enable the **Status Settings** to make the status available for agents by clicking the toggle switch.

3. Click **Save** at the bottom of the panel to add the new status, which gets listed on the **Status** page. By default, new statuses are set to **Active**.

### Tips for Status Configuration

* Create specific statuses for internal use (for example, **Pending Customer Response** instead of generic **On Hold**).

* Consider creating statuses for different case types or stages (for example, **Reopened** for resolved cases that need further attention).

### Edit Status

Steps to edit or delete a custom status:

1. On the **Status** page, click the three vertical ellipsis (<img src="../images/ellipsis-icon.png" style="zoom:50%;"></img>) button to edit the existing status tasks. 

    <img src="../images/edit-status-edit.png" alt="Status" title="Status" style="border: 1px solid gray; zoom:70%;">

2. Click **Edit**. The following **Edit Status** dialog page appears.

    <img src="../images/edit-status-fields.png" alt="Edit Status" title="Edit Status" style="border: 1px solid gray; zoom:70%;">

3. Turn on the **Enabled** toggle switch to make it available for agents.

4. Click **Save** after editing the required fields.

### Delete Status

Steps to delete status:

1. On the **Status** page, click the three vertical ellipsis (<img src="../images/ellipsis-icon.png" style="zoom:50%;"></img>) button to delete the existing status fields. 

    <img src="../images/edit-status-delete.png" alt="Delete" title="Delete" style="border: 1px solid gray; zoom:70%;">

2. Click **Delete** to confirm.

    <img src="../images/delete-status.png" alt="Delete Status" title="Delete Status" style="border: 1px solid gray; zoom:70%;">

## Priority Configuration

Priority configuration in case management helps agents determine which cases and tasks need immediate attention. There are four priorities (Low, Medium, High, and Critical). The administrators can create custom priorities based on specific business requirements.

There are two main categories of priorities: 

   * **System Priorities**: You cannot edit the system-defined statuses, which are predefined. 

   * **Custom Priorities**: Created by administrators to meet specific business needs.

### Access Priority Configuration

Access case management **Priority** by navigating to **Contact Center AI** > **Case Management**> **Configuration**> **Priority**. 

<img src="../images/new-priority- access.png" alt="Priority" title="Priority" style="border: 1px solid gray; zoom:70%;">

### Manage Existing Priorities

You cannot edit system priorities, but can make them inactive using the toggle switch. You cannot use the Inactive priorities elsewhere in the system. The **Priority** page lists existing system and custom priorities and is automatically sorted based on their assigned value.

### Adding a New Priority

Steps to add a new priority:

1. On the **Priority** page, click **+ New Priority**.

    <img src="../images/new-priority- access.png" alt="Priority" title="Priority" style="border: 1px solid gray; zoom:70%;">

2. In the **New Priority** page, do the following:

    a. Enter the **Name** for the priority.    

    <img src="../images/new-priority-enabled.png" alt="New Priority" title="New Priority" style="border: 1px solid gray; zoom:70%;">

    b. Add a **Description** to provide context or explanation for the priority's purpose.

    c. Enter a **Value** reflecting the priority numerically (1-15).

    d. Select an appropriate **Color** as a visual indicator of priority.

    e. Turn on the **Priority Status** toggle switch to make it available to agents. 

3. Click **Save** to add the new priority. The new priority is listed on the **Priority** page and is set to **Active** by default.

### Tips for Priority Configuration

* Use a consistent numbering system for priority values (for example, increments of 5 or 10) to allow for easy insertion of new priorities in the future.

* Choose distinct colors for each priority level to make them easily distinguishable. 

* Consider your business needs when creating custom priorities (for example, you might need an "**Emergency**" priority above "**Critical**).

### Edit Priority

Steps to edit Custom priority cases:

1. On the **Priority** page, click the three vertical ellipsis (<img src="../images/ellipsis-icon.png" style="zoom:50%;"></img>) button to edit the existing priority tasks. 

    <img src="../images/new-priority-enabled.png" alt="New Priority" title="New Priority" style="border: 1px solid gray; zoom:70%;">

2. Click **Edit**. 
    
    <img src="../images/edit-priority.png" alt="Edit Priority" title="Edit Priority" style="border: 1px solid gray; zoom:70%;">

3. Click **Save** to edit the required fields.

### Delete Status

Steps to delete the Custom priority status of cases:

1. On the **Priority** page, click the vertical ellipsis (<img src="../images/ellipsis-icon.png" style="zoom:50%;"></img>) button to delete the existing status fields.     

    <img src="../images/delete-priority.png" alt="Edit Priority" title="Edit Priority" style="border: 1px solid gray; zoom:70%;">

2. Click **Delete** to remove the custom priority cases.

    <img src="../images/delete-custom-priority.png" alt="Delete Priority" title="Delete Priority" style="border: 1px solid gray; zoom:70%;">