# Manage Role and Permissions

The XO Platform provides role-based user access to features. As such, Roles designate the users’ permissions and access level. The Role Management section lets you create and customize permissions for each.

You can find the **Users** section on the left menu by going to **Manage** > **Users** > **Role Management**.  
<img src="../images/product-switcher.png" alt="Product Switcher" title="Product Switcher" style="border: 1px solid gray; zoom:70%;">

## The Role Management Live Board

This section lets you create, search (by name), and manage user roles; and lists existing roles along with the following information:

1. **Role Name**: The name of the user role, available throughout XO Platform.
2. **Actions**: Let you edit or delete a role.
3. **Description**: A short description of the role.
4. **Type**: Lists the role type: _System_ is assigned to default, preconfigured roles, while _Custom_ is assigned to custom roles.
5. **Last Update**: Displays the date when the role was last updated.

## Default Roles

The default roles available within the XO Platform as the following:

1. **App Owner**: Users assigned to the _App Owner_ role have full access to and control over the app definition.
2. **App Developer**: Users assigned to the _App Developer_ role have co-developer access.
3. **App Tester**: Users assigned to the _App Tester_ role have read-only access to the app definition.
4. **Supervisor**: Users assigned to the _Supervisor_ role have operations management access.
5. **Agent**: Users assigned to the _Agent_ role can access the agent console and internal chat.

Default roles are uneditable and non-removable, and all permissions are fixed. See the Permissions section below for details on what permissions are assigned by default to each default role.

## Permissions

The table below shows the permissions available within the XO Platform and their assignment to each user role. In the _Custom Role_ column, you can see all available permissions that can be assigned to custom roles.

!!! Note

    The Monitor Console permission is restricted to the Queues that the user is assigned to.

### APP OWNER

<table>
<tr>
   <td colspan="2" ><strong>Automation</strong>
   </td>
</tr>
<tr>
   <td><strong>Tasks</strong>
   <br>
Create and manage dialog, action, alert, information, and flow tasks.
   </td>
   <td>Full Access
   </td>
</tr>
<tr>
   <td><strong>Natural Language</strong>
   <br>
Manage natural language training data (utterances, patterns, synonyms etc.), configurations and thresholds.
   </td>
   <td>Full Access
   </td>
</tr>
<tr>
   <td><strong>Knowledge Graph</strong>
   <br>
Manage knowledge collection and associated training (Questions, Alternate Questions, Synonyms, and Class)
   </td>
   <td>Full Access
   </td>
</tr>
<tr>
   <td><strong>Testing</strong>
   <br>
Manage Batch Testing and Conversation Testing.
   </td>
   <td>Full Access
   </td>
</tr>
<tr>
   <td><strong>Bot Developers</strong>
   <br>
Manage Bot Owners and co-developers of a bot.
   </td>
   <td>Full Access
   </td>
</tr>
<tr>
   <td><strong>Bot Settings</strong>
   <br>
Manage General Settings, Language Management, Authorization Profiles, PII Settings, IVR Settings, Bot Variables, Bot Versions etc.
   </td>
   <td>Full Access
   </td>
</tr>
<tr>
   <td><strong>Dashboard</strong>
   <br>
View and export dashboard data
   </td>
   <td>Yes
   </td>
</tr>
<tr>
   <td><strong>Custom Dashboards</strong>
   <br>
Manage custom dashboards, widgets, and definitions
   </td>
   <td>Full Access
   </td>
</tr>
<tr>
   <td><strong>Storyboard</strong>
   <br>
View and Create Scenes
   </td>
   <td>Full Access
   </td>
</tr>
<tr>
   <td><strong>Bot Builder API Scopes</strong>
   <br>
Manage API Scopes for accessing various platform APIs.
   </td>
   <td>Yes
   </td>
</tr>
<tr>
   <td><strong>Integrations & Extensions</strong>
   <br>
Manage BotKit, WebSDK, Agent Transfer, Actions, External NLU, etc.
   </td>
   <td>Yes
   </td>
</tr>
<tr>
   <td><strong>Publish bot</strong>
   <br>
Raise request to publish the bot
   </td>
   <td>Yes
   </td>
</tr>
<tr>
   <td><strong>Bot Analytics</strong>
   <br>
View and export bot Analytics
   </td>
   <td>Yes
   </td>
</tr>
<tr>
   <td><strong>Bot Import</strong>
   <br>
Upgrade a bot by importing a new bot definition file or restoring a version
   </td>
   <td>Yes
   </td>
</tr>
<tr>
   <td><strong>IntentDiscovery</strong>
   <br>
Manage Intent Discovery
   </td>
   <td>Full Access
   </td>
</tr>
<tr>
   <td><strong>Use Case Management</strong>
   <br>
Create and manage FAQs and conversations
   </td>
   <td>Full Access
   </td>
</tr>
<tr>
   <td><strong>Automations DashBoard</strong>
   <br>
Access to automation metrics in Dashboard
   </td>
   <td>Yes
   </td>
</tr>
<tr>
   <td><strong>Automations Tab</strong>
   <br>
Access to the automations tab and XO Platform
   </td>
   <td>Yes
   </td>
</tr>
<tr>
   <td colspan="2" ><strong>Flows & Routing</strong>
   </td>
</tr>
<tr>
   <td><strong>Waiting Experience</strong>
   <br>
Create and manage waiting experiences
   </td>
   <td>Full Access
   </td>
</tr>
<tr>
   <td><strong>Hours of Operation</strong>
   <br>
Create and manage hours of operation
   </td>
   <td>Full Access
   </td>
</tr>
<tr>
   <td><strong>Queue Settings</strong>
   <br>
Create and manage queues
   </td>
   <td>Full Access
   </td>
</tr>
<tr>
   <td><strong>Flow Management</strong>
   <br>
Create and manage experience flows
   </td>
   <td>Full Access
   </td>
</tr>
<tr>
   <td><strong>Default Flows</strong>
   <br>
No ability to manage default flow properties
   </td>
   <td>Full Access
   </td>
</tr>
<tr>
   <td><strong>Transfer Routing Rules</strong>
   <br>
Configure global transfer rules for chat/voice
   </td>
   <td>Full Access
   </td>
</tr>
<tr>
   <td><strong>Agent Playbook - Configuration</strong>
   <br>
Manage the accessibility of agent playbook feature
   </td>
   <td>Full Access
   </td>
</tr>
<tr>
   <td><strong>AgentAssist Settings</strong>
   <br>
Define AgentAssist Widgets accessibility to Agents
   </td>
   <td>Full Access
   </td>
</tr>
<tr>
   <td><strong>Agent Coaching - Configuration</strong>
   <br>
Manage the accessibility of real-time coaching feature
   </td>
   <td>Full Access
   </td>
</tr>
<tr>
   <td><strong>Service Level - Configuration</strong>
   <br>
Manage the accessibility of service level feature
   </td>
   <td>Full Access
   </td>
</tr>
<tr>
   <td colspan="2" ><strong>User Management</strong>
   </td>
</tr>
<tr>
   <td><strong>Agent Status</strong>
   <br>
Create and manage agent status types
   </td>
   <td>Full Access
   </td>
</tr>
<tr>
   <td><strong>Agent Settings</strong>
   <br>
Modify global agent settings
   </td>
   <td>Full Access
   </td>
</tr>
<tr>
   <td><strong>Skill Management</strong>
   <br>
Create and manage agent skills & skill groups
   </td>
   <td>Full Access
   </td>
</tr>
<tr>
   <td><strong>Visibility of Captured Sentiment</strong>
   <br>
Manage the visibility of the customer's sentiment captured in the agent console
   </td>
   <td>Yes
   </td>
</tr>
<tr>
   <td><strong>Agent Group Management</strong>
   <br>
Create and manage agent groups
   </td>
   <td>Full Access
   </td>
</tr>
<tr>
   <td><strong>Change User Role</strong>
   <br>
Allow user roles to be modified
   </td>
   <td>Yes
   </td>
</tr>
<tr>
   <td colspan="2" ><strong>Agent & Supervisor Experience</strong>
   </td>
</tr>
<tr>
   <td><strong>Agent Desktop Console</strong>
   <br>
Access and use the agent desktop console
   </td>
   <td>Yes
   </td>
</tr>
<tr>
   <td><strong>Widget Management</strong>
   <br>
Create and manage custom widgets
   </td>
   <td>Full Access
   </td>
</tr>
<tr>
   <td><strong>Survey Management</strong>
   <br>
Create and manage surveys
   </td>
   <td>Full Access
   </td>
</tr>
<tr>
   <td><strong>Disposition Management</strong>
   <br>
Create and manage dispositions
   </td>
   <td>Full Access
   </td>
</tr>
<tr>
   <td><strong>Interactions</strong>
   <br>
Access to interactions in the Dashboard
   </td>
   <td>Yes
   </td>
</tr>
<tr>
   <td><strong>Access to each agent's personal dashboard</strong>
   <br>
Define My Dashboard accessibility to Agents
   </td>
   <td>No
   </td>
</tr>
<tr>
   <td><strong>Standard Responses</strong>
   <br>
Create and manage standard responses
   </td>
   <td>Full Access
   </td>
</tr>
<tr>
   <td><strong>Internal Chat</strong>
   <br>
Chat internally with others in the account
   </td>
   <td>Yes
   </td>
</tr>
<tr>
   <td><strong>Audio calls in messaging conversations</strong>
   <br>
Allow agents to add audio calls to a messaging interaction
   </td>
   <td>Yes
   </td>
</tr>
<tr>
   <td><strong>Video calls in messaging conversations</strong>
   <br>
Allow agents to add video calls to a messaging interaction
   </td>
   <td>Yes
   </td>
</tr>
<tr>
   <td><strong>Access to Agent metrics in the Dashboard</strong>
   <br>
Access to dashboard
   </td>
   <td>Yes
   </td>
</tr>
<tr>
   <td><strong>Secure Form Management</strong>
   <br>
Create and manage secure forms
   </td>
   <td>Full Access
   </td>
</tr>
<tr>
   <td><strong>Secure Form Data View</strong>
   <br>
View filled-out secure forms and data
   </td>
   <td>Yes
   </td>
</tr>
<tr>
   <td><strong>Desktop Layout Creation</strong>
   <br>
Create custom desktop layouts in the console
   </td>
   <td>Yes
   </td>
</tr>
<tr>
   <td><strong>Desktop Layout Publishing</strong>
   <br>
Publish custom layouts for account-wide use
   </td>
   <td>Yes
   </td>
</tr>
<tr>
   <td><strong>Monitor Console</strong>
   <br>
Access to the monitor tab for live interactions
   </td>
   <td>Yes
   </td>
</tr>
<tr>
   <td><strong>Reports</strong>
   <br>
Create, view, and run reports
   </td>
   <td>Full Access
   </td>
</tr>
<tr>
   <td><strong>Join Conversation</strong>
   <br>
Allow user to join a conversation
   </td>
   <td>Yes
   </td>
</tr>
<tr>
   <td><strong>Voice Campaigns</strong>
   <br>
Access to Voice campaigns under Campaigns module
   </td>
   <td>Full Access
   </td>
</tr>
<tr>
   <td><strong>Proactive Web Campaigns</strong>
   <br>
Access to Proactive Web campaigns under Campaigns module
   </td>
   <td>Full Access
   </td>
</tr>
<tr>
   <td><strong>SMS Campaigns</strong>
   <br>
Access to SMS campaigns under the Campaigns module
   </td>
   <td>Full Access
   </td>
</tr>
<tr>
   <td><strong>Direct Outward Dialing</strong>
   <br>
Users can make direct outward calls
   </td>
   <td>Yes
   </td>
</tr>
<tr>
   <td><strong>Queue Visibility and Access</strong>
   <br>
Decide which queues are available for access in the Monitor
   </td>
   <td>All
   </td>
</tr>
<tr>
   <td><strong>Dashboard Content</strong>
   <br>
Whose interactions should he have access to
   </td>
   <td>All
   </td>
</tr>
<tr>
   <td><strong>Outbound Email</strong>
   <br>
Make outbound emails if enabled for the account
   </td>
   <td>Yes
   </td>
</tr>
<tr>
   <td colspan="2" ><strong>System</strong>
   </td>
</tr>
<tr>
   <td><strong>Channel Management</strong>
   <br>
Manage communication channels
   </td>
   <td>Full Access
   </td>
</tr>
<tr>
   <td><strong>Billing</strong>
   <br>
Manage account-level billing preferences
   </td>
   <td>Full Access
   </td>
</tr>
<tr>
   <td><strong>API</strong>
   <br>
Manage API setup and configuration
   </td>
   <td>Full Access
   </td>
</tr>
<tr>
   <td><strong>Language & Speech Control</strong>
   <br>
Manage ASR/TTS voice preferences
   </td>
   <td>Full Access
   </td>
</tr>
<tr>
   <td><strong>WFM Configuration Management</strong>
   <br>
Can Manage WFM Configurations.
   </td>
   <td>Yes
   </td>
</tr>
<tr>
   <td colspan="2" ><strong>Other Modules</strong>
   </td>
</tr>
<tr>
   <td><strong>Answers Module</strong>
   <br>
Allow users to Access and Manage Answers Module
   </td>
   <td>Yes
   </td>
</tr>
<tr>
   <td><strong>Campaign Module</strong>
   <br>
Allow users to Access and Manage the Campaigns Module
   </td>
   <td>Yes
   </td>
</tr>
<tr>
   <td><strong>AgentAI Module</strong>
   <br>
Allow user to Access and Manage AgentAI Module
   </td>
   <td>Yes
   </td>
</tr>
<tr>
   <td><strong>Auto QA</strong>
   <br>
Enable and Disable access for Auto QA
   </td>
   <td>Full Access
   </td>
</tr>
<tr>
   <td><strong>Conversational Intelligence</strong>
   <br>
Configuration and view access to conversational Intelligence
   </td>
   <td>Full Access
   </td>
</tr>
<tr>
   <td><strong>Evaluation Forms and Metrics</strong>
   <br>
Creation and edit access to evaluation forms and evaluation metrics
   </td>
   <td>Full Access
   </td>
</tr>
<tr>
   <td><strong>Audit Allocation creation</strong>
   <br>
Access to create and assign interactions for audit to other users
   </td>
   <td>Full Access
   </td>
</tr>
<tr>
   <td><strong>QA Functionalities access</strong>
   <br>
Access to scored interactions, submit audits & QA dashboard
   </td>
   <td>Full Access
   </td>
</tr>
</table>

### APP DEVELOPER

<table>
<tr>
   <td colspan="2" ><strong>Automation</strong>
   </td>
</tr>
<tr>
   <td><strong>Tasks</strong>
   <br>
Create and manage dialog, action, alert, information, and flow tasks.
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Natural Language</strong>
   <br>
Manage natural language training data (utterances, patterns, synonyms etc.), configurations and thresholds.
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Knowledge Graph</strong>
   <br>
Manage knowledge collection and associated training (Questions, Alternate Questions, Synonyms, and Class)
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Testing</strong>
   <br>
Manage Batch Testing and Conversation Testing.
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Bot Developers</strong>
   <br>
Manage Bot Owners and co-developers of a bot.
   </td>
   <td>View</td>
</tr>
<tr>
   <td><strong>Bot Settings</strong>
   <br>
Manage General Settings, Language Management, Authorization Profiles, PII Settings, IVR Settings, Bot Variables, Bot Versions etc.
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Dashboard</strong>
   <br>
View and export dashboard data
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Custom Dashboards</strong>
   <br>
Manage custom dashboards, widgets, and definitions
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Storyboard</strong>
   <br>
View and Create Scenes
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Bot Builder API Scopes</strong>
   <br>
Manage API Scopes for accessing various platform APIs.
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Integrations & Extensions</strong>
   <br>
Manage BotKit, WebSDK, Agent Transfer, Actions, External NLU, etc.
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Publish bot</strong>
   <br>
Raise request to publish the bot
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Bot Analytics</strong>
   <br>
View and export bot Analytics
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Bot Import</strong>
   <br>
Upgrade a bot by importing a new bot definition file or restoring a version
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>IntentDiscovery</strong>
   <br>
Manage Intent Discovery
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Use Case Management</strong>
   <br>
Create and manage FAQs and conversations
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Automations DashBoard</strong>
   <br>
Access to automation metrics in Dashboard
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Automations Tab</strong>
   <br>
Access to the automations tab and XO Platform
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td colspan="2" ><strong>Flows & Routing</strong>
   </td>
</tr>
<tr>
   <td><strong>Waiting Experience</strong>
   <br>
Create and manage waiting experiences
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Hours of Operation</strong>
   <br>
Create and manage hours of operation
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Queue Settings</strong>
   <br>
Create and manage queues
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Flow Management</strong>
   <br>
Create and manage experience flows
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Default Flows</strong>
   <br>
No ability to manage default flow properties
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Transfer Routing Rules</strong>
   <br>
Configure global transfer rules for chat/voice
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Agent Playbook - Configuration</strong>
   <br>
Manage the accessibility of agent playbook feature
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>AgentAssist Settings</strong>
   <br>
Define AgentAssist Widgets accessibility to Agents
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Agent Coaching - Configuration</strong>
   <br>
Manage the accessibility of real-time coaching feature
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Service Level - Configuration</strong>
   <br>
Manage the accessibility of service level feature
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td colspan="2" ><strong>User Management</strong>
   </td>
</tr>
<tr>
   <td><strong>Agent Status</strong>
   <br>
Create and manage agent status types
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Agent Settings</strong>
   <br>
Modify global agent settings
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Skill Management</strong>
   <br>
Create and manage agent skills & skill groups
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Visibility of Captured Sentiment</strong>
   <br>
Manage the visibility of the customer's sentiment captured in the agent console
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Agent Group Management</strong>
   <br>
Create and manage agent groups
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Change User Role</strong>
   <br>
Allow user roles to be modified
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td colspan="2" ><strong>Agent & Supervisor Experience</strong>
   </td>
</tr>
<tr>
   <td><strong>Agent Desktop Console</strong>
   <br>
Access and use the agent desktop console
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Widget Management</strong>
   <br>
Create and manage custom widgets
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Survey Management</strong>
   <br>
Create and manage surveys
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Disposition Management</strong>
   <br>
Create and manage dispositions
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Interactions</strong>
   <br>
Access to interactions in the Dashboard
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Access to each agent's personal dashboard</strong>
   <br>
Define My Dashboard accessibility to Agents
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Standard Responses</strong>
   <br>
Create and manage standard responses
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Internal Chat</strong>
   <br>
Chat internally with others in the account
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Audio calls in messaging conversations</strong>
   <br>
Allow agents to add audio calls to a messaging interaction
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Video calls in messaging conversations</strong>
   <br>
Allow agents to add video calls to a messaging interaction
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Access to Agent metrics in the Dashboard</strong>
   <br>
Access to dashboard
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Secure Form Management</strong>
   <br>
Create and manage secure forms
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Secure Form Data View</strong>
   <br>
View filled-out secure forms and data
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Desktop Layout Creation</strong>
   <br>
Create custom desktop layouts in the console
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Desktop Layout Publishing</strong>
   <br>
Publish custom layouts for account-wide use
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Monitor Console</strong>
   <br>
Access to the monitor tab for live interactions
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Reports</strong>
   <br>
Create, view, and run reports
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Join Conversation</strong>
   <br>
Allow user to join a conversation
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Voice Campaigns</strong>
   <br>
Access to Voice campaigns under Campaigns module
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Proactive Web Campaigns</strong>
   <br>
Access to Proactive Web campaigns under Campaigns module
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>SMS Campaigns</strong>
   <br>
Access to SMS campaigns under the Campaigns module
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Direct Outward Dialing</strong>
   <br>
Users can make direct outward calls
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Queue Visibility and Access</strong>
   <br>    
Decide which queues are available for access in the Monitor
   </td>
   <td>All</td>
</tr>
<tr>
   <td><strong>Dashboard Content</strong>
   <br>
Whose interactions should he have access to
   </td>
   <td>All</td>
</tr>
<tr>
   <td><strong>Outbound Email</strong>
   <br>
Make outbound emails if enabled for the account
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td colspan="2" ><strong>System</strong>
   </td>
</tr>
<tr>
   <td><strong>Channel Management</strong>
   <br>
Manage communication channels
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Billing</strong>
   <br>
Manage account-level billing preferences
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>API</strong>
   <br>
Manage API setup and configuration
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Language & Speech Control</strong>
   <br>
Manage ASR/TTS voice preferences
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>WFM Configuration Management</strong>
   <br>
Can Manage WFM Configurations.
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td colspan="2" ><strong>Other Modules</strong>
   </td>
</tr>
<tr>
   <td><strong>Answers Module</strong>
   <br>
Allow users to Access and Manage Answers Module
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Campaign Module</strong>
   <br>
Allow users to Access and Manage the Campaigns Module
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>AgentAI Module</strong>
   <br>
Allow user to Access and Manage AgentAI Module
   </td>
   <td>Yes
   </td>
</tr>
<tr>
   <td><strong>Auto QA</strong>
   <br>
Enable and Disable access for Auto QA
   </td>
   <td>No
   </td>
</tr>
<tr>
   <td><strong>Conversational Intelligence</strong>
   <br>
Configuration and view access to conversational Intelligence
   </td>
   <td>No
   </td>
</tr>
<tr>
   <td><strong>Evaluation Forms and Metrics</strong>
   <br>
Creation and edit access to evaluation forms and evaluation metrics
   </td>
   <td>No
   </td>
</tr>
<tr>
   <td><strong>Audit Allocation creation</strong>
   <br>
Access to create and assign interactions for audit to other users
   </td>
   <td>No
   </td>
</tr>
<tr>
   <td><strong>QA Functionalities access</strong>
   <br>
Access to scored interactions, submit audits & QA dashboard
   </td>
   <td>No
   </td>
   <td>Yes

   </td>
</tr>
</table>

### APP TESTER

<table>
<tr>
   <td colspan="2" ><strong>Automation</strong>
   </td>
</tr>
<tr>
   <td><strong>Tasks</strong>
   <br>
Create and manage dialog, action, alert, information, and flow tasks.
   </td>
   <td>View</td>
</tr>
<tr>
   <td><strong>Natural Language</strong>
   <br>
Manage natural language training data (utterances, patterns, synonyms etc.), configurations and thresholds.
   </td>
   <td>View</td>
</tr>
<tr>
   <td><strong>Knowledge Graph</strong>
   <br>
Manage knowledge collection and associated training (Questions, Alternate Questions, Synonyms, and Class)
   </td>
   <td>View</td>
</tr>
<tr>
   <td><strong>Testing</strong>
   <br>
Manage Batch Testing and Conversation Testing.
   </td>
   <td>View</td>
</tr>
<tr>
   <td><strong>Bot Developers</strong>
   <br>
Manage Bot Owners and co-developers of a bot.
   </td>
   <td>View</td>
</tr>
<tr>
   <td><strong>Bot Settings</strong>
   <br>
Manage General Settings, Language Management, Authorization Profiles, PII Settings, IVR Settings, Bot Variables, Bot Versions etc.
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Dashboard</strong>
   <br>
View and export dashboard data
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Custom Dashboards</strong>
   <br>
Manage custom dashboards, widgets, and definitions
   </td>
   <td>View</td>
</tr>
<tr>
   <td><strong>Storyboard</strong>
   <br>
View and Create Scenes
   </td>
   <td>View</td>
</tr>
<tr>
   <td><strong>Bot Builder API Scopes</strong>
   <br>
Manage API Scopes for accessing various platform APIs.
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Integrations & Extensions</strong>
   <br>
Manage BotKit, WebSDK, Agent Transfer, Actions, External NLU, etc.
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Publish bot</strong>
   <br>
Raise request to publish the bot
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Bot Analytics</strong>
   <br>
View and export bot Analytics
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Bot Import</strong>
   <br>
Upgrade a bot by importing a new bot definition file or restoring a version
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>IntentDiscovery</strong>
   <br>
Manage Intent Discovery
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Use Case Management</strong>
   <br>
Create and manage FAQs and conversations
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Automations DashBoard</strong>
   <br>
Access to automation metrics in Dashboard
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Automations Tab</strong>
   <br>
Access to the automations tab and XO Platform
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td colspan="2" ><strong>Flows & Routing</strong>
   </td>
</tr>
<tr>
   <td><strong>Waiting Experience</strong>
   <br>
Create and manage waiting experiences
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Hours of Operation</strong>
   <br>   
Create and manage hours of operation
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Queue Settings</strong>
   <br>
Create and manage queues
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Flow Management</strong>
   <br>
Create and manage experience flows
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Default Flows</strong>
   <br>
No ability to manage default flow properties
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Transfer Routing Rules</strong>
   <br>
Configure global transfer rules for chat/voice
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Agent Playbook - Configuration</strong>
   <br>
Manage the accessibility of agent playbook feature
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>AgentAssist Settings</strong>
   <br>
Define AgentAssist Widgets accessibility to Agents
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Agent Coaching - Configuration</strong>
   <br>
Manage the accessibility of real-time coaching feature
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Service Level - Configuration</strong>
   <br>
Manage the accessibility of service level feature
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td colspan="2" ><strong>User Management</strong>
   </td>
</tr>
<tr>
   <td><strong>Agent Status</strong>
   <br>
Create and manage agent status types
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Agent Settings</strong>
   <br>
Modify global agent settings
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Skill Management</strong>
   <br>
Create and manage agent skills & skill groups
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Visibility of Captured Sentiment</strong>
   <br>
Manage the visibility of the customer's sentiment captured in the agent console
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Agent Group Management</strong>
   <br>
Create and manage agent groups
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Change User Role</strong>
   <br>
Allow user roles to be modified
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td colspan="2" ><strong>Agent & Supervisor Experience</strong>
   </td>
</tr>
<tr>
   <td><strong>Agent Desktop Console</strong>
   <br>
Access and use the agent desktop console
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Widget Management</strong>
   <br>
Create and manage custom widgets
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Survey Management</strong>
   <br>
Create and manage surveys
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Disposition Management</strong>
   <br>
Create and manage dispositions
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Interactions</strong>
   <br>
Access to interactions in the Dashboard
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Access to each agent's personal dashboard</strong>
   <br>
Define My Dashboard accessibility to Agents
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Standard Responses</strong>
   <br>
Create and manage standard responses
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Internal Chat</strong>
   <br>
Chat internally with others in the account
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Audio calls in messaging conversations</strong>
   <br>
Allow agents to add audio calls to a messaging interaction
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Video calls in messaging conversations</strong>
   <br>
Allow agents to add video calls to a messaging interaction
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Access to Agent metrics in the Dashboard</strong>
   <br>
Access to dashboard
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Secure Form Management</strong>
   <br>
Create and manage secure forms
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Secure Form Data View</strong>
   <br>
View filled-out secure forms and data
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Desktop Layout Creation</strong>
   <br>
Create custom desktop layouts in the console
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Desktop Layout Publishing</strong>
   <br>
Publish custom layouts for account-wide use
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Monitor Console</strong>
   <br>
Access to the monitor tab for live interactions
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Reports</strong>
   <br>
Create, view, and run reports
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Join Conversation</strong>
   <br>
Allow user to join a conversation
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Voice Campaigns</strong>
   <br>
Access to Voice campaigns under Campaigns module
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>Proactive Web Campaigns</strong>
   <br>
Access to Proactive Web campaigns under Campaigns module
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>SMS Campaigns</strong>
   <br>
Access to SMS campaigns under the Campaigns module
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>Direct Outward Dialing</strong>
   <br>
Users can make direct outward calls
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Queue Visibility and Access</strong>
   <br>
Decide which queues are available for access in the Monitor
   </td>
   <td>All</td>
</tr>
<tr>
   <td><strong>Dashboard Content</strong>
   <br>
Whose interactions should he have access to
   </td>
   <td>All</td>
</tr>
<tr>
   <td><strong>Outbound Email</strong>
   <br>
Make outbound emails if enabled for the account
   </td>
   <td>No</td>
</tr>
<tr>
   <td colspan="2" ><strong>System</strong>
   </td>
</tr>
<tr>
   <td><strong>Channel Management</strong>
   <br>
Manage communication channels
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Billing</strong>
   <br>
Manage account-level billing preferences
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>API</strong>
   <br>
Manage API setup and configuration
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Language & Speech Control</strong>
   <br>
Manage ASR/TTS voice preferences
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>WFM Configuration Management</strong>
   <br>
Can Manage WFM Configurations.
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td colspan="2" ><strong>Other Modules</strong>
   </td>
</tr>
<tr>
   <td><strong>Answers Module</strong>
   <br>
Allow users to Access and Manage Answers Module
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Campaign Module</strong>
   <br>
Allow users to Access and Manage the Campaigns Module
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>AgentAI Module</strong>
   <br>
Allow user to Access and Manage AgentAI Module
   </td>
   <td>Yes
   </td>
</tr>
<tr>
   <td><strong>Auto QA</strong>
   <br>
Enable and Disable access for Auto QA
   </td>
   <td>No
   </td>
</tr>
<tr>
   <td><strong>Conversational Intelligence</strong>
   <br>
Configuration and view access to conversational Intelligence
   </td>
   <td>No
   </td>
</tr>
<tr>
   <td><strong>Evaluation Forms and Metrics</strong>
   <br>
Creation and edit access to evaluation forms and evaluation metrics
   </td>
   <td>No
   </td>
</tr>
<tr>
   <td><strong>Audit Allocation creation</strong>
   <br>
Access to create and assign interactions for audit to other users
   </td>
   <td>No
   </td>
</tr>
<tr>
   <td><strong>QA Functionalities access</strong>
   <br>
Access to scored interactions, submit audits & QA dashboard
   </td>
   <td>No

   </td>
   <td>Yes

   </td>
</tr>
</table>

### SUPERVISOR

<table>
<tr>
   <td colspan="2" ><strong>Automation</strong>
   </td>
</tr>
<tr>
   <td><strong>Tasks</strong>
   <br>
Create and manage dialog, action, alert, information, and flow tasks.
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Natural Language</strong>
   <br>
Manage natural language training data (utterances, patterns, synonyms etc.), configurations and thresholds.
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Knowledge Graph</strong>
   <br>
Manage knowledge collection and associated training (Questions, Alternate Questions, Synonyms, and Class)
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Testing</strong>
   <br>
Manage Batch Testing and Conversation Testing.
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Bot Developers</strong>
   <br>
Manage Bot Owners and co-developers of a bot.
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Bot Settings</strong>
   <br>
Manage General Settings, Language Management, Authorization Profiles, PII Settings, IVR Settings, Bot Variables, Bot Versions etc.
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Dashboard</strong>
   <br>
View and export dashboard data
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Custom Dashboards</strong>
   <br>
Manage custom dashboards, widgets, and definitions
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Storyboard</strong>
   <br>
View and Create Scenes
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Bot Builder API Scopes</strong>
   <br>
Manage API Scopes for accessing various platform APIs.
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Integrations & Extensions</strong>
   <br>
Manage BotKit, WebSDK, Agent Transfer, Actions, External NLU, etc.
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Publish bot</strong>
   <br>
Raise request to publish the bot
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Bot Analytics</strong>
   <br>
View and export bot Analytics
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Bot Import</strong>
   <br>
Upgrade a bot by importing a new bot definition file or restoring a version
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>IntentDiscovery</strong>
   <br>
Manage Intent Discovery
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Use Case Management</strong>
   <br>
Create and manage FAQs and conversations
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>Automations DashBoard</strong>
   <br>
Access to automation metrics in Dashboard
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Automations Tab</strong>
   <br>
Access to the automations tab and XO Platform
   </td>
   <td>No</td>
</tr>
<tr>
   <td colspan="2" ><strong>Flows & Routing</strong>
   </td>
</tr>
<tr>
   <td><strong>Waiting Experience</strong>
   <br>
Create and manage waiting experiences
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>Hours of Operation</strong>
   <br>
Create and manage hours of operation
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>Queue Settings</strong>
   <br>
Create and manage queues
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Flow Management</strong>
   <br>
Create and manage experience flows
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>Default Flows</strong>
   <br>
No ability to manage default flow properties
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>Transfer Routing Rules</strong>
   <br>
Configure global transfer rules for chat/voice
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>Agent Playbook - Configuration</strong>
   <br>
Manage the accessibility of agent playbook feature
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>AgentAssist Settings</strong>
   <br>
Define AgentAssist Widgets accessibility to Agents
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>Agent Coaching - Configuration</strong>
   <br>
Manage the accessibility of real-time coaching feature
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>Service Level - Configuration</strong>
   <br>
Manage the accessibility of service level feature
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td colspan="2" ><strong>User Management</strong>
   </td>
</tr>
<tr>
   <td><strong>Agent Status</strong>
   <br>
Create and manage agent status types
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Agent Settings</strong>
   <br>
Modify global agent settings
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Skill Management</strong>
   <br>
Create and manage agent skills & skill groups
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Visibility of Captured Sentiment</strong>
   <br>
Manage the visibility of the customer's sentiment captured in the agent console
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Agent Group Management</strong>
   <br>
Create and manage agent groups
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Change User Role</strong>
   <br>
Allow user roles to be modified
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td colspan="2" ><strong>Agent & Supervisor Experience</strong>
   </td>
</tr>
<tr>
   <td><strong>Agent Desktop Console</strong>
   <br>
Access and use the agent desktop console
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Widget Management</strong>
   <br>
Create and manage custom widgets
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Survey Management</strong>
   <br>
Create and manage surveys
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>Disposition Management</strong>
   <br>
Create and manage dispositions
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>Interactions</strong>
   <br>
Access to interactions in the Dashboard
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Access to each agent's personal dashboard</strong>
   <br>
Define My Dashboard accessibility to Agents
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Standard Responses</strong>
   <br>
Create and manage standard responses
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>Internal Chat</strong>
   <br>
Chat internally with others in the account
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Audio calls in messaging conversations</strong>
   <br>
Allow agents to add audio calls to a messaging interaction
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Video calls in messaging conversations</strong>
   <br>
Allow agents to add video calls to a messaging interaction
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Access to Agent metrics in the Dashboard</strong>
   <br>
Access to dashboard
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Secure Form Management</strong>
   <br>
Create and manage secure forms
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Secure Form Data View</strong>
   <br>
View filled-out secure forms and data
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Desktop Layout Creation</strong>
   <br>
Create custom desktop layouts in the console
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Desktop Layout Publishing</strong>
   <br>
Publish custom layouts for account-wide use
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Monitor Console</strong>
   <br>
Access to the monitor tab for live interactions
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Reports</strong>
   <br>
Create, view, and run reports
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Join Conversation</strong>
   <br>
Allow user to join a conversation
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Voice Campaigns</strong>
   <br>
Access to Voice campaigns under Campaigns module
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Proactive Web Campaigns</strong>
   <br>
Access to Proactive Web campaigns under Campaigns module
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>SMS Campaigns</strong>
   <br>
Access to SMS campaigns under the Campaigns module
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>Direct Outward Dialing</strong>
   <br>
Users can make direct outward calls
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Queue Visibility and Access</strong>
   <br>
Decide which queues are available for access in the Monitor
   </td>
   <td>Self</td>
</tr>
<tr>
   <td><strong>Dashboard Content</strong>
   <br>
Whose interactions should he have access to
   </td>
   <td>All</td>
</tr>
<tr>
   <td><strong>Outbound Email</strong>
   <br>
Make outbound emails if enabled for the account
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td colspan="2" ><strong>System</strong>
   </td>
</tr>
<tr>
   <td><strong>Channel Management</strong>
   <br>
Manage communication channels
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>Billing</strong>
   <br>
Manage account-level billing preferences
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>API</strong>
   <br>
Manage API setup and configuration
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>Language & Speech Control</strong>
   <br>
Manage ASR/TTS voice preferences
   </td>
   <td>Full Access</td>
</tr>
<tr>
   <td><strong>WFM Configuration Management</strong>
   <br>
Can Manage WFM Configurations.
   </td>
   <td>No</td>
</tr>
<tr>
   <td colspan="2" ><strong>Other Modules</strong>
   </td>
</tr>
<tr>
   <td><strong>Answers Module</strong>
   <br>
Allow users to Access and Manage Answers Module
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Campaign Module</strong>
   <br>
Allow users to Access and Manage the Campaigns Module
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>AgentAI Module</strong>
   <br>
Allow user to Access and Manage AgentAI Module
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Auto QA</strong>
   <br>
Enable and Disable access for Auto QA
   </td>
   <td>No
   </td>
</tr>
<tr>
   <td><strong>Conversational Intelligence</strong>
   <br>
Configuration and view access to conversational Intelligence
   </td>
   <td>View
   </td>
</tr>
<tr>
   <td><strong>Evaluation Forms and Metrics</strong>
   <br>
Creation and edit access to evaluation forms and evaluation metrics
   </td>
   <td>Full Access
   </td>
</tr>
<tr>
   <td><strong>Audit Allocation creation</strong>
   <br>
Access to create and assign interactions for audit to other users
   </td>
   <td>Full Access
   </td>
</tr>
<tr>
   <td><strong>QA Functionalities access</strong>
   <br>
Access to scored interactions, submit audits & QA dashboard
   </td>
   <td>Full Access
   </td>
</tr>
</table>

### AGENT

<table>
<tr>
   <td colspan="2" ><strong>Automation</strong>
   </td>
</tr>
<tr>
   <td><strong>Tasks</strong>
   <br>
Create and manage dialog, action, alert, information, and flow tasks.
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Natural Language</strong>
   <br>
Manage natural language training data (utterances, patterns, synonyms etc.), configurations and thresholds.
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Knowledge Graph</strong>
   <br>
Manage knowledge collection and associated training (Questions, Alternate Questions, Synonyms, and Class)
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Testing</strong>
   <br>
Manage Batch Testing and Conversation Testing.
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Bot Developers</strong>
   <br>
Manage Bot Owners and co-developers of a bot.
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Bot Settings</strong>
   <br>
Manage General Settings, Language Management, Authorization Profiles, PII Settings, IVR Settings, Bot Variables, Bot Versions etc.
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Dashboard</strong>
   <br>
View and export dashboard data
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Custom Dashboards</strong>
   <br>
Manage custom dashboards, widgets, and definitions
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Storyboard</strong>
   <br>
View and Create Scenes
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Bot Builder API Scopes</strong>
   <br>
Manage API Scopes for accessing various platform APIs.
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Integrations & Extensions</strong>
   <br>
Manage BotKit, WebSDK, Agent Transfer, Actions, External NLU, etc.
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Publish bot</strong>
   <br>
Raise request to publish the bot
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Bot Analytics</strong>
   <br>
View and export bot Analytics
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Bot Import</strong>
   <br>
Upgrade a bot by importing a new bot definition file or restoring a version
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>IntentDiscovery</strong>
   <br>
Manage Intent Discovery
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Use Case Management</strong>
   <br>
Create and manage FAQs and conversations
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>Automations DashBoard</strong>
   <br>
Access to automation metrics in Dashboard
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Automations Tab</strong>
   <br>
Access to the automations tab and XO Platform
   </td>
   <td>No</td>
</tr>
<tr>
   <td colspan="2" ><strong>Flows & Routing</strong>
   </td>
</tr>
<tr>
   <td><strong>Waiting Experience</strong>
   <br>
Create and manage waiting experiences
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>Hours of Operation</strong>
   <br>
Create and manage hours of operation
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>Queue Settings</strong>
   <br>
Create and manage queues
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>Flow Management</strong>
   <br>
Create and manage experience flows
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>Default Flows</strong>
   <br>
No ability to manage default flow properties
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>Transfer Routing Rules</strong>
   <br>
Configure global transfer rules for chat/voice
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>Agent Playbook - Configuration</strong>
   <br>
Manage the accessibility of agent playbook feature
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>AgentAssist Settings</strong>
   <br>
Define AgentAssist Widgets accessibility to Agents
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>Agent Coaching - Configuration</strong>
   <br>
Manage the accessibility of real-time coaching feature
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>Service Level - Configuration</strong>
   <br>
Manage the accessibility of service level feature
   </td>
   <td>None</td>
</tr>
<tr>
   <td colspan="2" ><strong>User Management</strong>
   </td>
</tr>
<tr>
   <td><strong>Agent Status</strong>
   <br>
Create and manage agent status types
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>Agent Settings</strong>
   <br>
Modify global agent settings
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>Skill Management</strong>
   <br>
Create and manage agent skills & skill groups
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>Visibility of Captured Sentiment</strong>
   <br>
Manage the visibility of the customer's sentiment captured in the agent console
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Agent Group Management</strong>
   <br>
Create and manage agent groups
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>Change User Role</strong>
   <br>
Allow user roles to be modified
   </td>
   <td>No</td>
</tr>
<tr>
   <td colspan="2" ><strong>Agent & Supervisor Experience</strong>
   </td>
</tr>
<tr>
   <td><strong>Agent Desktop Console</strong>
   <br>
Access and use the agent desktop console
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Widget Management</strong>
   <br>
Create and manage custom widgets
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>Survey Management</strong>
   <br>
Create and manage surveys
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>Disposition Management</strong>
   <br>
Create and manage dispositions
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>Interactions</strong>
   <br>
Access to interactions in the Dashboard
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Access to each agent's personal dashboard</strong>
   <br>
Define My Dashboard accessibility to Agents
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Standard Responses</strong>
   <br>
Create and manage standard responses
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>Internal Chat</strong>
   <br>
Chat internally with others in the account
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Audio calls in messaging conversations</strong>
   <br>
Allow agents to add audio calls to a messaging interaction
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Video calls in messaging conversations</strong>
   <br>
Allow agents to add video calls to a messaging interaction
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Access to Agent metrics in the Dashboard</strong>
   <br>
Access to dashboard
   </td>
   <td>Yes</td>
</tr>
<tr>
   <td><strong>Secure Form Management</strong>
   <br>
Create and manage secure forms
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>Secure Form Data View</strong>
   <br>
View filled-out secure forms and data
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Desktop Layout Creation</strong>
   <br>
Create custom desktop layouts in the console
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Desktop Layout Publishing</strong>
   <br>
Publish custom layouts for account-wide use
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Monitor Console</strong>
   <br>
Access to the monitor tab for live interactions
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Reports</strong>
   <br>
Create, view, and run reports
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>Join Conversation</strong>
   <br>
Allow user to join a conversation
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Voice Campaigns</strong>
   <br>
Access to Voice campaigns under Campaigns module
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>Proactive Web Campaigns</strong>
   <br>
Access to Proactive Web campaigns under Campaigns module
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>SMS Campaigns</strong>
   <br>
Access to SMS campaigns under the Campaigns module
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>Direct Outward Dialing</strong>
   <br>
Users can make direct outward calls
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Queue Visibility and Access</strong>
   <br>
Decide which queues are available for access in the Monitor
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>Dashboard Content</strong>
   <br>
Whose interactions should he have access to
   </td>
   <td>Own</td>
</tr>
<tr>
   <td><strong>Outbound Email</strong>
   <br>
Make outbound emails if enabled for the account
   </td>
   <td>No</td>
</tr>
<tr>
   <td colspan="2" ><strong>System</strong>
   </td>
</tr>
<tr>
   <td><strong>Channel Management</strong>
   <br>
Manage communication channels
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>Billing</strong>
   <br>
Manage account-level billing preferences
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>API</strong>
   <br>
Manage API setup and configuration
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>Language & Speech Control</strong>
   <br>
Manage ASR/TTS voice preferences
   </td>
   <td>None</td>
</tr>
<tr>
   <td><strong>WFM Configuration Management</strong>
   <br>
Can Manage WFM Configurations.
   </td>
   <td>No</td>
</tr>
<tr>
   <td colspan="2" ><strong>Other Modules</strong>
   </td>
</tr>
<tr>
   <td><strong>Answers Module</strong>
   <br>
Allow users to Access and Manage Answers Module
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Campaign Module</strong>
   <br>
Allow users to Access and Manage the Campaigns Module
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>AgentAI Module</strong>
   <br>
Allow user to Access and Manage AgentAI Module
   </td>
   <td>No</td>
</tr>
<tr>
   <td><strong>Auto QA</strong>
   <br>
Enable and Disable access for Auto QA
   </td>
   <td>No
   </td>
</tr>
<tr>
   <td><strong>Conversational Intelligence</strong>
   <br>
Configuration and view access to conversational Intelligence
   </td>
   <td>No
   </td>
</tr>
<tr>
   <td><strong>Evaluation Forms and Metrics</strong>
   <br>
Creation and edit access to evaluation forms and evaluation metrics
   </td>
   <td>No
   </td>
</tr>
<tr>
   <td><strong>Audit Allocation creation</strong>
   <br>
Access to create and assign interactions for audit to other users
   </td>
   <td>No
   </td>
</tr>
<tr>
   <td><strong>QA Functionalities access</strong>
   <br>
Access to scored interactions, submit audits & QA dashboard
   </td>
   <td>No

   <br>
Allow user to Access and Manage AgentAI Module

   </td>
</tr>
</table>

### CUSTOM ROLE

<table>
<tr>
   <td colspan="2" ><strong>Automation</strong>
   </td>
</tr>
<tr>
   <td><strong>Tasks</strong>
   <br>
Create and manage dialog, action, alert, information, and flow tasks.
   </td>
   <td>Full Access
   <br>
View
<br>
No</td>
</tr>
<tr>
   <td><strong>Natural Language</strong>
   <br>
Manage natural language training data (utterances, patterns, synonyms etc.), configurations and thresholds.
   </td>
   <td>Full Access
   <br>
View
<br>
No</td>
</tr>
<tr>
   <td><strong>Knowledge Graph</strong>
   <br>
Manage knowledge collection and associated training (Questions, Alternate Questions, Synonyms, and Class)
   </td>
   <td>Full Access
   <br>
View
<br>
No</td>
</tr>
<tr>
   <td><strong>Testing</strong>
   <br>
Manage Batch Testing and Conversation Testing.
   </td>
   <td>Full Access
   <br>
View
<br>
No</td>
</tr>
<tr>
   <td><strong>Bot Developers</strong>
   <br>
Manage Bot Owners and co-developers of a bot.
   </td>
   <td>Full Access
   <br>
View
<br>
No</td>
</tr>
<tr>
   <td><strong>Bot Settings</strong>
   <br>
Manage General Settings, Language Management, Authorization Profiles, PII Settings, IVR Settings, Bot Variables, Bot Versions etc.
   </td>
   <td>Full Access
   <br>
View
<br> 
No</td>
</tr>
<tr>
   <td><strong>Dashboard</strong>
   <br>
View and export dashboard data
   </td>
   <td>Yes
   <br>
No</td>
</tr>
<tr>
   <td><strong>Custom Dashboards</strong>
   <br>
Manage custom dashboards, widgets, and definitions
   </td>
   <td>Full Access
   <br>
View
<br>
No</td>
</tr>
<tr>
   <td><strong>Storyboard</strong>
   <br>
View and Create Scenes
   </td>
   <td>Full Access
   <br>
View
<br>
No</td>
</tr>
<tr>
   <td><strong>Bot Builder API Scopes</strong>
   <br>
Manage API Scopes for accessing various platform APIs.
   </td>
   <td>Yes
   <br> 
No</td>
</tr>
<tr>
   <td><strong>Integrations & Extensions</strong>
   <br>
Manage BotKit, WebSDK, Agent Transfer, Actions, External NLU, etc.
   </td>
   <td>Yes
   <br>
No</td>
</tr>
<tr>
   <td><strong>Publish bot</strong>
   <br>
Raise request to publish the bot
   </td>
   <td>Yes
   <br>
No</td>
</tr>
<tr>
   <td><strong>Bot Analytics</strong>
   <br>
View and export bot Analytics
   </td>
   <td>Yes
   <br>
No</td>
</tr>
<tr>
   <td><strong>Bot Import</strong>
   <br>
Upgrade a bot by importing a new bot definition file or restoring a version
   </td>
   <td>Yes
   <br>
No</td>
</tr>
<tr>
   <td><strong>IntentDiscovery</strong>
   <br>
Manage Intent Discovery
   </td>
   <td>Full Access
   <br>
View
<br>
No</td>
</tr>
<tr>
   <td><strong>Use Case Management</strong>
   <br>
Create and manage FAQs and conversations
   </td>
   <td>View
   <br>
None
<br>  
Full Access</td>
</tr>
<tr>
   <td><strong>Automations DashBoard</strong>
   <br>
Access to automation metrics in Dashboard
   </td>
   <td>Yes
   <br>
No</td>
</tr>
<tr>
   <td><strong>Automations Tab</strong>
   <br>
Access to the automations tab and XO Platform
   </td>
   <td>Yes
   <br>
No</td>
</tr>
<tr>
   <td colspan="2" ><strong>Flows & Routing</strong>
   </td>
</tr>
<tr>
   <td><strong>Waiting Experience</strong>
   <br>
Create and manage waiting experiences
   </td>
   <td>View
   <br>
None
<br> 
Full Access</td>
</tr>
<tr>
   <td><strong>Hours of Operation</strong>
   <br>
Create and manage hours of operation
   </td>
   <td>View
   <br> 
None
<br>
Full Access</td>
</tr>
<tr>
   <td><strong>Queue Settings</strong>
   <br>
Create and manage queues
   </td>
   <td>View
   <br>
None
<br>
Full Access</td>
</tr>
<tr>
   <td><strong>Flow Management</strong>
   <br>
Create and manage experience flows
   </td>
   <td>View
   <br>  
None
<br> 
Full Access</td>
</tr>
<tr>
   <td><strong>Default Flows</strong>
   <br>
No ability to manage default flow properties
   </td>
   <td>View
   <br>
None
<br>
Full Access</td>
</tr>
<tr>
   <td><strong>Transfer Routing Rules</strong>
   <br>
Configure global transfer rules for chat/voice
   </td>
   <td>View
   <br>
None
<br>
Full Access</td>
</tr>
<tr>
   <td><strong>Agent Playbook - Configuration</strong>
   <br>
Manage the accessibility of agent playbook feature
   </td>
   <td>None
   <br>
Full Access</td>
</tr>
<tr>
   <td><strong>AgentAssist Settings</strong>
   <br>
Define AgentAssist Widgets accessibility to Agents
   </td>
   <td>View
   <br> 
None
<br>
Full Access</td>
</tr>
<tr>
   <td><strong>Agent Coaching - Configuration</strong>
   <br>
Manage the accessibility of real-time coaching feature
   </td>
   <td>View
   <br> 
None
<br> 
Full Access</td>
</tr>
<tr>
   <td><strong>Service Level - Configuration</strong>
   <br>
Manage the accessibility of service level feature
   </td>
   <td>View
   <br>
None
<br>
Full Access</td>
</tr>
<tr>
   <td colspan="2" ><strong>User Management</strong>
   </td>
</tr>
<tr>
   <td><strong>Agent Status</strong>
   <br>
Create and manage agent status types
   </td>
   <td>View
   <br>
None
<br>
Full Access</td>
</tr>
<tr>
   <td><strong>Agent Settings</strong>
   <br>
Modify global agent settings
   </td>
   <td>View
   <br>
None
<br>
Full Access</td>
</tr>
<tr>
   <td><strong>Skill Management</strong>
   <br>
Create and manage agent skills & skill groups
   </td>
   <td>View
   <br> 
None
<br>
Full Access</td>
</tr>
<tr>
   <td><strong>Visibility of Captured Sentiment</strong>
   <br>
Manage the visibility of the customer's sentiment captured in the agent console
   </td>
   <td>Yes
   <br>
   No</td>
</tr>
<tr>
   <td><strong>Agent Group Management</strong>
   <br>
Create and manage agent groups
   </td>
   <td>View
   <br>
None
<br>
Full Access</td>
</tr>
<tr>
   <td><strong>Change User Role</strong>
   <br>
Allow user roles to be modified
   </td>
   <td>Yes
   <br> 
No</td>
</tr>
<tr>
   <td colspan="2" ><strong>Agent & Supervisor Experience</strong>
   </td>
</tr>
<tr>
   <td><strong>Agent Desktop Console</strong>
   <br>
Access and use the agent desktop console
   </td>
   <td>Yes
   <br>
No</td>
</tr>
<tr>
   <td><strong>Widget Management</strong>
   <br>
Create and manage custom widgets
   </td>
   <td>View
   <br>
None
<br> 
Full Access</td>
</tr>
<tr>
   <td><strong>Survey Management</strong>
   <br>
Create and manage surveys
   </td>
   <td>View
   <br>
None
<br>
Full Access</td>
</tr>
<tr>
   <td><strong>Disposition Management</strong>
   <br>
Create and manage dispositions
   </td>
   <td>View
   <br>
None
<br>
Full Access</td>
</tr>
<tr>
   <td><strong>Interactions</strong>
   <br>
Access to interactions in the Dashboard
   </td>
   <td>Yes
   <br>
No</td>
</tr>
<tr>
   <td><strong>Access to each agent's personal dashboard</strong>
   <br>
Define My Dashboard accessibility to Agents
   </td>
   <td>Yes
   <br>
No</td>
</tr>
<tr>
   <td><strong>Standard Responses</strong>
   <br>
Create and manage standard responses
   </td>
   <td>View
   <br>
None
<br>
Full Access</td>
</tr>
<tr>
   <td><strong>Internal Chat</strong>
   <br>
Chat internally with others in the account
   </td>
   <td>Yes
   <br>
No</td>
</tr>
<tr>
   <td><strong>Audio calls in messaging conversations</strong>
   <br>
Allow agents to add audio calls to a messaging interaction
   </td>
   <td>Yes
   <br> 
No</td>
</tr>
<tr>
   <td><strong>Video calls in messaging conversations</strong>
   <br>
Allow agents to add video calls to a messaging interaction
   </td>
   <td>Yes
   <br>
No</td>
</tr>
<tr>
   <td><strong>Access to Agent metrics in the Dashboard</strong>
   <br>
Access to dashboard
   </td>
   <td>Yes
   <br>
No</td>
</tr>
<tr>
   <td><strong>Secure Form Management</strong>
   <br>
Create and manage secure forms
   </td>
   <td>View
   <br>
None
<br>
Full Access</td>
</tr>
<tr>
   <td><strong>Secure Form Data View</strong>
   <br>
View filled-out secure forms and data
   </td>
   <td>Yes
   <br>   
No</td>
</tr>
<tr>
   <td><strong>Desktop Layout Creation</strong>
   <br>
Create custom desktop layouts in the console
   </td>
   <td>Yes
   <br>
No</td>
</tr>
<tr>
   <td><strong>Desktop Layout Publishing</strong>
   <br>
Publish custom layouts for account-wide use
   </td>
   <td>Yes
   <br>
No</td>
</tr>
<tr>
   <td><strong>Monitor Console</strong>
   <br>
Access to the monitor tab for live interactions
   </td>
   <td>Yes
   <br>
No</td>
</tr>
<tr>
   <td><strong>Reports</strong>
   <br>
Create, view, and run reports
   </td>
   <td>None
   <br>
View & Run
<br>
Full Access</td>
</tr>
<tr>
   <td><strong>Join Conversation</strong>
   <br>
Allow user to join a conversation
   </td>
   <td>Yes
   <br>
No</td>
</tr>
<tr>
   <td><strong>Voice Campaigns</strong>
   <br>
Access to Voice campaigns under Campaigns module
   </td>
   <td>View
   <br>
None
<br>
Full Access</td>
</tr>
<tr>
   <td><strong>Proactive Web Campaigns</strong>
   <br>
Access to Proactive Web campaigns under Campaigns module
   </td>
   <td>View
   <br>
None
<br>
Full Access</td>
</tr>
<tr>
   <td><strong>SMS Campaigns</strong>
   <br>
Access to SMS campaigns under the Campaigns module
   </td>
   <td>View
   <br>
None
<br>
Full Access</td>
</tr>
<tr>
   <td><strong>Direct Outward Dialing</strong>
   <br>
Users can make direct outward calls
   </td>
   <td>Yes
   <br>
No</td>
</tr>
<tr>
   <td><strong>Queue Visibility and Access</strong>
   <br>
Decide which queues are available for access in the Monitor
   </td>
   <td>All
   <br>
Self
<br>
None</td>
</tr>
<tr>
   <td><strong>Dashboard Content</strong>
   <br>
Whose interactions should he have access to
   </td>
   <td>Own
   <br>
All</td>
</tr>
<tr>
   <td><strong>Outbound Email</strong>
   <br>
Make outbound emails if enabled for the account
   </td>
   <td>Yes
   <br>
No</td>
</tr>
<tr>
   <td colspan="2" ><strong>System</strong>
   </td>
</tr>
<tr>
   <td><strong>Channel Management</strong>
   <br>
Manage communication channels
   </td>
   <td>View
   <br>
None
<br>  
Full Access</td>
</tr>
<tr>
   <td><strong>Billing</strong>
   <br>
Manage account-level billing preferences
   </td>
   <td>View
   <br>
None
<br>
Full Access</td>
</tr>
<tr>
   <td><strong>API</strong>
   <br>
Manage API setup and configuration
   </td>
   <td>View
   <br>
None
<br>
Full Access</td>
</tr>
<tr>
   <td><strong>Language & Speech Control</strong>
   <br>
Manage ASR/TTS voice preferences
   </td>
   <td>View
   <br>
None
<br>
Full Access</td>
</tr>
<tr>
   <td><strong>WFM Configuration Management</strong>
   <br>
Can Manage WFM Configurations.
   </td>
   <td>Yes
   <br>
No</td>
</tr>
<tr>
   <td colspan="2" ><strong>Other Modules</strong>
   </td>
</tr>
<tr>
   <td><strong>Answers Module</strong>
   <br>
Allow users to Access and Manage Answers Module
   </td>
   <td>Yes
   <br>
No</td>
</tr>
<tr>
   <td><strong>Campaign Module</strong>
   <br>
Allow users to Access and Manage the Campaigns Module
   </td>
   <td>Yes
   <br>
No</td>
</tr>
<tr>
   <td><strong>AgentAI Module</strong>
   <br>
Allow user to Access and Manage AgentAI Module
   </td>
   <td>Yes
   <br>
No</td>
</tr>
<tr>
   <td><strong>Auto QA</strong>
   <br>
Enable and Disable access for Auto QA
   </td>
   <td>Full Access
   <br>
No</td>
</tr>
<tr>
   <td><strong>Conversational Intelligence</strong>
   <br>
Configuration and view access to conversational Intelligence
   </td>
   <td>View
   <br>
Full Access
   <br>
No</td>
   </td>
</tr>
<tr>
   <td><strong>Evaluation Forms and Metrics</strong>
   <br>
Creation and edit access to evaluation forms and evaluation metrics
   </td>
   <td>Full Access
   <br>
View
   <br>
No</td>
   </td>
</tr>
<tr>
   <td><strong>Audit Allocation creation</strong>
   <br>
Access to create and assign interactions for audit to other users
   </td>
   <td>Full Access
   <br>
No</td>
</tr>
<tr>
   <td><strong>QA Functionalities access</strong>
   <br>
Access to scored interactions, submit audits & QA dashboard
   </td>
   <td>Full Access
   <br>
No</td>
</tr>
</table>

## Custom Roles

You can create custom user roles within the XO Platform to suit your business needs. Unlike the default ones, custom user roles let you assign preferred permissions. You can add, edit, and delete custom roles if you have the Role Management permission set to Yes.

### Add a New Role

Steps to add a new role:

1. Click **+ New Role**.  
<img src="../images/new-role.png" alt="New Role" title="New Role" style="border: 1px solid gray; zoom:100%;">

2. In the New Role window, fill out the following fields:
    1. **Role Name**: This name is assigned to the user role across XO Platform. For example, Experience Designer.
    2. **Description**: Add other information on the role, responsibilities, or access level.
    3. **Permissions**: Set the access permissions by selecting one of the available options within the dropdown next to each permission.
    4. Click **Save**.  
    <img src="../images/configure-permissions.png" alt="Configure Permissions" title="Configure Permissions" style="border: 1px solid gray; zoom:100%;">

### Edit a Role

Steps to edit an existing role:

1. Click the **Ellipsis** icon (**⋮**) for the role you want to update and click **Edit**.
<img src="../images/edit-button.png" alt="Edit Button" title="Edit Button" style="border: 1px solid gray; zoom:100%;">

2. In the **Edit Role** window, make changes to the required fields and click **Save**.

### Delete a Role

Steps to delete a custom role:

1. Click the **Ellipsis** icon (**⋮**) for the role you want to update and click **Delete**.  
<img src="../images/delete-button.png" alt="Delete Button" title="Delete Button" style="border: 1px solid gray; zoom:100%;">

2. A confirmation message is displayed. Click **Yes**.  
<img src="../images/delete-confirmation.png" alt="Delete Confirmation" title="Delete Confirmation" style="border: 1px solid gray; zoom:100%;">

3. A confirmation message is displayed and the custom role is deleted.

    !!! Notes

        * You cannot delete default roles (App Owner, App Developer, App Tester, Supervisor, and Agent).
        * You cannot restore deleted roles.