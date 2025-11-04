# List of Agent Platform APIs

## APIs for Agent Protocol

The following APIs let users interact with agents and manage sessions.

* To create, retrieve, or end a session with an agent to maintain conversation context, use [Sessions API](agentic-apps/sessions.md).

* To user input to an agent within a session and receives a response, use [Runs API](agentic-apps/execute.md).

* To upload or delete attachments to a conversation, use [File Attachment APIs](agentic-apps/upload.md)]. These attachments can be referenced during an agent run as context.

* To create a new Agentic App, use [Create App API](agentic-apps/create-app.md).

## API for File Management

To upload a small or large public file in the supported format, use [File Upload API](apis-list/upload-file-api.md).

## API to View Process Status

To check the status of an ongoing or completed job related to tools or models, use [Get Dock Status API](apis-list/get-dock-status.md).

## APIs to Manage Tools

* To import a new tool into the system, use [Import a New Tool API](apis-list/import-a-new-tool.md).

* To import new configurations, datasets, or updates into an already existing tool within the system, use [Import to an Existing Tool API](apis-list/import-to-an-existing-tool.md).

* To export an existing tool's configuration and associated data, including its flow, for backup, sharing, or reuse., use [Export a Tool API](apis-list/export-a-tool.md).

* To deploy a specific tool into an environment, use [Deploy a Tool API](apis-list/deploy-a-tool.md).

* To undeploy a specific tool from an environment, use [Undeploy a Tool API](apis-list/undeploy-a-tool.md).

## APIs to Manage Models

* Import a model in chunks into the system., use [Import a Model API](apis-list/import-a-model.md).

* To export a trained AI model from the system., use [Export a Model API](apis-list/export-a-model.md).

* To deploy a model into the environment in the Ready to Deploy state and configure its parameters, use [Deploy a Model API](apis-list/deploy-a-model.md). The initial deployment must be done manually in the Agent Platform account. Consecutive deployments must happen via the public API.

* To undeploy a model from the environment, use [Undeploy a Model API](apis-list/undeploy-a-model.md).

## APIs to Manage Guardrails

* To deploy predefined guardrails into the system, use [Deploy Guardrails API](apis-list/deploy-guardrails.md).

* To undeploy predefined guardrails from the system, use [Undeploy Guardrails API](apis-list/undeploy-guardrails.md).
