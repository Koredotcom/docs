# Settings Console Overview

GALE’s **Settings** console is a centralized management interface that provides administrators with the tools and functionalities to configure, monitor, and manage GALE’s system configurations to manage the following:

1. [Users](../settings/user-management/users.md){:target="_blank"}
2. [Roles and permissions](../settings/user-management/role-management.md){:target="_blank"}
3. [Automated synchronization](../settings/user-management/settings/active-directory.md/#step-4-schedule-automatic-ad-sync){:target="_blank"} of user data from Enterprise AD, plus configuration of user profile fields and email notifications.
4. [Easy Integration](../models/external-models/add-an-external-model-using-easy-integration.md){:target="_blank"} and [API Integration](../models/external-models/add-an-external-model-using-api-integration.md){:target="_blank"}
5. [Manage Guardrails](../agents/guardrails/manage-guardrails.md){:target="_blank"} 
6. [Monitoring](../settings/monitoring/overview.md){:target="_blank"}: [Audit Logs](./monitoring/audit-logs.md){:target="_blank"}, [Agent Analytics Dashboard](./monitoring/analytics/agent-analytics-dashboard.md){:target="_blank"}, [Model Analytics Dashboard](./monitoring/analytics/model-analytics-dashboard.md){:target="_blank"}, and [Model Traces](../settings/monitoring/analytics/model-traces.md){:target="_blank"}. 
6. [Security and Control: Single Sign On](../settings/security-and-control/single-sign-on.md){:target="_blank"}

## Levels of Users Management 

The **Settings** Console provides administrators comprehensive control and visibility on the user management features available at the following levels, facilitating proactive and improved management.

* **Account level**: At the account level, administrators can manage users, their roles, and permissions throughout the entire GALE account. This includes tasks such as inviting users, establishing automatic data synchronization from the enterprise Active Directory (AD), and setting up access controls for modules including agent creation, model management (including access, deployment, and export), integrations, user management, audit logs, security controls, model guardrails, and others.

* **Agent level**: User management within the GALE platform is focused on agent management, emphasizing individual agent deployments and configurations. Each agent's owner has the authority to invite individual users, customize their permissions and access levels, and manage tasks such as creating and deleting agents, assigning roles, overseeing deployments, configuring guardrails, and managing API keys.

This post describes how to access the **Settings** Console and summarizes the modules and features available.

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>Only users included as <b>Admin</b> in the system with the required permissions can access the <b>Settings</b> Console.</p>
</div>

## Actions You Can Perform on the Settings Console

The modules and the capabilities supported on the <b>Settings</b> Console include the following:

**Users**

* Add a new user to your account and assign a system role to them via email invitation or user information file import.
* View and track the summary of counts for total, active, inactive, and locked users.
* View the details of all the users linked to your account like Name, Email ID, Account Role, and Status.
* Select and delete one or more users from your account.
* Unlock the locked users.
* Reassign a default or custom role to a user.

[Learn more](../settings/user-management/users.md){:target="_blank"} about this feature.

**Roles and Permissions**

* View system-generated roles for <b>account</b> and <b>agent</b> role types.
* Duplicate the roles and make custom changes.
* View the enabled/disabled access controls for various modules and permissions for system roles.
* Add new custom roles for agent and account types, enable/disable access, and set access controls (full, view, custom, and no access) for various modules and permissions assigned to the roles. 

[Learn more](../settings/user-management/role-management.md){:target="_blank"} about this feature.

**Settings**

[Sync and import key user information](../settings/user-management/settings/active-directory.md){:target="_blank"} from your organization's AD by doing the following: 

* Configuring the connection to your AD.
* Importing user data from all or specific organization units.
* Selecting and managing default AD user fields, or adding custom fields, and defining inclusion and exclusion rules for data import and sync.
* Configuring AD auto sync schedules to ensure user data on GALE remains up-to-date.

Additionally, you can do the following:

* View sync history and reports to monitor successful and failed AD syncs.
* Manage the ability to view and edit default and custom user data fields.
* Configure how joining requests from new users are handled, including automatic approval options.
* Choose whether users should receive email notifications upon being added to your account via email invitation or AD sync.

[Learn more](../settings/user-management/settings/active-directory.md){:target="_blank"} about this feature.

**Integrations**

Integrate connections for [Weights & Biases](../settings/integrations/integrate-with-wandb.md){:target="_blank"}, [AWS S3 Bucket](../settings/integrations/integrate-with-s3-bucket.md){:target="_blank"}, and [Hugging Face](../settings/integrations/enable-hugging-face.md){:target="_blank"} using API or App credentials. 

**Guardrails**

Deploy and undeploy guardrail models to apply scanners to prompt input and output text across all agents. [Learn more](../agents/guardrails/manage-guardrails.md){:target="_blank"}.

**Monitoring**

- Track the audit logs of all user activities within your account and quickly troubleshoot issues with real-time event tracking. [Learn more](../settings/monitoring/audit-logs.md){:target="_blank"}.
- Review Agent Performance Metrics and take informed decisions on the **Agent Analytics** dashboard. [Learn more](../settings/monitoring/analytics/agent-analytics-dashboard.md){:target="_blank"}.
* Review, track, and fine tune model performance using model-specific metrics. [Learn more](../settings/monitoring/analytics/model-analytics-dashboard.md){:target="_blank"}.
* Track and monitor run-level metrics and metadata for each model execution to determine the best and worst performers. [Learn more](../settings/monitoring/analytics/model-traces.md){:target="_blank"}.

**Security and Control**

- Enable or disable **Single Sign-On (SSO)** for your account and other users to streamline authentication and enhance password security. [Learn more](../settings/security-and-control/single-sign-on.md){:target="_blank"}.

## Access Settings Console

To access the **Settings** Console on GALE, follow the steps below:

1. [Log in](../getting-started/sign-up-sign-in.md/#sign-in-to-gale){:target="_blank"} to GALE using your credentials. To enable and sign in using SSO, click [here](../settings/security-and-control/single-sign-on.md){:target="_blank"}.

2. Click **Settings** on the top menu.
<img src="../images/settings-menu.png" alt="click settings" title="click settings" style="border: 1px solid gray; zoom:75%;">

The system redirects to the **Users** page under **Users Management** on the **Settings** console.

## Modules and Features

The following modules and features are supported on the **Settings** Console:

<table>
  <tr>
   <td><strong>Module</strong>
   </td>
   <td><strong>Description</strong>
   </td>
   <td><strong>Features</strong>
   </td>
  </tr>
  <tr>
   <td><b>Users Management</b></td>
   <td><p>Helps add, remove, and manage admin, member, and viewer users, roles, and permissions for accounts, agents, and models.</p>
<p>Manage user settings for AD sync, profile visibility and configuration, and email notifications to users.</p></td>
<td><p><strong>Users</strong></p>
<ul>
<li>All users across your enterprise network accounts are listed here.</li> 
<li>A summarized view of the total invited users, active, inactive, and locked users is displayed.</li>
<li>The user listing with information on all the users across the GALE accounts is displayed with the Name, Email ID, Account Role, and Status is displayed. The account owner is highlighted.</li>
<li>You can add a new user by sending bulk or individual email invites. Alternatively,  import the user information file directly to the console.</li>
<li>Set user role when sending the email invite to one of the following:
<ul>
<li>Master Admin</li>
<li>Admin</li>
<li>Member</li>
<li>Viewer</li>
<li>Custom roles</li>
</li>
<li>Select one or multiple users to change access permissions or delete a user.</li>
<li>Click a user entry to manage their profile, models, and agents, including modifying and deleting roles within each model or agent. A model or agent can be added for a specific role.</li></ul></ul>
<p><strong>Role Management</strong></p>
<ul>
<li>A summarized view of the total roles available in the system and the number of system and custom roles are displayed.</li>
<li>View, assign, and reassign system/ default or custom roles. <strong>You cannot edit or delete system roles.</strong></li>
<li>Create a copy or duplicate of a system role as a custom role and manage its permissions and access levels.</li>
<li>Add, delete, edit permissions’ access for, and duplicate custom roles.</li>
<li>For agent and account role types, assign/unassign permissions and set access levels for various module aspects like agents, models, prompts, billing, integrations, guardrails, security and control settings, and user management tasks.</li>
</ul>

<p><strong>Settings</strong></p>
<ul>
<li><strong>Active Directory</strong>: Configure sync with your organization's AD to import user information for the required organization units to GALE seamlessly. Enable automatic data sync between the AD and GALE daily, weekly, or monthly.</li>
<li><strong>User Settings</strong>: Set up the visibility of user profile information across GALE. Select profile fields and allow edits by the end user.
</li>
<li><strong>Email Notifications</strong>: Select if and when the users should receive email notifications when they are added to your account.
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td><b>Integrations</b></td>
   <td>Manage the configured easy and custom integrations and connections in one place.</td>
   <td>
<ul>
<li><strong>Hugging Face</strong>: Import exclusive and private models into GALE from a vast repository of pre-trained models for various NLP tasks such as text classification, translation, summarization, question answering, and more.<a href="https://docs.kore.ai/gale/settings/integrations/enable-hugging-face/"> Learn more</a>.</li>
<li><strong>AWS S3 Bucket</strong>: Establish a connection and import files seamlessly from the required bucket. <a href="https://docs.kore.ai/gale/settings/integrations/integrate-with-s3-bucket/">Learn more</a>.</li>
<li><strong>Weights and Biases</strong>: Monitor fine-tuning model performance in WandB Console. 
<a href="https://docs.kore.ai/gale/settings/integrations/integrate-with-wandb/">Learn more</a>.
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td><b>Manage Guardrails</b></td>
   <td>Deploy models to make them available for anomaly scanners in all the agents. 
   </td>
   <td>
<ul>
<li><strong>Anonymize</strong>: Prevents the exposure of sensitive information in documents, emails, messages, or any other text data in prompts using techniques like redaction, Pseudonymization, and generalization.
</li>
<li><strong>Ban Topics</strong>: Restricts sensitive and controversial topics like religion or corporate politics in prompts to maintain content moderation, enforce community guidelines, and ensure compliance with organizational policies.</li>
<li><strong>Prompt Injection</strong>: Guards against attacks where malicious input is crafted to influence the behavior of a language model, causing it to generate harmful, misleading, or unintended responses using input sanitization, context control, role-based access, instruction clarity, and more.</li>
<li><strong>Toxicity</strong>: Set up mechanisms to detect and manage toxic content, such as harmful, offensive, or abusive language. Implement warnings, content removal, or user-banning actions to prevent the dissemination of harmful content and maintain a safe and positive user environment.</li>
<li><strong>Bias Detection</strong>: Ensure fairness and inclusivity by AI agents towards users through output evaluation for systematic prejudices or pre-defined biases and behavior and automatic neutralization of responses.</li>
<li><strong>Relevance</strong>: Ensure that prompt outputs are accurate to the input context, meet the user’s intent, and satisfy their query or need. The scanner provides a confidence score to indicate the degree of context relevance.
</li>
</ul>
 </td>
  </tr>
  <tr>
   <td><b>Monitoring - Audit Logs</b></td>
   <td>Gain complete visibility into all account activities and efficiently troubleshoot issues by tracking real-time account and agent-level event logs.</td>
   <td><ul><li>Select the date range and view periodic, event-based logs related to the following categories:</li>
   <ul><li>Login/Logout</li>
   <li>Roles</li>
   <li>Integrations</li>
   <li>Models</li>
   <li>Agents</li>
   <li>Users Management</li>
   <li>Prompts</li>
   <li>Dataset</li>
   <li>Guardrails</li></ul>
   <li>Set one or more levels of custom filters to view only specific audit logs.</li>
   <li>Search for the required audit log from the listed entries.</li></ul></td>
  </tr>
    <tr>
   <td><b>Monitoring - Agent Analytics Dashboard</b></td>
   <td>Get actionable insights into successful and failed agent runs, average agent response time, and drill down into nodes execution data to enable informed decisions on agent deployments, optimize their performance, and accelerate system efficiency.</td>
   <td><ul><li>Select a single date or date range to view periodic agent performance metrics.</li>
   <li>Make performance comparison between different agent versions.</li>
   <li>Keep track of failed execution runs and investigate the reason for the same.</li>
   <li>Monitor the average response times of agents for various requests.</li>
   <li>Monitor node executions across different types and ensure agent flow runs stay within your account's rate limits.</li>
   <li>Optimize agent performance with real-time metrics.</li></ul></td>
  </tr>
      <tr>
   <td><b>Monitoring - Model Analytics Dashboard</b></td>
   <td>Review and monitor key performance indicators for open-source, fine-tuned, and external models deployed in your account to ensure regulatory and ethical compliance, as well as optimal performance.</td>
      <td><ul><li>Select a single date or date range to view specific, time-based model performance metrics.</li>
<li>Analyze credit consumption for deployment and fine-tuning requests, and monitor model replica generation within subscription limits to ensure optimal usage.</li>
   <li>Compare successful versus failed requests over time and identify failure patterns.</li>
   <li>Explore latency, requests, token generation, and scaling metrics through dedicated, expandable widgets.</li>
   <li>Optimize model performance with access to real-time metrics.</li></ul></td>
  </tr>
        <tr>
   <td><b>Monitoring - Model Traces</b></td>
   <td>Review and monitor key performance indicators for each run executed by different versions of the open-source, fine-tuned, and external models deployed in your account to ensure regulatory and ethical compliance, as well as optimal performance.</td>
      <td><ul><li>Select a single date or date range to view specific, time-based run performance metrics.</li>
      <li>Analyze failed runs by exporting performance metrics into a <i>csv</i> file and identify failure patterns.</li>
<li>Analyze hosting credits vs each successful/failed run to ensure optimal usage.</li>
   <li>Identify and isolate model runs with low response times for further investigation.</li>
   <li>Analyze requests, model outputs, response times, and sources to gain performance insights, diagnose errors, and optimize usage and experience.</li></ul></td>
  </tr>
   <tr>
   <td><b>Security and Control - Single Sign On</b></td>
   <td>By centralizing authentication for your enterprise account users, SSO enhances user convenience and strengthens security through streamlined password management. SSO helps improve efficiency, reduce password fatigue, and safeguard sensitive information.</td>
      <td><ul><li>Configure and enable SSO for the available IdP providers.</li>
<li>Disable SSO for the required account users.</li>
<li>Exclude specific users from the SSO requirement to provide an alternative way to access their accounts.</li></ul></td>
  </tr>
</table>




