# Quality AI Updates

This document provides information on the feature updates and enhancements introduced in **Quality AI** of AI for Service (XO) v11.x releases.

## v11.19.0 October 25, 2025

<u>Minor Release</u>

This update includes enhancements and bug fixes. The key enhancements included in this release are summarized below.

<font size="4">Analyze</font>

**Keyword Search with Audit Filtering**

The new Keyword Search Filter feature lets users easily locate and analyze conversations. Users can search for keywords and refine results by speaker, including or excluding keywords. Each search result links directly to the QA audit screen, where keyword matches are highlighted in the transcript, along with speaker labels and QA evaluation details. This ultimately leads to improved audit accuracy, traceability, and filtering flexibility. [Learn more :octicons-arrow-right-24:](../../quality-ai/analyze/conversation-mining-interactions.md)

<font size="4">Analytics</font>

**Scheduled Reporting for Quality AI**

The Quality AI Reporting feature provides comprehensive data export capabilities for AutoQA and Conversation Intelligence insights. This enables QA Managers, Supervisors, and authorized users to generate, schedule, and download detailed reports covering interaction details, agent performance metrics, and adherence to evaluation metrics.
[Learn more :octicons-arrow-right-24:](../../quality-ai/analytics/scheduled-reporting-for-quality-ai.md) 

**New Generative AI Features**

This release introduces the following two new generative AI features powered by the latest GPT-4o and GPT-4o-mini models with default prompts:

* By Value Adherence Validation: Check if extracted metric values match predefined reference data and return binary adherence scores.

* By Value Metric Extraction: Extract metric values from messages by users, AI agents, or humans. 
[Learn more :octicons-arrow-right-24:](./../../generative-ai-tools/genai-features-qualityai.md)


<hr>

## v11.18.0 September 27, 2025

<u>Minor Release</u>

This update includes enhancements and bug fixes. The key enhancements included in this release are summarized below.

<font size="4">Analyze</font>

**Topic Discovery**

This enables QA, Supervisors, and Business Managers to visualize conversation topics across the contact center, linked to key metrics, such as Average Handling Time (AHT), Sentiment, and Resolution rate. Using custom taxonomies and intuitive bubble charts, users can identify trends, explore topics in-depth, and analyze related metrics and generated intents, making it easier to enhance coaching and drive process improvements. [Learn more :octicons-arrow-right-24:](../../quality-ai/analyze/topic-discovery.md)

<font size="4">Configure</font>

**Taxonomy Builder**

The builder enables Contact Center Managers, Analysts, and QA teams to create custom taxonomies with three-level hierarchical structures, enhancing conversation categorization. This improves analysis across channels, allowing deeper insights into topic-level metrics and business-specific trends. [Learn more :octicons-arrow-right-24:](../../quality-ai/configure/taxonomy-builder/overview.md)

<hr>


## v11.17.1 September 15, 2025

<u>Patch Release</u>

This update includes enhancements and bug fixes. The key enhancements included in this release are summarized below.

<font size="4">Analyze</font>


**Message-Level Comments in AI-Assisted Manual Audit**

Supervisors and QA users can now add comments directly on individual messages, with required name and text fields. The updated comments are displayed both in the Transcript and in the Comments tab. Users can click a comment to navigate to the related message, which enhances feedback visibility and context. [Learn more :octicons-arrow-right-24:](../../quality-ai/ai-assisted-manual-audit.md)

**Conversation Mining Processing Status**

In Conversation Mining, the Processing Status now displays a status icon: green (pass) when all processes have succeeded and metrics are being captured; red (fail) when any process fails, and metric tracking is interrupted. [Learn more :octicons-arrow-right-24:](../../quality-ai/analyze/conversation-mining-interactions.md#interactions-dashboard-elements)


<font size="4">Conversation Sources</font>

**Quality AI Integration with Agent AI**

Quality AI can now be integrated with Agent AI on third-party desktops. This integration streamlines the recording process and utilizes metadata through Agent AI's Custom Object field. [Learn more :octicons-arrow-right-24:](../../quality-ai/configure/conversation-sources.md)


