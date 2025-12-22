# Nodes Overview

Nodes are the building blocks of a workflow. Each node performs a specific action—processing data, making decisions, or integrating with external systems. By connecting nodes, you can design automated flows that handle complex tasks from start to finish.

The following table lists the available node types, their purpose, and how they integrate within workflows.

<table>
  <tr>
   <td><strong>Node</strong>
   </td>
   <td><strong>Description</strong>
   </td>
   <td><strong>How it fits in the workflow</strong>
   </td>
  </tr>
  <tr>
   <td><strong><a href="https://docs.kore.ai/agent-platform/ai-agents/tools/tool-flows/manage-flow-nodes/#add-nodes">Start Node</a></strong>
   </td>
   <td>Entry point of a workflow.
   </td>
   <td>Placed at the beginning of every flow to initiate execution.
   </td>
  </tr>
  <tr>
   <td colspan="3" ><strong>AI Nodes</strong>
   </td>
  </tr>
  <tr>
   <td><strong><a href="https://docs.kore.ai/agent-platform/ai-agents/tools/tool-flows/types-of-nodes/text-to-text-node/">Text to Text Node</a></strong>
   </td>
   <td>Processes text inputs to generate text outputs using AI models.
   </td>
   <td>Use for content generation, summarization, translation, or text transformations.
   </td>
  </tr>
  <tr>
   <td><strong><a href="https://docs.kore.ai/agent-platform/ai-agents/tools/tool-flows/types-of-nodes/text-to-image-node/">Text to Image Node</a></strong>
   </td>
   <td>Generates images from text prompts using AI image generation models.
   </td>
   <td>Use to create visuals dynamically from text descriptions for creative or content-related use cases.
   </td>
  </tr>
  <tr>
   <td><strong><a href="https://docs.kore.ai/agent-platform/ai-agents/tools/tool-flows/types-of-nodes/audio-to-text-node/">Audio to Text Node</a></strong>
   </td>
   <td>Converts audio inputs into text using speech recognition.
   </td>
   <td>Use for transcription, voice command processing, or analyzing spoken content.
   </td>
  </tr>
  <tr>
   <td><strong><a href="https://docs.kore.ai/agent-platform/ai-agents/tools/tool-flows/types-of-nodes/image-to-text-node/">Image to Text Node</a></strong>
   </td>
   <td>Extracts text from images using optical character recognition (OCR).
   </td>
   <td>Use for document processing, data extraction from scanned images, or reading visual content.
   </td>
  </tr>
  <tr>
   <td colspan="3" ><strong>Integration & API Nodes</strong>
   </td>
  </tr>
  <tr>
   <td><strong><a href="https://docs.kore.ai/agent-platform/ai-agents/tools/tool-flows/types-of-nodes/integration-node/">Integration Node</a></strong>
   </td>
   <td>Connects workflow to external applications or platforms.
   </td>
   <td>Use to connect to external systems via pre-built connectors without custom code.
   </td>
  </tr>
  <tr>
   <td><strong><a href="https://docs.kore.ai/agent-platform/ai-agents/tools/tool-flows/types-of-nodes/api-node/">API Node</a></strong>
   </td>
   <td>Calls external APIs for data exchange or triggering external services.
   </td>
   <td>Use to connect to external systems via REST or SOAP API calls for real-time data retrieval or actions.
   </td>
  </tr>
  <tr>
   <td colspan="3" ><strong>Logic & Processing Nodes</strong>
   </td>
  </tr>
  <tr>
   <td><strong><a href="https://docs.kore.ai/agent-platform/ai-agents/tools/tool-flows/types-of-nodes/function-node/">Function Node</a></strong>
   </td>
   <td>Runs custom JavaScript or Python logic.
   </td>
   <td>Use for dynamic computations, data transformations, or implementing custom business logic.
   </td>
  </tr>
  <tr>
   <td><strong><a href="https://docs.kore.ai/agent-platform/ai-agents/tools/tool-flows/types-of-nodes/condition-node/">Condition Node</a></strong>
   </td>
   <td>Directs flow based on logical rules (IF / ELSE IF / ELSE).
   </td>
   <td>Use to enable branching logic and dynamically route workflows based on variables, context, or node outputs.
   </td>
  </tr>
  <tr>
   <td><strong><a href="https://docs.kore.ai/agent-platform/ai-agents/tools/tool-flows/types-of-nodes/loop-node/">Loop Node</a></strong>
   </td>
   <td>Repeats a set of steps for each item in a list.
   </td>
   <td>Use for batch processing, iterative API calls, or generating outputs for multiple items.
   </td>
  </tr>
  <tr>
   <td colspan="3" ><strong>Data & Knowledge Nodes</strong>
   </td>
  </tr>
  <tr>
   <td><strong><a href="https://docs.kore.ai/agent-platform/ai-agents/tools/tool-flows/types-of-nodes/docsearch-node/">DocSearch Node</a></strong>
   </td>
   <td>Retrieves information using a connected Search AI app (RAG-powered).
   </td>
   <td>Use to pull relevant documents or knowledge base content for context-aware responses.
   </td>
  </tr>
  <tr>
   <td colspan="3" ><strong>Workflow Control Nodes</strong>
   </td>
  </tr>
  <tr>
   <td><strong><a href="https://docs.kore.ai/agent-platform/ai-agents/tools/tool-flows/types-of-nodes/human-node/">Human Node</a></strong>
   </td>
   <td>Pauses workflow execution for human input or approval.
   </td>
   <td>Use for approval workflows, quality assurance checks, or compliance review steps.
   </td>
  </tr>
  <tr>
   <td><strong><a href="https://docs.kore.ai/agent-platform/ai-agents/tools/tool-flows/types-of-nodes/end-node/">End Node</a></strong>
   </td>
   <td>Marks the completion of a workflow.
   </td>
   <td>Place at the end of every flow to signal successful completion.
   </td>
  </tr>
</table>


 

## Nodes Overview

Nodes are the building blocks of a workflow. Each node performs a specific action—processing data, making decisions, or integrating with external systems. By connecting nodes, you can design automated flows that handle complex tasks from start to finish.

### Start Node

* [Start Node](../tools/tool-flows/types-of-nodes/text-to-text-node.md): It is the entry point of every workflow. Place this node at the beginning of a flow to initiate execution.

### AI Nodes

These nodes leverage AI models to process and transform different types of content.

* [Text to Text Node](../tools/tool-flows/types-of-nodes/text-to-text-node.md): It processes text inputs to generate text outputs using AI models. Use for content generation, summarization, translation, or text transformations.

* [Text to Image Node](../tools/tool-flows/types-of-nodes/text-to-image-node.md): It generates images from text prompts using AI image generation models. Use to create visuals dynamically from text descriptions for creative or content-related use cases.

* [Audio to Text Node](../tools/tool-flows/types-of-nodes/audio-to-text-node.md): It converts audio inputs into text using speech recognition. Use for transcription, voice command processing, or analyzing spoken content.

* [Image to Text Node](../tools/tool-flows/types-of-nodes/image-to-text-node.md): It extracts text from images using optical character recognition (OCR). Use for document processing, data extraction from scanned images, or reading visual content.

### Integration & API Nodes

These nodes connect your workflow to external systems and services.

* [Integration Node](../tools/tool-flows/types-of-nodes/integration-node.md): It connects workflow to external applications or platforms using pre-built connectors without custom code.

* [API Node](../tools/tool-flows/types-of-nodes/api-node.md): It can call external APIs for data exchange or triggering external services. Use REST or SOAP API calls for real-time data retrieval or actions.

### Logic & Processing Nodes

These nodes handle decision-making, custom logic, and iterative processing within your workflow.

* [Function Node](../tools/tool-flows/types-of-nodes/function-node.md): It can run custom JavaScript or Python logic. Use for dynamic computations, data transformations, or implementing custom business logic.

* [Condition Node](../tools/tool-flows/types-of-nodes/condition-node.md): It directs flow based on logical rules (IF / ELSE IF / ELSE). Use to enable branching logic and dynamically route workflows based on variables, context, or node outputs.

* [Loop Node](../tools/tool-flows/types-of-nodes/loop-node.md): Repeats a set of steps for each item in a list. Use for batch processing, iterative API calls, or generating outputs for multiple items.

### Data & Knowledge Nodes

These nodes retrieve information from knowledge bases and document repositories.

* [DocSearch Node](../tools/tool-flows/types-of-nodes/docsearch-node.md): Retrieves information using a connected Search AI app (RAG-powered). Use to pull relevant documents or knowledge base content for context-aware responses.

### Workflow Control Nodes

These nodes manage workflow execution, including human intervention and completion.

* [Human Node](../tools/tool-flows/types-of-nodes/human-node.md): Pauses workflow execution for human input or approval. Use for approval workflows, quality assurance checks, or compliance review steps.

* [End Node](../tools/tool-flows/types-of-nodes/end-node.md): Marks the completion of a workflow. Place at the end of every flow to signal successful completion.
