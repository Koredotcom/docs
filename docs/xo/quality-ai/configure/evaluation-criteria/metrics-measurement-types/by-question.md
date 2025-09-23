# By Question Metric

The By Question metric is a key feature of the Quality AI module, managed within the **Evaluation Forms** section. It enables supervisors to define, customize, and track performance indicators that measure the quality of agent–customer interactions, specifically at the level of individual questions. This metric helps you to evaluate how effectively agents answer specific questions during interactions. You can apply it universally across all conversations or use it selectively in trigger-based scenarios. 

By verifying the accuracy of responses, it supports focused feedback, targeted coaching, and continuous improvement.

## What It Offers for Supervisors

* Standardized quality assessment framework.

* Customizable evaluation criteria based on business needs.

* Multi-language support for global operations.

* Automated evaluation suggestions through AI.

## When to Use This Metric

**Primary Use Cases:**

* **Quality Assurance**: To systematically evaluate agent adherence to protocols, scripts, or expected responses.

* **Training Assessment**: To measure how well agents follow prescribed interaction patterns during customer conversations.

* **Compliance Monitoring**: To verif, how agents deliver critical information, such as disclaimers, privacy policies, or regulatory statements (privacy policies, disclaimers).

* **Performance Standardization**: To apply consistent evaluation criteria across agents and interactions.

## How It Works

The metric operates through a **question-driven evaluation process** with two main approaches:

### Static Adherence

* Evaluates agent responses across **all conversations** without conditional requirements.

* Best for universal standards like greetings or standard procedures.

* No trigger conditions needed.

### Dynamic Adherence

* Evaluates agent responses only when specific triggers occur.

* Trigger-based detection using customer or agent utterances.

* Ideal for conditional scenarios where specific responses are required only in certain contexts.

## Configure by Question Metrics

1. Navigate to **Quality AI** > **Configure** > **Evaluation Forms** > **Evaluation Metrics**.

1. Click **+ New Evaluation Metric**.

1. From the **Evaluation Metrics Measurement Type** dropdown, select **By Question**.  
<img src="../images/by-question-dropdown.png" alt="Measurement Type" title="Measurement Type" style="border: 1px solid gray; zoom:70%;">

1. Enter a descriptive **Name** for future reference of the metrics. (for example, agent’s warm greeting).

1. Select a preferred **language** from the dropdown to evaluate the form and configure the required metric. 

1. Enter an evaluation **Question** to help supervisors assess agent adherence as a reference for the audits and interaction reviews.    
<img src="../images/by-question-adhere-type.png" alt="Question and Adherence Type" title="Question and Adherence Type" style="border: 1px solid gray; zoom:70%;">

1. Select the agent **Adherence Type** (**Static** or **Dynamic**).

    !!! note

        * For **Static**, you must configure at least one agent answer utterance for the Adherence Type.
        
        * For **Dynamic**, you must configure at least one trigger and one agent answer utterance for the adherence type.

    ## Adherence Type Configuration

    The following are the key trigger components that you can configure:

    * **Customer Utterance**: Evaluation initiated by customer statements.

    * **Agent Utterance**: Evaluation triggered by agent responses.

    * **Multiple Triggers**: Support for complex conditional scenarios.

    * **GenAI Suggestions**: Automated variation generation.

    ### Static Adherence

    Static Adherence measures whether agents say the required phrase, regardless of what triggers the conversation. It applies to all calls, without any condition or contextual trigger.

    * Use this adherence when you need a consistent, universal check (for example, mandatory greeting scripts, regulatory disclaimers).

    * You should define acceptable utterances for a queue.

    * You set a similarity threshold to evaluate whether the agent’s actual response matches the pre‑defined acceptable utterance.

    * No triggers or contextual conditions needed; it is ideal for fixed, non‑situational compliance items.

    * You must configure at least one agent utterance template for this adherence type.

    ### Dynamic Adherence 

    Dynamic Adherence is a context-sensitive method to evaluate agent performance based on specific triggers rather than monitoring every interaction. It is ideal for scenarios where agent behavior should be assessed only when certain conditions are met.

    * Adherence is checked only when a configured trigger (agent or customer utterance) is detected.

    * You must define at least one trigger (either customer or agent utterances) and one acceptable agent response that activate the adherence check.

    * Evaluates agent behavior only in the context of the detected trigger. 

    * Determines how closely an agent's response must match a predefined response. 

    * Adjustable by criticality of the adherence similarity use case: 

        * **Lower Threshold**: Should close to 60% (Yellow) for casual interactions, greetings.

        * **Higher Threshold**: Must close to 100% (Green) for critical topics, such as legal disclaimers or privacy policies. 
        
        * Once a trigger is detected, the system evaluates whether the agent responded with one of the pre-defined acceptable utterances.  
        <img src="../images/by-question-adhere-type1.png" alt="Question and Adherence Type" title="Question and Adherence Type" style="border: 1px solid gray; zoom:70%;"> 
        
            !!! note

                For **Dynamic**, configure at least one **Trigger** and one agent **Answer** utterance for the adherence type. 

1. Choose utterance source for **Trigger** (who initiates the trigger).

    #### Trigger Configuration

    Provides the following two options to select based on the trigger created by **Agent Utterance** or **Customer Utterance** for evaluation. 

    * **Trigger**: Select and evaluate responses based on triggers created from agent or customer utterances.

        * You can add multiple trigger utterances for conditional checks (for example, AND/OR conditions) to serve as the trigger condition or refine when the trigger is activated. 
        
        * You can define a trigger for either a customer or agent utterance and configure the corresponding responses for that scenario.      
        <img src="../images/by-question-trigger.png" alt="By Question Trigger" title="By Question Trigger" style="border: 1px solid gray; zoom:70%;">

        * **Customer Utterance**: Configure the Customer Utterance that triggers the adherence check. You can enter more than one utterance using Generative AI Assistants that are similar to utterances with the same meaning. For example, customer says “I need a refund”.
        
        * **Agent Utterance**: Configure the Agent Utterance for triggers initiated by the agent. Enter the utterances using generative AI Assistants’ suggestions that have similar utterances with the same meaning. You can add or delete multiple utterances for the Customer and the Agent. For example, agent says “let me transfer you to support”.

1. Choose a **Trigger Detection Method**.

   * **GenAI-Based Adherence**: Enter a descriptive prompt to define intent. This allows contextual detection of whether the agent’s response aligns with the intended goal, without relying on predefined samples. This uses LLMs to understand context and intent and do not require sample utterances or thresholds.

   * **Deterministic Adherence**: This relies on predefined sample utterances and detects adherence based on semantic similarity. 

   * **Utterance**: Enter sample training utterances to detect adherence and define similarity thresholds accordingly.    
   <img src="../images/by-question-trigger-detection-method.png" alt="By Question Utterance" title="By Question Trigger Detection Utterance" style="border: 1px solid gray; zoom:70%;">

    #### Enablement of GenAI-Based Features (Pre-requisite)

    The GenAI-based features are activated only when the following conditions are enabled:

    a. Navigate to **Manage**> **Generative AI**> **GenAI Features**.

    b. [Enable](https://docs.kore.ai/xo/generative-ai-tools/genai-features/) and [Publish](https://docs.kore.ai/xo/deploy/publishing-bot/?h=publis#publishing-components):

    * **GenAI-based agent answer adherence**

    * **GenAI-based customer trigger detection**  
    <img src="../images/gen-ai-based-agent-answer-adherence-with-trigger.png" alt="GenAI-based Features" title="GenAI-based features" style="border: 1px solid gray; zoom:70%;">

1. Choose an **Agent Answer** adherence type.

    #### Agent Answer

    * **GenAI-Based Adherence**: Use AI and natural language understanding (LLM) to detect meaning, context, and intent. This evaluates whether the agent's answer fulfills the **intents**, even if phrased differently.

    * **Deterministic Adherence**: This relies on an **ML-based** method using the semantic similarity.

    * **Description**: Enter a prompt **Description** to check the agent's intent accuracy, phrasing response, and adherence. 

    ##### GenAI-Based Adherence

    Uses Generative AI to automatically evaluate agent responses by understanding natural language, including intent and context, even when phrased differently.

    **Agent Answer**

    a. Select an **Answer Detection Method** to evaluate whether agents respond according to the prompt’s intent. This uses a probabilistic LLM-based method and requires no model training.

    b. Enable the **GenAI-Based Adherence**. Use a **Large Language Model** (LLM) to detect trigger phrases and evaluate adherence using contextual understanding.

    c. Enter a prompt **Description** explaining the metric’s intent or details behind the adherence metric. This applies to all selected languages.   
    <img src="../images/by-question-agent-answer.png" alt="Agent Answer" title="Agent Answer" style="border: 1px solid gray; zoom:70%;">

    !!! Note
            
        * Before assessing GenAI-based adherence responses, ensure that the [supported model](https://docs.kore.ai/xo/generative-ai-tools/models-library/#configure-pre-built-llm-integration) and [features](https://docs.kore.ai/xo/generative-ai-tools/genai-features/), including GenAI-based agent answer adherence and customer trigger detection, are enabled for the respective products in the GenAI features section. [Learn more](https://docs.kore.ai/xo/generative-ai-tools/genai-features/).
                
        * No example utterances or similarity thresholds are required; LLMs evaluate adherence contextually using zero-shot prompts.
                
        * For effective prompts and LLM-based adherence detection, [Learn more](https://docs.google.com/document/d/1_7l12CETtFmXbYuNb7WtTpJbR6i4LZcz37tZpE_GVeY/edit?usp=sharing). 

    ##### Deterministic Adherence

    Evaluates agent responses based on semantic similarity to predefined sample utterances or answers.

    #### Agent Answer Configuration

    a. Select **Deterministic Adherence** to assess responses based on similarity to sample answers. Encoder-based mode lets you define expected replies.                

    b. Define an **Answer** as a set of acceptable utterances for each queue, using **Generative AI** to generate the following automated response variations:

    * Set a similarity threshold to determine how closely user input must match expected utterances to get agent answers. 

    * Add language-specific, prompt-based evaluation parameters.

    * Helps you find relevant answers by suggesting different ways to ask the same question. 

    * Provides expected answers that match the meaning of your question, even if it is asked in different ways.

    * Delete AI-suggested answers that are not required.
1. Set the **Similarity** percentage for the metric based on the defined use case and attribute. 

    ##### Similarity Thresholds

    Evaluates agent responses based on semantic similarity to predefined sample utterances or answers.

    * You can set the Similarity percentage for the desired evaluation metrics. Whether it is **Static** or **Dynamic**, you can configure the expected Similarity threshold.

    * You should set a lower adherence similarity threshold (for example, 60%) for soft skills like greetings and etiquette, and a higher adherence similarity threshold (for example, 100%) for compliance-critical (Policy Privacy or Disclaimer) statements, because it is critical for the user to follow the adherence depending on the use cases.   
    <img src="../images/by-question-agent-answer-similarity.png" alt="Similarity Thresholds" title="Similarity Thresholds" style="border: 1px solid gray; zoom:70%;"> 
        
        !!! Note

            The **Similarity** threshold option is available only when **GenAI-Based Adherence** is enabled. You can configure thresholds for both **Static** and **Dynamic** evaluations.

1. Choose a **Count Type** based on the selected **Adherence Type**.

    #### Count Type Configuration

    The following are the key count types that you can configure:

    * **Entire Conversation**: Full interaction evaluation
    * **Time Bound**: Specific time ranges or message counts

    ##### Entire Conversation

    Evaluates adherence throughout the complete interaction. This allows you to check for adherence at different points of conversation. It does not matter where the agent wants to check adherence throughout the conversation.   
    <img src="../images/by-question-count-type-entire-conv.png" alt="Entire Conversation" title="Entire Conversation" style="border: 1px solid gray; zoom:70%;">

    ##### Time Bound

    Focuses on specific timeframes (first or last X seconds or messages). This evaluates adherence within a specific time range or number of messages in the interaction. It can occur at the start or end of the conversation, either for a defined number of seconds or a set number of chat messages.

    * **Parameter**: Choose between the **First Part of Conversation** or the **Last Part of Conversation**, and configure the relevant criteria to evaluate the metric. 

    * **Voice**: Enter the number of seconds from the start or end of the interaction to evaluate this metric. 

    * **Chat**: Enter the number of messages from the start or end of the interaction to evaluate this metric.  
    <img src="../images/by-question-time-bound.png" alt="Time Bound" title="Time Bound" style="border: 1px solid gray; zoom:70%;">

1. Click **Create** to save and activate the By Question configured adherence metric.

## Edit or Delete By Question Metrics

Steps to edit or delete any existing **By Question** evaluation metrics:

1. Right-click on a desired evaluation metric name under the **By Question** category.  
    <img src="../images/common-edit-eva-metics.png" alt="Edit Metric" title="Edit Metric" style="border: 1px solid gray; zoom:70%;">

2. Choose an option:

    * Click **Edit** to modify the selected metric details.  
    <img src="../images/by-question-edit-eva-metrics.png" alt="Edit Metric" title="Edit Metric" style="border: 1px solid gray; zoom:70%;">

    * Click **Delete** to remove the selected metric.  

3. Click **Update** to save the changes.

### Language Dependency Warnings

This section outlines the limitations and dependencies associated with modifying language settings in evaluation metrics. 

#### Modification Warnings

1. You cannot remove a language if any evaluation form or attribute currently uses it.

1. Remove the language from all associated evaluation forms and attributes before modifying their language settings.

1. You can safely remove languages that are not linked to any forms or metrics.  
<img src="../images/by-question-lang-warning.png" alt="language Warning" title="language Warning" style="border: 1px solid gray; zoom:70%;">

#### Delete Warnings

This section describes the warnings and prerequisites you must address before deleting a metric.

1. If the metric is used in any evaluation form, the system displays a warning message.

1. Remove the metric from all associated evaluation forms before you delete it.

1. If any attributes are linked to the metric, assign a different metric to those attributes before proceeding with deletion.

1. The system allows you to delete the metric only after resolving all dependencies.  
<img src="../images/by-question-delete-warning.png" alt="Delete Warnings" title="Delete Warnings" style="border: 1px solid gray; zoom:70%;">
