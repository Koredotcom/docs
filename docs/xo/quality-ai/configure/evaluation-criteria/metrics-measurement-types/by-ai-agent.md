# By AI Agent Metric

The By AI Agent metric type enables you to configure evaluation metrics powered by AI agents that can understand complex requests, perform multi-step reasoning, and make autonomous decisions through natural language processing. This metric type is designed for sophisticated evaluation scenarios that require domain expertise and advanced analytical capabilities beyond standard Generative AI metrics.

## When to Use By AI Agent Metric

Use By AI Agent metric for evaluation scenarios that require:

* **Multi-step reasoning and complex analysis**: Evaluation scenarios require connecting multiple pieces of information across a conversation.

* **Domain-specific expertise**: Evaluations that need specialized knowledge in areas like compliance, technical support, or industry-specific protocols.

* **Knowledge-based verification**: Scenarios where the AI agent must search through knowledge bases, documentation, or external sources to verify factual accuracy, compliance adherence, or policy conformance against established information repositories.

* **Ground truth validation using tools**: Cases where specialized tools are required to cross-reference information against authoritative sources, validate the correctness of responses or recommendations, and ensure adherence to specific standards or protocols.

* **Comprehensive contextual understanding**: Situations where the full conversation context and nuanced understanding are critical for accurate evaluation.

* **Advanced decision-making capabilities**: Complex judgment calls that require sophisticated reasoning beyond simple pattern matching.

## AI Agent vs Gen AI Metrics Comparison

<table>
  <tr>
   <td><strong>AI Agent Metrics</strong>
   </td>
   <td><strong>Gen AI Metrics</strong>
   </td>
  </tr>
  <tr>
   <td>High - handles multi-step reasoning and domain expertise.
   </td>
   <td>Low to Medium - pattern matching and similarity detection.
   </td>
  </tr>
  <tr>
   <td>Requires external AI agent configuration and API integration.
   </td>
   <td>Built-in configuration with predefined parameters.
   </td>
  </tr>
  <tr>
   <td>Autonomous decision-making with custom logic.
   </td>
   <td>Rule-based or similarity-based evaluation.
   </td>
  </tr>
  <tr>
   <td>Nuanced compliance checks, complex quality assessments.
   </td>
   <td>Adherence verification, standard response validation.
   </td>
  </tr>
</table>

## Prerequisites

To configure By AI Agent metrics, ensure the following prerequisites are met:

* The By AI Agent metric type is in private beta.

* You have access to Kore.ai's AI Agent platform and a deployed agent.

* You have the endpoint URL and API key for your AI agent service.

* Your AI agent is configured to provide Quality AI-compatible responses. 

    !!! Note

        The By AI Agent metric type is currently in private beta. To enable this feature:
    
        * Contact Kore.ai support through the support portal.

        * Provide your workspace account ID in the request.

## Configuring By AI Agent Metric

1. Navigate to **Contact Center AI > Quality AI > Configure > Evaluation Forms> Evaluation Metrics**.

2. Click **+ New Evaluation Metric**.

3. From the **Evaluation Metrics Measurement Type** dropdown, select **By AI Agent**.   
<img src="../images/by-ai-agent-add-new-eva-metrics.png" alt="Measurement Type" title="Measurement Type" style="border: 1px solid gray; zoom:70%;">

4. Enter a descriptive **Name** for future reference of the metrics.

5. Select the **Language** from the dropdown to provide language context for the AI agent's evaluation process.   
<img src="../images/ai-agent-lang.png" alt="Language" title="Language" style="border: 1px solid gray; zoom:70%;">

6. Enter the evaluation **Question** that defines what the AI agent should assess.

7. Configure the **AI Agent Connection**:
    1. **AI Agent Endpoint**: Enter the API endpoint URL for your external AI agent service.

    2. **API Key**: Provide the authentication key for accessing the AI agent endpoint.   
    <img src="../images/api-key-ai-agent.png" alt="AI Agent Connection" title="AI Agent Connection" style="border: 1px solid gray; zoom:70%;">

        !!! note

            For detailed instructions on retrieving your AI Agent Endpoint and API Key, see [AI Agent Endpoint Documentation](https://docs.kore.ai/agent-platform/ai-agents/agentic-apps/deployment/access-deployed-version/){:target="_blank"}.
    
8. **Test Connection**: Click the **Test Request** button to validate your configuration. The system verifies the API endpoint accessibility, authentication, and response format compatibility.

9. Click **Create** to save the new metric for AI Agent evaluation.

## Response Format

When configuring your AI Agent in the Agent Platform, you must define the response format in the **Description** field to ensure proper communication with Quality AI. This format specification tells the AI Agent how to structure its evaluation responses.

### Setting up response format

1. Navigate to your AI Agent configuration in the Agent Platform.

2. Locate the **Description** field.

3. Enter the response format specification as shown in the template below.  
<img src="../images/response-format-ai-agent.png" alt="Response Format" title="Response Format" style="border: 1px solid gray; zoom:70%;">

4. Save your configuration.

    !!! Note

        For detailed instructions on setting up an AI Agent, see the [AI Agent creation guide](../../../../../agent-platform/ai-agents/create-agent.md).

### Response Format Template

The AI Agent must return responses in the following JSON structure:

### Field descriptions

```js
{
  "messageId": "msg-{uuid-here}",
  "output": [
    {
      "type": "text",
      "content": "{
        \"source\": \"{customer|agent}\",
        \"isQualified\": \"{yes|no|NA}\",
        \"messageIds\": [
          \"{message_id_1}\",
          \"{message_id_2}\"
        ],
        \"sourceIds\": [
          \"{source_id_1}\",
          \"{source_id_2}\"
        ],
        \"msgTimestamps\": [
          \"{timestamp_1_milliseconds}\",
          \"{timestamp_2_milliseconds}\"
        ],
        \"justification\": [
          {
            \"aspect\": \"{Evaluation_Aspect_Name}\",
            \"status\": \"{Identified|Not Identified}\",
            \"justification\": \"{Detailed explanation of finding or empty string}\",
            \"message_id\": [
              \"{supporting_message_id_1}\",
              \"{supporting_message_id_2}\"
            ],
            \"timestamp\": [
              \"{supporting_timestamp_1}\",
              \"{supporting_timestamp_2}\"
            ]
          }
        ]
      }"
    }
  ]
}
```

<table>
  <tr>
   <td><strong>Field</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td><code>messageId</code>
   </td>
   <td>String
   </td>
   <td>Unique identifier for the response message.
   </td>
  </tr>
  <tr>
   <td><code>output</code>
   </td>
   <td>Array
   </td>
   <td>Contains the evaluation results.
   </td>
  </tr>
  <tr>
   <td><code>type</code>
   </td>
   <td>String
   </td>
   <td>Always set to <strong>text</strong>.
   </td>
  </tr>
  <tr>
   <td><code>content</code>
   </td>
   <td>String
   </td>
   <td>JSON string containing the evaluation details.
   </td>
  </tr>
  <tr>
   <td><code>source</code>
   </td>
   <td>String
   </td>
   <td>Indicates whether evaluation focuses on <strong>customer</strong> or <strong>agent</strong>.
   </td>
  </tr>
  <tr>
   <td><code>isQualified</code>
   </td>
   <td>String
   </td>
   <td>Overall evaluation result: <strong>yes</strong>, <strong>no</strong>, or <strong>NA</strong>.
   </td>
  </tr>
  <tr>
   <td><code>messageIds</code>
   </td>
   <td>Array
   </td>
   <td>List of message IDs that were evaluated.
   </td>
  </tr>
  <tr>
   <td><code>sourceIds</code>
   </td>
   <td>Array
   </td>
   <td>List of source IDs corresponding to the messages.
   </td>
  </tr>
  <tr>
   <td><code>msgTimestamps</code>
   </td>
   <td>Array
   </td>
   <td>Timestamps in milliseconds for evaluated messages.
   </td>
  </tr>
  <tr>
   <td><code>justification</code>
   </td>
   <td>Array
   </td>
   <td>Detailed breakdown of evaluation aspects.
   </td>
  </tr>
</table>

### Justification Object Structure

Each item in the `justification` array contains:

<table>
  <tr>
   <td><strong>Field</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td><code>aspect</code>
   </td>
   <td>String
   </td>
   <td>Name of the specific evaluation aspect.
   </td>
  </tr>
  <tr>
   <td><code>status</code>
   </td>
   <td>String
   </td>
   <td><strong>Identified</strong> or <strong>Not Identified</strong>.
   </td>
  </tr>
  <tr>
   <td><code>justification</code>
   </td>
   <td>String
   </td>
   <td>Detailed explanation or empty string if not identified.
   </td>
  </tr>
  <tr>
   <td><code>message_id</code>
   </td>
   <td>Array
   </td>
   <td>Supporting message IDs for this aspect.
   </td>
  </tr>
  <tr>
   <td><code>timestamp</code>
   </td>
   <td>Array
   </td>
   <td>Corresponding timestamps for supporting messages.
   </td>
  </tr>
</table>

### Configuration Example

When setting up your AI Agent, include this specification in the Description field:

**Response Format Requirements:**
```js
{
    "The response must be a JSON object with the following structure": [
        {
            "isQualified": "String representing overall compliance outcome (\"Yes\", \"No\", or \"Partial\")"
        },
        {
            "compliance_evaluation_details": "Array of JSON objects detailing specific compliance aspects"
        }
    ],
    "Each compliance evaluation object should include": [
        {
            "aspect": "Descriptive name of the compliance aspect (e.g., \"Data Security Measures\")"
        },
        {
            "status": "Identified or Not Identified"
        },
        {
            "justification": "Detailed explanation of findings"
        },
        {
            "supporting_evidence": "References to specific messages or timestamps"
        }
    ]
}
```

### Sample response

An example of a properly formatted response:
```js
{
  "messageId": "msg-b0a1b156-928f-4024-b337-805c193d1472",
  "output": [
    {
      "type": "text",
      "content": "{
        \"source\": \"customer\",
        \"isQualified\": \"yes\",
        \"messageIds\": [\"1\", \"9\"],
        \"sourceIds\": [\"1\", \"9\"],
        \"msgTimestamps\": [\"1746792625000\", \"1746792681000\"],
        \"justification\": [
          {
            \"aspect\": \"Agent Greetings\",
            \"status\": \"Identified\",
            \"justification\": \"The agent starts the conversation with a greeting: 'Thank you for calling Premier Banking Services. This is Michael. How may I assist you today?'\",
            \"message_id\": [\"1\"],
            \"timestamp\": [\"1746792625000\"]
          },
          {
            \"aspect\": \"Customer Satisfaction\",
            \"status\": \"Identified\",
            \"justification\": \"The customer expressed understanding and satisfaction: 'I think you've covered everything. The annual fee is $550, but with the $300 travel credit and lounge access, it seems worth it for me.'\",
            \"message_id\": [\"38\"],
            \"timestamp\": [\"1746792884000\"]
          }
        ]
      }"
    }
  ]
}
```

## Edit or Delete By AI Agent Metrics

Steps to edit or delete any existing **By AI Agent** evaluation metrics:

1. Right-click on a desired evaluation metric name under the **By AI Agent** category.   
<img src="../images/by-ai-agent-edit.png" alt="Edit Metric" title="Edit Metric" style="border: 1px solid gray; zoom:70%;">

2. Choose an option:

    * Click **Edit** to modify the selected metric details.    
    <img src="../images/by-ai-agent-eva-metrics.png" alt="Edit Metric" title="Edit Metric" style="border: 1px solid gray; zoom:70%;">

    * Click **Delete** to remove the selected metric.

3. Click **Update** to save the changes.