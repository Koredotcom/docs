# List of (In)Agent Platform APIs

## APIs for Agent Protocol

The following APIs let users interact with agents and manage sessions.

| Use cases   | APIs     |
|--------|----------|
|  Create, retrieve, or end a session with an agent to maintain conversation context.     |     [Sessions API](agentic-apps/sessions.md)     |
|  User input to an agent within a session and receives a response.      |  [Runs API](agentic-apps/execute.md) |
|  Upload or delete attachments to a conversation. These attachments can be referenced during an agent run as context.      |   [File Attachment APIs](agentic-apps/upload.md)       |
|    Create a new Agentic App.    |  [Create App API](agentic-apps/create-app.md)   |

## API for File Management

| Use cases   | API     |
|--------|----------|
| Upload a small or large public file in the [supported formats](apis-list/upload-file-api.md). | [File Upload API](apis-list/upload-file-api.md) |

## API to View Process Status

| Use cases   | API     |
|--------|----------|
| Check the status of an ongoing or completed job related to tools or models. | [Get Dock Status API](apis-list/get-dock-status.md) |

## APIs to Manage Tools

| Use cases   | APIs    |
|--------|----------|
| Import a new tool into the system.       |  [Import a New Tool API](apis-list/import-a-new-tool.md) |
| Import new configurations, datasets, or updates into an already existing tool within the system.      |   [Import to an Existing Tool API](apis-list/import-to-an-existing-tool.md) |
| Export an existing tool's configuration and associated data, including its flow, for backup, sharing, or reuse.      | [Export a Tool API](apis-list/export-a-tool.md) |
| Deploy a specific tool into an environment. | [Deploy a Tool API](apis-list/deploy-a-tool.md) |
| Undeploy a specific tool from an environment. | [Undeploy a Tool API](apis-list/undeploy-a-tool.md) |

## APIs to Manage Models

| Use cases  | APIs     |
|--------|----------|
|  Import a model in chunks into the system.      |    [Import a Model API](apis-list/import-a-model.md)      |
|  Export a trained AI model from the system.      |   [Export a Model API](apis-list/export-a-model.md)       |
| Deploy a model into the environment in the Ready to Deploy state and configure its parameters. The initial deployment must be done manually in the (In)Agent Platform account. Consecutive deployments must happen via the public API.       | [Deploy a Model API](apis-list/deploy-a-model.md)         |
| Undeploy a model from the environment.      |   [Undeploy a Model API](apis-list/undeploy-a-model.md) |

## APIs to Manage Guardrails

| Use cases   | APIs     |
|--------|----------|
|   Deploy predefined guardrails into the system.     |  [Deploy Guardrails API](apis-list/deploy-guardrails.md)        |
| Undeploy predefined guardrails from the system.       |   [Undeploy Guardrails API](apis-list/undeploy-guardrails.md)       |

