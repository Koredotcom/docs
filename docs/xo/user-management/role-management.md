# Role Management

XO Platform provides role-based user access to features. As such, Roles designate the users’ permissions and access level. The Role Management section lets you create and customize permissions for each.

You can find the **Users** section on the left menu by going to **Manage** > **Users** > **Role Management**.  
<img src="../images/product-switcher.png" alt="Product Switcher" title="Product Switcher" style="border: 1px solid gray; zoom:70%;">

## The Role Management Live Board

This section lets you create, search (by name), and manage user roles; and lists existing roles along with the following information:

1. **Role Name**: The name of the user role, available throughout SmartAssist.
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

=== "APP OWNER"

   <table>
   <tr>
      <td colspan="2" ><strong>Automation</strong>
      </td>
   </tr>
   <tr>
      <td><strong>Tasks</strong>
   
   Create and manage dialog, action, alert, information, and flow tasks.
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Natural Language</strong>
   
   Manage natural language training data (utterances, patterns, synonyms etc.), configurations and thresholds.
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Knowledge Graph</strong>
   
   Manage knowledge collection and associated training (Questions, Alternate Questions, Synonyms, and Class)
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Testing</strong>
   
   Manage Batch Testing and Conversation Testing.
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Bot Developers</strong>
   
   Manage Bot Owners and co-developers of a bot.
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Bot Settings</strong>
   
   Manage General Settings, Language Management, Authorization Profiles, PII Settings, IVR Settings, Bot Variables, Bot Versions etc.
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Dashboard</strong>
   
   View and export dashboard data
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Custom Dashboards</strong>
   
   Manage custom dashboards, widgets, and definitions
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Storyboard</strong>
   
   View and Create Scenes
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Bot Builder API Scopes</strong>
   
   Manage API Scopes for accessing various platform APIs.
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Integrations & Extensions</strong>
   
   Manage BotKit, WebSDK, Agent Transfer, Actions, External NLU, etc.
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Publish bot</strong>
   
   Raise request to publish the bot
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Bot Analytics</strong>
   
   View and export bot Analytics
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Bot Import</strong>
   
   Upgrade a bot by importing a new bot definition file or restoring a version
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>IntentDiscovery</strong>
   
   Manage Intent Discovery.
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Use Case Management</strong>
   
   Create and manage FAQs and conversations
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Automations DashBoard</strong>
   
   Access to automation metrics in Dashboard
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Automations Tab</strong>

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

   Create and manage waiting experiences
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Hours of Operation</strong>
   
   Create and manage hours of operation
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Queue Settings</strong>
   
   Create and manage queues
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Flow Management</strong>
   
   Create and manage experience flows
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Default Flows</strong>
   
   No ability to manage default flow properties
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Transfer Routing Rules</strong>
   
   Configure global transfer rules for chat/voice
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Agent Playbook - Configuration</strong>

   Manage the accessibility of agent playbook feature
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>AgentAssist Settings</strong>

   Define AgentAssist Widgets accessibility to Agents
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Agent Coaching - Configuration</strong>

   Manage the accessibility of real-time coaching feature
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Service Level - Configuration</strong>

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

   Create and manage agent status types
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Agent Settings</strong>

   Modify global agent settings
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Skill Management</strong>

   Create and manage agent skills & skill groups
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Agent Group Management</strong>
   
   Create and manage agent groups
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Change User Role</strong>
   
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

   Access and use the agent desktop console
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Widget Management</strong>

   Create and manage custom widgets
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Survey Management</strong>

   Create and manage surveys
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Disposition Management</strong>

   Create and manage dispositions
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Interactions</strong>

   Access to interactions in the Dashboard
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Access to each agent's personal dashboard</strong>

   Define My Dashboard accessibility to Agents
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Standard Responses</strong>

   Create and manage standard responses
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Internal Chat</strong>

   Chat internally with others in the account
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Audio calls in messaging conversations</strong>

   Allow agents to add audio calls to a messaging interaction
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Video calls in messaging conversations</strong>

   Allow agents to add video calls to a messaging interaction
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Access to Agent metrics in the Dashboard</strong>

   Access to dashboard
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Secure Form Management</strong>

   Create and manage secure forms
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Secure Form Data View</strong>

   View filled-out secure forms and data
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Desktop Layout Creation</strong>

   Create custom desktop layouts in the console
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Desktop Layout Publishing</strong>

   Publish custom layouts for account-wide use
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Monitor Console</strong>

   Access to the monitor tab for live interactions
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Reports</strong>

   Create, view, and run reports
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Join Conversation</strong>

   Allow user to join a conversation
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Voice Campaigns</strong>

   Access to Voice campaigns under Campaigns module
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Proactive Web Campaigns</strong>

   Access to Proactive Web campaigns under Campaigns module
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Direct Outward Dialing</strong>

   Users can make direct outward calls
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Queue Visibility and Access</strong>

   Decide which queues are available for access in the Monitor
      </td>
      <td>All</td>
   </tr>
   <tr>
      <td><strong>Dashboard Content</strong>

   Whose interactions should he have access to
      </td>
      <td>All</td>
   </tr>
   <tr>
      <td><strong>Outbound Email</strong>

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

   Manage communication channels
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Billing</strong>

   Manage account-level billing preferences
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>API</strong>

   Manage API setup and configuration
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Language & Speech Control</strong>

   Manage ASR/TTS voice preferences
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>WFM Configuration Management</strong>

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

   Allow users to Access and Manage Answers Module
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Campaign Module</strong>

   Allow users to Access and Manage the Campaigns Module
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>AgentAssist Module</strong>

   Allow user to Access and Manage AgentAssist Module
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Quality Management</strong>

   Allow users to Access and Manage Quality Management Module
      </td>
      <td>No</td>
   </tr>
   </table>

=== "APP DEVELOPER"

   <table>
   <tr>
      <td colspan="2" ><strong>Automation</strong>
      </td>
   </tr>
   <tr>
      <td><strong>Tasks</strong>

   Create and manage dialog, action, alert, information, and flow tasks.
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Natural Language</strong>

   Manage natural language training data (utterances, patterns, synonyms etc.), configurations and thresholds.
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Knowledge Graph</strong>

   Manage knowledge collection and associated training (Questions, Alternate Questions, Synonyms, and Class)
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Testing</strong>

   Manage Batch Testing and Conversation Testing.
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Bot Developers</strong>

   Manage Bot Owners and co-developers of a bot.
      </td>
      <td>View</td>
   </tr>
   <tr>
      <td><strong>Bot Settings</strong>

   Manage General Settings, Language Management, Authorization Profiles, PII Settings, IVR Settings, Bot Variables, Bot Versions etc.
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Dashboard</strong>

   View and export dashboard data
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Custom Dashboards</strong>

   Manage custom dashboards, widgets, and definitions
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Storyboard</strong>

   View and Create Scenes
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Bot Builder API Scopes</strong>

   Manage API Scopes for accessing various platform APIs.
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Integrations & Extensions</strong>

   Manage BotKit, WebSDK, Agent Transfer, Actions, External NLU, etc.
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Publish bot</strong>

   Raise request to publish the bot
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Bot Analytics</strong>

   View and export bot Analytics
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Bot Import</strong>

   Upgrade a bot by importing a new bot definition file or restoring a version
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>IntentDiscovery</strong>

   Manage Intent Discovery.
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Use Case Management</strong>

   Create and manage FAQs and conversations
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Automations DashBoard</strong>

   Access to automation metrics in Dashboard
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Automations Tab</strong>

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

   Create and manage waiting experiences
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Hours of Operation</strong>
      
   Create and manage hours of operation
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Queue Settings</strong>

   Create and manage queues
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Flow Management</strong>

   Create and manage experience flows
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Default Flows</strong>

   No ability to manage default flow properties
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Transfer Routing Rules</strong>

   Configure global transfer rules for chat/voice
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Agent Playbook - Configuration</strong>

   Manage the accessibility of agent playbook feature
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>AgentAssist Settings</strong>

   Define AgentAssist Widgets accessibility to Agents
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Agent Coaching - Configuration</strong>

   Manage the accessibility of real-time coaching feature
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Service Level - Configuration</strong>

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

   Create and manage agent status types
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Agent Settings</strong>

   Modify global agent settings
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Skill Management</strong>

   Create and manage agent skills & skill groups
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Agent Group Management</strong>

   Create and manage agent groups
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Change User Role</strong>

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

   Access and use the agent desktop console
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Widget Management</strong>

   Create and manage custom widgets
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Survey Management</strong>

   Create and manage surveys
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Disposition Management</strong>

   Create and manage dispositions
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Interactions</strong>

   Access to interactions in the Dashboard
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Access to each agent's personal dashboard</strong>

   Define My Dashboard accessibility to Agents
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Standard Responses</strong>

   Create and manage standard responses
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Internal Chat</strong>

   Chat internally with others in the account
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Audio calls in messaging conversations</strong>

   Allow agents to add audio calls to a messaging interaction
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Video calls in messaging conversations</strong>

   Allow agents to add video calls to a messaging interaction
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Access to Agent metrics in the Dashboard</strong>

   Access to dashboard
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Secure Form Management</strong>

   Create and manage secure forms
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Secure Form Data View</strong>

   View filled-out secure forms and data
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Desktop Layout Creation</strong>

   Create custom desktop layouts in the console
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Desktop Layout Publishing</strong>

   Publish custom layouts for account-wide use
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Monitor Console</strong>

   Access to the monitor tab for live interactions
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Reports</strong>

   Create, view, and run reports
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Join Conversation</strong>

   Allow user to join a conversation
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Voice Campaigns</strong>

   Access to Voice campaigns under Campaigns module
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Proactive Web Campaigns</strong>

   Access to Proactive Web campaigns under Campaigns module
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Direct Outward Dialing</strong>

   Users can make direct outward calls
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Queue Visibility and Access</strong>

   Decide which queues are available for access in the Monitor
      </td>
      <td>All</td>
   </tr>
   <tr>
      <td><strong>Dashboard Content</strong>

   Whose interactions should he have access to
      </td>
      <td>All</td>
   </tr>
   <tr>
      <td><strong>Outbound Email</strong>

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

   Manage communication channels
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Billing</strong>

   Manage account-level billing preferences
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>API</strong>

   Manage API setup and configuration
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Language & Speech Control</strong>

   Manage ASR/TTS voice preferences
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>WFM Configuration Management</strong>

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

   Allow users to Access and Manage Answers Module
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Campaign Module</strong>

   Allow users to Access and Manage the Campaigns Module
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>AgentAssist Module</strong>

   Allow user to Access and Manage AgentAssist Module
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Quality Management</strong>

   Allow users to Access and Manage Quality Management Module
      </td>
      <td>No</td>
   </tr>
   </table>

=== "APP TESTER"

   <table>
   <tr>
      <td colspan="2" ><strong>Automation</strong>
      </td>
   </tr>
   <tr>
      <td><strong>Tasks</strong>

   Create and manage dialog, action, alert, information, and flow tasks.
      </td>
      <td>View</td>
   </tr>
   <tr>
      <td><strong>Natural Language</strong>

   Manage natural language training data (utterances, patterns, synonyms etc.), configurations and thresholds.
      </td>
      <td>View</td>
   </tr>
   <tr>
      <td><strong>Knowledge Graph</strong>

   Manage knowledge collection and associated training (Questions, Alternate Questions, Synonyms, and Class)
      </td>
      <td>View</td>
   </tr>
   <tr>
      <td><strong>Testing</strong>

   Manage Batch Testing and Conversation Testing.
      </td>
      <td>View</td>
   </tr>
   <tr>
      <td><strong>Bot Developers</strong>

   Manage Bot Owners and co-developers of a bot.
      </td>
      <td>View</td>
   </tr>
   <tr>
      <td><strong>Bot Settings</strong>

   Manage General Settings, Language Management, Authorization Profiles, PII Settings, IVR Settings, Bot Variables, Bot Versions etc.
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Dashboard</strong>

   View and export dashboard data
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Custom Dashboards</strong>

   Manage custom dashboards, widgets, and definitions
      </td>
      <td>View</td>
   </tr>
   <tr>
      <td><strong>Storyboard</strong>

   View and Create Scenes
      </td>
      <td>View</td>
   </tr>
   <tr>
      <td><strong>Bot Builder API Scopes</strong>

   Manage API Scopes for accessing various platform APIs.
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Integrations & Extensions</strong>

   Manage BotKit, WebSDK, Agent Transfer, Actions, External NLU, etc.
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Publish bot</strong>

   Raise request to publish the bot
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Bot Analytics</strong>

   View and export bot Analytics
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Bot Import</strong>

   Upgrade a bot by importing a new bot definition file or restoring a version
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>IntentDiscovery</strong>

   Manage Intent Discovery.
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Use Case Management</strong>

   Create and manage FAQs and conversations
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Automations DashBoard</strong>

   Access to automation metrics in Dashboard
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Automations Tab</strong>

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

   Create and manage waiting experiences
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Hours of Operation</strong>

   Create and manage hours of operation
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Queue Settings</strong>

   Create and manage queues
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Flow Management</strong>

   Create and manage experience flows
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Default Flows</strong>

   No ability to manage default flow properties
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Transfer Routing Rules</strong>

   Configure global transfer rules for chat/voice
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Agent Playbook - Configuration</strong>

   Manage the accessibility of agent playbook feature
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>AgentAssist Settings</strong>

   Define AgentAssist Widgets accessibility to Agents
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Agent Coaching - Configuration</strong>

   Manage the accessibility of real-time coaching feature
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Service Level - Configuration</strong>

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

   Create and manage agent status types
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Agent Settings</strong>

   Modify global agent settings
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Skill Management</strong>

   Create and manage agent skills & skill groups
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Agent Group Management</strong>

   Create and manage agent groups
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Change User Role</strong>

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

   Access and use the agent desktop console
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Widget Management</strong>

   Create and manage custom widgets
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Survey Management</strong>

   Create and manage surveys
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Disposition Management</strong>

   Create and manage dispositions
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Interactions</strong>

   Access to interactions in the Dashboard
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Access to each agent's personal dashboard</strong>

   Define My Dashboard accessibility to Agents
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Standard Responses</strong>

   Create and manage standard responses
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Internal Chat</strong>

   Chat internally with others in the account
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Audio calls in messaging conversations</strong>

   Allow agents to add audio calls to a messaging interaction
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Video calls in messaging conversations</strong>

   Allow agents to add video calls to a messaging interaction
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Access to Agent metrics in the Dashboard</strong>

   Access to dashboard
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Secure Form Management</strong>

   Create and manage secure forms
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Secure Form Data View</strong>

   View filled-out secure forms and data
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Desktop Layout Creation</strong>

   Create custom desktop layouts in the console
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Desktop Layout Publishing</strong>

   Publish custom layouts for account-wide use
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Monitor Console</strong>

   Access to the monitor tab for live interactions
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Reports</strong>

   Create, view, and run reports
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Join Conversation</strong>

   Allow user to join a conversation
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Voice Campaigns</strong>

   Access to Voice campaigns under Campaigns module
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>Proactive Web Campaigns</strong>

   Access to Proactive Web campaigns under Campaigns module
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>Direct Outward Dialing</strong>

   Users can make direct outward calls
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Queue Visibility and Access</strong>

   Decide which queues are available for access in the Monitor
      </td>
      <td>All</td>
   </tr>
   <tr>
      <td><strong>Dashboard Content</strong>

   Whose interactions should he have access to
      </td>
      <td>All</td>
   </tr>
   <tr>
      <td><strong>Outbound Email</strong>

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

   Manage communication channels
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Billing</strong>

   Manage account-level billing preferences
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>API</strong>

   Manage API setup and configuration
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Language & Speech Control</strong>

   Manage ASR/TTS voice preferences
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>WFM Configuration Management</strong>

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

   Allow users to Access and Manage Answers Module
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Campaign Module</strong>

   Allow users to Access and Manage the Campaigns Module
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>AgentAssist Module</strong>
      
   Allow user to Access and Manage AgentAssist Module
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Quality Management</strong>

   Allow users to Access and Manage Quality Management Module
      </td>
      <td>No</td>
   </tr>
   </table>

=== "SUPERVISOR"

   <table>
   <tr>
      <td colspan="2" ><strong>Automation</strong>
      </td>
   </tr>
   <tr>
      <td><strong>Tasks</strong>

   Create and manage dialog, action, alert, information, and flow tasks.
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Natural Language</strong>

   Manage natural language training data (utterances, patterns, synonyms etc.), configurations and thresholds.
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Knowledge Graph</strong>

   Manage knowledge collection and associated training (Questions, Alternate Questions, Synonyms, and Class)
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Testing</strong>

   Manage Batch Testing and Conversation Testing.
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Bot Developers</strong>

   Manage Bot Owners and co-developers of a bot.
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Bot Settings</strong>

   Manage General Settings, Language Management, Authorization Profiles, PII Settings, IVR Settings, Bot Variables, Bot Versions etc.
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Dashboard</strong>

   View and export dashboard data
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Custom Dashboards</strong>

   Manage custom dashboards, widgets, and definitions
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Storyboard</strong>

   View and Create Scenes
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Bot Builder API Scopes</strong>

   Manage API Scopes for accessing various platform APIs.
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Integrations & Extensions</strong>

   Manage BotKit, WebSDK, Agent Transfer, Actions, External NLU, etc.
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Publish bot</strong>

   Raise request to publish the bot
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Bot Analytics</strong>

   View and export bot Analytics
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Bot Import</strong>

   Upgrade a bot by importing a new bot definition file or restoring a version
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>IntentDiscovery</strong>

   Manage Intent Discovery.
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Use Case Management</strong>

   Create and manage FAQs and conversations
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>Automations DashBoard</strong>

   Access to automation metrics in Dashboard
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Automations Tab</strong>

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

   Create and manage waiting experiences
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>Hours of Operation</strong>

   Create and manage hours of operation
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>Queue Settings</strong>

   Create and manage queues
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Flow Management</strong>

   Create and manage experience flows
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>Default Flows</strong>

   No ability to manage default flow properties
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>Transfer Routing Rules</strong>

   Configure global transfer rules for chat/voice
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>Agent Playbook - Configuration</strong>

   Manage the accessibility of agent playbook feature
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>AgentAssist Settings</strong>

   Define AgentAssist Widgets accessibility to Agents
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>Agent Coaching - Configuration</strong>

   Manage the accessibility of real-time coaching feature
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>Service Level - Configuration</strong>

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

   Create and manage agent status types
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Agent Settings</strong>

   Modify global agent settings
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Skill Management</strong>

   Create and manage agent skills & skill groups
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Agent Group Management</strong>

   Create and manage agent groups
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Change User Role</strong>

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

   Access and use the agent desktop console
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Widget Management</strong>

   Create and manage custom widgets
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Survey Management</strong>

   Create and manage surveys
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>Disposition Management</strong>

   Create and manage dispositions
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>Interactions</strong>

   Access to interactions in the Dashboard
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Access to each agent's personal dashboard</strong>

   Define My Dashboard accessibility to Agents
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Standard Responses</strong>

   Create and manage standard responses
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>Internal Chat</strong>

   Chat internally with others in the account
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Audio calls in messaging conversations</strong>

   Allow agents to add audio calls to a messaging interaction
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Video calls in messaging conversations</strong>

   Allow agents to add video calls to a messaging interaction
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Access to Agent metrics in the Dashboard</strong>

   Access to dashboard
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Secure Form Management</strong>

   Create and manage secure forms
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Secure Form Data View</strong>

   View filled-out secure forms and data
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Desktop Layout Creation</strong>

   Create custom desktop layouts in the console
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Desktop Layout Publishing</strong>

   Publish custom layouts for account-wide use
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Monitor Console</strong>

   Access to the monitor tab for live interactions
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Reports</strong>

   Create, view, and run reports
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Join Conversation</strong>

   Allow user to join a conversation
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Voice Campaigns</strong>

   Access to Voice campaigns under Campaigns module
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Proactive Web Campaigns</strong>

   Access to Proactive Web campaigns under Campaigns module
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>Direct Outward Dialing</strong>

   Users can make direct outward calls
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Queue Visibility and Access</strong>

   Decide which queues are available for access in the Monitor
      </td>
      <td>Self</td>
   </tr>
   <tr>
      <td><strong>Dashboard Content</strong>

   Whose interactions should he have access to
      </td>
      <td>All</td>
   </tr>
   <tr>
      <td><strong>Outbound Email</strong>

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

   Manage communication channels
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>Billing</strong>
      
   Manage account-level billing preferences
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>API</strong>

   Manage API setup and configuration
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>Language & Speech Control</strong>

   Manage ASR/TTS voice preferences
      </td>
      <td>Full Access</td>
   </tr>
   <tr>
      <td><strong>WFM Configuration Management</strong>

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

   Allow users to Access and Manage Answers Module
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Campaign Module</strong>

   Allow users to Access and Manage the Campaigns Module
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>AgentAssist Module</strong>

   Allow user to Access and Manage AgentAssist Module
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Quality Management</strong>

   Allow users to Access and Manage Quality Management Module
      </td>
      <td>No</td>
   </tr>
   </table>

=== "AGENT"

   <table>
   <tr>
      <td colspan="2" ><strong>Automation</strong>
      </td>
   </tr>
   <tr>
      <td><strong>Tasks</strong>

   Create and manage dialog, action, alert, information, and flow tasks.
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Natural Language</strong>

   Manage natural language training data (utterances, patterns, synonyms etc.), configurations and thresholds.
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Knowledge Graph</strong>

   Manage knowledge collection and associated training (Questions, Alternate Questions, Synonyms, and Class)
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Testing</strong>

   Manage Batch Testing and Conversation Testing.
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Bot Developers</strong>

   Manage Bot Owners and co-developers of a bot.
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Bot Settings</strong>

   Manage General Settings, Language Management, Authorization Profiles, PII Settings, IVR Settings, Bot Variables, Bot Versions etc.
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Dashboard</strong>

   View and export dashboard data
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Custom Dashboards</strong>

   Manage custom dashboards, widgets, and definitions
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Storyboard</strong>

   View and Create Scenes
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Bot Builder API Scopes</strong>

   Manage API Scopes for accessing various platform APIs.
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Integrations & Extensions</strong>

   Manage BotKit, WebSDK, Agent Transfer, Actions, External NLU, etc.
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Publish bot</strong>

   Raise request to publish the bot
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Bot Analytics</strong>

   View and export bot Analytics
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Bot Import</strong>

   Upgrade a bot by importing a new bot definition file or restoring a version
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>IntentDiscovery</strong>

   Manage Intent Discovery.
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Use Case Management</strong>

   Create and manage FAQs and conversations
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>Automations DashBoard</strong>

   Access to automation metrics in Dashboard
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Automations Tab</strong>

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

   Create and manage waiting experiences
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>Hours of Operation</strong>

   Create and manage hours of operation
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>Queue Settings</strong>
   Create and manage queues
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>Flow Management</strong>

   Create and manage experience flows
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>Default Flows</strong>

   No ability to manage default flow properties
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>Transfer Routing Rules</strong>

   Configure global transfer rules for chat/voice
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>Agent Playbook - Configuration</strong>

   Manage the accessibility of agent playbook feature
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>AgentAssist Settings</strong>

   Define AgentAssist Widgets accessibility to Agents
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>Agent Coaching - Configuration</strong>

   Manage the accessibility of real-time coaching feature
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>Service Level - Configuration</strong>

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

   Create and manage agent status types
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>Agent Settings</strong>

   Modify global agent settings
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>Skill Management</strong>

   Create and manage agent skills & skill groups
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>Agent Group Management</strong>

   Create and manage agent groups
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>Change User Role</strong>

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

   Access and use the agent desktop console
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Widget Management</strong>

   Create and manage custom widgets
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>Survey Management</strong>

   Create and manage surveys
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>Disposition Management</strong>

   Create and manage dispositions
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>Interactions</strong>

   Access to interactions in the Dashboard
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Access to each agent's personal dashboard</strong>

   Define My Dashboard accessibility to Agents
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Standard Responses</strong>

   Create and manage standard responses
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>Internal Chat</strong>

   Chat internally with others in the account
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Audio calls in messaging conversations</strong>

   Allow agents to add audio calls to a messaging interaction
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Video calls in messaging conversations</strong>

   Allow agents to add video calls to a messaging interaction
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Access to Agent metrics in the Dashboard</strong>

   Access to dashboard
      </td>
      <td>Yes</td>
   </tr>
   <tr>
      <td><strong>Secure Form Management</strong>

   Create and manage secure forms
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>Secure Form Data View</strong>

   View filled-out secure forms and data
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Desktop Layout Creation</strong>

   Create custom desktop layouts in the console
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Desktop Layout Publishing</strong>

   Publish custom layouts for account-wide use
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Monitor Console</strong>

   Access to the monitor tab for live interactions
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Reports</strong>

   Create, view, and run reports
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>Join Conversation</strong>

   Allow user to join a conversation
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Voice Campaigns</strong>

   Access to Voice campaigns under Campaigns module
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>Proactive Web Campaigns</strong>

   Access to Proactive Web campaigns under Campaigns module
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>Direct Outward Dialing</strong>

   Users can make direct outward calls
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Queue Visibility and Access</strong>

   Decide which queues are available for access in the Monitor
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>Dashboard Content</strong>

   Whose interactions should he have access to
      </td>
      <td>Own</td>
   </tr>
   <tr>
      <td><strong>Outbound Email</strong>

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

   Manage communication channels
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>Billing</strong>

   Manage account-level billing preferences
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>API</strong>

   Manage API setup and configuration
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>Language & Speech Control</strong>

   Manage ASR/TTS voice preferences
      </td>
      <td>None</td>
   </tr>
   <tr>
      <td><strong>WFM Configuration Management</strong>

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

   Allow users to Access and Manage Answers Module
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Campaign Module</strong>

   Allow users to Access and Manage the Campaigns Module
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>AgentAssist Module</strong>

   Allow user to Access and Manage AgentAssist Module
      </td>
      <td>No</td>
   </tr>
   <tr>
      <td><strong>Quality Management</strong>

   Allow users to Access and Manage Quality Management Module
      </td>
      <td>No</td>
   </tr>
   </table>

=== "CUSTOM ROLE"

   <table>
   <tr>
      <td colspan="2" ><strong>Automation</strong>
      </td>
   </tr>
   <tr>
      <td><strong>Tasks</strong>

   Create and manage dialog, action, alert, information, and flow tasks.
      </td>
      <td>Full
   View
   No</td>
   </tr>
   <tr>
      <td><strong>Natural Language</strong>

   Manage natural language training data (utterances, patterns, synonyms etc.), configurations and thresholds.
      </td>
      <td>Full
   View
   No</td>
   </tr>
   <tr>
      <td><strong>Knowledge Graph</strong>

   Manage knowledge collection and associated training (Questions, Alternate Questions, Synonyms, and Class)
      </td>
      <td>Full
   View
   No</td>
   </tr>
   <tr>
      <td><strong>Testing</strong>

   Manage Batch Testing and Conversation Testing.
      </td>
      <td>Full
   View
   No</td>
   </tr>
   <tr>
      <td><strong>Bot Developers</strong>

   Manage Bot Owners and co-developers of a bot.
      </td>
      <td>Full
   View
   No</td>
   </tr>
   <tr>
      <td><strong>Bot Settings</strong>

   Manage General Settings, Language Management, Authorization Profiles, PII Settings, IVR Settings, Bot Variables, Bot Versions etc.
      </td>
      <td>Full
   View
   No</td>
   </tr>
   <tr>
      <td><strong>Dashboard</strong>

   View and export dashboard data
      </td>
      <td>Yes
   No</td>
   </tr>
   <tr>
      <td><strong>Custom Dashboards</strong>

   Manage custom dashboards, widgets, and definitions
      </td>
      <td>Full
   View
   No</td>
   </tr>
   <tr>
      <td><strong>Storyboard</strong>

   View and Create Scenes
      </td>
      <td>Full
   View
   No</td>
   </tr>
   <tr>
      <td><strong>Bot Builder API Scopes</strong>

   Manage API Scopes for accessing various platform APIs.
      </td>
      <td>Yes
   No</td>
   </tr>
   <tr>
      <td><strong>Integrations & Extensions</strong>

   Manage BotKit, WebSDK, Agent Transfer, Actions, External NLU, etc.
      </td>
      <td>Yes
   No</td>
   </tr>
   <tr>
      <td><strong>Publish bot</strong>

   Raise request to publish the bot
      </td>
      <td>Yes
   No</td>
   </tr>
   <tr>
      <td><strong>Bot Analytics</strong>

   View and export bot Analytics
      </td>
      <td>Yes
   No</td>
   </tr>
   <tr>
      <td><strong>Bot Import</strong>

   Upgrade a bot by importing a new bot definition file or restoring a version
      </td>
      <td>Yes
   No</td>
   </tr>
   <tr>
      <td><strong>IntentDiscovery<strong>

   Manage Intent Discovery.
      </td>
      <td>Full
   View
   No</td>
   </tr>
   <tr>
      <td><strong>Use Case Management</strong>

   Create and manage FAQs and conversations
      </td>
      <td>View
   None
   Full Access</td>
   </tr>
   <tr>
      <td><strong>Automations DashBoard</strong>

   Access to automation metrics in Dashboard
      </td>
      <td>Yes
   No</td>
   </tr>
   <tr>
      <td><strong>Automations Tab</strong>

   Access to the automations tab and XO Platform
      </td>
      <td>Yes
   No</td>
   </tr>
   <tr>
      <td colspan="2" ><strong>Flows & Routing</strong>
      </td>
   </tr>
   <tr>
      <td><strong>Waiting Experience</strong>

   Create and manage waiting experiences
      </td>
      <td>View
   None
   Full Access</td>
   </tr>
   <tr>
      <td><strong>Hours of Operation</strong>

   Create and manage hours of operation
      </td>
      <td>View
   None
   Full Access</td>
   </tr>
   <tr>
      <td><strong>Queue Settings</strong>

   Create and manage queues
      </td>
      <td>View
   None
   Full Access</td>
   </tr>
   <tr>
      <td><strong>Flow Management</strong>

   Create and manage experience flows
      </td>
      <td>View
   None
   Full Access</td>
   </tr>
   <tr>
      <td><strong>Default Flows</strong>

   No ability to manage default flow properties
      </td>
      <td>View
   None
   Full Access</td>
   </tr>
   <tr>
      <td><strong>Transfer Routing Rules</strong>

   Configure global transfer rules for chat/voice
      </td>
      <td>View
   None
   Full Access</td>
   </tr>
   <tr>
      <td><strong>Agent Playbook - Configuration</strong>

   Manage the accessibility of agent playbook feature
      </td>
      <td>None
   Full Access</td>
   </tr>
   <tr>
      <td><strong>AgentAssist Settings</strong>

   Define AgentAssist Widgets accessibility to Agents
      </td>
      <td>View
   None
   Full Access</td>
   </tr>
   <tr>
      <td><strong>Agent Coaching - Configuration</strong>

   Manage the accessibility of real-time coaching feature
      </td>
      <td>View
   None
   Full Access</td>
   </tr>
   <tr>
      <td><strong>Service Level - Configuration</strong>

   Manage the accessibility of service level feature
      </td>
      <td>View
   None
   Full Access</td>
   </tr>
   <tr>
      <td colspan="2" ><strong>User Management</strong>
      </td>
   </tr>
   <tr>
      <td><strong>Agent Status</strong>

   Create and manage agent status types
      </td>
      <td>View
   None
   Full Access</td>
   </tr>
   <tr>
      <td><strong>Agent Settings</strong>

   Modify global agent settings
      </td>
      <td>View
   None
   Full Access</td>
   </tr>
   <tr>
      <td><strong>Skill Management</strong>

   Create and manage agent skills & skill groups
      </td>
      <td>View
   None
   Full Access</td>
   </tr>
   <tr>
      <td><strong>Agent Group Management</strong>

   Create and manage agent groups
      </td>
      <td>View
   None
   Full Access</td>
   </tr>
   <tr>
      <td><strong>Change User Role</strong>

   Allow user roles to be modified
      </td>
      <td>Yes
   No</td>
   </tr>
   <tr>
      <td colspan="2" ><strong>Agent & Supervisor Experience</strong>
      </td>
   </tr>
   <tr>
      <td><strong>Agent Desktop Console</strong>

   Access and use the agent desktop console
      </td>
      <td>Yes
   No</td>
   </tr>
   <tr>
      <td><strong>Widget Management</strong>

   Create and manage custom widgets
      </td>
      <td>View
   None
   Full Access</td>
   </tr>
   <tr>
      <td><strong>Survey Management</strong>

   Create and manage surveys
      </td>
      <td>View
   None
   Full Access</td>
   </tr>
   <tr>
      <td><strong>Disposition Management</strong>

   Create and manage dispositions
      </td>
      <td>View
   None
   Full Access</td>
   </tr>
   <tr>
      <td><strong>Interactions</strong>

   Access to interactions in the Dashboard
      </td>
      <td>Yes
   No</td>
   </tr>
   <tr>
      <td><strong>Access to each agent's personal dashboard</strong>

   Define My Dashboard accessibility to Agents
      </td>
      <td>Yes
   No</td>
   </tr>
   <tr>
      <td><strong>Standard Responses</strong>

   Create and manage standard responses
      </td>
      <td>View
   None
   Full Access</td>
   </tr>
   <tr>
      <td><strong>Internal Chat</strong>
   Chat internally with others in the account
      </td>
      <td>Yes
   No</td>
   </tr>
   <tr>
      <td><strong>Audio calls in messaging conversations</strong>

   Allow agents to add audio calls to a messaging interaction
      </td>
      <td>Yes
   No</td>
   </tr>
   <tr>
      <td><strong>Video calls in messaging conversations</strong>

   Allow agents to add video calls to a messaging interaction
      </td>
      <td>Yes
   No</td>
   </tr>
   <tr>
      <td><strong>Access to Agent metrics in the Dashboard</strong>

   Access to dashboard
      </td>
      <td>Yes
   No</td>
   </tr>
   <tr>
      <td><strong>Secure Form Management</strong>

   Create and manage secure forms
      </td>
      <td>View
   None
   Full Access</td>
   </tr>
   <tr>
      <td><strong>Secure Form Data View</strong>

   View filled-out secure forms and data
      </td>
      <td>Yes
   No</td>
   </tr>
   <tr>
      <td><strong>Desktop Layout Creation</strong>

   Create custom desktop layouts in the console
      </td>
      <td>Yes
   No</td>
   </tr>
   <tr>
      <td><strong>Desktop Layout Publishing</strong>

   Publish custom layouts for account-wide use
      </td>
      <td>Yes
   No</td>
   </tr>
   <tr>
      <td><strong>Monitor Console</strong>

   Access to the monitor tab for live interactions
      </td>
      <td>Yes
   No</td>
   </tr>
   <tr>
      <td><strong>Reports</strong>

   Create, view, and run reports
      </td>
      <td>None
   View & Run
   Full Access</td>
   </tr>
   <tr>
      <td><strong>Join Conversation</strong>

   Allow user to join a conversation
      </td>
      <td>Yes
   No</td>
   </tr>
   <tr>
      <td><strong>Voice Campaigns</strong>

   Access to Voice campaigns under Campaigns module
      </td>
      <td>View
   None
   Full Access</td>
   </tr>
   <tr>
      <td><strong>Proactive Web Campaigns</strong>

   Access to Proactive Web campaigns under Campaigns module
      </td>
      <td>View
   None
   Full Access</td>
   </tr>
   <tr>
      <td><strong>Direct Outward Dialing</strong>

   Users can make direct outward calls
      </td>
      <td>Yes
   No</td>
   </tr>
   <tr>
      <td><strong>Queue Visibility and Access</strong>

   Decide which queues are available for access in the Monitor
      </td>
      <td>All
   Self
   None</td>
   </tr>
   <tr>
      <td><strong>Dashboard Content</strong>

   Whose interactions should he have access to
      </td>
      <td>Own
   All</td>
   </tr>
   <tr>
      <td><strong>Outbound Email</strong>

   Make outbound emails if enabled for the account
      </td>
      <td>Yes
   No</td>
   </tr>
   <tr>
      <td colspan="2" ><strong>System</strong>
      </td>
   </tr>
   <tr>
      <td><strong>Channel Management</strong>

   Manage communication channels
      </td>
      <td>View
   None
   Full Access</td>
   </tr>
   <tr>
      <td><strong>Billing</strong>

   Manage account-level billing preferences
      </td>
      <td>View
   None
   Full Access</td>
   </tr>
   <tr>
      <td><strong>API</strong>

   Manage API setup and configuration
      </td>
      <td>View
   None
   Full Access</td>
   </tr>
   <tr>
      <td><strong>Language & Speech Control</strong>

   Manage ASR/TTS voice preferences
      </td>
      <td>View
   None
   Full Access</td>
   </tr>
   <tr>
      <td><strong>WFM Configuration Management</strong>

   Can Manage WFM Configurations.
      </td>
      <td>Yes
   No</td>
   </tr>
   <tr>
      <td colspan="2" ><strong>Other Modules</strong>
      </td>
   </tr>
   <tr>
      <td><strong>Answers Module</strong>

   Allow users to Access and Manage Answers Module
      </td>
      <td>Yes
   No</td>
   </tr>
   <tr>
      <td><strong>Campaign Module</strong>

   Allow users to Access and Manage the Campaigns Module
      </td>
      <td>Yes
   No</td>
   </tr>
   <tr>
      <td><strong>AgentAssist Module</strong>

   Allow user to Access and Manage AgentAssist Module
      </td>
      <td>Yes
   No</td>
   </tr>
   <tr>
      <td><strong>Quality Management</strong>

   Allow users to Access and Manage Quality Management Module
      </td>
      <td>Yes
   No</td>
   </tr>
   </table>

<hr>

## Custom Roles

You can create custom user roles within the XO Platform to suit your business needs. Unlike the default ones, custom user roles let you assign preferred permissions. You can add, edit, and delete custom roles if you have the Role Management permission set to Yes.

### Add a New Role

Steps to add a new role:

1. Click **+ New Role**.
<img src="../images/new-role.png" alt="New Role" title="New Role" style="border: 1px solid gray; zoom:100%;">

2. In the New Role window, fill out the following fields:
    1. **Role Name**: This name is assigned to the user role across SmartAssist. For example, Experience Designer.
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