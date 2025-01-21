
# XO GPT: Conversation Summarization Model





**CONFIDENTIAL - FOR EVALUATION PURPOSES ONLY**

This document contains confidential and proprietary information of Kore.ai Inc. This document is provided solely for authorized recipients to evaluate the model. By accessing this document, you agree to use the information exclusively for evaluation, maintain strict confidentiality, and not disclose or share its contents with any third parties without our express written consent. You must implement appropriate security measures to prevent unauthorized access or dissemination of this information and promptly notify us of any unauthorized disclosure. This document does not grant any licenses, rights, or permissions regarding our intellectual property. 

**DISCLAIMER**

XO GPT is an advanced AI model designed to enhance your applications. However, like all emerging technologies, it will require improvements over time. Despite extensive testing, it is impossible to cover every possible scenario. As a result, XO GPT’s outputs may sometimes be unpredictable, leading to responses that could be inaccurate, biased, or otherwise unexpected. We strongly recommend that developers conduct thorough safety testing and make necessary adjustments to ensure the model fits their specific use cases.

## Live Versions


<table>
  <tr>
   <td>Model Version
   </td>
   <td>Base Model
   </td>
   <td>Languages Supported
   </td>
   <td>Deployed Region
   </td>
   <td>Deployment Date
   </td>
  </tr>
  <tr>
   <td rowspan="3" > Version 2.0
   </td>
   <td rowspan="3" >Mistral 7B Instruct v0.2
   </td>
   <td rowspan="3" >
<p>
English,
<p>
French,
<p>
Spanish,
<p>
German,
<p>
Japanese, 
<p>
Turkish
   </td>
   <td>US
   </td>
   <td>19th Dec 2024
   </td>
  </tr>
  <tr>
   <td>DE
   </td>
   <td>20th Dec 2024
   </td>
  </tr>
  <tr>
   <td>JP
   </td>
   <td>20th Dec 2024
   </td>
  </tr>
</table>


## Introduction

The XO GPT Conversation Summarization Model is an innovative solution that transforms extended dialogues into concise, actionable insights. Built on fine-tuned open-source architectures, it leverages advanced natural language processing techniques to address limitations in traditional large language models (LLMs), such as high latency, cost, and data governance challenges. More importantly, the model is not just a theoretical concept but a practical tool designed for real-world applications. It ensures contextually relevant, secure, and accurate summaries across various domains. These models leverage deep learning to extract key information from extended dialogues, generating concise, coherent summaries that reflect the core of the interaction. LLM-based conversation summarization models streamline converting lengthy conversations into actionable insights by integrating context, sentiment analysis, and topic identification.

These models go beyond simply condensing text through advanced techniques like abstractive summarization. Abstractive summarization involves interpreting and rephrasing the original text, allowing the model to generate context-aware summaries that capture explicit details and implicit meanings from conversations. This capability is advantageous in domains like customer service, healthcare, and IT support, where clear and accurate summaries can enhance decision-making, improve response times, and ensure regulatory compliance.

However, building effective conversation summarization models involves challenges such as handling ambiguous or informal language, ensuring privacy protection by suppressing sensitive information (e.g., PII), and maintaining the balance between brevity and completeness. Kore.ai's XO GPT Summarization Model addresses these challenges by fine-tuning LLMs to produce summaries that reflect the conversational flow, retain key elements, and meet industry-specific requirements for accuracy and security.


### Audience

Large Language Models (LLMs) have wide-ranging impacts across an organization. Technical teams develop and integrate these models, while product and project managers leverage them for business goals. Researchers and documentation teams utilize LLM insights for advancement and clarity. Customer-facing and operational teams benefit from improved user interactions and system performance. Meanwhile, compliance, sales, and executive leadership consider LLMs' strategic value, ethical implications, and potential for driving innovation and competitive advantage.


## Problem Statement


### Background

In our ongoing efforts to enhance the capabilities of our conversational AI solutions, we recognized the limitations of relying solely on commercial large language models (LLMs) for summary generation. While effective, these models posed challenges related to latency, cost, data governance, and control over output quality. To overcome these hurdles, we initiated the fine-tuning of open-source models. This process involved generating synthetic data, validating it with AI, and incorporating human-curated datasets. Through this approach, we’ve significantly improved model performance while addressing the key issues of latency, cost, and data governance, providing us with greater control and customization over the models’ outputs.


### Challenges with Commercial Models



1. **Latency**: The time it takes for commercial LLMs to process and return a response can be significant, especially when dealing with high volumes of requests or real-time applications. This latency can impact user experience.
2. **Cost**: Commercial models often have a per-request cost, which can quickly become expensive, particularly as usage scales. This makes managing costs difficult, especially for large-scale deployments.
3. **Data Governance**: Sending user queries to external models raises data privacy and security concerns. This is especially important in industries that involve sensitive or proprietary information.
4. **Lack of Customization**: Commercial models are generally not tailored to specific use cases or industries, leading to less accurate or relevant responses.
5. **Limited Control**: There is minimal control over the internal workings of commercial models, making it difficult to correct or refine their behavior when they generate incorrect or undesirable outputs.
6. **Compliance and Regulatory Constraints**: Certain industries have stringent compliance and regulatory requirements that may not be fully supported by commercial LLM providers, complicating their use in those sectors.





## Model Overview


### Model Description

Our fine-tuned model meets the growing demands of sophisticated conversational applications. Building on robust open-source architectures, we have enhanced the model through synthetic data generation and rigorous human validation, improving its accuracy, responsiveness, and performance. Moreover, our model offers a reliable and scalable solution tailored to our customer's unique needs by ensuring strict adherence to data governance protocols and optimizing cost efficiency. 


### Key Assumptions

The following are key assumptions made for the XO GPT summarization Model development. 



1. **The XO GPT summarization model** is designed to summarize text-based conversations only.
2. Customers need to have active **AgentAI licenses** to access the summarization feature.
3. Summary is triggered in two cases:
    1. when a **Human Agent** joins the conversation, and 
    2. when the **Conversation Ends**


### Benefits of the XO GPT Summarization Model

The XO GPT summarization  model offers several potential advantages for businesses seeking to enhance their summarization capabilities:



* **Consistent and Accurate**: XO GPT leverages advanced language generation techniques to deliver precise and contextually relevant summaries for conversation transcripts, ensuring consistent and reliable performance.
* **Cost-Effective Performance**: XO GPT offers a cost-efficient, high-performance solution that supports English and plans to expand its language capabilities.
* **Enhanced Data Security**: XO GPT prioritizes data protection, incorporating advanced security protocols to ensure the privacy and safety of sensitive information.

!!! note

    The exact performance, features, and language support may vary based on specific implementations and use cases. We recommend thorough testing in your particular environment to assess the model's suitability for your needs.


<img src="../images/xogptcsmodel.png" alt="Automations" title="image_Get a twilio phone number" style="border: 1px solid gray; zoom:70%;">



### Use Cases

The table presents various use cases for implementing a summarization model to analyze agent and customer conversations across ten domains. The summarization model aims to distill lengthy dialogues into concise overviews, allowing businesses to capture key points from customer interactions quickly. This facilitates improved response times, better customer service, and more efficient resolution of issues. Organizations can use this model solution to enhance operational efficiency, ensure information accuracy, and provide a better customer experience.


<table>
  <tr>
   <td>Domain
   </td>
   <td>Use Cases
   </td>
  </tr>
  <tr>
   <td>Healthcare
   </td>
   <td>Summarize patient inquiries about symptoms, medications, and follow-up instructions from healthcare providers.
   </td>
  </tr>
  <tr>
   <td>Banking
   </td>
   <td>Summarize conversations regarding account issues, transaction disputes, or loan applications.
   </td>
  </tr>
  <tr>
   <td>E-commerce
   </td>
   <td>Summarize customer inquiries about product availability, order status, returns, and refunds.
   </td>
  </tr>
  <tr>
   <td>Insurance
   </td>
   <td>Summarize policyholder interactions regarding claims processing, policy updates, and coverage questions.
   </td>
  </tr>
  <tr>
   <td>IT Support
   </td>
   <td>Summarize troubleshooting steps, error reports, and resolutions provided to customers for technical issues.
   </td>
  </tr>
  <tr>
   <td>Telecommunications
   </td>
   <td>Summarize customer complaints and service requests related to network issues, billing errors, and plan changes.
   </td>
  </tr>
  <tr>
   <td>Travel and Hospitality
   </td>
   <td>Summarize customer queries about booking modifications, cancellations, and special requests.
   </td>
  </tr>
  <tr>
   <td>Retail
   </td>
   <td>Summarize customer service interactions about store policies, promotions, and product exchanges.
   </td>
  </tr>
  <tr>
   <td>Education
   </td>
   <td>Summarize student or parent inquiries regarding course enrollments, schedules, and academic records.
   </td>
  </tr>
  <tr>
   <td>Utilities
   </td>
   <td>Summarize customer communications about service outages, bill inquiries, and usage reports.
   </td>
  </tr>
</table>



### Sample Outputs

The following section presents a few examples of the summary generated by the XO GPT summarization model based on the conversations. Despite conversations, having PII information and XO GPT model summary restricted PII info from the summary. 

For example:


#### Agent Conversation


    Bot: Hello! How can I help you today?
    Customer: I need to check the status of my order.
    Bot: Sure! Please provide your order reference number.
    Customer: It’s 12345-67890.
    Bot: Thanks! For verification, please provide the last four digits of your Social Security Number.
    Customer: 9876.
    Bot: Got it. To proceed, please confirm your password.
    Customer: It’s Mark123.
    Bot: Thank you. Your order is being processed and will ship in 48 hours. Would you like any further assistance?
    Customer: Yes, I want to speak with an agent.
    Bot: Alright, I’m transferring you to an agent now. Please hold.
    Agent: Hi, this is John from XYZ Support. How can I assist you today?
    Customer: Hi, John. I just wanted to confirm the shipping address on my order.
    Agent: Of course! Could you please provide your full name and the last four digits of your Social Security Number?
    Customer: Jane Doe, 9876.
    Agent: Thank you, Jane. The shipping address we have on file is 123 Elm Street, Springfield, IL.
    Customer: That’s correct. Thanks!
    Agent: You’re welcome! Is there anything else I can do for you?
    Customer: No, that’s all. Thanks!
    Agent: Have a great day! Goodbye!
    Customer: Goodbye!


#### Summary Generated

The customer contacted support to check the status of their order. The bot verified the customer's identity using their order reference number, partial social security number, and password. After confirming the details, the bot informed the customer that their order would be processed and shipped within 48 hours. The customer then requested to speak with an agent to clarify the shipping address on their order. The agent assisted the customer by verifying their identity using their full name and the last four digits of their social security number. The agent confirmed that the shipping address on file was correct. The customer thanked the agent, and the conversation ended.



<img src="../images/xogptcsmodel2.png" alt="Automations" title="image_Get a twilio phone number" style="border: 1px solid gray; zoom:70%;">


## XO GPT - Model Building Process

The model-building process consists of several key stages that form the backbone of AI system development. It begins with data collection and processing, followed by model training or fine-tuning, where the AI learns from the prepared data. The final stages involve deploying the model into real-world environments and conducting ongoing evaluations to ensure performance and quality. These insights often feed back into earlier stages for continuous improvement.



* Data Collection: Gathering relevant datasets for training.
* Data Processing: Cleaning and preparing data for model use.
* Model Training/Fine-tuning: Optimizing model parameters using processed data.
* Model Deployment: Integrating the model into a production environment.
* Model Evaluation: Assessing model performance and standards compliance.


### Data Collection

In the initial phase of developing our summarization model, we gather extensive conversations from various domains, such as healthcare, banking, e-commerce, IT support, Finance, and more. This collection is crucial as it forms the foundation of the information our model will use to generate accurate summaries. Ensuring the quality and relevance of this data is key to the model's overall effectiveness.


#### Training Data Source

The training data for fine-tuning and evaluating the model is created using the following stages:



1. Synthetic data is generated using the Azure OpenAI GPT 4 model.
2. Human experts manually develop data based on the problem, challenges, and expected outcomes. 
3. Another set of human annotators evaluates the data generated from the previous steps. Evaluation includes checks for relevancy, coverage of various scenarios, correctness, etc. 
4. No customer data is used to create the training data or evaluate the model’s performance. 


#### Training Data Profile

The training data consists of multiple samples for each language across various categories and use cases. Subsequent sections of this document provide more details about the model's accuracy for different use categories. 

The complete training data is versioned and available in Kore.ai’s XO GPT Data Repository. This data is proprietary to Kore.ai. Access to it is restricted to Kore.ai and can be made available to specific customers/partners/prospects only if needed.   


### Data Processing

Once the data is collected, it is cleaned to 

1. Remove any irrelevant or noisy content, 
2. Standardizing formats, 
3. Ensure the text is ready for use. 

We also perform tokenization and normalization to make the data compatible with the base model’s requirements. By carefully preparing the data, we aim to enhance the model’s ability to generate relevant summaries.


### Model Training/Fine-tuning Process

Training the summarization Generation model is an intricate process that we approach with careful consideration of several factors. We use the prepared dataset to train the model. Training data is selected to ensure it covers a broad spectrum of conversations and domains. Throughout the training process, we adjust hyperparameters such as learning rate, batch size, and the number of epochs to optimize the model’s performance. This iterative process involves frequent evaluations to ensure the model is learning effectively.

The XO GPT model underwent a rigorous fine-tuning process to optimize its performance for summary generation tasks. Our approach leveraged several advanced techniques in machine learning and natural language processing:



* **Memory Efficiency**: We implemented 4-bit precision loading and double quantization to reduce memory usage while maintaining model accuracy. This enables efficient deployment across various hardware configurations.
* **Low-Rank Adaptation (LoRA)**: We applied LoRA to specific model layers, carefully tuning parameters such as rank, scaling factor, and dropout rate. This technique enables effective fine-tuning while minimizing the risk of overfitting.
* **Optimized Training Parameters**: The fine-tuning process uses a set of carefully selected general parameters. These include an appropriate learning rate, batch size, and number of epochs, all chosen to balance efficient training with optimal performance. The model is configured to handle substantial input sequences, ensuring it can process complex queries and context.
* **Advanced Optimization Techniques**: We employed a state-of-the-art optimizer designed for large language models. We considered additional techniques such as warm-up steps, early stopping, and learning rate scheduling to enhance the training process and model stability.
* **Task-Specific Adaptation**: The model is explicitly fine-tuned for causal language modeling tasks, focusing on its summarizing capabilities. This targeted approach ensures that the XO GPT model is well-suited for generating accurate and contextually relevant summaries.


### Model Evaluation 

The following section describes the criteria used to evaluate the mode, the evaluation process, and the evaluation results. 


#### Model Evaluation Criteria

We use a range of evaluation metrics to assess the model's performance, such as accuracy, fluency, hallucinations, robustness, AI Safety, Bias, etc. We also apply validation techniques, including cross-validation and hold-out validation, to ensure the model generalizes well to unseen data. Performance benchmarks help us measure how well the model performs compared to existing solutions or baseline models. This evaluation phase is critical for identifying areas where the model excels and where improvements are needed.


#### Model Evaluation Process

We employed a novel approach to thoroughly evaluate the summarization model: generating synthetic data using GPT models and human expert-created data. We crafted diverse data across various topics to simulate real-world scenarios. This data is designed to challenge the model with a wide range of conversation types, including those with intentional typo errors, poor grammar, and even profanity. The objective was to create a robust testing environment to assess how well the model handles imperfect input standards in user interactions.

The evaluation process involved presenting our model with these challenging conversations and comparing its performance against several other models. We carefully monitored how each model responded to the synthetic data, focusing on its ability to summarize the conversations despite intentional imperfections contextually. By introducing various conversation types, we tested the model’s resilience, ability to maintain accuracy under less-than-ideal conditions, and capability to avoid generating inappropriate or harmful summaries.


#### Important Notes about Evaluation

While our evaluation shows strong performance in internal testing, we acknowledge that real-world performance may vary based on various factors. 

The evaluation process also involved comparing XO GPT's performance against several other models. While our internal testing indicates that XO GPT performs favorably in certain areas, it's important to note that this comparison is based on a specific set of synthetic benchmarks and may not fully represent performance across all possible scenarios. The insights gained from this process were invaluable in refining the model to ensure it could deliver reliable, accurate, and safe responses. However, while the model has shown promising results in handling a variety of challenging inputs, further testing and development are needed to fully assess its capabilities in handling very complex or domain-specific queries and potential edge cases that may not have been fully represented in our synthetic dataset.

It's important to note that various factors can influence latency measurements, including hardware specifications, network conditions, and the model's specific implementation. The provided latency figures should be interpreted within the context of our testing environment and may not directly apply to other deployments.

We are committed to enhancing XO GPT's capabilities and will continue refining the model through ongoing testing and development, including incorporating real-world data and user feedback. 


## Model Benchmarks

Kore.ai’s XO GPT Conversation Summarization Model sets a new benchmark in conversation summarization by balancing accuracy, efficiency, and security. With its commitment to ongoing improvements and adaptability to diverse industry needs, the model reflects Kore.ai's dedication to innovation and excellence in AI-driven solutions.

This section highlights the features, updates, and changes that vary between different versions of the Conversation Summary Model. It provides version-specific information that can help identify what is unique to each version. 

The following table summarizes the versions covered in this document:

| Model Version | Accuracy | Tokens/sec (TPS) | Latency (secs) | Benchmark Comparison          | Test Data & Results    |
|------------|----------|---------------|--------------|-------|------|
| Version 2.0   | 100%     | 71  | 2  | [Benchmark Summary](#benchmarks-summary-v2) | [Performance Benchmarking](#performance-benchmarking-xo-gpt-v2-vs-other-models)   |
| Version 1.0   | 98%      | 40               | 3.04           | [Benchmark Summary](#benchmarks-summary-v1) | [Performance Benchmarking](#performance-benchmarking-xo-gpt-v1-vs-other-models)  |




### Version 2.0


#### Model Choice

We evaluate various community models that are suitable for the objective of response generation and fine-tune with our proprietary data described in the previous section. One or more candidate models are used throughout the training and evaluation phase. The model that performs better in terms of accuracy, safety, latency, etc., is deployed. We continue to evaluate the models as part of ongoing improvements and may choose to use a different base model in the newer model versions. Currently, we are using [Mistral 7B Instruct v0.2](https://huggingface.co/mistralai/Mistral-7B-Instruct-v0.2) as one of the base models for fine-tuning and deployment.


<table>
  <tr>
   <td> Base Model
   </td>
   <td>Developer
   </td>
   <td>Language
   </td>
   <td>Release Date
   </td>
   <td>Status
   </td>
   <td>Knowledge Cutoff
   </td>
  </tr>
  <tr>
   <td>Mistral 7B Instruct v0.2
   </td>
   <td>Mistral AI
   </td>
   <td>Multi-lingual
   </td>
   <td>September, 2024
   </td>
   <td>Static 
   </td>
   <td>September, 2024
   </td>
  </tr>
</table>



##### Fine-tuning Parameters


<table>
  <tr>
   <td>Parameters
   </td>
   <td>Description
   </td>
   <td>Value
   </td>
  </tr>
  <tr>
   <td><strong>Fine Tuning type</strong>
   </td>
   <td>The technique used for finetuning.
   </td>
   <td>PEFT-QLloRA
   </td>
  </tr>
  <tr>
   <td><strong>quantization</strong>
   </td>
   <td>The number of bits used to load the parameters. It reduces the memory usage.
   </td>
   <td>4 bit
   </td>
  </tr>
  <tr>
   <td><strong>rank </strong>
   </td>
   <td>Decide the number of trainable parameters.
   </td>
   <td>32
   </td>
  </tr>
  <tr>
   <td><strong>lora_dropout</strong>
   </td>
   <td>Prevent co-adaptation, where the neural network becomes too reliant on particular connections.
   </td>
   <td>0.05
   </td>
  </tr>
  <tr>
   <td><strong>lora_alpha</strong>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td><strong>Learning Rate</strong>
   </td>
   <td>Controls how quickly or slowly the model reaches the minimum of loss.
   </td>
   <td>2e-4
<p>
(0.0002)
   </td>
  </tr>
  <tr>
   <td><strong>Batch Size</strong>
   </td>
   <td>The number of examples the model learns from at once.
   </td>
   <td>2
   </td>
  </tr>
  <tr>
   <td><strong>Epochs</strong>
   </td>
   <td>Number of times the model sees the entire training data.
   </td>
   <td>3
   </td>
  </tr>
  <tr>
   <td><strong>Warm-up Steps</strong>
   </td>
   <td>Gradual start for the learning rate to help the model stabilize early on.
   </td>
   <td>–
   </td>
  </tr>
  <tr>
   <td><strong>Weight Decay</strong>
   </td>
   <td>It helps to prevent the model from overfitting by reducing the importance of large weights.
   </td>
   <td>–
   </td>
  </tr>
  <tr>
   <td><strong>Dropout Rate</strong>
   </td>
   <td>Randomly ignores some parts of the model during training to prevent overfitting.
   </td>
   <td>–
   </td>
  </tr>
  <tr>
   <td><strong>Max Sequence Length</strong>
   </td>
   <td>The maximum length of input data the model can handle.
   </td>
   <td>–
   </td>
  </tr>
  <tr>
   <td><strong>Gradient Clipping</strong>
   </td>
   <td>Limits the maximum change in weights to prevent instability.
   </td>
   <td>–
   </td>
  </tr>
  <tr>
   <td><strong>Learning Rate Decay</strong>
   </td>
   <td>Slowly reduces the learning rate over time to fine-tune the model.
   </td>
   <td>–
   </td>
  </tr>
  <tr>
   <td><strong>Early Stopping</strong>
   </td>
   <td>Stops training if the model stops improving to prevent overfitting.
   </td>
   <td>–
   </td>
  </tr>
  <tr>
   <td><strong>Optimizer</strong>
   </td>
   <td>An algorithm to adjusts a model's parameters to improve performance.
   </td>
   <td>paged_adamw_8bit
   </td>
  </tr>
  <tr>
   <td><strong>Layer-wise LR Decay</strong>
   </td>
   <td>It uses different learning rates for other model parts to improve stability.
   </td>
   <td>–
   </td>
  </tr>
  <tr>
   <td><strong>Learning Rate Scheduler</strong>
   </td>
   <td>Adjusts the learning rate during training to improve performance.
   </td>
   <td>–
   </td>
  </tr>
  <tr>
   <td><strong>Task Type</strong>
   </td>
   <td>The type of task for which LoRA is applied. In this case, Causal Language Modeling (CAUSAL_LM).
   </td>
   <td>CAUSAL_LM
   </td>
  </tr>
  <tr>
   <td><strong>Targeted Model Modules</strong>
   </td>
   <td>Specific layers in the model where LoRA is applied.
   </td>
   <td>[  "up_proj",
<p>
    "o_proj",    "down_proj",
<p>
  "gate_proj",
<p>
    "q_proj",
<p>
    "k_proj",
<p>
    "v_proj" ]
   </td>
  </tr>
</table>



##### General Parameters

As a pre-requisite, an Agent AI License is required, and the model is hosted on infrastructure with 2 A10 GPUs. Some of the other general fine-tuning parameters include the following


<table>
  <tr>
   <td>Parameters
   </td>
   <td>Description
   </td>
   <td>Value
   </td>
  </tr>
  <tr>
   <td><strong>Learning Rate</strong>
   </td>
   <td>Controls how quickly or slowly the model reaches the minimum of loss.
   </td>
   <td>2e-4 (0.0002)
   </td>
  </tr>
  <tr>
   <td><strong>Batch Size</strong>
   </td>
   <td>The number of examples the model learns from at once.
   </td>
   <td>2
   </td>
  </tr>
  <tr>
   <td><strong>Epochs</strong>
   </td>
   <td>Number of times the model sees the entire training data.
   </td>
   <td>3
   </td>
  </tr>
  <tr>
   <td><strong>Warm-up Steps</strong>
   </td>
   <td>Gradual start for the learning rate to help the model stabilize early on.
   </td>
   <td>–
   </td>
  </tr>
  <tr>
   <td><strong>Max Sequence Length</strong>
   </td>
   <td>The maximum length of input data the model can handle.
   </td>
   <td>32768
   </td>
  </tr>
  <tr>
   <td><strong>Early Stopping</strong>
   </td>
   <td>Stops training if the model stops improving to prevent overfitting.
   </td>
   <td>–
   </td>
  </tr>
  <tr>
   <td><strong>Optimizer</strong>
   </td>
   <td>An algorithm adjusts a model's parameters to improve performance.
   </td>
   <td>paged_adamw_8bit
   </td>
  </tr>
  <tr>
   <td><strong>Layer-wise LR Decay</strong>
   </td>
   <td>It uses different learning rates for other model parts to improve stability.
   </td>
   <td>–
   </td>
  </tr>
  <tr>
   <td><strong>Learning Rate Scheduler</strong>
   </td>
   <td>Adjust the learning rate during training to improve performance.
   </td>
   <td>–
   </td>
  </tr>
</table>



##### AWQ Model Quantization

To optimize the performance and efficiency of the model, we apply AWQ (Activation-aware Weight Quantization), a technique designed to reduce memory and computational requirements while maintaining accuracy significantly. Below is a detailed breakdown of the quantization process and parameters used with AWQ for the Llama 3.1 8B Instruct model.


<table>
  <tr>
   <td><strong>Parameters</strong>
   </td>
   <td><strong>Description</strong>
   </td>
   <td><strong>Value</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Zero Point</strong>
   </td>
   <td>Indicates whether to include a zero-point in the quantization scheme for better weight representation.	
   </td>
   <td>True
   </td>
  </tr>
  <tr>
   <td><strong>Quantization Group Size</strong>
   </td>
   <td>The size of the weight groups for quantization, balancing between compression and computational overhead.
   </td>
   <td>128
   </td>
  </tr>
  <tr>
   <td><strong>Weight Precision</strong>
   </td>
   <td>The number of bits used to represent weights in the quantization process.
   </td>
   <td>4
   </td>
  </tr>
  <tr>
   <td><strong>Quantization Version</strong>
   </td>
   <td>The specific version of AWQ is optimized for GEMM (General Matrix Multiplication) operations.
   </td>
   <td>"GEMM"
   </td>
  </tr>
  <tr>
   <td><strong>Computation Data Type</strong>
   </td>
   <td>The data type is used for computation during inference with quantized weights.
   </td>
   <td>torch.float16
   </td>
  </tr>
  <tr>
   <td><strong>Model Loading</strong>
   </td>
   <td>Configuration to load the model with reduced CPU memory usage for efficient deployment.
   </td>
   <td>{"low_cpu_mem_usage": True}
   </td>
  </tr>
  <tr>
   <td><strong>Tokenizer Loading</strong>
   </td>
   <td>This includes trust configuration for loading the tokenizer with remote code compatibility.
   </td>
   <td>trust_remote_code=True
   </td>
  </tr>
  <tr>
   <td><strong>Quantization Benefits</strong>
   </td>
   <td>AWQ enables lower memory footprint and faster inference without significant loss of accuracy.
   </td>
   <td>-
   </td>
  </tr>
</table>



#### Benchmarks Summary v2

To compare and contrast the performance of the fine-tuned model, we have considered the following other models: 



* LLama-8B: An open-source large language model with 8 billion parameters, known for its strong performance despite its relatively small size.
* GPT-4: A large language model developed by OpenAI, known for its advanced capabilities across various tasks (note: there's no official "GPT 4o mini" version).
* Claude 3.5 Sonnet: Part of the Claude 3.5 Sonnet model family by Anthropic, designed to balance intelligence and speed for various tasks.

<img src="../images/xogptcsmodel3.png" alt="Benchmarks Summary" title="Benchmarks Summary" style="border: 1px solid gray; zoom:70%;">



XO GPT has demonstrated outstanding performance in recent evaluations, achieving an impressive overall score, which positions it alongside leading models like Llama and ahead of competitors such as Sonnet and GPT-4. This high score reflects the model's robust accuracy, fluency, and robustness capabilities, particularly in multilingual contexts. XO GPT consistently delivers strong results across various tasks, including bias detection, bribery identification, and sentiment analysis. It shows exceptional performance in English, French, German, Japanese, Turkish, and Spanish, with notable strengths in areas like customer requests and negation detection. The following are the detailed test results.


###### **Performance Benchmarking: XO GPT v2 vs. Other Models**


<table>
  <tr>
   <td>Category
   </td>
   <td>Sample
   </td>
   <td>XO GPT
   </td>
   <td>Azure Open AI 4o
   </td>
   <td>Sonnet 3.5
   </td>
   <td>Llama 3.1
   </td>
  </tr>
  <tr>
   <td>2 participants
   </td>
   <td>11
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
  </tr>
  <tr>
   <td>3 Participants
   </td>
   <td>11
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
  </tr>
  <tr>
   <td>Emoji
   </td>
   <td>11
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
  </tr>
  <tr>
   <td>More than one problem statement
   </td>
   <td>11
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
  </tr>
  <tr>
   <td>One-sided conversations
   </td>
   <td>11
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
  </tr>
  <tr>
   <td>profane
   </td>
   <td>11
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
  </tr>
  <tr>
   <td>Sarcasm
   </td>
   <td>11
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
  </tr>
  <tr>
   <td>shortest
   </td>
   <td>12
   </td>
   <td>100%
   </td>
   <td>92%
   </td>
   <td>100%
   </td>
   <td>75%
   </td>
  </tr>
  <tr>
   <td>typo and poor grammar
   </td>
   <td>11
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
  </tr>
  <tr>
   <td>Grand Total
   </td>
   <td>100
   </td>
   <td>100%
   </td>
   <td>99%
   </td>
   <td>100%
   </td>
   <td>97%
   </td>
  </tr>
</table>



###### **Multilingual Performance Comparison v2**


<table>
  <tr>
   <td>Category
   </td>
   <td>Sample
   </td>
   <td>English
   </td>
   <td>French
   </td>
   <td>Spanish
   </td>
   <td>German
   </td>
   <td>Japanese
   </td>
   <td>Turkish
   </td>
  </tr>
  <tr>
   <td>2 participants
   </td>
   <td>11
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
  </tr>
  <tr>
   <td>3 Participants
   </td>
   <td>11
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
  </tr>
  <tr>
   <td>Emoji
   </td>
   <td>11
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
  </tr>
  <tr>
   <td>More than one problem statement
   </td>
   <td>11
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
  </tr>
  <tr>
   <td>One-sided conversations
   </td>
   <td>11
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
  </tr>
  <tr>
   <td>profane
   </td>
   <td>11
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
  </tr>
  <tr>
   <td>Sarcasm
   </td>
   <td>11
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
  </tr>
  <tr>
   <td>shortest
   </td>
   <td>12
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>92%
   </td>
   <td>100%
   </td>
  </tr>
  <tr>
   <td>typo and poor grammar
   </td>
   <td>11
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
  </tr>
  <tr>
   <td>Grand Total
   </td>
   <td>100
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>99%
   </td>
   <td>100%
   </td>
  </tr>
</table>



###### **Average Latency Benchmarking: XO GPT v2 and Other Models**


<table>
  <tr>
   <td>category (Latency Avg)
   </td>
   <td>Sample
   </td>
   <td>XO GPT
   </td>
   <td>Azure Open AI 4o
   </td>
   <td>Sonnet 3.5
   </td>
   <td>Llama 3.1
   </td>
  </tr>
  <tr>
   <td>2 participants
   </td>
   <td>11
   </td>
   <td>2.1
   </td>
   <td>3.4
   </td>
   <td>3.2
   </td>
   <td>2.0
   </td>
  </tr>
  <tr>
   <td>3 Participants
   </td>
   <td>11
   </td>
   <td>2.5
   </td>
   <td>3.3
   </td>
   <td>3.4
   </td>
   <td>2.7
   </td>
  </tr>
  <tr>
   <td>Emoji
   </td>
   <td>11
   </td>
   <td>2.3
   </td>
   <td>3.2
   </td>
   <td>3.1
   </td>
   <td>2.0
   </td>
  </tr>
  <tr>
   <td>More than one problem statement
   </td>
   <td>11
   </td>
   <td>2.5
   </td>
   <td>3.5
   </td>
   <td>3.3
   </td>
   <td>2.6
   </td>
  </tr>
  <tr>
   <td>One-sided conversations
   </td>
   <td>11
   </td>
   <td>1.8
   </td>
   <td>2.6
   </td>
   <td>3.1
   </td>
   <td>1.9
   </td>
  </tr>
  <tr>
   <td>profane
   </td>
   <td>11
   </td>
   <td>2.0
   </td>
   <td>3.2
   </td>
   <td>3.0
   </td>
   <td>1.9
   </td>
  </tr>
  <tr>
   <td>Sarcasm
   </td>
   <td>11
   </td>
   <td>2.1
   </td>
   <td>3.0
   </td>
   <td>3.3
   </td>
   <td>2.1
   </td>
  </tr>
  <tr>
   <td>shortest
   </td>
   <td>12
   </td>
   <td>0.6
   </td>
   <td>2.0
   </td>
   <td>2.2
   </td>
   <td>0.4
   </td>
  </tr>
  <tr>
   <td>typo and poor grammar
   </td>
   <td>11
   </td>
   <td>2.3
   </td>
   <td>3.4
   </td>
   <td>3.2
   </td>
   <td>2.9
   </td>
  </tr>
  <tr>
   <td>Grand Total
   </td>
   <td>100
   </td>
   <td>2.0
   </td>
   <td>3.1
   </td>
   <td>3.1
   </td>
   <td>2.0
   </td>
  </tr>
</table>



###### **Median Latency Benchmarking: XO GPT v2 and Other Models**


<table>
  <tr>
   <td>category (Latency Median)
   </td>
   <td>Sample
   </td>
   <td>XO GPT
   </td>
   <td>Azure Open AI 4o
   </td>
   <td>Sonnet 3.5
   </td>
   <td>Llama 3.1
   </td>
  </tr>
  <tr>
   <td>2 participants
   </td>
   <td>11
   </td>
   <td>2.0
   </td>
   <td>3.0
   </td>
   <td>2.8
   </td>
   <td>1.8
   </td>
  </tr>
  <tr>
   <td>3 Participants
   </td>
   <td>11
   </td>
   <td>2.4
   </td>
   <td>3.3
   </td>
   <td>3.1
   </td>
   <td>2.2
   </td>
  </tr>
  <tr>
   <td>Emoji
   </td>
   <td>11
   </td>
   <td>2.1
   </td>
   <td>2.9
   </td>
   <td>3.1
   </td>
   <td>1.4
   </td>
  </tr>
  <tr>
   <td>More than one problem statement
   </td>
   <td>11
   </td>
   <td>2.4
   </td>
   <td>3.3
   </td>
   <td>3.2
   </td>
   <td>2.3
   </td>
  </tr>
  <tr>
   <td>One-sided conversations
   </td>
   <td>11
   </td>
   <td>1.7
   </td>
   <td>2.5
   </td>
   <td>2.9
   </td>
   <td>1.9
   </td>
  </tr>
  <tr>
   <td>profane
   </td>
   <td>11
   </td>
   <td>1.9
   </td>
   <td>3.2
   </td>
   <td>2.9
   </td>
   <td>1.6
   </td>
  </tr>
  <tr>
   <td>Sarcasm
   </td>
   <td>11
   </td>
   <td>2.1
   </td>
   <td>2.9
   </td>
   <td>3.1
   </td>
   <td>1.8
   </td>
  </tr>
  <tr>
   <td>shortest
   </td>
   <td>12
   </td>
   <td>0.6
   </td>
   <td>2.0
   </td>
   <td>2.1
   </td>
   <td>0.4
   </td>
  </tr>
  <tr>
   <td>typo and poor grammar
   </td>
   <td>11
   </td>
   <td>1.8
   </td>
   <td>3.4
   </td>
   <td>3.1
   </td>
   <td>1.6
   </td>
  </tr>
  <tr>
   <td>Grand Total
   </td>
   <td>100
   </td>
   <td>2.0
   </td>
   <td>3.0
   </td>
   <td>3.1
   </td>
   <td>1.8
   </td>
  </tr>
</table>


**Analysis of Model Performance in Latency and Processing Speed**

**XO GPT** emerges as the leading model for summarization tasks, demonstrating exceptional response time and processing capacity. Key points include:



* **Exceptional Token Output**: XO GPT generates an average of 71.02 tokens per second, surpassing models like GPT-4o mini and Claude -3.5 Sonnet. This positions XO GPT as a strong choice for detailed and comprehensive content generation.
* **Balanced Latency**: At 2 seconds, XO GPT offers the lowest latency, delivering well-rounded outputs faster than all other models.
* **Versatility**: As part of the GPT family, XO GPT excels in various applications, from content curation to data analysis. It is a powerful tool for businesses and researchers working with large text volumes.

XO GPT also performed admirably in language-specific evaluations across multiple categories and domains. For English, the model achieved perfect scores in critical areas such as bias detection, bribery identification, and sentiment analysis. French performance was equally strong, with 100% scores in most categories, though there is room for improvement in detecting sarcasm. Japan evaluations showed near-perfect results, with only a slight drop in handling very short content. Spanish and German performance was robust, particularly in customer requests and negation detection, but some areas, such as profanity detection and specific sentiment analysis tasks, could benefit from further enhancement.

While there are areas for refinement, particularly in sentiment analysis for specific emotions and handling short text, XO GPT’s overall performance positions it as a leading language model in natural language processing. Its versatility across languages and tasks and powerful summarization capabilities make it a prime candidate for diverse applications, ranging from content moderation to advanced linguistic analysis.


### Version 1.0


#### Model Choice

We evaluate various community models suitable for response generation and fine-tune with our proprietary data described in the previous section. One or more candidate models are used throughout the training and evaluation phase. The model that performs better in accuracy, safety, latency, etc., will be deployed. We continue to evaluate the models as part of ongoing improvements and may choose to use a different base model in the newer model versions. Currently, we are using [Mistral 7B Instruct v0.2](https://huggingface.co/mistralai/Mistral-7B-Instruct-v0.2) as one of the base models for fine-tuning and deployment.


<table>
  <tr>
   <td> Base Model
   </td>
   <td>Developer
   </td>
   <td>Language
   </td>
   <td>Release Date
   </td>
   <td>Status
   </td>
   <td>Knowledge Cutoff
   </td>
  </tr>
  <tr>
   <td>Mistral 7B Instruct v0.2
   </td>
   <td>Mistral AI
   </td>
   <td>Multi-lingual
   </td>
   <td>March, 2024
   </td>
   <td>Static 
   </td>
   <td>September, 2024
   </td>
  </tr>
</table>



##### Fine-tuning Parameters


<table>
  <tr>
   <td>Parameters
   </td>
   <td>Description
   </td>
   <td>Value
   </td>
  </tr>
  <tr>
   <td><strong>Fine Tuning type</strong>
   </td>
   <td>The technique used for finetuning.
   </td>
   <td>PEFR-QLoRA
   </td>
  </tr>
  <tr>
   <td><strong>quantization</strong>
   </td>
   <td>The number of bits used to load the parameters. It reduces the memory usage.
   </td>
   <td>4 bit
   </td>
  </tr>
  <tr>
   <td><strong>rank </strong>
   </td>
   <td>Decide the number of trainable parameters.
   </td>
   <td>32
   </td>
  </tr>
  <tr>
   <td><strong>lora_dropout</strong>
   </td>
   <td>Prevent co-adaptation, where the neural network becomes too reliant on particular connections.
   </td>
   <td>0.05
   </td>
  </tr>
  <tr>
   <td><strong>Learning Rate</strong>
   </td>
   <td>Controls how quickly or slowly the model reaches the minimum of loss.
   </td>
   <td>1e-3 (0.001)
   </td>
  </tr>
  <tr>
   <td><strong>Batch Size</strong>
   </td>
   <td>The number of examples the model learns from at once.
   </td>
   <td>2
   </td>
  </tr>
  <tr>
   <td><strong>Epochs</strong>
   </td>
   <td>Number of times the model sees the entire training data.
   </td>
   <td>4
   </td>
  </tr>
  <tr>
   <td><strong>Warm-up Steps</strong>
   </td>
   <td>Gradual start for the learning rate to help the model stabilize early on.
   </td>
   <td>–
   </td>
  </tr>
  <tr>
   <td><strong>Weight Decay</strong>
   </td>
   <td>It helps to prevent the model from overfitting by reducing the importance of large weights.
   </td>
   <td>–
   </td>
  </tr>
  <tr>
   <td><strong>Dropout Rate</strong>
   </td>
   <td>Randomly ignores some parts of the model during training to prevent overfitting.
   </td>
   <td>–
   </td>
  </tr>
  <tr>
   <td><strong>Max Sequence Length</strong>
   </td>
   <td>The maximum length of input data the model can handle.
   </td>
   <td>–
   </td>
  </tr>
  <tr>
   <td><strong>Gradient Clipping</strong>
   </td>
   <td>Limits the maximum change in weights to prevent instability.
   </td>
   <td>–
   </td>
  </tr>
  <tr>
   <td><strong>Learning Rate Decay</strong>
   </td>
   <td>Slowly reduces the learning rate over time to fine-tune the model.
   </td>
   <td>–
   </td>
  </tr>
  <tr>
   <td><strong>Early Stopping</strong>
   </td>
   <td>Stops training if the model stops improving to prevent overfitting.
   </td>
   <td>–
   </td>
  </tr>
  <tr>
   <td><strong>Optimizer</strong>
   </td>
   <td>An algorithm to adjusts a model's parameters to improve performance.
   </td>
   <td>paged_adamw_8bit
   </td>
  </tr>
  <tr>
   <td><strong>Layer-wise LR Decay</strong>
   </td>
   <td>It uses different learning rates for other model parts to improve stability.
   </td>
   <td>–
   </td>
  </tr>
  <tr>
   <td><strong>Learning Rate Scheduler</strong>
   </td>
   <td>Adjusts the learning rate during training to improve performance.
   </td>
   <td>–
   </td>
  </tr>
</table>



##### General Parameters

As a pre-requisite, an Agent AI License is required, and the model is hosted on infrastructure with 2 A10 GPUs. Some of the other general fine-tuning parameters include the following


<table>
  <tr>
   <td>Parameters
   </td>
   <td>Description
   </td>
   <td>Value
   </td>
  </tr>
  <tr>
   <td><strong>Learning Rate</strong>
   </td>
   <td>Controls how quickly or slowly the model reaches the minimum of loss.
   </td>
   <td>1e-3 (0.001)
   </td>
  </tr>
  <tr>
   <td><strong>Batch Size</strong>
   </td>
   <td>The number of examples the model learns from at once.
   </td>
   <td>2
   </td>
  </tr>
  <tr>
   <td><strong>Epochs</strong>
   </td>
   <td>Number of times the model sees the entire training data.
   </td>
   <td>4
   </td>
  </tr>
  <tr>
   <td><strong>Warm-up Steps</strong>
   </td>
   <td>Gradual start for the learning rate to help the model stabilize early on.
   </td>
   <td>–
   </td>
  </tr>
  <tr>
   <td><strong>Max Sequence Length</strong>
   </td>
   <td>The maximum length of input data the model can handle.
   </td>
   <td>32768
   </td>
  </tr>
  <tr>
   <td><strong>Early Stopping</strong>
   </td>
   <td>Stops training if the model stops improving to prevent overfitting.
   </td>
   <td>–
   </td>
  </tr>
  <tr>
   <td><strong>Optimizer</strong>
   </td>
   <td>An algorithm to adjusts a model's parameters to improve performance.
   </td>
   <td>paged_adamw_8bit
   </td>
  </tr>
  <tr>
   <td><strong>Layer-wise LR Decay</strong>
   </td>
   <td>It uses different learning rates for other model parts to improve stability.
   </td>
   <td>–
   </td>
  </tr>
  <tr>
   <td><strong>Learning Rate Scheduler</strong>
   </td>
   <td>Adjust the learning rate during training to improve performance.
   </td>
   <td>–
   </td>
  </tr>
</table>



#### Benchmarks Summary v1

To compare and contrast the performance of the fine-tuned model, we have considered the following other models: 



* Llama 3 8b (Ctranslate): An open-source large language model with 8 billion parameters, known for its strong performance despite its relatively small size.
* Sonnet 3.5: Part of the Claude 3 model family by Anthropic, designed to balance intelligence and speed for various tasks.
* GPT 4o: A large language model developed by OpenAI, known for its advanced capabilities across various tasks (note: there's no official "GPT 4o mini" version).

<img src="../images/xogptcsmodel3.png" alt="Benchmarks Summary" title="Benchmarks Summary" style="border: 1px solid gray; zoom:70%;">



XO GPT has demonstrated outstanding performance in recent evaluations, achieving an impressive overall score, which positions it alongside leading models like Llama and ahead of competitors such as Sonnet and GPT-4. This high score reflects the model's robust accuracy, fluency, and robustness capabilities, particularly in multilingual contexts. XO GPT consistently delivers strong results across various tasks, including bias detection, bribery identification, and sentiment analysis. It shows exceptional English, French, German, and Spanish performance, with notable strengths in customer requests and negation detection. The following are the detailed test results.


###### **Performance Benchmarking: XO GPT v1 vs. Other Models**


<table>
  <tr>
   <td>Category
   </td>
   <td>Sample
   </td>
   <td>XO GPT
   </td>
   <td>Azure Open AI 4o
   </td>
   <td>Sonnet 3.5
   </td>
   <td>Llama 3.1
   </td>
  </tr>
  <tr>
   <td>2 participants
   </td>
   <td>11
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
  </tr>
  <tr>
   <td>3 Participants
   </td>
   <td>11
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
  </tr>
  <tr>
   <td>Emoji
   </td>
   <td>11
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
  </tr>
  <tr>
   <td>More than one problem statement
   </td>
   <td>11
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
  </tr>
  <tr>
   <td>One-sided conversations
   </td>
   <td>11
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
  </tr>
  <tr>
   <td>profane
   </td>
   <td>11
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
  </tr>
  <tr>
   <td>Sarcasm
   </td>
   <td>11
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
  </tr>
  <tr>
   <td>shortest
   </td>
   <td>12
   </td>
   <td>100%
   </td>
   <td>92%
   </td>
   <td>100%
   </td>
   <td>75%
   </td>
  </tr>
  <tr>
   <td>typo and poor grammar
   </td>
   <td>11
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
  </tr>
  <tr>
   <td>Grand Total
   </td>
   <td>100
   </td>
   <td>100%
   </td>
   <td>99%
   </td>
   <td>100%
   </td>
   <td>97%
   </td>
  </tr>
</table>



###### **Multilingual Performance Comparison  v1**


<table>
  <tr>
   <td>Category
   </td>
   <td>Sample
   </td>
   <td>English
   </td>
   <td>French
   </td>
   <td>Spanish
   </td>
   <td>German
   </td>
   <td>Japanese
   </td>
   <td>Turkish
   </td>
  </tr>
  <tr>
   <td>2 participants
   </td>
   <td>11
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
  </tr>
  <tr>
   <td>3 Participants
   </td>
   <td>11
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
  </tr>
  <tr>
   <td>Emoji
   </td>
   <td>11
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
  </tr>
  <tr>
   <td>More than one problem statement
   </td>
   <td>11
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
  </tr>
  <tr>
   <td>One-sided conversations
   </td>
   <td>11
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
  </tr>
  <tr>
   <td>profane
   </td>
   <td>11
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
  </tr>
  <tr>
   <td>Sarcasm
   </td>
   <td>11
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
  </tr>
  <tr>
   <td>shortest
   </td>
   <td>12
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>92%
   </td>
   <td>100%
   </td>
  </tr>
  <tr>
   <td>typo and poor grammar
   </td>
   <td>11
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
  </tr>
  <tr>
   <td>Grand Total
   </td>
   <td>100
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>100%
   </td>
   <td>99%
   </td>
   <td>100%
   </td>
  </tr>
</table>



###### **Average Latency Benchmarking: XO GPT v1 and Other Models**


<table>
  <tr>
   <td>category (Latency Avg)
   </td>
   <td>Sample
   </td>
   <td>XO GPT
   </td>
   <td>Azure Open AI 4o
   </td>
   <td>Sonnet 3.5
   </td>
   <td>Llama 3.1
   </td>
  </tr>
  <tr>
   <td>2 participants
   </td>
   <td>11
   </td>
   <td>2.1
   </td>
   <td>3.4
   </td>
   <td>3.2
   </td>
   <td>2.0
   </td>
  </tr>
  <tr>
   <td>3 Participants
   </td>
   <td>11
   </td>
   <td>2.5
   </td>
   <td>3.3
   </td>
   <td>3.4
   </td>
   <td>2.7
   </td>
  </tr>
  <tr>
   <td>Emoji
   </td>
   <td>11
   </td>
   <td>2.3
   </td>
   <td>3.2
   </td>
   <td>3.1
   </td>
   <td>2.0
   </td>
  </tr>
  <tr>
   <td>More than one problem statement
   </td>
   <td>11
   </td>
   <td>2.5
   </td>
   <td>3.5
   </td>
   <td>3.3
   </td>
   <td>2.6
   </td>
  </tr>
  <tr>
   <td>One-sided conversations
   </td>
   <td>11
   </td>
   <td>1.8
   </td>
   <td>2.6
   </td>
   <td>3.1
   </td>
   <td>1.9
   </td>
  </tr>
  <tr>
   <td>profane
   </td>
   <td>11
   </td>
   <td>2.0
   </td>
   <td>3.2
   </td>
   <td>3.0
   </td>
   <td>1.9
   </td>
  </tr>
  <tr>
   <td>Sarcasm
   </td>
   <td>11
   </td>
   <td>2.1
   </td>
   <td>3.0
   </td>
   <td>3.3
   </td>
   <td>2.1
   </td>
  </tr>
  <tr>
   <td>shortest
   </td>
   <td>12
   </td>
   <td>0.6
   </td>
   <td>2.0
   </td>
   <td>2.2
   </td>
   <td>0.4
   </td>
  </tr>
  <tr>
   <td>typo and poor grammar
   </td>
   <td>11
   </td>
   <td>2.3
   </td>
   <td>3.4
   </td>
   <td>3.2
   </td>
   <td>2.9
   </td>
  </tr>
  <tr>
   <td>Grand Total
   </td>
   <td>100
   </td>
   <td>2.0
   </td>
   <td>3.1
   </td>
   <td>3.1
   </td>
   <td>2.0
   </td>
  </tr>
</table>



###### **Median Latency Benchmarking: XO GPT v1 and Other Models**


<table>
  <tr>
   <td>category (Latency Median)
   </td>
   <td>Sample
   </td>
   <td>XO GPT
   </td>
   <td>Azure Open AI 4o
   </td>
   <td>Sonnet 3.5
   </td>
   <td>Llama 3.1
   </td>
  </tr>
  <tr>
   <td>2 participants
   </td>
   <td>11
   </td>
   <td>2.0
   </td>
   <td>3.0
   </td>
   <td>2.8
   </td>
   <td>1.8
   </td>
  </tr>
  <tr>
   <td>3 Participants
   </td>
   <td>11
   </td>
   <td>2.4
   </td>
   <td>3.3
   </td>
   <td>3.1
   </td>
   <td>2.2
   </td>
  </tr>
  <tr>
   <td>Emoji
   </td>
   <td>11
   </td>
   <td>2.1
   </td>
   <td>2.9
   </td>
   <td>3.1
   </td>
   <td>1.4
   </td>
  </tr>
  <tr>
   <td>More than one problem statement
   </td>
   <td>11
   </td>
   <td>2.4
   </td>
   <td>3.3
   </td>
   <td>3.2
   </td>
   <td>2.3
   </td>
  </tr>
  <tr>
   <td>One-sided conversations
   </td>
   <td>11
   </td>
   <td>1.7
   </td>
   <td>2.5
   </td>
   <td>2.9
   </td>
   <td>1.9
   </td>
  </tr>
  <tr>
   <td>profane
   </td>
   <td>11
   </td>
   <td>1.9
   </td>
   <td>3.2
   </td>
   <td>2.9
   </td>
   <td>1.6
   </td>
  </tr>
  <tr>
   <td>Sarcasm
   </td>
   <td>11
   </td>
   <td>2.1
   </td>
   <td>2.9
   </td>
   <td>3.1
   </td>
   <td>1.8
   </td>
  </tr>
  <tr>
   <td>shortest
   </td>
   <td>12
   </td>
   <td>0.6
   </td>
   <td>2.0
   </td>
   <td>2.1
   </td>
   <td>0.4
   </td>
  </tr>
  <tr>
   <td>typo and poor grammar
   </td>
   <td>11
   </td>
   <td>1.8
   </td>
   <td>3.4
   </td>
   <td>3.1
   </td>
   <td>1.6
   </td>
  </tr>
  <tr>
   <td>Grand Total
   </td>
   <td>100
   </td>
   <td>2.0
   </td>
   <td>3.0
   </td>
   <td>3.1
   </td>
   <td>1.8
   </td>
  </tr>
</table>


**Analysis of Model Performance in Latency and Processing Speed:**

Regarding latency and processing speed, XO GPT showcases impressive summarization performance, standing out as a frontrunner. Key highlights include:



* **Competitive Speed**: The model processes at a rate of 37.39 tokens per second, ensuring fast content generation for summarization tasks.
* **Balanced Performance**: While XO GPT’s average latency of 3.82 seconds is slightly higher than some competitors, this comes with the advantage of producing significantly more content, striking a balance between depth and speed.

In language-specific evaluations, XO GPT also performed admirably across multiple categories. For English, the model achieved perfect scores in critical areas such as bias detection, bribery identification, and sentiment analysis. French performance was equally strong, with 100% scores in most categories, though there is room for improvement in detecting sad sentiment. German evaluations showed near-perfect results, with a slight drop in handling very short content. Spanish performance was robust, particularly in customer requests and negation detection, but some areas, such as profanity detection and specific sentiment analysis tasks, could benefit from further enhancement.

While there are areas for refinement, particularly in sentiment analysis for specific emotions and handling short text, XO GPT’s overall performance positions it as a leading language model in natural language processing. Its high versatility across languages and tasks and powerful summarization capabilities make it a prime candidate for diverse applications, ranging from content moderation to advanced linguistic analysis.


## Model Roadmap


#### Model Maintenance

Finally, ongoing model maintenance is essential for keeping the model up-to-date and effective. We regularly review and update the data, retrain the model as necessary, and address any issues or changes in the domain. This proactive approach helps ensure the model remains relevant and continues to provide accurate and valuable summaries over time.


<table>
  <tr>
   <td><strong>Activities</strong>
   </td>
   <td><strong>Frequency</strong>
   </td>
  </tr>
  <tr>
   <td>New Features to the Models
   </td>
   <td>Quarterly
   </td>
  </tr>
  <tr>
   <td>Bug Fixes
   </td>
   <td>On Demand Basis
   </td>
  </tr>
  <tr>
   <td>Performance Improvement
   </td>
   <td>On Demand Basis
   </td>
  </tr>
</table>



#### Model Expansion

The summarization model is rapidly evolving to meet the growing demands of our customers. We are committed to enhancing its capabilities and expanding its reach. The following are some of the key upgrades planned as part of the roadmap: 



* Multilingual Proficiency: Our model will soon be available in additional languages, including English, French, Spanish, Japanese, Turkish, and German. This will enable users from diverse backgrounds to benefit from its advanced capabilities. The models will be launched as beta models and improved based on expert feedback.
* New Summary Templates: New summarization templates, such as Stepwise and PRA (problem-resolution-action items), will be made available as independent models on a demand basis. 

The successful execution of the above roadmap depends on several factors. The rapidly changing technological landscape may necessitate adjustments to incorporate new advancements or overcome unforeseen challenges. Additionally, shifts in market demands or the competitive environment could lead to a reassessment of priorities. Finally, internal strategic decisions and unexpected technical hurdles could also impact the timeline and direction of the roadmap.
