# Conversation Mining - Audit Allocations

The Conversation Mining feature helps you to create and assign allocations to auditors for manual quality scoring.

## Access Audit Allocations 

Navigate to **Quality AI** > **ANALYZE** > **Conversation Mining** > **Audit Allocations**.  
<img src="../conversation-mining/images/conversation-mining-audit-allocations.png" alt="Audit Allocations" title="Audit Allocations" style="border: 1px solid gray; zoom:80%;">

The **Audit Allocations** has following key Items:

* **Agent**: Shows the name of the Auditor.
* **Actions**: Lets the auditors assign the allocation to the desired bookmark for later reference.
* **Assigned Date**: Shows the assigned date to start the audit.
* **Name**: Shows the audit name.
* **Created By**: Shows the auditor name who has initiated.
* **Evaluation Form**: Shows the list of forms assigned to the QM auditors as assessments for review compliance.
* **Kore Evaluation Score**: Shows the Kore Evaluation score.
* **Filters**: Shows the filter options to search and add the filters.
* **New Audit Allocation**: Enables you to create and assign the interactions for a new audit allocation. 

## New Audit Allocation

You can access **Audit Allocations** by navigating to **Quality AI** > **ANALYZE** > **Conversation Mining** > **Audit Allocations** > **New Audit Allocation**. 

<img src="../conversation-mining/images/new-audit-allocation.png" alt="New Audit Allocation" title="New Audit Allocation" style="border: 1px solid gray; zoom:80%;">

### Settings

Steps to add New Audit Allocation in **Settings** tab:

1. Select **New Audit Allocation** to assign interactions for a new audit allocation.  
    <img src="../conversation-mining/images/conversation-mining-add-new-audit-allocations.png" alt="Add New Audit Allocations" title="Add New Audit Allocations" style="border: 1px solid gray; zoom:80%;">

2. Under the **Settings**, enter a **Name** for the audit.
3. Enter a short **Description** of the audit which is optional.
4. Select an **Evaluation Form** from the dropdown list to evaluate for.
5. Select **Agents** to search an agent from the dropdown list to assign specific agents to a Queue for audit allocation.  
    <img src="../conversation-mining/images/agents-search.png" alt="Agents" title="Agents" style="border: 1px solid gray; zoom:80%;">

6. Select **Agents Groups** to search an agent group from the dropdown list to assign the agents group to a Queue for audit allocation.  
    <img src="../conversation-mining/images/agent-groups-queue.png" alt="Agents Groups" title="Agents Groups" style="border: 1px solid gray; zoom:80%;"> 

7. Select **Next** to move to **Allocation** section.

### Allocation

Steps to Add New Audit **Allocation** tab:

1. Select an **Allocation Type** (**Random** or **Custom**).
    1. **Random** allocation lets you assign a set of interactions for audit.
    2. **Custom** allocation lets you assign interactions for audit by selecting saved filters from Conversation Mining, enabling focused evaluations.
2. The system selects **Random** radio key as the initial allocation type. If you choose **Random**, then select a **Date range**.
3. Select the **Channel** to enable **Voice** toggle key, and specify the percentage of interactions per agent to assign for audit. Based on your input, the system selects interactions from the chosen agents and the selected queue.

    a. The interaction count shows the average number of interactions per agent based on the selected agents and the specified percentage.

    b. The Total interactions value at the bottom of the panel shows the number of interactions selected based on random sampling and the user’s date-range input. The system applies the percentage of interactions per agent, along with the interaction count across channels, to the audit when required. You can adjust these values by changing the corresponding user inputs in the available fields.
    
4. If you choose **Custom**, then the following screen appears to select a saved filter for **Custom Allocation** to assign those interactions for audits.  
    <img src="../conversation-mining/images/add-new-audit-allocation.png" alt="Allocation" title="Allocation" style="border: 1px solid gray; zoom:70%;">

5. Select a required search filter for audit.

    The total interactions count displays the total number of interactions that's assigned for this audit based on the evaluation form (queue), agent group selection, and the filter selection.

6. Select **Next** to move to **Assignment** tab.

### Assignment

Steps to **Add New Audit Allocation** in **Assignment** tab: 

1. Select the **Auditors** from the Search filter that you want to assign interactions for manual evaluation.  
    <img src="../conversation-mining/images/new-audit-allocation-assignment.png" alt="Assignment" title="Assignment" style="border: 1px solid gray; zoom:60%;">    
    
2. Enter the % allocation of interactions that you want to allocate for each selected auditor.

    The Interactions column shows the number of interactions assigned to each auditor based on the allocation percentage. You can adjust this percentage to match your preferences.
    <img src="../conversation-mining/images/audit-allocation-search-filter.png" alt="Audit Allocation Search Filter" title="Audit Allocation Search Filter" style="border: 1px solid gray; zoom:60%;">

3. The total allocation percentage across all auditors must sum to 100% to enable the **Create** button.

    !!! Note

        When the assignment configuration is completed, such that the total allocation percentage is 100%.

4. Select **Create** to assign the interactions for evaluation to the selected auditors

5. The interactions shown in the **Allocation** tab are the ones assigned to the user for audit. The audit allocation tab shows empty if no interactions are available for evaluation.

6. After the user finishes evaluating an interaction, the system removes it from the audit allocation page.