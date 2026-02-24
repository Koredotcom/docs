# By Speech Evaluation Metrics

Speech evaluation metrics assess agent performance during voice interactions in the contact center using intelligent speech analytics. These metrics evaluate conversational behaviors such as crosstalk (overlapping speech), dead air (silence), and speaking rate to support effective coaching, making sure about consistent quality evaluations, and maintaining compliance adherence. Evaluators use each speech metric for assessment purposes and assign it to a single agent attribute.

## Why to Use This Metric

Use speech evaluation metrics to:

* Monitor and evaluate agent behavior based on voice characteristics.
* Detect issues such as dead air, cross talk (overlapping speech), or inappropriate speaking rates (periods of silence).
* Enable automated and unbiased quality scoring.
* Identify coaching and training opportunities.
* Improve customer experience and operational efficiency.
* Analyze speaking patterns and interaction trends.

## When to Use This Metric

Use speech evaluation metrics when:

* Setting up automated quality scoring for voice interactions.

* Defining agent performance baselines.

* Identifying areas for coaching and improvement.

* Measuring compliance with communication standards.

## Speech Metrics Prerequisites

Before you configure speech metrics, make sure that you:

* Have admin or configuration permissions.
* Create agent attribute definitions.
* Have evaluation forms available or in a draft state.
* Have speech data available for Quality AI analysis.

## Configure by Speech Metric

1. Navigate to **Quality AI** > **Configure** > **Evaluation Forms** > **Evaluation Metrics**.

2. Select **+ New Evaluation Metric**.

3. From the **Evaluation Metrics Measurement Type**, select **By Playbook Adherence**.  
<img src="../images/by-speech-dropdown.png" alt="default scorecard" title="default scorecard" style="border: 1px solid gray; zoom:100%;">  

4. Enter a descriptive **Name** for the future audit and reporting purposes.   

* Select and configure one of the following **Speech Type** options.  
<img src="../images/by-speech-crosstalk.png" alt="Crosstalk" title="Crosstalk" style="border: 1px solid gray; zoom:60%;"> 

    * **Cross Talk**: Set the maximum number of instances. If the count exceeds this limit (the configured count), the metric fails. By default, the crosstalk duration is two seconds, but you can customize both the instance limit and duration.

    * **Cross Talk Duration (Metric Qualification)**: The system includes this metric in the evaluation when cross talk instances stay within the configured limit. It counts an occurrence as cross talk when it meets or exceeds the configured duration. If instances exceed the limit, the system marks the metric as failed and penalizes the agent.

    * **Dead Air**: This defines the period of silence during a contact center interaction when neither the customer nor the agent is speaking. By default, the minimum dead air time is 30 seconds, and the maximum is 300 seconds. It lets you customize the instance limit and dead air duration.

    * **Dead Air Time (Metric Qualification)**: 
    The system qualifies the metric when dead air instances stay within the configured limit. If instances exceed the limit, the system marks the interaction as a failure for the dead air metric. The system counts an instance as dead air when it exceeds the specified duration.         
    <img src="../images/by-speech-dead-air.png" alt="Dead air" title="Dead air" style="border: 1px solid gray; zoom:60%;"> 

    * **No. of Instances**: Enter the minimum allowed Cross Talk instances per second. 

    * **Speaking Rate Violation**: Shows average daily conversation sessions and a comparison for the selected period. The system flags a violation when the agent’s speaking pace falls outside the configured range. 

        * **Words Per Minute (WPM)**: Select the expected speaking rate. If the agent doesn't adhere to the configured rate, the system marks the metric as failed.  
        <img src="../images/by-speech-speaking-rate-violation.png" alt="Speaking Rate" title="Speaking Rate" style="border: 1px solid gray; zoom:60%;"> 

5. Select **Create** to save the new metric for the Speech.

## Edit or Delete By Speech Metric

Steps to edit or delete any existing **By Speech** evaluation metrics:

1. Select an evaluation metric name given under the **By Speech** category.  
<img src="../images/by-speech-edit.png" alt="Edit Metric" title="Edit Metric"   style="border: 1px solid gray; zoom:70%;">    

2. Choose an option:

    * Select **Edit** to modify the selected metric details.    
    <img src="../images/by-speech-edit-screen.png" alt="By Speech edit Screen" title="By Speech edit Screen" style="border: 1px solid gray; zoom:60%;">

    * Select **Delete** to remove the selected metric.   

3. Select **Update** to save the changes.

### Language Dependency Warnings

This section outlines the limitations and dependencies associated with modifying language settings in evaluation metrics. 

#### Metric Deletion Warnings

This section describes the warnings and prerequisites you must address before deleting a metric.	

* If the metric appears in any evaluation form, the system displays a warning.

* Remove the metric from all associated evaluation forms before you delete it.

* If any attributes link to the metric, reassign them to a different metric before deleting it.

* The system lets you delete the metric only after resolving all dependencies.   
<img src="../images/delete-speech-metric.png" alt="Delete Warnings" title="Delete Warnings" style="border: 1px solid gray; zoom:70%;">
