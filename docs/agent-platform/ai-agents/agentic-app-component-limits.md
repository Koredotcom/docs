# Agentic App Component Limits

To optimize performance and manage resources effectively, the following limits apply to Agentic App components. Once a limit is reached, the system displays an error in the UI.

## [App-Level Limits](agentic-apps/create-app.md)

The following limits apply to applications within your workspace.

| **Component**              | **Limit** | **Description**                                                                 |
|-----------------------------|-----------|---------------------------------------------------------------------------------|
| Apps per Workspace          | 1,000     | The maximum number of apps you can create in a workspace.|
| App Versions                | 20        | Maximum versions maintained per app.|
| App Sharing Recipients      | 100       | The maximum number of users or teams an app can be shared with.|
| Environments per App        | 5         | Available environments: Development, Staging, UAT, Production, and Demo (in addition to Draft).|


## [Agent-Level Limits](create-agent.md)

The following limits apply to agents within an application.

| Component               | Limit | Description                                                                                           |
|--------------------------|-------|-------------------------------------------------------------------------------------------------------|
| Agents per App           | 50    | Maximum number of agents per app.|
| Agent Versions           | 40    | Maximum versions maintained per agent.|
| Tools Assigned per Agent | 20    | The maximum number of tools, including Workflow Tools, Code Tools, MCP Tools and Knowledge Tools, that can be linked to an individual agent.|

## [Tool-Level Limits](tools/overview.md)

The following limits apply to tools within an application.

| Component                | Limit | Description                                      |
|---------------------------|-------|--------------------------------------------------|
| Workflow Tools per App    | 50    | Maximum workflow tools in the app library.|
| Code Tools per App        | 50    | Maximum code tools in the app library.|
| MCP Servers per App       | 10    | Maximum MCP servers, regardless of the number of tools.|
| Knowledge Bases per App   | 20    | Maximum SearchAI knowledge base tools.|

## [Code Tool Complexity Limits](tools/code-tools.md)

The following limits apply to individual code tools.

| Component               | Limit    | Description                                                                 |
|--------------------------|----------|-----------------------------------------------------------------------------|
| Parameters per Code Tool | 20       | Maximum input parameters for a code tool. |
| JSON Object Hierarchy    | 5 levels | Maximum depth for JSON parameter objects. An error is displayed once the hierarchy exceeds this limit. |

## [Memory Stores in Agentic Apps](agentic-apps/memory-stores.md)

The following limits apply to memory stores within an application.

| Component              | Limit | Description                                               |
|-------------------------|-------|-----------------------------------------------------------|
| Memory Stores per App   | 15    | Maximum memory stores in an application (excluding SessionMeta). |

## [Variables](agentic-apps/settings/variables.md)

The following limits apply to variables within an application.

| Component            | Limit | Description                              |
|-----------------------|-------|------------------------------------------|
| Content Variables     | 50    | Maximum content variables per app.       |
| Environment Variables | 50    | Maximum environment variables per app.   |
| Namespaces            | 20    | Maximum number of namespaces per app.    |

## [API Scopes and Keys](../apis/agentic-apps/overview.md)

The following limits apply to API configuration.

| Component   | Limit | Description                     |
|-------------|-------|---------------------------------|
| API Scopes  | 20    | Maximum API scopes per app.     |
| API Keys    | 40    | Maximum API keys per API scope. |

## [PII & Guardrails](agentic-apps/settings/guardrails.md)

The following limit applies to PII (Personally Identifiable Information) patterns.

| Component    | Limit | Description                    |
|--------------|-------|--------------------------------|
| PII Patterns | 20    | Maximum PII patterns per app.  |