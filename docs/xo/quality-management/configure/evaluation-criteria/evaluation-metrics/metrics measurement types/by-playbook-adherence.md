# By Playbook Adherence Metrics

Playbook Evaluation Metrics are automated quality assurance tools designed to measure and monitor how well contact center agents adhere to established procedures and workflows. These metrics provide real-time insights into process compliance, helping organizations maintain consistent service quality, ensure regulatory compliance, and identify opportunities for performance improvement.

## Key Capabilities

* **Automated Adherence Tracking**: Monitor compliance with entire playbooks or specific steps.

* **Configurable Thresholds**: Set custom adherence percentage requirements based on process criticality.

* **Flexible Evaluation Periods**: Configure time bounds for daily, weekly, or monthly assessments.

* **Granular Analysis**: Evaluate adherence at the playbook, stage, or individual step level.

* **Performance Insights**: Generate actionable data for coaching, training, and process optimization.

## Where to Use Playbook Adherence Metrics

* **Agent Performance Evaluation**: Assess individual agent compliance with established procedures.

* **Team Performance Analysis**: Compare adherence rates across different teams or departments.

* **Process Compliance Auditing**: Ensure critical steps in customer service processes are being followed.

* **Training Gap Identification**: Spot specific playbook steps that agents consistently struggle with.

* **Quality Score Calculation**: Incorporate playbook adherence into overall quality assessments.

* **Coaching Opportunities**: Identify specific areas where agents need additional support or training.

* **Operational Reporting**: Generate reports for management on process compliance and operational efficiency.

## Configure By Question Metrics

1. Navigate to **Contact Center AI** > **Quality AI** > **Configure** > **Evaluation Forms** > **Evaluation Metrics**.

2. Click **+ New Evaluation Metric**.

3.From the **Evaluation Metrics Measurement Type** dropdown, select By Question.

## Configure the following settings

1. Select an **Evaluation Metrics Measurement Type** from the dropdown.  
<img src="../images/by-playbook-dropdown.png" alt="default scorecard" title="default scorecard" style="border: 1px solid gray; zoom:100%;">  

2. Enter a descriptive **Name** for the future audit reference.

3. Select a **Playbook Name** from the dropdown list, from which the metric should evaluate adherence.

4. Select an **Adherence Type** (**Entire Playbook** or **Steps**) from the dropdown. 

5. Select **Entire Playbook** to evaluate adherence across the entire playbook. 

    * **Adherence Percentage**: Enter the minimum expected adherence percentage to the playbook. If adherence falls below the configured rate, this metric fails.  
    <img src="../images/by-playbook-fields.png" alt="Playbook" title="Playbook" style="border: 1px solid gray; zoom:80%;"> 
            
6. Select **Steps** to evaluate adherence to specific steps of the playbook. If you select Steps, then define the following two options.

    * **Stage**: Select the stage under which the desired step for evaluation is configured.

    * **Step**: Select the desired step for adherence evaluation.        
    <img src="../images/by-playbook-adherence-type.png" alt="Steps" title="Steps" style="border: 1px solid gray; zoom:80%;"> 

 7. Click **Create** to save the new metric for the playbook adherence.

## Managing Evaluation Metrics

### Edit Evaluation Metrics

Steps to edit or delete existing Evaluation Metrics:

1. Right-click to select any of the existing **Evaluation Metrics**.  
<img src="../images/common-edit-eva-metics.png" alt="Edit Metric" title="Edit Metric" style="border: 1px solid gray; zoom:80%;"> 

2. Click **Edit** to update the required **Edit Evaluation Metrics** dialog box fields.  
<img src="../images/by-playbook-edit-metrics.png" alt="Edit Playbook" title="Edit Playbook" style="border: 1px solid gray; zoom:80%;"> 
    
3. Click **Delete** to remove the selected evaluation metric.

4. Click **Update** to save the changes.

#### Deletion Warnings

Deleting this metric permanently removes this evaluation metric and its associated data within it. Once it is deleted, you cannot undo or recover the metric or data.

Before delete, do the following: 

* Make sure, this evaluation metric is not actively used in any of the models, dashboards, reports, or workflows.

* Check and take a backup of the data, which you may need to reference this later.

* Verify the metric is deleted and related data are removed.  
<img src="../images/playbook-metrics-delete.png" alt="Delete Warnings" title="Delete Warnings" style="border: 1px solid gray; zoom:70%;">