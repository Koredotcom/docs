# Audit Allocations

Audit Allocations streamlines the manual quality assurance workflow by enabling QA managers and supervisors to systematically assign interactions to auditors for evaluation. This feature addresses the critical need for manual oversight in automated quality assurance systems, allowing teams to validate Auto QA accuracy, provide targeted agent feedback, and maintain consistent quality standards across all customer interactions.

The Audit Allocations interface adapts to your permission level, displaying either management or auditor views based on your role.

## Access Audit Allocations 

Navigate to **Quality AI** > **ANALYZE** > **Allocations**.  
<img src="../allocations/images/audit-allocations.png" alt="Audit Allocations" title="Audit Allocations" style="border: 1px solid gray; zoom:80%;">

The **My Allocations** has following key Items:

* **Name**: Displays the audit name.

* **Description**: Provides a brief summary or purpose of the audit allocation.

* **Created On**: Shows the date the system created the audit allocation.

* **Auditors**: Lists all auditors assigned to the audit allocation.

* **Interactions**: Displays the count of interactions assigned vs. completed in the audit.

* **Status**: Shows the current state of the audit allocation, such as "Not Started," "In Progress," or "Completed."

* **Actions**: Enables auditors to view audit details, reassign the allocation, and bookmark the audit for later reference.

## Why Audit Allocations?

Even with robust Auto QA systems, contact centers rely on manual evaluations to improve accuracy and deliver meaningful agent coaching. Traditional audit allocation methods create several operational challenges, which Audit Allocations directly addresses.

* **Allocation Visibility Gaps**: Tracking which interactions you've assigned to auditors and monitoring completion progress across your team.

* **Inflexible Assignment Management**: Reassigning interactions when auditors become unavailable due to leave, workload changes, or scheduling conflicts.

* **Manual Workflow Inefficiencies**: Creating custom allocations without pre-saved filters, requiring multiple steps to set up one-time audit assignments.

* **Limited Control Over Distribution**: Managing per-agent interaction volumes limits consistent evaluation coverage across the team.

* **Organizational Confusion**: Distinguishing between conversation analysis (Conversation Mining) and audit assignment workflows when they share the same interface.

Audit Allocations transforms the manual QA assignment process by providing a dedicated workspace with complete visibility into allocation lifecycle management, flexible reassignment capabilities, and streamlined allocation creation.

## How Does Audit Allocations Help?

Audit Allocations delivers value through several key capabilities that enhance your manual QA workflow:

* **Comprehensive Tracking**: Monitor all allocations you've created with real-time visibility into auditor-wise completion rates, enabling proactive workload management.

* **Flexible Reassignment**: Redistribute pending interactions from unavailable auditors to other team members, ensuring consistent evaluation coverage without workflow disruption.

* **Streamlined Allocation Creation**: Create custom allocations with quick filters directly in the assignment workflow, eliminating the need to pre-save filters for one-time audits.

* **Controlled Distribution**: Specify exact interaction counts or percentages per agent, giving you precise control over evaluation workload across your auditor team.

* **Dual Assignment Methods**: Choose between random sampling for unbiased coverage or custom filters for targeted evaluations based on specific criteria.

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