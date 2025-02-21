# About Billing

The Billing section helps you monitor and analyze your GALE platform expenses through detailed usage metrics and cost breakdowns. You can track computational costs across agents, models, and guardrails to make data-driven decisions about your resource utilization.

# Accessing Usage Information

Steps to access the Usage page:

1. [Sign in](https://galeadmin-kore.github.io/docs/gale/getting-started/sign-up-sign-in/#sign-in-to-gale) to your GALE account.
2. On the top navigation bar, click **Settings**.
3. On the left navigation pane, click **Billing** > **Usage**.

    The Usage dashboard is displayed.

 <img src="../images/accessing_billing.png" alt="Accessing Billing" title="Accessing Billing" style="border: 1px solid gray; zoom:80%;">

The Usage page displays the following tabs for billing and usage:

* **Usage**: Provides a high-level summary of your resource consumption:
    * **Runs**: Shows current agent run usage against your total allocation.
    * **Model Credits**: Displays consumed credits versus total available credits.
    * **Usage Trend**: Visual representation of agent runs and model credit consumption over time.
* **Agents**: Shows all agent activities and their operational status.
* **Models**: Shows the computational costs linked to specific models.
* **Guardrails**: Shows overall guardrail statistics and credit consumption costs.

## Best Practices

* Regularly monitor your usage trends to optimize resource allocation.
* Review agent and model performance to identify cost-saving opportunities.
* Track guardrail deployment duration to manage hardware costs effectively.

!!! note

    Use the Calendar bar on all the tabs to search by the number of days using predefined date filters—24 hours, 7 days, 30 days, or 90 days. You can also use the Custom option to specify your preferred date range.


# Usage Overview

The Overview tab summarizes expenses and usage patterns across your agents and models. The following usage information is displayed on the tab:

* **Runs**: This field indicates the usage of agent runs, showing the proportion of capacity consumed compared to the total available runs. For example, in the below image, 301 out of 10,000 available agent runs have been utilized, indicating that 3.01% of the total capacity has been consumed.
* **Model Credits**: This field displays the total model credit usage, showing the proportion of model credits used across all models compared to the total available credits. It also includes the credits used to host guardrails. For example, in the image below, 12,899 credits have been used out of a total allocation of 13,325 credits, indicating that 96.80% of your available model credits have been utilized.
* **Usage trend**: It visually represents **Agent runs** and **Model credits** consumption over time. Use the Calendar feature to see the changes over time, for example, daily, weekly, monthly, or any custom dates.

 <img src="../images/overview.png" alt="Overview" title="Overview" style="border: 1px solid gray; zoom:80%;">

 <img src="../images/usagetrend.png" alt="Billing Usage trend" title="Billing Usage trend" style="border: 1px solid gray; zoom:80%;">


# Agents Usage

The Agents tab displays a comprehensive list of agents associated with the account. It includes only those agents that have been deployed at least once; it does not include ‘In development’ agents.  

The following usage information is displayed on the tab:

* **Total Agents**: The total number of agents in the account.
* **Total runs**: The total number of runs by all the agents.
* **Agent name**: The name assigned to the agent.
* **Runs**: The number of times the agent was inferred. 
* **Owner Name**: The name of the user who created the agent.
* **Last active on**: The date when the agent was last active.
* **Status**: The agent's status - Deployed, Undeployed, or Deleted.

 <img src="../images/agents.png" alt="Billing Agents tab" title="Billing Agents tab" style="border: 1px solid gray; zoom:80%;">


# Models Usage

The Models tab displays a comprehensive list of open-source models in the account and the computational cost of storing, fine-tuning, and hosting each model.

<img src="../images/models.png" alt="Billing Models tab" title="Billing Models tab" style="border: 1px solid gray; zoom:80%;">

The following usage information is displayed on the tab:

* **Total models**: The total number of models in the account.
* **Total credits**: The total credits used by all the models.
* **Fine-tuning credits**: The number of credits used for fine-tuning the models. The number of credits are based on factors like the size of the training data, the model complexity, the number of training epochs, the type of hardware used, and other parameters.
* **Hosting credits**: The total number of credits used to cover the cost of deploying and hosting models on GPUs.
When you deploy a model on powerful GPUs, each GPU instance is considered a "replica", which requires the allocation of hosting credits. For example, if your model runs on one A100 GPU, that counts as one replica and consumes a specific amount of hosting credits. If demand increases and you need to deploy a second A100 GPU to handle additional user requests, you will now have two replicas and be charged for both, requiring twice the number of hosting credits.

* **Model name**: The name of the model.
* **Model type**: The type of model used: Fine-tuned or Base.
* **Credits used**: The number of credits used by the model.
* **Last active on**: The date when the model was last active.
* **Status**: The current status of the model: Deployed, Undeployed, or Deleted.

## Viewing Detailed Model Information

Clicking each row on the Models tab opens a panel on the right that displays detailed information about the costs associated with the selected model.

<img src="../images/models_right_panel_detailed.png" alt="Models detailed information" title="Models detailed information" style="border: 1px solid gray; zoom:80%;">

The following information is displayed:

* Name of the model.
* **Hosting**: The type of GPU used for hosting the model, the number of GPUs used, the duration for which the GPUs are being used, and the number of credits used to host the model.
* **Fine-tuning**: The number of credits used to fine-tune the model.
* **Total**: The total number of credits for hosting and fine-tuning the model.



# Guardrails Usage

The Guardrails tab displays the list of guardrails used and the charges related to their usage. Each guardrail includes details about the hardware it was deployed on and the associated costs. The guardrails are charged based on the hardware used.

The guardrail usage is deducted from the Model credits shown in the Overview tab, indicating that the available credits for the model will decrease based on the cost of using the guardrails.

<img src="../images/guardrails.png" alt="Guardrails" title="Guardrails" style="border: 1px solid gray; zoom:80%;">

The following usage information is displayed on the Guardrails tab:

* **Total guardrails**: The total number of guardrails used in the account.
* **Total credits**: The total credits used by the guardrails.
* **Time**: The total duration for which all the guardrails were deployed.
* **Name**: The name of the guardrail/scanner.
* **Credits**: The credits used to deploy the guardrail.
* **Time**: The duration for which the guardrail was deployed.
* **Last deployed on**: The date the guardrail was last deployed.
* **Status**: The status of the guardrail: Deployed or Undeployed.

## Viewing Detailed Guardrail Information

Clicking each row on the Guardrail tab opens a panel on the right that displays detailed information about the hardware it was deployed on and the charges associated with the guardrail.

<img src="../images/guardrails_right_panel.png" alt="Guardrails detailed information" title="Guardrails detailed information" style="border: 1px solid gray; zoom:80%;">


The following information is displayed:

* The name of the guardrail
* **Hardware**: The type of CPUs used, the number of CPUs used, the duration for which the CPUs are being used, and the number of credits used.
* **Total**: The total number of credits used for the hardware.

!!! note

    Guardrails are hosted on smaller models. These smaller models do not need a lot of processing power, so they can be effectively managed by less powerful CPUs. Using CPUs is more economical, and they have enough capability to run the smaller models efficiently.






