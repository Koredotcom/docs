### Structured Output Example

**Enterprise Feedback Summarization**

**Example Request:**

```
"response_format": {
  "required": ["sentiment", "summary", "action_recommended"],
  "properties": {
    "sentiment": {
      "type": "string",
      "enum": ["Positive", "Neutral", "Negative"],
      "description": "Overall sentiment of the customer feedback."
    },
    "summary": {
      "type": "string",
      "description": "A concise summary of the feedback content."
    },
    "action_recommended": {
      "type": "string",
      "description": "Suggested next step based on the feedback."
    }
  }
}
```

**Example Response:**

```
{
  "sentiment": "Negative",
  "summary": "Customer reported frequent login failures after the latest update.",
  "action_recommended": "Escalate to Engineering for investigation."
}
