# Agent Scorecards

Agent Scorecards facilitate the development of evaluation criteria at the individual agent level, focusing on configured performance areas such as salesmanship, product knowledge, and so on. Attributes are defined by integrating relevant evaluation metrics. Additionally, each agent is assessed based on all assigned scorecards during each call transfer, allowing for multiple scorecards per agent. Prior to creating scorecards, it is essential to create agent attributes.

A supervisor has the following types of permissions for the agent scorecards:

* Full access, to edit, and create agent scorecards and attributes
* No access, to edit, and create agent scorecards and attributes
* Only view access for the existing agent scorecards and attributes.

        !!! Note 
    
        To view **Agent Scorecards** and **Agent Attributes**, you must have to enable the **Agent Scorecard** toggle view in the **Settings** of Quality Management.

You can view Agent Scorecards by navigating to **Contact Center AI** > **Quality Management** > **Configure** > **Agent Score Cards**.
<img src=".//sedashboard/images/qm-dashboard.png" alt="Quality Management Dashboard" title="Quality Management Dashboard" style="border: 1px solid gray; zoom:70%;">

## Create a New Agent Scorecard

Steps to create a new agent scorecard:

1. Click the **+New Agent Scorecard**, following default new agent scorecard screen appears.  
    <img src="../dashboard/images/qm-dashboard.png" alt="Quality Management Dashboard" title="Quality Management Dashboard" style="border: 1px solid gray; zoom:70%;">

### Settings

2. In the **Name** field, enter the name of the agent scorecard.
3. Enter a short **Description** (optional) for the newly created agent scorecard.
4. Enable the **Mark as Default** toggle option to assign the default scorecards across all agents. By default, the toggle option is enabled for the first scorecard created.

    <img src="../dashboard/images/qm-dashboard.png" alt="Quality Management Dashboard" title="Quality Management Dashboard" style="border: 1px solid gray; zoom:70%;">

5. The pass score must be configured (40 by default).

        !!! Note

        There must be an active default scorecard. The first scorecard created must be a mandatory default scorecard, which is assigned to all agents. If you try to enable the default scorecard toggle view, then the following warning pop up appears stating that you cannot disable the default scorecard unless another scorecard is replaced with the default.  
   
    <img src="../dashboard/images/qm-dashboard.png" alt="Quality Management Dashboard" title="Quality Management Dashboard" style="border: 1px solid gray; zoom:70%;">  

        !!! Note

        When there is an existing default scorecard, and you try to disable the default scorecard toggle status, then you will get the following warning popup stating that the default scorecard cannot be disabled, you must assign another scorecard as default before disabling.

    <img src="../dashboard/images/qm-dashboard.png" alt="Quality Management Dashboard" title="Quality Management Dashboard" style="border: 1px solid gray; zoom:70%;">  

### Agent Attributes

6. Select **Agent** **Attributes**, the following screen appears.
   
    <img src="../dashboard/images/qm-dashboard.png" alt="Quality Management Dashboard" title="Quality Management Dashboard" style="border: 1px solid gray; zoom:70%;"> 

7. In the **Agent Attributes**, search and add more than one agent attribute.
8. Click **Add Agent Attributes** to add to an agent scorecard. The following screen appears.

    <img src="../dashboard/images/qm-dashboard.png" alt="Quality Management Dashboard" title="Quality Management Dashboard" style="border: 1px solid gray; zoom:70%;"> 
    
9. Assign a **Weightage** for the agent attribute selected.

        !!! Note

         If a scorecard is set as the default, the score displayed will be based on that default scorecard in the agent leaderboard and agent dashboard.

### Assignments

10. Select **Assignments**, the following screen appears.

    <img src="../dashboard/images/qm-dashboard.png" alt="Quality Management Dashboard" title="Quality Management Dashboard" style="border: 1px solid gray; zoom:70%;"> 

11. In the **Agents**, assign scorecards across the required agent by searching an **Agents** name and click **Add Agents** to add agent names. 
12. In the Agent Groups,assign scorecards at an agent group level, search for an **Agent Group** name to add the agent group to a queue.

    <img src="../dashboard/images/qm-dashboard.png" alt="Quality Management Dashboard" title="Quality Management Dashboard" style="border: 1px solid gray; zoom:70%;"> 

13. Click **Add Groups** to add the agent groups to a queue.
14. Click **Create**, the newly created scorecard for the agent and agent group is added as shown below and the status toggle must be enabled to start agent level scoring based on that scorecard.

    <img src="../dashboard/images/qm-dashboard.png" alt="Quality Management Dashboard" title="Quality Management Dashboard" style="border: 1px solid gray; zoom:70%;"> 

The Agent scorecards include the following:

* **Name**: This shows the name of the agent or agent group.
* **Agent Attributes**: This shows the agent attribute name.
* **Assignee**: This shows the assignee name who has assigned the scorecard to the agent.
* **Created By**: This shows the user name who has created the agent scorecard.
* **Pass Score**: This shows the minimum pass score that the agent has to attain.
* **Status**: This shows the status of the scorecard whether it is active or inactive.

        !!! Note

          If an agent scorecard has been marked as default, the assignments section of the creation modal should not be shown, and the scorecard must be assigned across all the agents present in the queues of the user.

## Edit Agent Scorecard

Steps to edit or update the agent scorecard:

1. Select any of the agent scorecards, and right-click on the **vertical ellipse** button. The following screen appears.

    <img src="../dashboard/images/qm-dashboard.png" alt="Quality Management Dashboard" title="Quality Management Dashboard" style="border: 1px solid gray; zoom:70%;"> 

2. Click **Edit**. The following screen appears.
   <img src="../dashboard/images/qm-dashboard.png" alt="Quality Management Dashboard" title="Quality Management Dashboard" style="border: 1px solid gray; zoom:70%;"> 


3. Modify the required details in the **Settings** and **Agent Attributes**.

        !!! Note

            If you want to assign a different scorecard as default, then the following warning pop-up is displayed stating that the existing default scorecard will be replaced by the new one, and upon confirming, the new scorecard gets applied or replaced as default.


    <img src="../dashboard/images/qm-dashboard.png" alt="Quality Management Dashboard" title="Quality Management Dashboard" style="border: 1px solid gray; zoom:70%;"> 

4. Click **Update** to save the changes in the existing scorecard.

## Delete Agent Scorecard

Steps to delete the agent scorecard:

1. Select any of the agent scorecards, and right-click on the vertical ellipse button. The following screen appears.

    <img src="../dashboard/images/qm-dashboard.png" alt="Quality Management Dashboard" title="Quality Management Dashboard" style="border: 1px solid gray; zoom:70%;"> 

2. Click **Delete**. The following warning popup appears.
    <img src="../dashboard/images/qm-dashboard.png" alt="Quality Management Dashboard" title="Quality Management Dashboard" style="border: 1px solid gray; zoom:70%;"> 
    
            !!! Note

            If the user tries to delete the default scorecard, a warning pop-up dialog box appears stating that the default scorecard cannot be deleted. To do this, you have to assign another scorecard as default before deleting this scorecard. If you delete the scorecard, the associated data will be lost, which is associated with this scorecard.

# Agent Attributes

This feature enables the creation of agent attributes by combining existing evaluation metrics. This calculates the Agent Attribute Score using data from evaluation metric results. Agent attributes are specific areas of performance relevant to an agent's role like Professionalism, Product Knowledge, Problem-solving skills, and Customer service skills.

<img src="../dashboard/images/qm-dashboard.png" alt="Quality Management Dashboard" title="Quality Management Dashboard" style="border: 1px solid gray; zoom:70%;"> 

## Create a New Agent Attribute

Steps to create new agent attribute:

1. Click the **+New Agent Attribute**, the new agent attribute screen appears.  
<img src="../dashboard/images/qm-dashboard.png" alt="Quality Management Dashboard" title="Quality Management Dashboard" style="border: 1px solid gray; zoom:70%;"> 

2. In the **Name** field, enter the name of the agent attribute.
3. Enter a short **Description** (optional) for the newly created agent attribute.
4. In the **Add Evaluation Metrics**, search for the required evaluation metrics to add. 
5. Click the **Add Evaluation Metrics** option. The following screen appears with the selected evaluation metrics.

    <img src="../dashboard/images/qm-dashboard.png" alt="Quality Management Dashboard" title="Quality Management Dashboard" style="border: 1px solid gray; zoom:70%;"> 

6. Click **Create**. The following screen appears with all the added agent attribute options.  
<img src="../dashboard/images/qm-dashboard.png" alt="Quality Management Dashboard" title="Quality Management Dashboard" style="border: 1px solid gray; zoom:70%;"> 

The Agent Attributes include the following:

* **Name**: This shows the name of the agent attribute.
* **Description**: This shows the optional description added for the agent attribute.
* **Score Card**: This shows the status of all scorecards.

## Edit Agent Attributes

Steps to edit or update the agent attributes:

1. Select any of the agent attributes, and right-click on the vertical ellipse button. The following screen appears.
    <img src="../dashboard/images/qm-dashboard.png" alt="Quality Management Dashboard" title="Quality Management Dashboard" style="border: 1px solid gray; zoom:70%;"> 

2. Click **Edit**. The following screen appears to update existing agent attribute details.

    <img src="../dashboard/images/qm-dashboard.png" alt="Quality Management Dashboard" title="Quality Management Dashboard" style="border: 1px solid gray; zoom:70%;"> 

3. Modify the required field details in the **Add Evaluation Metrics**.
4. Click **Update** to assign and update the evaluation metrics that will service this new attribute added.

## Delete Agent Attribute

Steps to delete the agent scorecard:

1. Select any of the agent attributes, and right-click on the vertical ellipse button. The following screen appears.  
    <img src="../dashboard/images/qm-dashboard.png" alt="Quality Management Dashboard" title="Quality Management Dashboard" style="border: 1px solid gray; zoom:70%;"> 
    
2. Click **Delete**. The following warning popup appears.

            !!! Note

            
            The agent cannot delete any of the existing attributes, which is already assigned for an agent scorecard. To delete this attribute, the agent has to remove it from the assigned agent scorecard before deletion. Only the unassigned agent attribute can be deleted. Once you delete the agent attribute, the associated date will be lost.
