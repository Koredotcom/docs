
# Quality Management Setup Guide

Get started on the Quality Management (QM) module: Learn how to set up, configure, and use the QM module.

Follow these steps:

1. Configure QM permissions:

    1. Go to **User Management** > **Role Management** > **New Role** > **Other Modules**.
    <br>(Only the app owner has access to Role Management).</br>

    2. Assign relevant roles (Supervisor role) or create custom roles with QM permissions.

2. Set up Contact Center:

    1. Assign Supervisors/Auditors to relevant queues in your Contact Center application so that they have access to the relevant interactions.

3. Enable features:

    1. Enable Conversation Intelligence, Auto QA, and Bookmarks in QM Settings. See [Conversation Intelligence](../quality-management/analyze/conversation-intelligence.md).

    2. Enable Answer and Utterance suggestions in GenAI settings. See [Enabling Gen AI Co-pilot Features](../generative-ai-tools/co-pilot-features.md).

4. Create Evaluation Metrics:

    1. Use By Question, Question Answer Pair, and Adherence Types (Static/Dynamic). See [Evaluation Metrics](../quality-management/configure/evaluation-forms/configure-evaluation-metrics.md).

    b. 	Set Count Type (Entire Conversation/Time Bound). See[ Add New Evaluation Metrics](../quality-management/configure/evaluation-forms/configure-evaluation-metrics.md#add-new-evaluation-metrics).  

5. Create Evaluation Forms:

    1. Assign Name, Description, Channel, and Pass Score.

    2. Select metrics, assign weights, and link to queues. See [Evaluation Forms](../quality-management/configure/evaluation-forms/configure-evaluation-forms.md).

6. View scored interactions in Conversation Mining:

    1. Use filters to analyze interactions.

    2. Save filters for audit assignments. See [Conversation Mining](../quality-management/analyze/conversation-mining.md).

7. Create Audit Allocations

    2. Assign interactions to auditors for manual evaluation. See [Add New Audit Allocation](../quality-management/analyze/conversation-mining.md#add-new-audit-allocation).

8. Expedite Manual audits:

    1. Use AI-assisted audits for easier scoring.

    2. Navigate interactions using adherence moments and violations. See [AI-Assisted Manual Audit](../quality-management/analyze/ai-assisted-manual-audit.md).

9. Monitor performance:

    1. Use the Dashboard for individual QA progress and queue statistics.

    2. Utilize the Conversation Intelligence Dashboard for overall contact center performance.  
    See [Dashboard](../quality-management/analyze/dashboard.md).