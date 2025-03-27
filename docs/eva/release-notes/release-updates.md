# Release Notes

This document provides information on the feature updates and enhancements introduced in the recent release of AI for Work.

## v1.8.0 March 26, 2025

<u>Major Release</u>

This update includes new features, feature enhancements, and bug fixes summarized below.

**New Features**

**Introducing Workspaces**: Workspaces is a new enterprise solution designed to streamline how organizations deploy and manage AI capabilities across their operations.

Key Features:

* Granular access controls and centralized governance enable secure management of workspace creation and deletion, ensuring clear boundaries between departments.
* A tiered permission system offers precise control over access, ensuring that team members have the appropriate level of access for their roles and responsibilities.
* Control agent visibility and target specific user groups or the entire organization. Tailor each workspace with different allowed agent types to maintain information boundaries and ensure compliance.
* The default workspace within every account includes pre-built solutions optimized for HR, IT, Recruitment, and Analytics, enabling immediate productivity.

[Learn more :octicons-arrow-right-24:](./../Administration/workspace.md)

**Introducing Agent Sharing**: Agent Sharing enables teams to collaborate and manage agents more effectively within their workspace.

Key Features:

* Fine-grained permission controls allow precise customization of access and collaboration.
* Flexible collaboration options enable teams to work together seamlessly.
* Transparent agent management ensures visibility and accountability.

[Learn more :octicons-arrow-right-24:](./../custom-agents/manage.md)

**Improvements and Bug Fixes**

* User Management: Refined user permissions to ensure access is limited to authorized sections and improved template visibility and management for more precise user role-based access control.
* Email Templates: Fixed formatting inconsistencies to enhance visual consistency and readability.
* Bot Agent Handoff: Implemented UI/UX improvements for a more intuitive and seamless customer interaction process and eliminated friction points during agent transitions to create a smoother support experience.
* Search AI Integration: Enhanced deep integration capabilities with the SearchAI App and fixed navigation issues from the Enterprise Knowledge Page.

## v1.7.1 March 6, 2025

<u>Minor Release</u>

This update includes new features, feature enhancements, and bug fixes summarized below.

**New Feature**

**Agentic App Support for Enterprise Knowledge**: Introduced Agentic App that now caters as a knowledge source to Enterprise Knowledge. This enhancement gives an option for you to choose between Search AI  or Agentic App to provide a more robust fallback mechanism when no specific agent matches a user query.

Key Benefits:

- Extended knowledge reach through API-driven connections.
  
- Improved fallback performance.
  
- Flexible configuration options (Search AI or Agentic App).

[Learn more :octicons-arrow-right-24:](./../custom-agents/enterprise-knowledge.md)

**Feature Enhancements**

* Kore Autonomous Agent Integration: Added compatibility and support for the new agentic protocol used by Kore's Agent Platform, enabling seamless integration.

* Enhanced Content Safeguards: Implemented comprehensive guardrails within AI for Work that automatically detect and filter inappropriate content requests, providing clear and respectful responses when users request content outside permitted boundaries. This feature is in its early phase; an Admin UI for custom guardrail configuration is currently under development and will be available in a future release.
  
* Context sharing: Conversation context now flows automatically between AI for Work and Search AI.

**Bug Fixes**

* cURL Import Enhancement: Improved the cURL import functionality for agentic apps, allowing users to seamlessly modify request body during the import process.
  
* Multi-instruction Query Handling: Enhanced orchestration flow to efficiently process both single-phrase and complex multi-instruction queries.
  
* Timezone Optimization: Resolved timezone inconsistencies in logs. The system now properly displays logs based on your local system time, ensuring accurate and relevant time-based analytics.

* Template Rendering Fix:  Fixed an issue where bot templates used to render duplicates when selected or clicked. The fix results in a cleaner and more predictable user interface.
  
## v1.7.0 February 14, 2025

<u>Minor Release</u>

This update includes new features and feature enhancements summarized below.

**New Feature**

* Standard Agentic Apps: You can now organize multiple AI agents in sequence to automate and execute complex business tasks using predefined logic. Tasks and processes can be predefined, eliminating the need for end users to manually execute each step.
[Learn more :octicons-arrow-right-24:](./../custom-agents/agentic-apps.md)

* Advanced Agentic Apps: You can now leverage non-deterministic AI algorithms to autonomously manage complex business processes. These applications function independently and effortlessly integrate into the Kore Agentic platform, saving time and complexity by eliminating the need for end-to-end conversation setting. [Learn more :octicons-arrow-right-24:](./../custom-agents/advanced-agentic-apps.md)


**Feature Enhancements**

* Bot Response Notification System: Bot agent interaction experience has been enhanced with an intelligent notification system for improved user engagement.

    - Users receive immediate visual feedback when responses require additional computation time. [Learn more :octicons-arrow-right-24:](./../custom-agents/alert-task.md)
  
    - The system proactively alerts users when the Bot responses are ready.
  
    - The View Response option takes users to their conversation thread, maintaining continuity between queries and responses.
  
    - Bot can send users notifications in the workflow so that another user can continue the flow, with customizable response options and action buttons. 
    [Learn more :octicons-arrow-right-24:](./../custom-agents/notify-bot-agent-api.md)

* Prompt Agent: Users can now download knowledge documents that were previously uploaded by other users, enhancing collaboration and knowledge sharing across teams. Additionally, we have added the ***OpenAI o1*** model, which provides access to a broader knowledge base for generating more comprehensive and accurate responses. [Learn more :octicons-arrow-right-24:](./../custom-agents/prompt-agents.md)

* API Agent: API agent now supports multi-value parameters that allow querying multiple values within a single request. [Learn more :octicons-arrow-right-24:](./../custom-agents/api-agents.md#step-43-query-filters)

* Audit Log: Audit Logs feature is now available through our API for administrators. Administrators can access and manage all audit log data through the API, ensuring complete visibility into system activities. A dedicated UI for Audit Logs is under active development and will be released soon. [Learn more :octicons-arrow-right-24:](./../APIs/audit-log-api.md)

* Citations: All agents now include clear citation and action buttons, ensuring consistency across the platform. Previously, Calendar, Contact, and Bot agents lacked citation. This update ensures that all agents are now fully cited with actionable buttons.

* Search AI Connectors: We've expanded support to Search AI Connectors across multiple platforms and services. You can now index through these connectors in SearchAI app and see the results in AI for work.
The latest release includes search connector support for the following services:

    * Gmail
    * Google Calendar
    * Google Drive
    * Outlook
    * Outlook Calendar
    * Slack
    * Hubspot
    * Jira
    * BitBucket
    * Zendesk
    * Confluence
    * Wordpress
