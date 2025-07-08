# AI for Work Release Notes

This document provides information on the feature updates and enhancements introduced in the recent release of AI for Work.

## v1.9.2 June 21, 2025

<u>Major Release</u>

This update includes new features, feature enhancements, and bug fixes summarized below.

</font></p><font size="4">New Features</font>

**Guardrails Security Framework**

Introducing **Guardrails**, a robust security framework designed for enterprise-level AI interactions. This new feature automatically safeguards sensitive data and enforces content policies, providing comprehensive data protection and content filtering. Ensure compliance and security across all your AI workflows with Guardrails.

Key benefits

* Protect sensitive customer data from exposure in logs and analytics.
* Meet data protection requirements with automated  PII (personally identifiable information) detection and handling.
* Maintain brand safety and policy compliance through customizable topic restrictions.
* Validate configurations before deployment with comprehensive testing tools.

[Learn more :octicons-arrow-right-24:](../assistant-configuration/guardrails.md)

**AI Query Pipeline Orchestration**

Introducing **Orchestration Settings**, a powerful pipeline management system that gives you complete control over your AI query processing workflow. This feature enables you to customize and optimize your AI interactions by selectively activating only the components you need, ensuring efficient resource utilization.

Key benefits

* Activate only required pipeline components to optimize performance and reduce processing overhead.
* Eliminate unnecessary AI processing steps while maintaining full functionality.
* Adapt AI behavior to specific use cases and organizational requirements.
* Unified management interface with intelligent component synchronization.

[Learn more :octicons-arrow-right-24:](../assistant-configuration/orchestration-settings.md)

<font size="4">Feature Enhancements</font>

**Conversation Data Storage Controls**

The **Data Settings** now offer enhanced controls for **Conversation Data Storage**, providing granular privacy management.

The **Do not store conversation data** setting is upgraded with three flexible control levels:

* All Agents (universal privacy).
* All Agents Except Selected Agents (default privacy with strategic exceptions).
* Only Selected Agents (targeted privacy for specific needs like compliance).

[Learn more :octicons-arrow-right-24:](../security/data-settings.md)

**Agent Layout Enhancements**

The agent creation and management interface has been redesigned for a more intuitive user experience and improved version control.

Key enhancements

* Streamlined navigation with a dedicated agent page and simplified header.
* Improved action menu with primary actions like share and publish and secondary actions like export and audit log.
* Enhanced dual version system with draft and published versions for efficient change management.
* Improved user experience with clear status indicators, progressive feature enablement, simplified publishing, and protection against accidental changes.

**Compose Bar Query Scope**

The compose bar now features Work, AI Model, and Web scope selection buttons, allowing users to direct queries to specific knowledge sources. Users can easily switch between these options, with visual feedback confirming the selected scope.

* **Work Button**: Directs queries to enterprise knowledge repositories.
* **AI Model Button**: Retrieves answers from the configured AI model.
* **Web AI**: Provides answers from the configured AI model, enhanced by web search capabilities.

**Multiple File Upload Support**

Enhanced the prompt agent builder interface with comprehensive file upload options across all parameter types.

Key enhancements

* Added **Multiple files** toggle option in the Upload File field, enabling agent creators to configure multi-file support.
* Introduced **Upload files** option in Text field parameters, allowing users to select single or multiple files as needed.
* Users can now upload up to 5 files simultaneously when interacting with configured prompt agents.

[Learn more :octicons-arrow-right-24:](../custom-agents/prompt-agents.md)

**Skip Form Display Functionality**

Introduced an intelligent form display system that automatically detects query completeness and optimizes the user experience accordingly.

Key enhancements

* Added **Skip Form Display** toggle option for agent creators, enabling automatic form bypass when appropriate.
* The Skip Form Display feature includes intelligent conflict prevention with Multi-Response functionality, displaying informational messages when incompatible settings are selected.
* Implemented smart query analysis that identifies when all required entities are present in the initial request.
* Enhanced form logic to display input forms only when mandatory fields are missing from the user query.

[Learn more :octicons-arrow-right-24:](../custom-agents/prompt-agents)

**User Management Updates**

Administrators can now edit user profile information directly from the user details interface. This enhancement allows admins to modify first and last names efficiently, streamlining the user data management workflow and improving administrative control over user accounts.

<font size="4">Bug Fixes</font>

**System Stability Improvements**

Resolved critical chart rendering issues and fixed application crashes that occurred during follow-up question interactions. These fixes significantly enhance system reliability and ensure a smoother user experience when working with data visualizations and conversational features.

## v1.9.1 May 19, 2025

<u>Minor Release</u>

This update includes feature enhancements summarized below.

<font size="4">Feature Enhancements</font>

**Autonomous Agent Capabilities**

* Improved handling of authentication challenges for autonomous agents, providing reliable authentication flows during automated operations.
* Autonomous agents now support processing and handling file attachments, enabling seamless document workflows and expanded automation capabilities.
* Added support for asynchronous communication channels, allowing agents to operate across multiple channels simultaneously without blocking operations.

**Intelligent Chat Naming**

Conversation titles are now automatically generated, reflecting user intent and search queries. This enhancement improves the organization and retrieval of conversations.

**Advanced Intent Recognition**

Enhanced the orchestrator's intent identification capabilities with improved accuracy and response time, enabling better understanding of user requests and precise task routing.

## v1.9.0 April 30, 2025

<u>Major Release</u>

This update includes new features, feature enhancements, and bug fixes summarized below.

<font size="4">New Features</font>

**New Homepage Experience**

AI for Work home page has been redesigned with a focus on visual and navigational enhancements. The new layout prioritizes recently used agents, aiming to boost efficiency and minimize time spent on workflow management.

The user interface includes: a left panel that can be toggled, a top-right section for **Help**, **Notifications**, and **User Profiles**. Panels adjust automatically based on search queries and browsing history.

Key features

* The left panel has been redesigned to optimize efficiency:
    * Direct access to the Agent Store through the dedicated **Agents and Flows** section.
    * **History** section that automatically categorizes conversations by:
         * Today
         * Yesterday
         * Last 7 Days
* Managing conversation history is now more intuitive:
    * Hovering displays controls to rename or delete threads.
    * **Today** section is instantly updated with new chats.

**Introducing AI for Work to Marketplace**

The  Marketplace now features AI for Work, a comprehensive collection of intelligent agents designed to enhance productivity and streamline workflows. This central hub allows users to easily discover, understand, and implement various AI-powered work agents tailored to specific needs.

AI for Work in the Marketplace features two main categories: **Apps** (complex, multi-functional AI solutions combining agents for comprehensive workflows) and **Agents** (standalone AI components for specific tasks). The first version introduces Agentic flows in applications, starting with **Prompt Agents** that provide instant text replies.

[Learn more :octicons-arrow-right-24:](./../getting-started/marketplace.md)

**Introducing the Audit Log**

The new **Audit Log** system tracks user activity across the platform, providing administrators and team members with a comprehensive record of all administrative and operational actions.

Audit Log System captures activities across three distinct locations:

* **Admin Hub Logs** store system-wide configuration changes. Access is role-based where full admins have complete access, while custom admins only see logs for their permitted modules.
* **Workspace Logs** document all activities within specific workspace environments, creating accountability for team-specific actions. All workspace collaborators can access these logs.
* **Agent Logs** capture granular activity details, tracking all interactions and modifications related to specific agents. Users with edit access or ownership permissions can access these logs.

[Learn more :octicons-arrow-right-24:](./../audit-log/audit-log-management.md)

**Introducing Account Data Settings**

The Admin Console now features **Data Settings**, giving complete control over the data lifecycle. This includes managing Conversation Data Storage and Data Retention Period.

* **Conversation Data Storage**: Users can choose whether to store end-user conversation data in logs.
* **Data Retention Period**: Users can choose a default 7-year data retention period or a custom period using numeric input and a dropdown for time units. Data older than the selected period is permanently deleted.

[Learn more :octicons-arrow-right-24:](./../security/data-settings.md)

<font size="4">Feature Enhancements</font>

**Impovised Enterprise Knowledge Agent**:

* If relevant answers are not found within the Enterprise Knowledge base, the system will now automatically utilize LLM models with integrated web search to address queries.
* Users can now directly select web search as an agent for their queries. This provides a functionality comparable to web search features found in platforms like ChatGPT.

**Updated RAG Agent**: Search Agents now display relevant results in the right panel, maintaining consistency with enterprise knowledge responses. Search results trigger a change in response options.

**Database Migration**: Migrated from Trina DB to ClickHouse to improve application performance when processing attachment-based queries.

<font size="4">Bug Fixes</font>

**Search Connector**:

* Eliminated duplicate issues appearing in the search results panel.
* Corrected inaccurate count display in Jira connector tab facets.
* Fixed incorrect date handling where last updated date was incorrectly displayed as creation date.
* Improved search result filtering to properly reflect user queries.

**Async Bot**: Resolved issue where the delayed response widget continued to display after answers were retrieved from the bots platform.

## v1.8.0 March 26, 2025

<u>Major Release</u>

This update includes new features, feature enhancements, and bug fixes summarized below.

<font size="4">New Features</font>

**Introducing Workspaces**

Workspaces is a new enterprise solution designed to streamline how organizations deploy and manage AI capabilities across their operations.

Key Features:

* Granular access controls and centralized governance enable secure management of workspace creation and deletion, ensuring clear boundaries between departments.
* A tiered permission system offers precise control over access, ensuring that team members have the appropriate level of access for their roles and responsibilities.
* Control agent visibility and target specific user groups or the entire organization. Tailor each workspace with different allowed agent types to maintain information boundaries and ensure compliance.
* The default workspace within every account includes pre-built solutions optimized for HR, IT, Recruitment, and Analytics, enabling immediate productivity.

[Learn more :octicons-arrow-right-24:](../Administration/workspace.md)

**Introducing Agent Sharing**

Agent Sharing enables teams to collaborate and manage agents more effectively within their workspace.

Key Features:

* Fine-grained permission controls allow precise customization of access and collaboration.
* Flexible collaboration options enable teams to work together seamlessly.
* Transparent agent management ensures visibility and accountability.

[Learn more :octicons-arrow-right-24:](./../custom-agents/agent-options.md)


<font size="4">Features and Bug Fixes</font>

* User Management: Refined user permissions to ensure access is limited to authorized sections and improved template visibility and management for more precise user role-based access control.
* Email Templates: Fixed formatting inconsistencies to enhance visual consistency and readability.
* Bot Agent Handoff: Implemented UI/UX improvements for a more intuitive and seamless customer interaction process and eliminated friction points during agent transitions to create a smoother support experience.
* Search AI Integration: Enhanced deep integration capabilities with the SearchAI App and fixed navigation issues from the Enterprise Knowledge Page.

<hr>

## v1.7.1 March 6, 2025

<u>Minor Release</u>

This update includes new features, feature enhancements, and bug fixes summarized below.

<font size="4">New Features</font>

**Agentic App Support for Enterprise Knowledge**

Introduced Agentic App that now caters as a knowledge source to Enterprise Knowledge. This enhancement gives an option for you to choose between Search AI  or Agentic App to provide a more robust fallback mechanism when no specific agent matches a user query.

Key Benefits:

- Extended knowledge reach through API-driven connections.
  
- Improved fallback performance.
  
- Flexible configuration options (Search AI or Agentic App).

[Learn more :octicons-arrow-right-24:](./../custom-agents/enterprise-knowledge.md)

<font size="4">Feature Enhancements</font>

* Autonomous Agent Integration: Added compatibility and support for the new agentic protocol used by Agent Platform, enabling seamless integration.

* Enhanced Content Safeguards: Implemented comprehensive guardrails within AI for Work that automatically detect and filter inappropriate content requests, providing clear and respectful responses when users request content outside permitted boundaries. This feature is in its early phase; an Admin UI for custom guardrail configuration is currently under development and will be available in a future release.
  
* Context sharing: Conversation context now flows automatically between AI for Work and Search AI.

<font size="4">Bug Fixes</font>

* cURL Import Enhancement: Improved the cURL import functionality for agentic apps, allowing users to seamlessly modify request body during the import process.
  
* Multi-instruction Query Handling: Enhanced orchestration flow to efficiently process both single-phrase and complex multi-instruction queries.
  
* Timezone Optimization: Resolved timezone inconsistencies in logs. The system now properly displays logs based on your local system time, ensuring accurate and relevant time-based analytics.

* Template Rendering Fix:  Fixed an issue where bot templates used to render duplicates when selected or clicked. The fix results in a cleaner and more predictable user interface.
  
<hr>

## v1.7.0 February 14, 2025

<u>Minor Release</u>

This update includes new features and feature enhancements summarized below.

<font size="4">New Features</font>

**Standard Agentic Apps**

You can now organize multiple AI agents in sequence to automate and execute complex business tasks using predefined logic. Tasks and processes can be predefined, eliminating the need for end users to manually execute each step.
[Learn more :octicons-arrow-right-24:](./../custom-agents/agentic-flows.md)

**Advanced Agentic Apps**

You can now leverage non-deterministic AI algorithms to autonomously manage complex business processes. These applications function independently and effortlessly integrate into the Agentic platform, saving time and complexity by eliminating the need for end-to-end conversation setting. 
[Learn more :octicons-arrow-right-24:](./../custom-agents/autonomous-agent.md)

<font size="4">Features Enhancements</font>

* Bot Response Notification System: Bot agent interaction experience has been enhanced with an intelligent notification system for improved user engagement.

    - Users receive immediate visual feedback when responses require additional computation time. [Learn more :octicons-arrow-right-24:](./../custom-agents/alert-task.md)
  
    - The system proactively alerts users when the Bot responses are ready.
  
    - The View Response option takes users to their conversation thread, maintaining continuity between queries and responses.
  
    - Bot can send users notifications in the workflow so that another user can continue the flow, with customizable response options and action buttons. 
    [Learn more :octicons-arrow-right-24:](./../custom-agents/notify-bot-agent-api.md)

* Prompt Agent: Users can now download knowledge documents that were previously uploaded by other users, enhancing collaboration and knowledge sharing across teams. Additionally, we have added the ***OpenAI o1*** model, which provides access to a broader knowledge base for generating more comprehensive and accurate responses. [Learn more :octicons-arrow-right-24:](./../custom-agents/prompt-agents.md)

* API Agent: API agent now supports multi-value parameters that allow querying multiple values within a single request. [Learn more :octicons-arrow-right-24:](./../custom-agents/api-agents.md#step-43-query-filters)

* Audit Log: Audit Logs feature is now available through our API for administrators. Administrators can access and manage all audit log data through the API, ensuring complete visibility into system activities. A dedicated UI for Audit Logs is under active development and will be released soon. [Learn more :octicons-arrow-right-24:](../audit-log/audit-log-api.md)

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