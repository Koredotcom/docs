# Workspace


Workspaces provide dedicated environments where teams can collaborate on AI initiatives while maintaining robust security and governance. This fundamental shift in AI management enables your organization to:

* Protect valuable information with granular access controls and secure boundaries between departments.
* Assign resources strategically by designating workspaces for particular teams, projects, or functional areas.

Key Features

Intuitive Workspace Management

* Simple creation process through the workspace switcher or **Account Hub**.
* Flexible collaboration settings with **Owner** and **Agent Manager** roles.
* Customizable agent publishing controls for precise audience targeting.
* Configurable agent type permissions for each workspace.

Enhanced Security Controls

* Centralized admin-only workspace creation and deletion.
* Comprehensive audit trails for all workspace activities.
* Secure boundaries between sensitive departments.

Ready-to-Use Default Workspace

* Pre-configured environment with optimized settings.
* Built-in solutions for HR, IT, and Recruitment.
* Universal publishing capabilities.
* Essential analytics and performance monitoring.

Workspaces in AI for Work deliver the perfect balance of innovation and governance, enabling your organization to deploy specialized AI capabilities while maintaining enterprise-grade security and control.
<img src="../images/workspace_1.png" alt="admin-console" title="workspaces" style="border: 1px solid gray; zoom:80%;">

## Workspace Creation

Workspaces can only be created by an administrator, the workspace owner can build a workspace, but only administrators have exclusive authority over agent publish settings and the list of approved agents.

Initiate workspace creation through either:

* Workspace switcher interface

<img src="../images/workspace_2.png" alt="admin-console" title="workspaces2" style="border: 1px solid gray; zoom:80%;">

* **Workspace management** tab in the **Account Hub** 

<img src="../images/workspace_3.png" alt="admin-console" title="workspaces2" style="border: 1px solid gray; zoom:80%;">

When creating a workspace, admin must provide:

* **Name**: A distinctive identifier for the workspace.
* **Description**: Summary of the workspace's purpose.
* **Workspace Collaborators**: Initial collaborators for the workspace. Any active user in the system can be added to a workspace. Once users are added to a workspace, the system automatically sends invitation emails to notify them. Inside each workspace, users can hold different roles that determine their permissions:
    * Owners: The highest authority within a workspace, owners can:
        * Add or remove users from the workspace metadata.
        * Remove other users from the workspace.
        * Choose to leave the workspace if desired.
    * Agent Manager: These specialized roles focus on agent oversight:
        * Manage and configure agents within the workspace.
        * Cannot add or manage users.
        * Have the ability to leave the workspace if desired.
         
<img src="../images/workspace_4.png" alt="admin-console" title="workspaces2" style="border: 1px solid gray; zoom:80%;">

* **Agent Publish Settings**: Publishing controls determine to whom the agents can be published within a workspace, allowing for precise audience targeting and information security. The system defaults to making agents available to all workspace users. For wider distribution, additional options exist:
    * Everyone in the Account toggle allows agents to be published to all users in the organization. Only administrators can modify publishing settings for workspaces.
    * User Group toggle allows to select specific user groups who should receive access to agents.

!!! note

    The settings configured within the Agent Publishing section will directly affect the permissions necessary to successfully deploy and publish an agent.

* **Allowed Agent/Apps**: Workspaces can be configured to allow specific types of agents:
    * By default, all agent types are permitted.
    * If a workspace already contains agents of a specific type, that type cannot be deselected until those agents are deleted.

<img src="../images/workspace_5.png" alt="admin-console" title="workspaces2" style="border: 1px solid gray; zoom:80%;">

## Workspace Deletion

Only administrators can delete workspaces to prevent accidental deletion and maintain governance. This permanently removes all associated agents, configurations, and resources.

To delete a workspace:

1. Go to **Workspace Management** under **Account Hub**.
2. Select the desired workspace from the list to enter the Workspace Settings page.
3. Scroll down to find and click the **Delete Workspace button**.
4. Click **Update**.

<img src="../images/workspace_6.png" alt="admin-console" title="workspaces2" style="border: 1px solid gray; zoom:80%;">

### Workspace Modules

All workspaces include these essential components:

* Workspace Analytics & Dashboard: Provides performance metrics, usage data, and activity logs to monitor workspace utilization and effectiveness.
* AI Agents: Enables advanced information retrieval across knowledge sources.
* RAG Agent: Implements Retrieval-Augmented Generation to connect AI responses with organizational knowledge.
* API Agents: Facilitates integration with external systems and applications.

### Default Workspace

The default workspace offers immediate functionality with a pre-configured environment, default RAG configuration, and universal publishing. It has fixed elements and administrative access limitations. It also includes pre-configured enterprise knowledge and a business solution suite comprising HR, IT, and recruitment solutions, which can be used immediately or customized.
