# Role Management 

GALE’s **Role Management** feature in the **Settings** console helps implement Role-based Access Control (RBAC) for both account and agent features on the platform. 

Thus, the roles can be classified based on role types. [Learn more](./role-management.md/#role-types){:target="_blank"}.

When you [invite](../../getting-started/sign-up-sign-in.md/#invite-a-user-to-your-account){:target="_blank"}/add a user to your account, you must assign a [default role](./role-management.md/#system-defined-roles){:target="_blank"} to them to define their [module-wise permissions and access levels](./role-management.md/#module-wise-permissions-and-access-levels){:target="_blank"}. You can later [reassign a different role](./role-management.md/#reassign-an-alternative-role-to-active-users){:target="_blank"} to the user, including a [default/system-defined](./role-management.md/#system-defined-roles){:target="_blank"} or [custom](./role-management.md/#custom-roles){:target="_blank"} role. [Learn more](../user-management/overview.md){:target="_blank"} about **Users Management**.

**Key Points**

1. **Master Admin Role**

    * When you [create an account](../../getting-started/sign-up-sign-in.md/#steps-to-sign-up-and-activate-your-gale-account){:target="_blank"}, you automatically become the account owner and are assigned the **Master Admin** role. [Learn more](./role-management.md/#system-defined-roles){:target="_blank"}.

    * As the Master Admin, you have the highest level of access, allowing you to create, modify, and delete permissions for custom roles and manage users in your account.

2. **Assigning Roles**

    * Once a user joins your account, assign them a role based on their responsibilities and job functions. By default, the **Viewer** role is assigned to new users joining your account, providing the minimum level of account access required. [Learn more](./role-management.md/#system-defined-roles){:target="_blank"}. This role can be changed later in the **Settings** console. [Learn more](./role-management.md/#reassign-an-alternative-role-to-active-users){:target="_blank"}.

3. **Default and Custom Roles**

    * Each role comes with specific permissions and access levels to determine what features the user can access, modify, or manage. [Learn more](./role-management.md/#module-wise-permissions-and-access-levels){:target="_blank"}. 

    GALE supports the following roles in the **Settings** console:

    * **Default Role**: A system-generated role with internally defined set of permissions and access levels. [Learn more](./role-management.md/#system-defined-roles){:target="_blank"}.

    * **Custom Role**: Allows you to customize permissions and access levels for your users. [Learn more](./role-management.md/#custom-roles){:target="_blank"}.

4. **Role Management Benefits**

    * Enables better control over user actions in your account.
    * Facilitates updating roles when job functions or responsibilities change.
    * Ensures prompt revocation of access when a user leaves the organization or no longer requires access.

## Account and Agent Level Features

The features for which permissions and access levels are defined for a role include the following:

**Account Level**

* Agents
* Models
* Prompts
* Settings including Integrations, User Management, Security and Control, Monitoring, Guardrails, and Billing.

**Agent Level**

* Create an agent version
* Share/unshare agents/assign agent roles
* Delete agent
* Export Agent
* Monitor Trace of an Agent
* Edit Agent Workflow
* Manage Agent Configuration
* Manage deployment - deploy/undeploy
* Manage guardrails configuration
* Create/Delete an API key
* Monitor Audit logs

To learn more about permissions and access levels around features, click [here](./role-management.md/#module-wise-permissions-and-access-levels){:target="_blank"}.

Access to account or agent-level permissions can either be disabled (no access) or enabled with **Full**, **Custom**, or **View** privileges. [Learn more](./role-management.md/#access-levels){:target="_blank"}.

### Roles

A Role groups users according to their job functions, streamlining permission management. 

*Example*

A **Master Admin** has complete control over the account's core functionalities such as models, agents, integrations, users, etc.

An **Agent Admin** has complete control over the core functionalities of agents, such as deployment, configuration, sharing, deletion, monitoring, etc.

GALE supports the following roles:

#### System-defined Roles

Also called **Default** roles, these are inbuilt n the system at the account and agent levels defined in the system. The scopes, permissions, and access levels for these roles are preset based on what users commonly require and **cannot be modified** in the application. Also, system roles cannot be deleted.

To modify a user's scope and permissions, you must add a [custom](./role-management.md/#custom-roles){:target="_blank"} account/agent-type role. [Learn more](./role-management.md/#add-a-role){:target="_blank"}.

System-defined, system-generated, or default roles provide baseline control over the core features and functionalities and streamline the user management process for administrators. 

For example, The **Admin** role typically has full access to all agent/account features and functionalities within the system. Administrators have the highest privileges and can manage other users, configure settings, and perform administrative tasks.

The following table summarizes the scope for different system roles supported for Account and Agent type:

<table>
  <tr>
   <td colspan="2" ><strong>Account</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Role</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Master Admin</strong>
   </td>
   <td>Users have complete control over agent and model management, user administration, integrations, security settings, and access to all core features and functionalities.
   </td>
  </tr>
  <tr>
   <td><strong>Admin</strong>
   </td>
   <td>Users have access to all the permissions except model deletion, billing, and Kore connector.
   </td>
  </tr>
  <tr>
   <td><strong>Member</strong>
   </td>
   <td>Users can create agents, add external models, and modify only S3 integration.
   </td>
  </tr>
  <tr>
   <td><strong>Viewer</strong>
   </td>
   <td>Users can only view the modules across the platform.
   </td>
  </tr>
</table>

<table>
  <tr>
   <td colspan="2" ><strong>Agent</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Role</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Agent Admin</strong>
   </td>
   <td>Users have complete control over agent management, versioning, sharing, deployment, deletion, configuration, monitoring, and API key creation.
   </td>
  </tr>
  <tr>
   <td><strong>Agent Manager</strong>
   </td>
   <td>Users have access to all the permissions except for agent deletion.
   </td>
  </tr>
  <tr>
   <td><strong>Agent Editor</strong>
   </td>
   <td>Users can create new versions and deploy, monitor, and export agents.
   </td>
  </tr>
  <tr>
   <td><strong>Agent Viewer</strong>
   </td>
   <td>Users can only view the node details and generate output in the agent.
   </td>
  </tr>
</table>

#### Custom Roles 

The admin can add these roles at the account/agent level. The scopes, permissions, and access levels can be custom-configured. Custom user roles allow for more fine-grained control over what actions different users can perform for at the account and agent levels.

Organizations can tailor access levels to their specific needs and organizational structure. This customization helps assign only the required permissions to specific users and improve security through role-based access. 

For example, a custom role, “_Banking Agent Conversation Moderator_,” can be customized for full access to agent guardrail configuration permission and no access to create and deploy an agent.

#### Key Considerations

* After creating a custom role, it will appear in the dropdown menu of the email invitation template. You can then select and assign this role to the user you invite to your account.
<img src="../images/custom-role-listing.png" alt="custom role listing" title="custom role listing" style="border: 1px solid gray; zoom:80%;">

* You cannot delete a custom role if it is currently assigned to active users or included in an email invitation. The system displays an error message, as shown in the screenshot below.
<img src="../images/error-custom-role.png" alt="error custom role deletion" title="error custom role deletion" style="border: 1px solid gray; zoom:50%;">

To proceed, you must first unassign the role or assign an alternative role to these users, and then you can delete the custom role.

### Permissions

A **Permission** is a specific action or a set of actions the user can perform for the assigned role on either agent or account types. Examples include creating an agent, adding an external model, adding a user, and assigning a role.

### Access Levels

The Settings console supports two types of access: “_Yes_” indicates the user role has access to a module’s permission, and “_No_” means the user has no access. When the system/custom user role has access, the extent/level of access at the account or agent level is defined by the following presets: 

* **View**: The user can view the account and agent level but cannot edit or delete it.
* **Custom**: The user can view, add, and edit account and agent data but not delete it.
* **Full**: The user can view, add, edit, and delete account and agent data. 
* **No Access**: The user cannot access the feature.

[Learn more](./role-management.md/#module-wise-permissions-and-access-levels){:target="_blank"} about Module-wise permissions and access levels.

### Role Types 

A **Role Type** defines the module-wise scope and access level for the defined permissions and associated actions.

The following Role Types are defined on GALE:

* **Account**:  Users invited to the account must be assigned an Account role (default or custom). The role type manages access to features at the account level like models, agents, other users, integrations, and security permissions.
* **Agent**:  When a user is invited to an agent, they receive an Agent role. The role type manages access to features at the agent level like agent creation, deployment, versioning, deletion, monitoring, API integration, experimentation, export, etc.

A user can have an Account role within the account and one or more Agent roles within different agents. Agent roles are determined at the agent level, and you can assign these roles to users who are invited to your agent.

### Module-wise Permissions and Access Levels

The following table summarizes the module-wise permissions and access levels for default admin, and agent roles.

<table>
  <tr bgcolor="#ECECEC">
   <td rowspan="3" ><strong>Module</strong>
   </td>
   <td rowspan="3" ><strong>Permission</strong>
   </td>
   <td colspan="4" ><strong>Default Admin Role</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Master Admin</strong>
   </td>
   <td><strong>Admin</strong>
   </td>
   <td><strong>Member</strong>
   </td>
   <td><strong>Viewer</strong>
   </td>
  </tr>
  <tr bgcolor="#ECECEC">
   <td colspan="4" ><strong>Access Level</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Agents</strong>
<p>
<strong> </strong>
   </td>
   <td>Create an Agent
   </td>
   <td>Yes
<p>
 
   </td>
   <td>Yes
<p>
 
   </td>
   <td>Yes
<p>
 
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td rowspan="9" ><strong>Models</strong>
   </td>
   <td>Access to Model (“View” is the default access for a custom role)
   </td>
   <td>Full
   </td>
   <td>Custom
   </td>
   <td>Custom
   </td>
   <td>View
   </td>
  </tr>
  <tr>
   <td>Add an external model
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>Create a custom model and perform fine tuning
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>Add opensource model
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>Manage Deployment - deploy/undeploy/redeploy
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>Create or Delete an API Key for a model
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>Export Model
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>Delete Model
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>Model Configuration
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td rowspan="6" ><strong>Prompts</strong>
   </td>
   <td>Access to a Prompt
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td>Create an Experiment
<p>
 
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td><strong>Access to Settings</strong> (Only if the settings permission is 'Yes' the user will see all the permissions)
   </td>
   <td>Full
   </td>
   <td>Custom
   </td>
   <td>Custom
   </td>
   <td>No Access
   </td>
  </tr>
  <tr>
   <td><strong>Access to guardrails at the account level</strong>
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td>Deploy/ Undeploy a guardrail (for all agents)
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td><strong>Access to Integrations</strong> (“Full” is the default access)
   </td>
   <td>Full
   </td>
   <td>Full
   </td>
   <td>Custom
   </td>
   <td>View
   </td>
  </tr>
  <tr>
   <td rowspan="4" ><strong>Integrations</strong>
   </td>
   <td>Weights & Biases
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>Hugging Face
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>AWS S3 Bucket
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>SearchAssist
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td rowspan="12" ><strong>Users Management</strong>
   </td>
   <td>Access
   </td>
   <td>Full
   </td>
   <td>Full
   </td>
   <td>No access
   </td>
   <td>No access
   </td>
  </tr>
  <tr>
   <td>Invite User (via email or import)
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>Bulk Import Users via files
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>Assign/revoke system roles to users & manage profile and status
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>Groups
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>Enrolment
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>Directory Sync to enroll users
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>Manage Agent Roles (Create and edit Custom roles), assign/revoke users
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>Manage Admin Roles (Create and edit Custom roles), assign/revoke users
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>Remove Users
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>Preferences
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td><strong>Manage User Settings (profile fields): </strong>Users with the permissions to manage user settings can bulk change permissions.
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td rowspan="4" ><strong>Security and Control Settings</strong>
   </td>
   <td>View and update the Security and Control Settings for your account
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
<p>
 
   </td>
  </tr>
  <tr>
   <td>Monitoring
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
<p>
 
   </td>
  </tr>
  <tr>
   <td>Billing: Plans, invoice, subscribe & unsubscribe, token usage
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>Agent Management
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td rowspan="2" ><strong>Guardrails</strong>
   </td>
   <td><strong>Access to guardrails at the account level</strong>
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td>Deploy/ Undeploy a guardrail (for all agents)
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td rowspan="7" ><strong>Other Permissions</strong>
   </td>
   <td>Approve & publish agent deployment requests
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>Configure and manage Single Sign On
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>Initiate, enable & disable Kore.ai connector
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>API Scopes for users, roles, and agents in your account.
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>Manage Apps and Model Deployment requests approvals and publishing
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>Allow users to integrate
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>Monitor agents and models on the GALE level
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
</table>


<table>
  <tr bgcolor="#ECECEC">
   <td rowspan="3" ><strong>Module</strong>
   </td>
   <td rowspan="3" ><strong>Permission</strong>
   </td>
   <td colspan="4" ><strong>Default Agent Role</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Agent Admin</strong>
   </td>
   <td><strong>Agent Manager</strong>
   </td>
   <td><strong>Agent Editor</strong>
   </td>
   <td><strong>Agent Viewer</strong>
   </td>
  </tr>
  <tr bgcolor="#ECECEC">
   <td colspan="4" ><strong>Access Level</strong>
   </td>
  </tr>
  <tr>
   <td rowspan="9" ><strong>Agents</strong>
   </td>
   <td><strong>Access to Agent </strong>(“Custom” is the default access for a custom role)
   </td>
   <td>Full
   </td>
   <td>Custom
   </td>
   <td>Custom
   </td>
   <td>View
   </td>
  </tr>
  <tr>
   <td>Create an Agent Version
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>Share Agents/ Unshare Agents/ Assign Agent Roles/ Remove users
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>Delete Agent
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>Export Agent
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>Monitoring Trace of an Agent
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td>Editing Agent Workflow
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>Agent configurations
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>Create/Delete an API Key
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td><strong>Deployment</strong>
   </td>
   <td>Manage Deployment - deploy/undeploy/redeploy
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td><strong>Guardrails</strong>
   </td>
   <td>Manage Guardrails Configuration
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td><strong>Monitoring</strong>
   </td>
   <td>Audit Log
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
</table>

### Role Management Dashboard

The **Role Management Dashboard** on the Settings console displays key information.

To access the dashboard, follow the steps below:

1. [Log in](../../getting-started/sign-up-sign-in.md/#sign-in-to-gale){:target="_blank"} to GALE and click **Settings** on the top menu.
2. Click **Users Management** > **Role Management** on the left menu.
<img src="../images/access-role-management.png" alt="access role management" title="access role management" style="border: 1px solid gray; zoom:80%;">

The **Role Management** dashboard displays the following:

1. The summary of counts for the following:

    * **Total Roles**: The total count of system and custom roles in the system.
    * **System Roles**: The count of the predefined, system-generated user roles.
    * **Custom Roles**: The count of the user roles created and configured by the system admin.
    <img src="../images/summary-of-counts.png" alt="summary of counts" title="summary of counts" style="border: 1px solid gray; zoom:80%;">

2. A Table view of the following system and custom role details:

    * **Role**: The name of the system-generated role or the custom role you have created.
    * **Role Type**: The role type defines its scope, including **Account** or **Agent**.
    * **Description**: This is the description of the role. System roles are predefined, while you must provide custom role descriptions. Hover over the description text to view the entire description.
    * **Created by**: For system-generated roles, _System_ is displayed. For custom roles, the name of the user who created the role is displayed, as shown in the image below. This user can be the account owner or another user in the admin’s account.
    <img src="../images/custom-and-system-roles.png" alt="custom and system roles" title="custom and system roles" style="border: 1px solid gray; zoom:80%;">

    * **Last Updated On**: The local time and date when the custom role was last updated are displayed. This information does not appear for system roles, as they cannot be modified.

### Search a Role

To look up a system or custom role, follow the steps below:

1. [Navigate](../user-management/role-management.md/#role-management-dashboard){:target="_blank"} to the **Role Management** dashboard.
2. Click the **Search** text field.
3. Enter the role you want to search for. All the matching results are displayed.
<img src="../images/search-role.png" alt="search role" title="search role" style="border: 1px solid gray; zoom:80%;">

   If no results are found, the following message is displayed.
   <img src="../images/no-results-found.png" alt="no results found" title="no results found" style="border: 1px solid gray; zoom:80%;">

### Manage System Roles

You can perform the following actions on the [system-generated roles](./role-management.md/#system-defined-roles){:target="_blank"}.

<div class="admonition warning">
<p class="admonition-title">Important</p>
<p>System roles cannot be created, modified, or deleted since the role and its permissions are predefined in the system. However, they can be duplicated as <b>Custom Roles</b> and modified.</p>
</div>

#### View Role Information

To view the details of a [system-defined role](./role-management.md/#system-defined-roles){:target="_blank"}, follow the steps below.

1. [Navigate](../user-management/role-management.md/#role-management-dashboard){:target="_blank"} to the **Role Management** dashboard,
2. Click the **Ellipses** icon for a system role.
3. Select **View**.
<img src="../images/click-view.png" alt="select view" title="select view" style="border: 1px solid gray; zoom:80%;">

The following information is displayed:

* Role Title along with Role Type.
* Summary information on the role.
* Role Name
* Role Description
* [Role Type](./role-management.md/#role-types){:target="_blank"}
* Configuration panel to enable/disable access and set access levels for the listed permissions at the agent/account level. Click [here](./role-management.md/#module-wise-permissions-and-access-levels){:target="_blank"} to see the module-wise permissions and access levels for different roles.
<img src="../images/module-wise-permissions-new.png" alt="module-wise permissions" title="module-wise permissions" style="border: 1px solid gray; zoom:80%;">

#### Duplicate System Role

If you want to add a custom role by copying the scope and permissions of a system role, you can use the Duplicate functionality. This feature automatically duplicates the system role, copying its name, role type, and permission/access configurations, and creates it as a custom role. You can then modify, delete, or duplicate this custom role to create multiple copies and add module-wise permissions/access for each.

<div class="admonition note">
<p class="admonition-title">Note</p>
<p><ul><li>The changes you make to the duplicate role do not apply to the original system role.</li>
<li>The Last Updated On value is displayed for duplicate roles and shows the date and time when the duplicate was created.</li></ul></p>
</div>

**Steps to Create a Duplicate Role**

To duplicate a system role, follow the steps below:

1. [Navigate](../user-management/role-management.md/#role-management-dashboard){:target="_blank"} to the **Role Management** dashboard.
2. Click the **Ellipses** icon for a system role.
3. Select **Duplicate**.
<img src="../images/select-duplicate.png" alt="select duplicate" title="select duplicate" style="border: 1px solid gray; zoom:80%;">

The duplicate custom role displays the system role name followed by a suffix “**_copy_**,” as shown below. You can edit the name if required.
<img src="../images/duplicate-role.png" alt="duplicate role" title="duplicate role" style="border: 1px solid gray; zoom:80%;">

### Manage Custom Roles

[Custom roles](../user-management/role-management.md/#custom-roles){:target="_blank"} can be edited, deleted, or duplicated on the Settings console. They help customize a set of [permissions](../user-management/role-management.md/#permissions){:target="_blank"} and set [access levels](../user-management/role-management.md/#access-levels){:target="_blank"} according to enterprise's requirements.

#### Add a Role

To add a custom role, follow the steps below:


1. [Navigate](../user-management/role-management.md/#role-management-dashboard){:target="_blank"} to **Role Management** on the **Settings** console.
2. Click **Add New Role**.
<img src="../images/add-new-role.png" alt="add new role" title="add new role" style="border: 1px solid gray; zoom:80%;">

3. Follow the steps below in the **New Role** window:

    * Enter **Role Name** & **Role Description**.
    <img src="../images/enter-role-name-and-description.png" alt="enter role name and description" title="enter role name and description" style="border: 1px solid gray; zoom:80%;">
    * Select the **Role Type** from the dropdown.
    <img src="../images/select-role-type.png" alt="select role type" title="select role type" style="border: 1px solid gray; zoom:80%;">
    * Follow the steps below if you select **Role Type** as **_Account_**.
        * Enable/select the access level for module-wise permissions in the **Enable/Disable agent access** section. [Learn more](../user-management/role-management.md/#module-wise-permissions-and-access-levels){:target="_blank"} about module-wise permissions and access levels you can configure for a custom role.
        * Select the checkbox to enable the permissions (set to _Yes_) or unselect to disable (set to _No_) for the following:

          * Create Agents
          * Models 
          * Prompts
          * Integrations
          * User Management
          * Security and Control Settings
          * Manage Guardrail Models
          * Billing
          <img src="../images/enable-permissions.png" alt="enable permissions" title="enable permissions" style="border: 1px solid gray; zoom:80%;">       

       * Select the access level for **Models**, **Settings**, **Integrations**, and **User Management** from the following options:
        * **Full**: The users can access all the module permissions (view & edit).
        * **Custom**: The users can select only the required permissions for the module to customize the role.
        * **View**: The users can only view the configured module permissions.
        * **No Access**: The user cannot view/customize the module permissions.
        <img src="../images/select-access-for-modules.png" alt="select access for modules" title="select access for modules" style="border: 1px solid gray; zoom:80%;">
    
**Important Considerations**

* First, select the access level for **Models** to enable its permissions.
<img src="../images/select-acess-for-models.png" alt="set models access" title="set models access" style="border: 1px solid gray; zoom:80%;">

    Missing this step automatically disables the permissions.

* Selecting **_Full_** automatically selects all the module permissions.
<img src="../images/select-full-auto-select.png" alt="full auto select" title="full auto select" style="border: 1px solid gray; zoom:80%;">

* Selecting **_Custom_** allows you to enable only the required module permissions.  <img src="../images/select-custom-access.png" alt="select custom access" title="select custom access" style="border: 1px solid gray; zoom:80%;">

* Selecting **_View_** and **_No Access_** disables permissions selection.
<img src="../images/select-view-and-no-access.png" alt="select view and no access" title="select view and no access" style="border: 1px solid gray; zoom:80%;">       

* Selecting **_Full_** for **Settings** automatically sets the access levels of **Integrations** and **User Management** to **_Full_**.
<img src="../images/select-full-access.png" alt="select full access" title="select full access" style="border: 1px solid gray; zoom:80%;">

Additionally, it automatically enables all the permissions for the following modules:

* Integrations (View is always enabled by default as it is the minimum required permission).
* User Management
* Security and Control Settings
* Manage Guardrail Models
* Billing
<img src="../images/full-select-for-all-permissions.png" alt="full access" title="full access" style="border: 1px solid gray; zoom:80%;">
* Selecting **_No Access_** for **Settings** automatically sets the access levels of **Integrations** to **_View_** and **User Management** to **_No Access_**.
<img src="../images/select-no-access.png" alt="no access" title="no access" style="border: 1px solid gray; zoom:80%;">

Additionally, it disables all the permissions for the following modules:

  * Integrations (The **View** permission is always enabled by default).
  * User Management
  * Security and Control Settings
  * Manage Guardrail Models
  * Billing
  
  <img src="../images/disable-permissions.png" alt="disable permissions" title="disable permissions" style="border: 1px solid gray; zoom:80%;">

Selecting **_Custom_** for **Settings** automatically sets the Integrations and User Management access levels to **_Custom_**.
<img src="../images/select-custom.png" alt="select custom" title="select custom" style="border: 1px solid gray; zoom:80%;">

You can enable the required permissions for the following modules:

* Integrations
* User Management
* Security and Control Settings
* Manage Guardrail Models
* Billing

<img src="../images/enable-access-level.png" alt="enable access level" title="enable access level" style="border: 1px solid gray; zoom:80%;">

You can change **_Custom_** to **_Full_** or **_View_** for **Integrations** and **_Full_** or **_No Access_** for **User Management**.
<img src="../images/change-access-level.png" alt="change access level" title="change access level" style="border: 1px solid gray; zoom:80%;">

If you select **Role Type** as **_Agent_**, follow the steps below:

* Select **_Custom_**, **_View_**, or **_Full_** for **Access**. [Learn more](../user-management/role-management.md/#access-levels){:target="_blank"}. 

**_View_** is the default selection.
<img src="../images/access-options.png" alt="access options" title="access options" style="border: 1px solid gray; zoom:80%;">
                     
* Set up the agent permissions as follows in the **Enable/Disable agent access** section:
* If you select **_View_** for **Access**, permissions selection is automatically disabled.
<img src="../images/view-access.png" alt="view access" title="view access" style="border: 1px solid gray; zoom:80%;">

* If you select **_Full_** for **Access**, all the permissions are automatically enabled.
<img src="../images/full-access.png" alt="full access" title="full access" style="border: 1px solid gray; zoom:80%;">

* If you select **_Custom_** for **Access**, you can enable the required agent permissions and customize the role.                 
<img src="../images/custom-access.png" alt="custom access" title="custom access" style="border: 1px solid gray; zoom:80%;">

4. Click **Create**.

The new custom role is created and listed on the **Role Management** dashboard.

<img src="../images/list-new-custom-role.png" alt="list new custom role" title="list new custom role" style="border: 1px solid gray; zoom:80%;">

#### Edit a Custom Role

You can modify the role name, description, and access levels for account type or agent type roles’ permissions on the Settings console.

<div class="admonition note">
<p class="admonition-title">Note</p>
<p><ul><li>The system does not allow changing the <b>Role Type</b> once it is set. You must create a new custom role to assign a different role type.</li>
<li>When a custom role is updated, it changes the permissions for the assigned users.</li></ul></p>
</div>

To update a role, follow the steps below:

1. [Navigate](../user-management/role-management.md/#role-management-dashboard){:target="_blank"} to the **Role Management** dashboard on the **Settings** console.
2. Click the **Ellipses** icon for the custom role you want to modify.
3. Select **Edit**.
<img src="../images/edit-role.png" alt="edit role" title="edit role" style="border: 1px solid gray; zoom:80%;">

4. Edit the required values for the following In the **Update Role** window:

    * Role Name
    * Role Description

Reset the access levels for module-wise Permissions in the **Enable/disable agent access** section based on the role’s requirements.

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>The <b>Role Type</b> field is disabled for editing.</p>
</div> 

<img src="../images/role-type-field-disabled.png" alt="role type disabled" title="role type disabled" style="border: 1px solid gray; zoom:80%;">

<ol start="5"><li>Click <b>Update</b>.</li>
<img src="../images/update-role-window.png" alt="update role window" title="update role window" style="border: 1px solid gray; zoom:80%;"></ol>

A success message is displayed upon completing the role edit, and the updated role details appear on the dashboard.

<img src="../images/role-updated-message.png" alt="role updated message" title="role updated message" style="border: 1px solid gray; zoom:80%;">

#### Delete a Custom Role

You can delete a custom role if you want to permanently remove it from the system and unassign it from users.

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>You can only delete one role at a time. Bulk delete is not supported.</p>
</div> 

**Prerequisite**

Before you delete a role, ensure that the custom role is not assigned to any active users. If the role is assigned, do one of the following:

* Reassign an alternative role to the active users. [Learn more](../user-management/role-management.md/#reassign-an-alternative-role-to-active-users){:target="_blank"}.

* Remove Inactive users to whom this role is assigned.

To delete a role, follow the steps below:

1. [Navigate](../user-management/role-management.md/#role-management-dashboard){:target="_blank"} to the **Role Management** dashboard on the **Settings** console.
2. Click the **Ellipses** icon for the custom role you want to delete.
3. Select **Delete**.
<img src="../images/select-delete-role.png" alt="select delete role" title="select delete role" style="border: 1px solid gray; zoom:80%;">

4. Click **Confirm** in the **Delete Role** confirmation window.
<img src="../images/delete-role-confirm.png" alt="confirm delete role" title="confirm delete role" style="border: 1px solid gray; zoom:80%;">

A success message is displayed, and the role is deleted from the **Role Management** dashboard.

#### Role Deletion Error and Workaround 

The **Settings** console allows you to delete only unassigned roles. If a role is assigned to active/inactive users during deletion, the following error message is displayed.
<img src="../images/role-deletion-error.png" alt="role deletion error" title="role deletion error" style="border: 1px solid gray; zoom:80%;">

You must perform one of the following workarounds.

##### Reassign an Alternative Role to Active Users

1. [Navigate](../user-management/role-management.md/#role-management-dashboard){:target="_blank"} to **Users Management** > **Users** on the **Settings** Console.
2. Click the **Account Role** entry for the user.
3. Select the role you want to reassign.
<img src="../images/select-role-to-reassign.png" alt="reassign role" title="reassign role" style="border: 1px solid gray; zoom:80%;">

Once you reassign the role for the user, go to the **Role Management** dashboard and delete the role using the steps mentioned [here](../user-management/role-management.md/#delete-a-custom-role){:target="_blank"}.

The role is deleted successfully from the **Role Management** dashboard and the count for custom roles is updated (decreased).
<img src="../images/custom-role-deleted.png" alt="custom role deleted" title="custom role deleted" style="border: 1px solid gray; zoom:80%;">

##### Delete Assigned Users

[Navigate](../user-management/role-management.md/#role-management-dashboard){:target="_blank"} to the **Users Management** dashboard and follow the steps mentioned in the **Delete Users** section to delete all the assigned users individually or in bulk. Once the user is deleted, go to the **Role Management** dashboard and [delete](../user-management/role-management.md/#delete-a-custom-role){:target="_blank"} the required custom role.

Deleting the assigned users removes their association with the role you want to delete.

#### Duplicate a Custom Role

Like a system role, you can duplicate a custom role, which copies the name, role type, and configurations for permissions and access. Follow the steps mentioned [here](../user-management/role-management.md/#duplicate-system-role){:target="_blank"} to complete the process for a custom role.
<img src="../images/duplicate-custom-role.png" alt="duplicate custom role" title="duplicate custom role" style="border: 1px solid gray; zoom:80%;">

## Related Information

* **Settings Console** - [Learn more](../../settings-overview.md){:target="_blank"} about other GALE admin features.
* **Users Management** - [Learn more](../user-management/users.md){:target="_blank"} about managing users in your account.
* **Monitoring: Audit Logs** - [Learn more](../monitoring/audit-logs.md){:target="_blank"} about tracking events and user activity in your account.