
# Quality AI Setup Guide

Get started on the Quality AI module: Learn how to set up, configure, and use the Quality AI module.

Steps to follow the Quality AI setup for third-party integration:

1. Access the  **Quality AI** (QM) by navigating to the **Contact Center AI** > **User Management** > **Role Management** > **New Role** > **Other Modules**.    <br> (Only the app owner has access to Role Management). See [Role Management](https://docs.kore.ai/xo/user-management/role-management/){:target=”_blank”}.</br>

2. Assign the relevant roles (Supervisor role) through User Management or configure the custom roles using the QM permission provided under the Other Modules section for new role creation under Role Management. see [Custom Role](https://docs.kore.ai/xo/user-management/role-management/#custom-role){:target=”_blank”}.

3. Set up the Contact Center and assign the relevant roles (Supervisors/Auditors) to the respective queues to handle access to relevant interactions. <br>See [Queues](https://docs.kore.ai/xo/console/monitor-queues-agents-and-interactions/#queues){:target=”_blank”}.</br>

4. Enable **Conversation Intelligence**, **Auto QA**, and **Bookmarks** in Quality AI **Settings** to start analyzing interactions (**Conversation Intelligence** and **Auto QA Scoring**). See [Conversation Intelligence](https://docs.kore.ai/xo/quality-management/analyze/conversation-intelligence/){:target=”_blank”}.

5. Enable **Answer** and **Utterance** suggestions in GenAI Settings. See [Enabling GenAI Features](https://docs.kore.ai/xo/generative-ai-tools/genai-features/){:target=”_blank”}.

    * Enable the required options from the Co-Pilot section of GenAI features of the Generative AI section of XO11. 
    
    * Select the desired Model for similar suggestions of Agent Answers and Utterances using AI Assistance. For more information, See [Evaluation Forms](https://docs.kore.ai/xo/quality-management/configure/evaluation-forms/){:target=”_blank”}.

6. Enable **Answer** and **Utterance** suggestions in GenAI Settings. See [Enabling GenAI Features](https://docs.kore.ai/xo/generative-ai-tools/genai-features/){:target=”_blank”}. 

7. Create **Evaluation Metrics** from the **Evaluation Forms** section of Quality AI based on the required evaluation criteria using the following user **Evaluation Metrics Measurement Types**. See [Evaluation Forms](https://docs.kore.ai/xo/quality-management/configure/evaluation-forms/){:target=”_blank”}. 

    * **By Question**: 
    
        * **Question Answer Pair**: The question is a reference for auditors to understand the evaluation criteria. For example, did the agent greet the customer?

            * **Adherence Types**:

                * **Static**: Non-conditional evaluation, answers configured are checked for adherence in all scenarios.

                * **Dynamic**: Conditional evaluation, answers configured are checked for adherence only when the configured trigger utterance, either from the Customer or Agent, is detected. See [Evaluation Metrics](https://docs.kore.ai/xo/quality-management/configure/evaluation-metrics/){:target=”_blank”}. 

            * **Answer**: Expected answer utterance from the agent in interactions. 

            * **Count Type**: 

                * **Entire Conversation**: Adherence is checked across the entire interaction. 

                * **Time Bound**: Adherence checks for the configured number of seconds for voice and the number of messages for chats, either at the start or at the end of the conversation, based on selection. See[Add New Evaluation Metrics](../configure/evaluation-metrics.md#add-new-evaluation-metrics){:target=”_blank”}. 
        
    8. Create the **Evaluation Forms**. 
    
        * Create evaluation forms by assigning **Name**, **Description**, **Channel**, and **Pass Score**. 

        * Select the desired metrics from the list of created metrics, add them, assign weights to each metric so that the total weight across metrics sums up to 100%, and assign the forms to queues. 
        
        * After creating the Settings, enable the evaluation form to start evaluating interactions that are terminated in the queues assigned to that form. 
        
        * Each queue can have only one evaluation form per channel: **Chat** and **Voice**. See [Evaluation Forms](https://docs.kore.ai/xo/quality-management/configure/evaluation-forms/){:target=”_blank”}. 
    
    9. View the scored interaction from **Conversation Mining**. 

        * View the scored interactions from conversation mining, use filters to drill down to a set of interactions of interest or interactions with the most potential to improve, and save filters to assign them for audit. 
        
        *Interactions seen in the **Conversation Mining** screen are restricted to the queues that the user is part of. See [Conversation Mining](https://docs.kore.ai/xo/quality-management/analyze/conversation-mining-overview/){:target=”_blank”}.

    10. Create **Audit Allocations** to assign interactions for audit. 

        * Assign interactions for audit to different auditors to manually evaluate them. 

        * Interactions seen in the audit allocation are those assigned to that user for the audit. Upon audit completion, the interactions are removed from the ** New Audit Allocations** tab. See See [Add New Audit Allocation](../quality-management/analyze/conversation-mining.md#add-new-audit-allocation){:target=”_blank”}.
    
    11. Expedite Manual audits. 
    
        * Use AI-assisted manual audits to score interactions easily. The entire interaction is broken down by moments of adherence, moments of violation, and omissions. 
        
        * By questioning metrics associated with the form on the right side, click on the metric to navigate to that point of the interaction and record playback. 
        
        * Violations for speech-based metrics with timestamps on the top-left section. 
        
        * Omissions for playbooks and dialog tasks are on the bottom left. See [Conversation Mining](https://docs.kore.ai/xo/quality-management/analyze/conversation-mining-overview/){:target=”_blank”}.        
    
    12. Monitor task list and quality standards using the **Dashboard**.
        
        * The Dashboard is meant for individual QAs to review their audit completion progress and monitor scores and failure statistics for their respective queues. See [Dashboard](https://docs.kore.ai/xo/quality-management/analyze/dashboard/){:target=”_blank”}. 
    
    13. Monitor contact center performance from the **Conversation Intelligence** dashboard. 
        * Monitor efficiency KPIs, Agent performance metrics, and call drivers using topic modeling, sentiment analysis, and churn analysis from a single dashboard with conversation intelligence. See See [Conversation Intelligence](https://docs.kore.ai/xo/quality-management/analyze/conversation-intelligence/){:target=”_blank”}.



