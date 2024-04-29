# 11.0.x Release Notes

This document provides information on the various releases and the corresponding feature updates and enhancements introduced in version 11.0.x of the Kore.ai Experience Optimization Platform.

## v11.0.1 April 27, 2024

**Minor Release**

## LLM and Generative AI

### Custom LLM Integration Support for Rephrase Dialog Responses  

Rephrase Dialog Responses now supports Custom LLMs in addition to commercial LLMs. This allows platform users to use the rephrasing feature with their own custom-trained language models and create customized prompts tailored to their specific use cases, models, and linguistic contexts, providing greater flexibility and control over the rephrasing process and conversational experiences. [Learn more](../app-settings/generative-ai-tools/dynamic-conversations-features.md#rephrase-dialog-responses).

### Custom LLM Integration Support for Answer Generation 

In addition to pre-built commercial LLMs, the Answer Generation now supports Custom LLMs. It allows platform users to craft personalized prompts to unlock the full potential of the Answer Generation and deliver uniquely tailored conversation experiences for their users. [Learn more](../app-settings/generative-ai-tools/dynamic-conversations-features.md#answer-generation).

## Automation AI

### Flows & Channels

#### Updated Default Start Flow

All fields of the default Start Flows can now be edited except the associated channel. [Learn more](../flows/create-flows.md#the-start-flows).

## Contact Center AI

### Agent Console

#### Outbound Emails

Outbound email functionality is a key feature within Contact Center AI designed to streamline communication between agents and customers through email channels. Agents can now send outbound emails from the agent console. The outbound emails are independent of the ongoing conversations. [Learn more](../console/interacting-with-customers/interacting-with-customers.md#outbound-email).

A new permission for Outbound Email is added in the Agent & Supervisor Experience section with the following details:

**Name**: Outbound Email

**Subtext**: Make outbound emails if enabled for the account

**Access Level**: Yes/No

* App Owner – Yes
* App Developer – Yes
* Supervisor – Yes
* App Tester – No
* Agent – No
* Custom Role – No (Default)

Learn more.

### Campaigns

#### Schedule Voice Campaigns

Scheduling allows precise control over when your messages will be delivered. You can now seamlessly plan campaigns to coincide with peak engagement times, ensuring maximum impact. [Learn more](../contactcenter/campaigns/campaign-management/voice-campaigns.md#schedule-voice-campaigns).

### Agents & Supervisors

#### System Busy and System Away Status Enabled by Default

System Away and System Busy statuses are enabled by default for new accounts. For existing accounts, contact Kore Support. [Learn more](../contactcenter/agent-and-supervisors/agent-management/agent-management.md#system-away-and-system-busy-status).

#### Enable/Disable Resolution Disposition Sets

The **Resolution** Disposition Set comes prebuilt. App Owners can now enable/disable and edit the resolution disposition set. [Learn more](../contactcenter/agent-and-supervisors/dispositions/manage-dispositions.md#disposition-sets).

### Analytics and Reporting

#### Selected Hours Report

The Selected Hours Report shows daily totals of every agent's productive hours. Productive hours are determined by built-in and custom statuses selected by users. [Learn more](../analytics/contact-center/reports/selected-hours-report.md).

### API

#### Agent Status Details API (v2) Update

Two new fields, **startDate** and **endDate** are added to the request body. This change applies only to the version 2 (v2).

* The “dateFilter.startDate” field accepts date-time in “YYYY-MM-DDTHH24:mm:SS” format. If the user specifies only the date for the startDate field, the time will be taken as “00:00:00”.
* The “dateFilter.endDate” field accepts date-time in “YYYY-MM-DDTHH24:mm:SS” format. If the user specifies only the date for the endDate field, the time will be taken as “23:59:59”. 
* If the user specifies both the old “dateFilter.date”, and either/both of the new “dateFilter.startDate” or the “dateFilter.endDate” fields, then an error message is displayed. Learn more.

### Search AI

### Agent AI

## v11.0.0 April 1, 2024

**Major Release**

To learn about the new features and enhancements included in v11 of Kore.ai Experience Optimization Platform. See [What's New in XO 11](../getting-started/whats-new-in-xo-platform.md).