# Quality Management Setup Guide

The users can access the Quality Management (QM) by going to the **Contact Center AI** > **User Management** > **Role Management**, as shown below.  
<img src="../images/role-management-page.png" alt="Role Management" title="Role Management" style="border: 1px solid gray; zoom:70%;">

For more information about the Role Management, refer to the [Manage Role and Permissions](../user-management/role-management.md).

For more information about Custom Role updates, refer to the [Custom Role](../user-management/role-management.md#permissions).

Steps to follow the QM setup for Third-party Integration:

1. Go to **User Management** > **Role Management** > **New Role** > **Other Modules** for QM permission.
2. Assign the relevant roles (Supervisor role) through User Management or configure the custom roles using the QM permission provided under the Other Modules section for new role creation under Role Management.
3. Set up the Contact Center and assign the relevant roles (Supervisors/Auditors) to the respective queues to handle access to relevant interactions.
4. Enable **Conversation Intelligence** and **Auto QA**.
    * Enable **Conversation Intelligence**, **Auto QA**, and **Bookmarks** from Settings within QM to start analyzing interactions (Conversation Intelligence and Auto QA Scoring).

        For more information, refer to the [Conversation Intelligence Dashboard](../quality-management/analyze/conversation-intelligence.md) and _Quality Management_.

5. Enable **Answer** and **Utterance**suggestions from GenAI settings.
    * Enable the required options from the Co-Pilot section of GenAI features of the Generative AI section of XO11.
    * Select the desired Model for similar suggestions of Agent Answers and Utterances using AI Assistance.

        For more information, refer to the [Evaluation Forms](../quality-management/configure/evaluation-forms/configure-evaluation-forms.md).

6. Create **Evaluation Metrics** from the **Evaluation Forms** section of QM based on the required evaluation criteria using the following user Evaluation Metrics Measurement Types (for more information, refer to the [Evaluation Forms](../quality-management/configure/evaluation-forms/configure-evaluation-forms.md) and [Evaluation Metrics](../quality-management/configure/evaluation-forms/configure-evaluation-metrics.md)).
    * **By Question**
        * **Question Answer Pair**:
            * Question is a reference for auditors to understand the evaluation criteria.
                * For example, Did the agent greet the customer?
        * **Adherence Type**:
            * **Static**
                * Non-conditional evaluation, answers configured are checked for adherence in all scenarios.
            * **Dynamic**
                * Conditional evaluation, answers configured are checked for adherence only when the configured trigger utterance either from the Customer or Agent is detected.
        * **Answer**:
            * Expected answer utterance from the agent in interactions.
        * **Count Type**:
            * **Entire Conversation**
                * Adherence is checked across the entire interaction.
            * **Time Bound**
                * Adherence checks for the configured number of seconds for voice and the number of messages for chats, either at the start or at the end of the conversation, based on selection.
7. Create the **Evaluation Forms**.
    * Create evaluation forms by assigning Name, Description, Channel, and Pass Score.
    * Select the desired metrics from the list of created metrics, add them, assign weights to each metric so that the total weight across metrics sums up to 100%, and assign the forms to queues. 
    * After creating the Settings, enable the evaluation form to start evaluating interactions that are terminated in the queues assigned to that form.
    * Each queue can have only one evaluation form per channel: Chat and Voice.

    For more information, refer to the [Evaluation Forms](../quality-management/configure/evaluation-forms/configure-evaluation-forms.md).

8. View the scored interaction from **Conversation Mining**.
    * View the scored interactions from conversation mining, use filters to drill down to a set of interactions of interest or interactions with the most potential to improve, and save filters to assign them for audit.
    * Interactions seen in the conversation mining screen are restricted to the queues that the user is part of.

    For more information, refer to the [Conversation Mining](../quality-management/analyze/conversation-mining.md).

9. Create **Audit Allocations** to assign interactions for audit.
    * Assign interactions for audit to different auditors to manually evaluate them.
    * Interactions seen in the audit allocation are those assigned to that user for the audit. Upon audit completion, the interactions are removed from the New **Audit Allocation** tab.
10. Expedite Manual audits.
    * Use AI-assisted manual audits to score interactions easily. The entire interaction is broken down by moments of adherence, moments of violation, and omissions.
    * By questioning metrics associated with the form on the right side, click on the metric to navigate to that point of the interaction and record playback.
    * Violations for speech-based metrics with timestamps on the top-left section.
    * Omissions for playbooks and dialog tasks on the bottom left.

    For more information, refer to the [Conversation Mining](../quality-management/analyze/conversation-mining.md).

11. Monitor task list and quality standards using the dashboard.
    * The Dashboard is meant for individual QAs to review their audit completion progress and monitor scores and failure statistics for their respective queues.

    For more information, refer to the [Dashboard](../quality-management/analyze/dashboard.md).

12. Monitor contact center performance from the Conversation Intelligence Dashboard.
    * Monitor efficiency KPIs, Agent performance metrics, and call drivers using topic modeling, sentiment analysis, and churn analysis from a single dashboard with conversation intelligence.

    For more information, refer to the [Dashboard](../quality-management/analyze/dashboard.md).