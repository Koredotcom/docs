# App Settings

## Guardrails

Guardrails are scanners used to ensure safety, stability, and performance. Input and Output scanners in an Agentic App help monitor and regulate the data that the agents receive and generate. 

For instance, To prevent the agent from processing inputs that contain sensitive or harmful content, you can add a regex input scanner. This scanner will validate user inputs against predefined regex patterns, ensuring that only acceptable content is processed.

You can add scanners for both **input** and **output**. Refer to this to learn more about Guardrails and how to add scanners. 

## Sharing and Permissions

The **Sharing and Permissions** page allows administrators to manage user roles and access levels within the application. It enables assigning permissions based on roles, ensuring secure and controlled access to the application and data. Users can be granted, modified, or revoked access based on their responsibilities. This ensures compliance, security, and efficient collaboration across teams.

There are four types of user roles in an Agentic AI app. Depending on the roles, the users get access and permission to view or update agents in the application. 

<table>
  <tr>
   <td>Role 
   </td>
   <td>Permissions
   </td>
   <td>Key Responsibilities
   </td>
  </tr>
  <tr>
   <td>App Owner
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>App Admin
   </td>
   <td>Complete control  over the core functionalities of apps, such as deployment, configuration, sharing, deletion, monitoring, managing users etc.
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>App Developer
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>App Tester
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>App Viewer
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
</table>

### Invite Users 

To share the app with users, click the **Invite** button. Add the email ID of the user or the group. Select an appropriate role for the user and send the invite. 


## Configurations

**Orchestration**:  Orchestration refers to the coordination of multiple AI agents to efficiently handle user requests, execute complex workflows, and manage decision-making across the application. 

The apps currently utilize the **Supervisor** pattern. This model involves a supervisor agent who oversees and coordinates the activities of multiple agents to ensure that the overall goal is achieved both efficiently and optimally. This orchestration pattern is particularly effective for managing multi-step workflows with various agents, as it optimizes system performance through strategic task allocation and adaptive management.

Settings - prompt

**Type**: This field refers to the type of agents in the Agentic App. Select an agent type that best matches the business requirements and goals.

Currently, Agentic AI apps support **Reasoning** agents. Reasoning agents **analyze** information, infer insights, and make **contextual decisions**.
