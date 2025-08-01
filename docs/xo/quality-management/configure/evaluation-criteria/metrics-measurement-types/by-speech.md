# By Speech Metric

Speech evaluation metrics are used to assess agent performance during voice interactions in the contact center. This leverages the intelligent speech analytics to drive better conversations, coaching, and outcomes. These metrics enable supervisors and quality analysts to identify opportunities for coaching, improve customer experience, and ensure adherence to compliance standards.

## Why Use Speech Evaluation Metrics

Use speech evaluation metrics to:

* Monitor and evaluate agent behavior based on voice characteristics.

* Detect issues such as dead air, cross talk (overlapping speech), or inappropriate speaking rates (periods of silence).

* Automate scoring in quality evaluations for consistent and unbiased feedback.

* Improve agent training programs and operational efficiency.

* Evaluate agent's speaking rate and conversation sessions per day and comparison analysis.

## When to Use 

Use speech evaluation metrics when:

* Setting up automated quality scoring for voice interactions.

* Defining agent performance baselines.

* Identifying areas for coaching and improvement.

* Measuring compliance with communication standards.

## Prerequisites

Before configuring speech metrics, ensure that:

* You have admin or configuration permissions in Contact Center AI.

* Agent attribute definitions are already created.

* Evaluation forms are available or in draft state.

* Speech data is being captured in the system for AI analysis.

## Access Evaluation Metrics

Access **Evaluation Metrics** by navigating to **Contact Center AI** > **Quality AI** > **Configure** > **Evaluation Metrics**.

### By Speech

This defines a metric used for evaluation, assignable to only one agent attribute.

Configure the following settings:

* Select an **Evaluation Metrics Measurement Type** from the dropdown.

* Enter a referenceable **Name** for the metric in the form for future audit.

* Select one of the following **Speech Type** options from the dropdown.

    * **Cross Talk**: Set the maximum number of instances. If the count exceeds this limit (the configured count), the metric fails. By default, the Cross Talk duration is two seconds, but you can customize both the instance limit and duration.

    * **Cross Talk Duration (Metric Qualification)**

        The metric qualifies for the evaluation form if the number of Cross Talk instances—based on the configured duration—remains below the defined instance limit. The system counts an occurrence as Cross Talk if it meets or exceeds the configured duration. If it exceeds the limit, the metric fails, and the agent is penalized.

    * **Dead Air**: This defines the period of silence during a contact center interaction when neither the customer nor the agent is speaking. By default, the minimum Dead Air time is 30 seconds, and the maximum is 300 seconds. You can, however, customize the instance limit and Dead Air duration.

    * **Dead Air Time (Metric Qualification)**

        The metric qualifies if the number of dead air instances is below the acceptable limit set in the configuration. If the number of instances exceeds the limit, the system marks the interaction as a failure for the dead air metric. An instance is counted as dead air if it exceeds the specified dead air duration.

        * **No. of Instances**: Enter the minimum allowed Cross Talk instances per second. 

        * **Avg. Speaking Rate**: This displays the average number of conversation sessions per day, and comparison analysis for the selected period. 

        * **Words Per Minute (WPM)**: Select the expected speaking rate. If the agent does not adhere to the configured rate, the system marks the metric as failed.

* Click **Create** to save the new metric for the Speech.

## Managing Evaluation Metrics

### Edit or Delete Evaluation Metrics

Steps to edit or delete existing Evaluation Metrics:



1. Right-click to select any of the existing **Evaluation Metrics** (Name) to choose a type of evaluation metric measurement.

3. Click **Delete** to remove the selected evaluation metric.

4. Click **Update** to save the changes.

#### Language Dependency Warnings


    This section outlines the limitations and dependencies associated with modifying language settings in evaluation metrics. 

##### Deletion Warnings

    This section describes the warnings and prerequisites you must address before deleting a metric.	

* If the metric is used in any evaluation form, the system displays a warning message.
* Remove the metric from all associated evaluation forms before you delete it.
* If any attributes are linked to the metric, assign a different metric to those attributes before proceeding with deletion.
* The system allows you to delete the metric only after resolving all dependencies.
