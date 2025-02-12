# Agent Scorecards

Agent Scorecards facilitate the development of evaluation criteria at the individual agent level, focusing on configured performance areas such as salesmanship, product knowledge, and so on. Attributes are defined by integrating relevant evaluation metrics. Additionally, each agent is assessed based on all assigned scorecards during each call transfer, allowing for multiple scorecards per agent. Prior to creating scorecards, it is essential to create agent attributes.

!!! note

    To view **Agent Scorecards** and **Agent Attributes**, you must have to enable the **Agent Scorecards** toggle view in the **Settings** of Quality AI.

A Supervisor has the following types of permissions for the agent scorecards:

* Full access, to edit, and create agent scorecards and attributes
* No access, to edit, and create agent scorecards and attributes
* Only view access for the existing agent scorecards and attributes.

You can view Agent Scorecards by navigating to **Contact Center AI** > **Quality AI** > **Configure** > **Agent Score Cards**.  
<img src="../agent-scorecards/images/agent-scorecard-landing-page.png" alt="Agent Score Card" title="Agent Score Card" style="border: 1px solid gray; zoom:70%;">

## Create a New Agent Scorecard

Steps to create **New Agent Score Card**:

1. Click the **+New Agent Score Card**, displayed on the top-right corner of the **Agent Score Card** page.  
    <img src="../agent-scorecards/images/agent-scorcard-defult-page.png" alt="New Agent Score Card" title="New Agent Score Card" style="border: 1px solid gray; zoom:70%;">

### Settings

2. Click **Settings** from the following **Add New Agent Score Card** window.  
    <img src="../agent-scorecards/images/add-new-agent-score-card-settings.png" alt="Agent Scorecards Settings" title="Agent Scorecards Settings" style="border: 1px solid gray; zoom:70%;">

3. In the **Name** field, enter the name of the agent scorecard.

4. Enter a short **Description** (optional) for the newly created agent scorecard.

5. Enable the **Mark as Default** toggle option to assign the default scorecards across all agents. By default, the toggle option is enabled for the first scorecard created. The pass score must be configured (40 by default).

    !!! note

        There must be an active default scorecard. The first scorecard created must be a mandatory default scorecard, which is assigned to all agents. If you try to enable the default scorecard toggle view, then the following warning pop-up window appears stating that you cannot disable the default scorecard unless another scorecard is replaced with the default.   

    <img src="../agent-scorecards/images/default-scorecard-alert.png" alt="default scorecard" title="default scorecard" style="border: 1px solid gray; zoom:100%;">  

    !!! note

        When there is an existing default scorecard, and you try to disable the default scorecard toggle status, then you will get the following warning pop-up window stating that the default scorecard cannot be disabled; you must assign another scorecard as default before disabling.   
         
    <img src="../agent-scorecards/images/enable-default-scorecard.png" alt="Enable Defualt" title="Enable Defualt" style="border: 1px solid gray; zoom:100%;">  

### Agent Attributes

1. Select **Agent Attributes**, the following screen appears.     
    <img src="../agent-scorecards/images/agent-attributes.png" alt="Add Agent Attributes" title="Add Agent Attributes" style="border: 1px solid gray; zoom:70%;"> 

7. In the **Agent Attributes**, search and add more than one agent attribute.
8. Click **Add Agent Attributes** to add to an agent scorecard. The following screen appears.  
    <img src="../agent-scorecards/images/add-agent-attributes-weightage.png" alt="Add Agent Attributes Weightage" title="Add Agent Attributes Weightage" style="border: 1px solid gray; zoom:70%;"> 
    
9. Assign a **Weightage** for the agent attribute selected.

    !!! note

        If a scorecard is set as the default, the score displayed will be based on that default scorecard in the agent leaderboard and agent dashboard.

### Assignments

10. Select **Assignments**, the following screen appears.  
    <img src="../agent-scorecards/images/assignments.png" alt="Assignments" title="Assignments" style="border: 1px solid gray; zoom:70%;"> 

11. In the **Agents**, assign scorecards across the required agent by searching an **Agents** name and click **Add Agents** to add agent names.  
    <img src="../agent-scorecards/images/add-agents.png" alt="Add Agents" title="Add Agents" style="border: 1px solid gray; zoom:70%;"> 

12. In the Agent Groups,assign scorecards at an agent group level, search for an **Agent Group** name to add the agent group to a queue.  
13. Click **Add Groups** to add the agent groups to a queue.  
    <img src="../agent-scorecards/images/add-agent-group.png" alt="Add Agents" title="Add Agents" style="border: 1px solid gray; zoom:70%;"> 

14. Click **Create**, the newly created scorecard for the agent and agent group is added as shown below and the status toggle must be enabled to start agent level scoring based on that scorecard.  
    <img src="../agent-scorecards/images/newly-created-scorecard.png" alt="Newly Added Scorecard" title="Newly Added Scorecard" style="border: 1px solid gray; zoom:70%;"> 

The Agent scorecards include the following:

* **Name**: This shows the name of the agent or agent group.
* **Agent Attributes**: This shows the agent attribute name.
* **Assignee**: This shows the assignee name who has assigned the scorecard to the agent.
* **Created By**: This shows the user name who has created the agent scorecard.
* **Pass Score**: This shows the minimum pass score that the agent has to attain.
* **Status**: This shows the status of the scorecard whether it is active or inactive.

    !!! note

        If an agent scorecard has been marked as default, the assignments section of the creation modal should not be shown, and the scorecard must be assigned across all the agents present in the queues of the user.

## Edit Agent Scorecard

Steps to edit or update the agent scorecard:

1. Select any of the agent scorecards, and right-click on the **Vertical Ellipse** button. The following screen appears.  
    <img src="../agent-scorecards/images/vertical-elipsis-edit-button.png" alt="Vertical Ellipse Edit Button" title="Vertical Ellipse Edit Button" style="border: 1px solid gray; zoom:70%;"> 

2. Click **Edit** to update the existing agent scorecard details.  
   <img src="../agent-scorecards/images/edit-agent-scorecard.png" alt="Quality AI Dashboard" title="Quality AI Dashboard" style="border: 1px solid gray; zoom:70%;"> 

3. Modify the required details in the **Settings**,  **Agent Attributes**, and **Assignments**.  
   <img src="../agent-scorecards/images/update-agent-scorecard.png" alt="Quality AI Dashboard" title="Quality AI Dashboard" style="border: 1px solid gray; zoom:70%;"> 

!!! Note 

    If you want to assign a different scorecard as default, then the following warning pop-up window is displayed stating that the existing default scorecard will be replaced by the new one, and upon confirming, the new scorecard gets applied or replaced as default. 
        
    <img src="../agent-scorecards/images/enable-default-scorecard.png" alt="Enable Defualt" title="Enable Defualt" style="border: 1px solid gray; zoom:85%;">  

4. Click **Update** to save the changes.

## Delete Agent Scorecard

Steps to delete the agent scorecard:

1. Select any of the agent scorecards, and right-click on the vertical ellipse button. The following screen appears.  
    <img src="../agent-scorecards/images/edit and delete-agent-scorecard.png" alt="Edit" title="Edit" style="border: 1px solid gray; zoom:70%;"> 

2. Click **Delete**. The following warning popup window appears.    
    <img src="../agent-scorecards/images/delete-agent-scorecard.png" alt="Delete Button" title="Delete Button" style="border: 1px solid gray; zoom:70%;"> 
    
    !!! note

        If the user tries to delete the default scorecard, a warning pop-up dialog box appears stating that the default scorecard cannot be deleted. To do this, you have to assign another scorecard as default before deleting this scorecard. If you delete the scorecard, the associated data will be lost, which is associated with this scorecard.

# Agent Attributes

This feature enables the creation of agent attributes by combining existing evaluation metrics. This calculates the Agent Attribute Score using data from evaluation metric results. Agent attributes are specific areas of performance relevant to an agent's role like Professionalism, Product Knowledge, Problem-solving skills, and Customer service skills. 

Users can view **Agent Attributes** by navigating to **Contact Center AI** > **Quality AI** > **Configure** > **Agent Attributes**. 
<img src="../agent-scorecards/images/agent-attributes-default-screen.png" alt="Agent Attributes" title="Agent Attributes" style="border: 1px solid gray; zoom:70%;"> 

## Create a New Agent Attribute

Steps to create **New Agent Attribute**:

1. From the **Agent Score Cards**, select the **Agent Attributes** > **+New Agent Attribute** displayed on the top-right corner of the **Agent Attributes** page.  
    <img src="../agent-scorecards/images/new-agent-attribute1.png" alt="New Agent Attribute" title="New Agent Attribute" style="border: 1px solid gray; zoom:70%;">

2. Upon clicking the **+New Agent Attribute**, the following **Add New Agent Attribute** screen appears.   
<img src="../agent-scorecards/images/add-new-agent-attribute.png" alt="Add New Agent Attribute" title="Add New Agent Attribute" style="border: 1px solid gray; zoom:70%;"> 

    * In the **Name** field, enter the name of the agent attribute.
    * Enter a short **Description** (optional) for the newly created agent attribute.
    * In the **Add Evaluation Metrics**, search for the required evaluation metrics to add. 
    * Search and click the **Add Evaluation Metrics** to select an option. The following screen appears with the selected evaluation metrics.  
<img src="../agent-scorecards/images/add-new-agent-attribute.png" alt="Add Evaluation Metrics" title="Add Evaluation Metrics" style="border: 1px solid gray; zoom:70%;"> 

3. Click **Create**. The following screen appears with the newly added agent attribute options.   
<img src="../agent-scorecards/images/added-new-attributes.png" alt="Updated Attributes List" title="Updated Attributes List" style="border: 1px solid gray; zoom:70%;"> 

The Agent Attributes include the following:

* **Name**: This shows the name of the agent attribute.
* **Description**: This shows the optional description added for the agent attribute.
* **Score Card**: This shows the status of all scorecards.

## Edit Agent Attributes

Steps to edit or update the agent attributes:

1. Select any of the agent attributes, and right-click on the vertical ellipse button. The following screen appears.  
    <img src="../agent-scorecards/images/edit-attribute-list.png" alt="Edit Agent Attribute" title="Edit Agent Attribute" style="border: 1px solid gray; zoom:70%;">   

2. Click **Edit**. The following screen appears to update existing agent attribute details.  
    <img src="../agent-scorecards/images/edit-attribute-option.png" alt="Edit" title="Edit" style="border: 1px solid gray; zoom:70%;"> 

3. Modify the required field details in the **Add Evaluation Metrics**.
4. Click **Update** to assign and update the evaluation metrics that will service this new attribute added.

## Delete Agent Attribute

Steps to delete the agent scorecard:

1. Select any of the agent attributes, and right-click on the vertical ellipse button. The following screen appears.  
    <img src="../agent-scorecards/images/edit-attribute-list.png" alt="Delete Agent Attribute" title="Delete Agent Attribute" style="border: 1px solid gray; zoom:70%;"> 
    
2. Click **Delete**. The following warning popup window appears.  
    <img src="../agent-scorecards/images/delete-agent-attribute.png" alt="Delete" title="Delete" style="border: 1px solid gray; zoom:70%;"> 

    !!! note
            
        The agent cannot delete any of the existing attributes, which is already assigned for an agent scorecard. To delete this attribute, the agent has to remove it from the assigned agent scorecard before deletion. Only the unassigned agent attribute can be deleted. Once you delete the agent attribute, the associated date will be lost.
