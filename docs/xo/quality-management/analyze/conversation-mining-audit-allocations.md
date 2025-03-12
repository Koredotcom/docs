# Conversation Mining - Audit Allocations

The Conversation Mining feature helps you to create and assign allocations to auditors for manual quality scoring.

You can access **Audit Allocations** by going to **Contact Center AI** > **Quality AI** > **Analyze** > **Conversation Mining** > **Audit Allocations**.  
<img src="../conversation-mining/images/conversation-mining-audit-allocations.png" alt="Audit Allocations" title="Audit Allocations" style="border: 1px solid gray; zoom:80%;">

The **Audit Allocations** has following key Items:

* **Agent**: Shows the name of the Auditor.
* **Actions**:  Allows auditors to assign the allocation to the desired bookmark for later reference.
* **Assigned Date**: Shows the assigned date to start the audit.
* **Name**: Shows the audit name.
* **Created By**: Shows the auditor name who has initiated.
* **Evaluation Form**: Shows the forms list that are assigned to the QM auditors as assessments for review compliance.
* **Kore Evaluation Score**: Shows the Kore Evaluation score.
* **Filters**: Shows the filter options to search and add the filters.
* **New Audit Allocation**: Allows to create and assign the interactions for a new audit allocation. 

## New Audit Allocation

You can access **Audit Allocations** by going to **Contact Center AI** > **Quality AI** > **Analyze** > **Conversation Mining** > **Audit Allocations** > **New Audit Allocation**. 

<img src="../conversation-mining/images/new-audit-allocation.png" alt="New Audit Allocation" title="New Audit Allocation" style="border: 1px solid gray; zoom:80%;">

### Settings

Steps to add New Audit Allocation in **Settings** tab:

1. Click the **New Audit Allocation** button. The following **Settings** screen appears to assign the interactions for a new audit allocation.  
    <img src="../conversation-mining/images/conversation-mining-add-new-audit-allocations.png" alt="Add New Audit Allocations" title="Add New Audit Allocations" style="border: 1px solid gray; zoom:80%;">

2. Under the **Settings**, enter a **Name** for the audit that needs to be done.
3. Enter a short **Description** of the audit which is optional.
4. Select an **Evaluation Form** from the drop down list to evaluate for.
5. Select **Agents** to search an agent from the drop down list to assign specific agents to a Queue for audit allocation.  
    <img src="../conversation-mining/images/agens-search.png" alt="Agents" title="Agents" style="border: 1px solid gray; zoom:80%;">

6. Select **Agents Groups** to search an agent group from the drop down list to assign the agents group to a Queue for audit allocation.  
    <img src="../conversation-mining/images/agentgroups.png" alt="Agents Groups" title="Agents Groups" style="border: 1px solid gray; zoom:80%;"> 

7. Click **Next** to move to **Allocation** section.

### Allocation

Steps to Add New Audit **Allocation** tab:

1. Select an **Allocation Type** (**Random** or **Custom**).
    1. **Random** allocation allows users to select randomly sampled interactions to be assigned for audit.
    2. **Custom** allocation allows users to select saved filters from Conversation Mining to be assigned for audit allowing focused evaluations.
2. By default, the **Random** radio button is selected. If you choose **Random**, then select a **Date range**.
3. Select the **Channel** to enable **Voice** toggle button, and specify the % Interactions per agent  that you want to assign for audit. Based on the input, a random set of interactions is getting selected among the selected agents, and the selected queue (based on the form selection).

    a. The number of interactions per agent count below the input box displays the average number of interactions across the selected agents, which is being taken based on the % interactions per agent allocation user input.

    b. The total interactions count at the bottom of the slideout displays the total interactions, which is being selected based on random sampling and the user input across date range selection. The % interactions per agent input across channels and the count of the interactions will be assigned for this audit if needed, and this can be adjusted by altering the user input across the fields mentioned.
4. If you choose **Custom**, then the following screen appears to select a saved filter for **Custom Allocation** to assign those interactions for audits.  
    <img src="../conversation-mining/images/add-new-audit-allocation.png" alt="Allocation" title="Allocation" style="border: 1px solid gray; zoom:70%;">

5. Select a required Filter option from the above search filter for audit.

    The total interactions count displays the total number of interactions that is being assigned for this audit based on the evaluation form (queue), agent group selection, and the filter selection.

6. Click **Next** to move to **Assignment** tab.

### Assignment

Steps to **Add New Audit Allocation** in **Assignment** tab: 

1. Select the **Auditors** from the Search filter that you want to assign interactions for manual evaluation.  
    <img src="../conversation-mining/images/new-audit-allocat-assignment.png" alt="Assignment" title="Assignment" style="border: 1px solid gray; zoom:60%;">    
    
2. Enter the % allocation of interactions that you want to allocate for each selected auditor.

    The interactions column displays the number of interactions that will be assigned for each auditor based on the allocation % input that allows you to adjust the input based on your preferences.  
    <img src="../conversation-mining/images/audit-allocation-search-filter.png" alt="Audit Allocation Search Filter" title="Audit Allocation Search Filter" style="border: 1px solid gray; zoom:60%;">

3. The total allocation percentage across all auditors must sum to 100% to enable the **Create** button.

!!! Note

    Once the assignment configuration is completed, such that the total allocation percentage is 100%.

4. Click **Create** to assign the interactions for evaluation to the selected auditors

5. The interactions that users see listed in the audit **Allocation** tab are the interactions that have been assigned to them for audit.

    Note that if this page is empty, it implies that no interactions are there to assign for evaluation.

6. Upon completion of evaluation for each interaction, the pertaining interaction will be removed from the audit allocation page.