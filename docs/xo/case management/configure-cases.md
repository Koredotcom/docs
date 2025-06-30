# **Configure Cases **

The case management configure feature allows you to create cases for customer inquiries, issues, and complaints, enhancing communication between customers and your service team. This section walks you through the configuration process.

Administrators can configure the system to specific business needs through several key components:



* **[Fields](#fields-configuration-12)**: Create and manage custom data fields that agents use to collect relevant information during case resolution.
* **[Task Templates](#task-templates-configuration-18)**: Develop standardized task sets to streamline management across various cases.
* **[Case Templates](#case-templates-configuration-25)**: Design customizable forms with predefined tasks to guide agents through common issues, improving consistency and efficiency.
* **[Status](#status-configuration-33)**: Define and manage case statuses to track the progress of cases throughout their lifecycle.
* **[Priority](#priority-configuration-38)**: Set up priority levels to determine the urgency and order in which agents address cases and tasks.
* **[User Management](https://docs.kore.ai/xo/user-management/manage-users/?h=user+manage#user-management-section-features)**: Add agents, assign roles, and set capacity limits for channels and cases. Configure skills and manage agent queues. 

By configuring these elements, you can create a Case Management system aligned with your specific workflows to improve agent productivity and enhance customer service quality.


## **Fields Configuration**

Fields are data that agents want to collect in a case. The system includes default required fields, but you can create custom fields with different formats, such as drop-downs, checkboxes, phone numbers, emails, and URLs, based on your business needs. Using the **Fields **section, you can create and manage fields and use them to customize case templates.


### **Access Fields**

Steps to access **Fields**:



1. You can access case management **Fields **by navigating to **Contact Center AI** > **Case Management **> **Configuration **> **Fields**.

    

<p id="gdcalert10" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image10.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert11">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image10.png "image_tooltip")


2. Select **Fields **in the left navigation panel of Case Management. 
3. The **Fields **page displays listing system fields and management options. 


### **Add New Field**

Steps to add a **New Field**:



1. On the **Fields **page, click **+ New Field**. 

    

<p id="gdcalert11" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image11.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert12">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image11.png "image_tooltip")


2. On the following **New Field** page, complete the sequence of the displayed sections.

    

<p id="gdcalert12" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image12.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert13">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image12.png "image_tooltip")




#### **General Settings**



1. Enter the** Display Name** for the field.
2. Provide a unique **Name **for internal reference.
3. Add a **Description **to explain the field's purpose (optional).
4. Select the **Field Format** from the drop-down (text, number, drop-down, multi-select, checkbox, phone number, email, or URL).
5. Enter **Placeholder **text to appear before you enter a value.
6. Enable the toggle switch for **Read-only** if needed.
7. Enter the **Tooltip Text** to display when you hover over the field.


#### **Data Settings		**



1. In the **Data Settings**, add the **Default Value **(based on the field format), and click **Save**. 

    **Note**: For the **Number **field format, enter the value and press the Enter key.


    

<p id="gdcalert13" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image13.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert14">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image13.png "image_tooltip")


2. For the drop-down field format, click **Add Values** to enter and save values (enable the **Multi Select** if needed).  


#### **Validation Settings**

Options displayed in the Validation Settings section depend on the field format. For example, you can see the **Default Error Message** option for the Radio button, Drop-down, and Checkbox field formats. For other formats, you can see only the **Validate **and **Validation Rule** options.


#### 

<p id="gdcalert14" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image14.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert15">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image14.png "image_tooltip")
**	**		



1. In the **Default Error Message**, enter an **Error Message** to display if validation fails.
2. From the **Validate** drop-down, select when validation should occur:
    1. Choose **On Blur** to validate when you leave the field.
    2. Choose **On Change** to validate as you type.
3. Select **+Add Validation Rule** to set specific validation criteria.
4. Click **Save **to add the new field after completing all sections. 


### **Edit Fields**

Steps to edit **Fields**:



1. On the **Fields **page, click the vertical ellipsis (⋮) button to edit the Custom fields added. 

    

<p id="gdcalert15" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image15.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert16">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image15.png "image_tooltip")



    **Note**: In the **Fields **section, only the Custom fields are editable. The System fields are not editable. 

2. Click **Edit **to open the edit **Field **page.

    

<p id="gdcalert16" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image16.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert17">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image16.png "image_tooltip")


3. Modify the required fields in **General Settings**, **Data Settings**, and **Validation Settings**.
4. Click **Save **to update your changes. 


### **Delete Fields**

Steps to delete **Fields**:



1. On the **Fields **page, click the vertical ellipsis (⋮) button to delete the required fields. 

    

<p id="gdcalert17" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image17.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert18">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image17.png "image_tooltip")


2. Select **Delete **to confirm. When you delete this, the following warning pop-up dialog box appears.

    

<p id="gdcalert18" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image18.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert19">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image18.png "image_tooltip")



    **Note**: Deleting any fields affects the use case templates that are currently in use.



## **Task Templates Configuration**

A Task template is the layout presented to agents for a case. It allows the agents to see when creating or managing a task. Task templates help you manage tasks by prioritizing, assigning, tracking, and automating them across various tools. You can customize templates to set default assignments (unassigned, queue, individual agent, or task creator) and include extra fields for specific tasks.


### **Access Task Templates**

Steps to access **Task Templates**:



3. You can access case management **Task Templates** by navigating to **Contact Center AI** > **Case Management **> **Configuration **> **Task Templates**.

    

<p id="gdcalert19" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image19.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert20">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image19.png "image_tooltip")



The **Task Templates** page displays the following items:



* **Name**: Displays the task request name.
* **Description**: Displays the purpose of the task.
* **Created by**: Displays the administrator's name who created the task template.
* **Status**: Displays the current status of the template (configured or other possible states).
* **Active**: Displays whether a task template is currently active or inactive. 
* **Search**: Allows you to search relevant task templates by name.


### **Create New Task Templates**

In the **Task Templates**, you can create and apply a standardized set of tasks across multiple cases to simplify task management and ensure consistency.

Steps to create a **New Task Template**:



1. On the **Task Templates** page, click **+ New Task Template**. 

    

<p id="gdcalert20" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image20.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert21">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image20.png "image_tooltip")


2. On the following **New Task Template** page, complete the following sections in the displayed sequence.


#### **Basic Information**

Task is a form, though it is a work item in a Case on which the back office employee or agents will work to accomplish a case.


    

<p id="gdcalert21" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image21.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert22">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image21.png "image_tooltip")




1. Enter a **Name **for the task template that distinguishes it from others.
2. Enter a brief **Description** of what the task template is used for and what tasks it includes.
3. Based on your preferences, you can choose the following **Default Assignee** options provided:
* **Unassigned**: By default, when a case is created with this configuration, it is not assigned to any individual.

        

<p id="gdcalert22" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image22.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert23">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image22.png "image_tooltip")


* **Queues**: As an administrator, you can create custom queues for agents to handle specific tasks, such as one for contact center agents for conversations and another for back-office agents.

        

<p id="gdcalert23" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image23.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert24">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image23.png "image_tooltip")


* **Individual Agent**: Assign to a specific agent automatically.

        

<p id="gdcalert24" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image24.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert25">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image24.png "image_tooltip")


* **Task Creator**: Assign the task to you if you have created it.

        

<p id="gdcalert25" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image25.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert26">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image25.png "image_tooltip")


4. Click **Next **to move to the **New Task Template - Add Fields** page.

    

<p id="gdcalert26" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image26.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert27">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image26.png "image_tooltip")



    **Note**: The administrator configures the task assignment and escalation rules so that tasks are efficiently allocated to agents or back office employees upon agent case creation, ensuring the timely resolution of cases.



#### **Add Fields**

In the** Add Fields**, you can add more fields to ensure that agents provide data for specific information, and you can mark these fields as required or not.

Steps to **Add Fields**:



1. Click** + Add Fields** to add **Custom **fields to the New Task Template.

    

<p id="gdcalert27" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image27.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert28">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image27.png "image_tooltip")



    **Note**: Every task template must include an assignee, which you can set to a default value of either a queue for an individual agent or an agent group.

2. Click **Create **to finalize the task template.

    

<p id="gdcalert28" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image28.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert29">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image28.png "image_tooltip")




### **Edit Task Templates**

Steps to edit **New Task**:



1. On the** Task Templates** page, click the vertical ellipsis (⋮) button to edit the Custom task template. 

    

<p id="gdcalert29" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image29.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert30">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image29.png "image_tooltip")


2. Select **Edit** to modify the basic information as required.

    

<p id="gdcalert30" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image30.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert31">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image30.png "image_tooltip")


3. Modify the required fields or add new fields if needed.

    

<p id="gdcalert31" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image31.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert32">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image31.png "image_tooltip")



    

4. Click **Update **to save changes. 

    

<p id="gdcalert32" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image32.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert33">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image32.png "image_tooltip")




### **Delete Task Templates**

Steps to delete **Task Template**:



1. On the** Task Template**s page, click the vertical ellipsis (⋮) button to delete the Custom task template. 

    

<p id="gdcalert33" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image33.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert34">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image33.png "image_tooltip")


2. Click **Delete **to confirm**. **The following warning popup dialog box appears.

    

<p id="gdcalert34" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image34.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert35">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image34.png "image_tooltip")



    **Note**: Only administrators can deactivate cases and restrict agent access to case types. You cannot delete any cases as this affects associated templates that are currently in use.



## **Case Templates Configuration**

Case templates are pre-designed forms that assist agents in gathering and organizing information for various customer issues. With this feature, you can create a template that includes a name, description, and default assignment (unassigned, queue, individual agent, or case creator). These templates have default fields, which you can add custom fields to as needed. Additionally, you can define specific tasks to be completed within the case templates.

As a user, you can view a list of all cases, including details of their active or inactive status, as created by the administrator. You can also apply filters or use search to find specific case types.


### **Access Case Templates**

Steps to access **Case Templates**:



1. You can access case management **Case Templates** by navigating to **Contact Center AI** > **Case Management **> **Configuration **> **Case Templates**.



<p id="gdcalert35" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image35.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert36">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image35.png "image_tooltip")



    The **Case Templates **include the following attributes:



* **Name**: Displays the unique identifier case template name, used to label and categorize cases (agents see).
* **Description**: Displays the description of customer issues found in each case.
* **Created by**: Displays the name of the administrator who created the template.
* **Status**: Displays the flows or dialogs status that are Draft or Published.
* **Active**: By default, a case template remains in active mode. 
    * If it is active and the administrator deactivates a case template, a warning message appears, indicating that agents cannot use it.
    * If it is inactive, agents cannot select or apply it to new cases, but the template remains in the system for future use.
* **Search**: Allows searching for templates by name only.


### **Creating a New Case Template**

Steps to create a **New Case Template**:



1. On the **Case Templates** page, click **+ New Case Template**. 

    

<p id="gdcalert36" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image36.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert37">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image36.png "image_tooltip")


2. In the** New Case** panel, complete the following sections in sequence.


#### **Basic Information**

A case template is a form that agents see and refer to for different types of customer issues. It can be used to configure and manage the case effectively.


    

<p id="gdcalert37" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image37.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert38">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image37.png "image_tooltip")




1. Enter a **Name **for the new case type for easy identification.

    **Note**: Case numbers auto-generate in '*C000XXX*’ format.

2. Enter a brief **Description** explaining the template's purpose.
3. Based on your preferences, you can choose the following **Default Assignee** options provided:
* **Unassigned**: By default, the new case is not automatically assigned upon creation.

        

<p id="gdcalert38" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image38.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert39">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image38.png "image_tooltip")


* **Queues**: Administrators can create queues for specific agent groups and assign them to a particular case. You can customize queues or use defaults, such as creating one for contact center agents and another for back office employees.

        

<p id="gdcalert39" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image39.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert40">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image39.png "image_tooltip")



        **Note**: You can configure a fifteen-case limit per agent. If the case limit is exceeded, the system keeps additional cases in the queue.

* **Individual Agent**: The cases automatically get assigned to a specific individual agent. 

        

<p id="gdcalert40" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image40.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert41">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image40.png "image_tooltip")


* **Case Creator**: The cases assigned to the user who has created and initiated the task. 

        

<p id="gdcalert41" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image41.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert42">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image41.png "image_tooltip")


4. Click **Next **to proceed to the following **Case Fields** page.

    

<p id="gdcalert42" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image42.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert43">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image42.png "image_tooltip")




#### **Case Fields**

In Case Fields, you can add new fields to ensure that agents provide data for specific information, and mark all the newly added fields as required or not for validation.

**Note**: Ensure that fields where data is entered for agents are marked as required. You can add more than one field.

Steps to **Add Fields**:



1. Click **+ Add Fields **to include Custom fields.

    

<p id="gdcalert43" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image43.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert44">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image43.png "image_tooltip")


2. For each field, specify:
* **Field Name**: Specify the Field Name, such as Customer Name, Issue Description.
* **Type**: Specify agent-created (Custom) or admin-defined (System).
* **Validation**: Mark the essential or newly added fields as required or not.
* **Action**: Delete if the specified field is not required.
3. Click **Next **to proceed to the** Task **page.

    

<p id="gdcalert44" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image44.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert45">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image44.png "image_tooltip")




#### **Task**

Task refers to a specific action or set of actions completed as part of managing a case. Tasks are often assigned to individuals or teams responsible for completing them.



<p id="gdcalert45" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image45.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert46">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image45.png "image_tooltip")




1. Enable the **Custom Task** toggle switch if required for agents who can create their custom tasks in a case.
2. Click **+ Add Task **from the **Add Task** menu to create a specific task for agents**.**
3. Select the **Task Name** from the drop-down list provided.
4. Click **Create**. 


### **Edit Case Templates**

Steps to edit **New Case Template**:



1. On the **Case Templates** page, click the three vertical ellipsis (⋮) button to edit the custom case templates. 

    

<p id="gdcalert46" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image46.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert47">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image46.png "image_tooltip")


2. Click **Edit **to modify **Basic Information, Name, **and **Description**, and click **Next**.** **

    

<p id="gdcalert47" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image47.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert48">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image47.png "image_tooltip")


3. Modify **Case Fields (Field Name, Type, Validation, or Action), **and click **Next**.

    

<p id="gdcalert48" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image48.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert49">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image48.png "image_tooltip")


4. Modify **Task **Fields (**Custom Task**, **Add Task,** or **+Add Task)** in the **Task Name **search list to add new fields if required, and click **Update **to save changes**.**

    

<p id="gdcalert49" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image49.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert50">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image49.png "image_tooltip")




### **Delete Case Templates**

Steps to delete the **Case Template**:



1. On the **Case Templates** page, click the three vertical ellipsis (⋮) button. 

    

<p id="gdcalert50" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image50.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert51">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image50.png "image_tooltip")


2. Click **Delete **to confirm**. **When you delete this, the following warning popup dialog box appears.

    

<p id="gdcalert51" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image51.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert52">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image51.png "image_tooltip")




## **Status Configuration**

Status configuration in case management helps to track the progress and current state of cases and tasks, ensuring they are managed effectively and efficiently. There are five different statuses (Progress, On Hold, Resolved, and Closed) by default, but you can create and manage both default and custom statuses to meet your business requirements.

There are two main categories of statuses:



* **System Statuses**: You cannot edit the system-defined statuses, which are predefined.
* **Custom Statuses**: Created by administrators to meet specific business needs, which you can edit, activate/deactivate, or delete as needed.


### **Access Status Configuration**

You can access case management **Status **by navigating to **Contact Center AI** > **Case Management **> **Configuration **> **Status**.



<p id="gdcalert52" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image52.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert53">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image52.png "image_tooltip")



### **Manage Existing Status**

You cannot edit a system status. However, you can change both Custom and System status to Active and Inactive using the toggle switch. You cannot use the inactive status anywhere else. 


### **Add New Status**

Steps to add** a New Status**:



1. On the **Status **page, click **+** **New Status**.

    

<p id="gdcalert53" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image53.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert54">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image53.png "image_tooltip")


2. In the **New Status** panel, do the following:
    1. Enter the **Name **for the status.

        

<p id="gdcalert54" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image54.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert55">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image54.png "image_tooltip")


    2. From the **Status Type** drop-down, select one of the following:
        * **Open**
        * **In Progress**
        * **On Hold**
        * **Resolved**
        * **Closed**
    3. Add a **Description **to provide context or explanation for the status's purpose (Optional).
    4. Status Settings: To make the status available to agents, enable it by clicking the toggle switch.
3. Click **Save **at the bottom of the panel to add the new status. It is listed on the Status page. By default, new statuses are set to **Active**.


### **Tips for Status Configuration**



* Create specific statuses for internal use (for example, "Pending Customer Response" instead of generic "On Hold").
* Consider creating statuses for different case types or stages (for example, "Reopened" for resolved cases that need further attention).


### **Edit Status**

Steps to edit or delete a Custom **Status**:



1. On the **Status **page, click the three vertical ellipsis (⋮) button to edit the existing status tasks. 

    

<p id="gdcalert55" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image55.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert56">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image55.png "image_tooltip")


2. Click **Edit. **The following **Edit Status **dialog page appears.

    

<p id="gdcalert56" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image56.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert57">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image56.png "image_tooltip")


3. Turn on the **Enabled **toggle switch to make it available for agents.
4. Click **Save **after editing the required fields.


### 


### **Delete Status**

Steps to delete **Status**:



1. On the **Status **page, click the three vertical ellipsis button to delete the existing status fields. 

<p id="gdcalert57" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image57.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert58">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image57.png "image_tooltip")

2. Click **Delete **to confirm.

    

<p id="gdcalert58" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image58.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert59">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image58.png "image_tooltip")




## 


## **Priority Configuration**

Priority configuration in case management helps agents determine which cases and tasks need immediate attention. There are four priorities (Low, Medium, High, and Critical) by default, but administrators can create custom priorities based on specific business requirements.

There are two main categories of priorities:



* **System Priorities**: You cannot edit the system-defined statuses, which are predefined.
* **Custom Priorities**: Created by administrators to meet specific business needs.


### **Access Priority Configuration**

You can access case management **Priority **by navigating to **Contact Center AI** > **Case Management **> **Configuration **> **Priority**.



<p id="gdcalert59" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image59.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert60">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image59.png "image_tooltip")



### **Manage Existing Priorities**

You cannot edit system priorities, but make them inactive using the toggle switch. You cannot use the Inactive priorities elsewhere in the system. The **Priority **page lists existing System and Custom priorities and is automatically sorted based on their assigned value.


### **Adding a New Priority**

Steps to add a **New Priority**:



1. On the **Priority **page, click **+ New Priority**.

    

<p id="gdcalert60" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image60.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert61">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image60.png "image_tooltip")


2. In the** New Priority** page, do the following:
    1. Enter the **Name** for the priority.

    

<p id="gdcalert61" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image61.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert62">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image61.png "image_tooltip")


    2. Add a **Description** to provide context or explanation for the priority's purpose.
    3. Enter a **Value** reflecting the priority numerically (1-15).
    4. Select an appropriate **Color** as a visual indicator of priority.
    5. Turn on the **Priority Status** toggle switch to make it available to agents.
3. Click **Save** to add the new priority. The new priority is listed on the **Priority **page and is set to **Active** by default.


### **Tips for Priority Configuration**



* Use a consistent numbering system for priority values (for example, increments of 5 or 10) to allow for easy insertion of new priorities in the future.
* Choose distinct colors for each priority level to make them easily distinguishable.
* Consider your business needs when creating custom priorities (for example, you might need an "**Emergency**" priority above "**Critical**").


### **Edit Priority**

Steps to edit Custom **Priority **cases:



1. On the **Priority **page, click the three vertical ellipsis (⋮) button to edit the existing priority tasks. 

    

<p id="gdcalert62" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image62.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert63">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image62.png "image_tooltip")


2. Click **Edit. **The following **Edit Priority** dialog page appears.

    

<p id="gdcalert63" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image63.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert64">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image63.png "image_tooltip")


3. Click **Save **to** **edit the required fields.


### **Delete Status**

Steps to delete the Custom **Priority **Status of Cases:



1. On the **Priority **page, click the vertical ellipsis (⋮) button to delete the existing status fields. 

    

<p id="gdcalert64" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image64.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert65">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image64.png "image_tooltip")


2. Click **Delete **to remove the custom priority cases.

    

<p id="gdcalert65" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image65.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert66">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image65.png "image_tooltip")




#