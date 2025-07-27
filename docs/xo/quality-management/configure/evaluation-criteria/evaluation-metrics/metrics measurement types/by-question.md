# By Question

The Evaluation Metrics feature is a core component of the Quality AI module, allowing supervisors to define, tailor, and monitor performance indicators that assess the quality of interactions between agents and customers. This process is driven entirely by individual questions. Users can create and customize evaluation criteria using various measurement types, which are managed within the **Evaluation Forms** section.

## Access Evaluation Metrics

Access Evaluation Metrics by navigating to **Contact Center AI** > **Quality AI** > **Configure** > **Evaluation Metrics**.

### By Question

This configuration evaluates adherence to specific questions asked or answered during customer-agent interactions.

**Configuration steps**:

1. Select an **Evaluation Metrics Measurement Type** from the dropdown.
        
2. Enter a referenceable **Name** of the metric for future reference (for example, agent’s warm greeting).
3. Select a preferred **language **from the dropdown menu to evaluate the form and configure the required metric. 

!!! Note
    
    * Only the added languages are available for selection in the **Settings**. [Learn more](https://docs.google.com/document/d/10hRrRjnBXyqPBs2ueJBZQhe_N6nMlDE9MGNTMj0YZ1U/edit?usp=sharing). 

    * Once a primary language is selected, you can configure additional languages as needed.

4. Enter an evaluation **Question** to help supervisors assess agent adherence as a reference for the audits and interaction reviews. 

<p id="gdcalert4" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image4.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert5">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image4.png "image_tooltip")


5. Select the agent **Adherence Type:** **Static **or **Dynamic**.

        

<p id="gdcalert5" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image5.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert6">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image5.png "image_tooltip")



        **Note**: 

    * For **Static**, you must configure at least one agent answer utterance for the Adherence Type.
    * For **Dynamic**, you must configure at least one trigger and one agent answer utterance for the adherence type.


#### **Adherence Type Configuration** 

		The following are the key trigger components that you can configure:



* **Customer Utterance**: Evaluation initiated by customer statements
* **Agent Utterance**: Evaluation triggered by agent responses
* **Multiple Triggers**: Support for complex conditional scenarios
* **GenAI Suggestions**: Automated variation generation

##### 
        **Dynamic Adherence **


        Evaluates agent adherence only if the configured trigger is detected. Based on the evaluation trigger, the agent and customer option is selected. This allows the conditional check-in. It is a trigger-based detection, in which you set up a trigger either for a customer or an agent utterance and then configure the answers appropriate to that scenario.


        For example, Greetings and Etiquette use cases have a lower adherence similarity, which is close to 60% (Yellow). For Policy Privacy or Disclaimer, the adherence similarity must be close to 100% (Green), because this is critical for the user to follow, depending on the use cases. 

        !!! Note

            For **Dynamic**, configure at least one **Trigger **and one Agent **Answer **utterance for the Adherence Type. 

#### Trigger Configuration

     Provides the following two options to select based on the trigger created by **Agent Utterance **or **Customer Utterance **for evaluation. 

    * **Trigger: **Provides the following options to select and evaluate responses based on triggers created from agent or customer utterances. 
        * You can add multiple trigger utterances for conditional checks. 
        * You can define a trigger for either a customer or agent utterance and configure the corresponding responses for that scenario.
            
       * **Customer Utterance**: Configure the Customer Utterance that triggers the adherence check. You can enter more than one utterance using Generative AI Assistants that are similar to utterances with the same meaning.

        * **Agent Utterance**: Configure the Agent Utterance for triggers initiated by the agent. Enter the utterances using generative AI Assistants’ suggestions that have similar utterances with the same meaning. You can add or delete multiple utterances for the Customer and the Agent.
##### 
        **Trigger Detection Method**

        * **Gen AI-based Adherence: **Enter a descriptive prompt to detect contextually if the agent’s reply matches the intended goal, without relying on predefined samples.
                
        * **Deterministic Adherence:** This relies on predefined sample utterances and detects adherence based on semantic similarity. 

        
<p id="gdcalert9" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image9.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert10">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image9.png "image_tooltip")


            * **Utterance**: Enter sample training utterances to detect adherence.

        **Note**: This **Gen AI-based Answer Adherence** **and Trigger Detection **is activated only when the **GenAI-based agent answer adherence and customer trigger detection **option is [Enabled](https://docs.kore.ai/xo/generative-ai-tools/genai-features/) and [Published](https://docs.kore.ai/xo/deploy/publishing-bot/?h=publis#publishing-components) from the **Manage **> **Generative AI **> **GenAI Features**.** **

        **Enablement**

##### Static Adherence

        Evaluates agent adherence across all conversations where no conditional check-in is required. To get the agent's answers, you set up different acceptable utterances for a particular queue, and then configure the extent of similarities expected against the set-up utterances.

#### Agent Answer Configuration

1. **Gen AI-Based Adherence: **Use AI and natural language understanding (LLM) to detect meaning, context, and intent. This evaluates whether the agent's answer fulfills the **intents**, even if phrased differently.

2. **Deterministic Adherence:** This relies on an **ML-based** method using the semantic similarity.
3. **Description**: Enter a prompt **Description** to check the agent's intent accuracy, phrasing response, and adherence. 

##### Gen AI-Based Adherence

 Uses Generative AI to automatically evaluate agent responses based on natural language understanding and set criteria.

4. **Agent Answer:**
    1. Select an **Answer Detection Method **to evaluate whether agents respond according to the prompt’s intent. This uses a probabilistic LLM-based method and requires no model training.

    2. Enable the **Gen AI-Based Adherence**. Use a **Large Language Model **(LLM) to detect trigger phrases and evaluate adherence using contextual understanding.

    3. Enter a prompt **Description **explaining the metric’s intent or details behind the adherence metric. This applies to all selected languages        **Note**: 

* Before assessing Gen AI-based adherence responses, ensure that the [supported model ](https://docs.kore.ai/xo/generative-ai-tools/models-library/#configure-pre-built-llm-integration)and [features](https://docs.kore.ai/xo/generative-ai-tools/genai-features/), including Gen AI-based agent answer adherence and customer trigger detection, are enabled for the respective products in the Gen AI features section. [Learn more](https://docs.kore.ai/xo/generative-ai-tools/genai-features/).
* No example utterances or similarity thresholds are required; LLMs evaluate adherence contextually using zero-shot prompts.
* For effective prompts and LLM-based adherence detection, [Learn more](https://docs.google.com/document/d/1_7l12CETtFmXbYuNb7WtTpJbR6i4LZcz37tZpE_GVeY/edit?usp=sharing). 

##### 
        **Deterministic Adherence**


        Evaluates agent responses based on similarity to predefined sample answers.

5. **Agent Answer: **
    4. Select **Deterministic Adherence **to assess responses based on similarity to sample answers. Encoder-based mode lets you define expected replies.

                

<p id="gdcalert12" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image12.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert13">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image12.png "image_tooltip")


    5. Define an **Answer **as a set of acceptable utterances for each queue, using **Generative AI **to generate the following automated response variations.
            * Set a similarity threshold to determine how closely user input must match expected utterances to get agent answers. 
            * Add language-specific, prompt-based evaluation parameters. 
            * Helps you find relevant answers by suggesting different ways to ask the same question. 
            * Provides expected answers that match the meaning of your question, even if it is asked in different ways.
            * Delete AI-suggested answers that are not required.
6. Set the **Similarity **percentage for the metric based on the defined use case and attribute. 
    * You can set the Similarity percentage for the desired evaluation metrics. Whether it is **Static **or **Dynamic**, you can configure the expected Similarity threshold.
    * You should set a lower adherence similarity threshold (for example, 60%) for greetings or etiquette, and a higher adherence similarity threshold (for example, 100%) for compliance-critical (Policy Privacy or Disclaimer) statements, because it is critical for the user to follow the adherence depending on the use cases.

            

<p id="gdcalert13" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image13.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert14">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image13.png "image_tooltip")



        **Note**: The **Similarity **threshold option is available only when **Gen AI-based Adherence** is enabled. You can configure thresholds for both **Static** and **Dynamic** evaluations.


#### 
    **Count Type Configuration**


	The following are the key count types that you can configure:



* **Entire Conversation**: Full interaction evaluation
* **Time Bound**: Specific time ranges or message counts
* **Flexible Parameters**: First/last conversation portions with configurable limits
7. Choose a **Count Type** (**Entire Conversation** or **Time Bound**) based on the selected **Adherence Type **from the dropdown.

        

<p id="gdcalert14" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image14.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert15">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image14.png "image_tooltip")


* **Entire Conversation**: This allows you to check for adherence at different points of conversation. It does not matter where the agent wants to check adherence throughout the conversation. 
* **Time Bound**: This evaluates adherence within a specific time range or number of messages in the interaction. It can occur at the start or end of the conversation, either for a defined number of seconds or a set number of chat messages.

            

<p id="gdcalert15" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image15.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert16">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image15.png "image_tooltip")


* **Parameter: **Choose between the **First Part of Conversation **or the **Last Part of Conversation**, and configure the relevant criteria to evaluate the metric. 
* **Voice:** Enter the number of seconds from the start or end of the interaction to evaluate this metric. 
* **Chat: **Enter the number of messages from the start or end of the interaction to evaluate this metric.
8. Click **Create** to save and activate the By Question configured adherence metric.


## **Managing Evaluation Metrics**


### **Edit Evaluation Metrics**

Steps to edit or delete existing Evaluation Metrics:



1. Right-click to select any of the existing** Evaluation Metrics **(Name) to choose a type of evaluation metric measurement.

    

<p id="gdcalert16" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image16.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert17">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image16.png "image_tooltip")


2. Click **Edit **to update the required **Edit Evaluation Metrics **dialog box fields.

    

<p id="gdcalert17" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image17.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert18">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image17.png "image_tooltip")


3. Click **Delete **to remove the selected evaluation metric.
4. Click **Update **to save the changes.

#### 
    **Language Dependency Warnings**


    This section outlines the limitations and dependencies associated with modifying language settings in evaluation metrics. 



##### **Modification Warnings**



* You cannot remove a language if any evaluation form or attribute currently uses it.
* Remove the language from all associated evaluation forms and attributes before modifying their language settings.
* You can safely remove languages that are not linked to any forms or metrics. \


<p id="gdcalert18" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image18.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert19">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image18.png "image_tooltip")



### **Delete Evaluation Metrics**

Steps to delete existing Evaluation Metrics:



1. Right-click to select any of the existing** Evaluation Metrics **(Name).


#### **Deletion Warnings**

This section describes the warnings and prerequisites you must address before deleting a metric.



* If the metric is used in any evaluation form, the system displays a warning message.
* Remove the metric from all associated evaluation forms before you delete it.
* If any attributes are linked to the metric, assign a different metric to those attributes before proceeding with deletion.
* The system allows you to delete the metric only after resolving all dependencies.

    

<p id="gdcalert19" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image19.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert20">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image19.png "image_tooltip")


2. Click **Delete **to remove the selected evaluation metric.