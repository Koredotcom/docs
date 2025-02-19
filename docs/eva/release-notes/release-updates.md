# Release Notes

This document provides information on the feature updates and enhancements introduced in the recent release of AI for Work.

## v0.0.7 February 14, 2025

<u>Minor Release</u>

This update includes new features and feature enhancements summarized below.

**New Feature**

* Standard Agentic Apps: You can now organize multiple AI agents in sequence to automate and execute complex business tasks using predefined logic. Tasks and processes can be predefined, eliminating the need for end users to manually execute each step.
[Learn more :octicons-arrow-right-24:](./../custom-agents/agentic-apps.md)
   

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

<hr>