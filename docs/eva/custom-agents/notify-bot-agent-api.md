# Notify API

The Notify API enables developers to send interactive notifications to AI for Work users. These notifications can include customizable response options and action buttons.

<table>
  <tr>
   <td><strong>Method</strong>
   </td>
   <td>Post
   </td>
  </tr>
  <tr>
   <td><strong>Endpoint</strong>
   </td>
   <td>https://{{host}}/api/public/agents/{agentId}/notify
   </td>
  </tr>
  <tr>
   <td><strong>Content type</strong>
   </td>
   <td>application/json
   </td>
  </tr>
  <tr>
   <td><strong>Authorization</strong>
   </td>
   <td>authorization: &lt;authToken>
<p>
<strong><em>Note</em></strong>: The value of <strong>authorization </strong>will be the access token from the Bot agent settings page.
   </td>
  </tr>
  <tr>
   <td><strong>API Scope</strong>
   </td>
   <td>Notification
   </td>
  </tr>
</table>

## Path Parameter
<table>
  <tr>
   <td>Parameter
   </td>
   <td>Required/Optional
   </td>
   <td>Description
   </td>
  </tr>
  <tr>
   <td>host
   </td>
   <td>Required
   </td>
   <td>Environment URL, for example, https://AI-for-Work.kore.ai
   </td>
  </tr>
  <tr>
   <td>agent ID
   </td>
   <td>Required
   </td>
   <td>This portion of the URL is a placeholder for the unique identifier of the specific agent.
<p>
When making an actual API request, you must replace {agentId} with the actual ID of the agent you want to notify.
   </td>
  </tr>
</table>

## Sample Request

```

curl --location --request POST 'https://{{host}}/api/1.1/public/agents/{agentId}/notify' \
--header 'authorization: eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VySWQiOiJ1LTcyODBkODUwLWIzODktNTYwYy1iYzZkLWQ5ZWQ0N2YwODc4YyIsImFjY291bnRJZCI6ImFjLWExNmI4NjAzLTRjNGQtNTdiNy1hNmUyLWRkZjUzZmVlNGVmYiIsInR5cGUiOiJwZXJzb25hbCIsImlhdCI6MTcxMzc4ODkyMX0.1yArs2BMX83EPh8a1JAvBQkxVhhSU8g2nACUuSnIRdU' \
--header 'Content-Type: application/json' \
--data-raw '{
    "to": "user@example.com",   
    "message": {
        "title": "Agent Update",
        "body": "body text"
    },
    "category": "agent",
    "icon": "https://{{host}}/kora/icons/integrations/r/32/default.png",
    "actions": [
        {
            "title": "LaptopRequest",
            "type": "postback",
            "utterance": "submit action 1",
            "payload": {
                "transactionId": "tx-qwe2qxxx",
                "sessionId": "s-rerexxxrt",
                "event": "laptopRequest"
            }
        }
    ]
}'
```

### Request Body Parameters

<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Required/Optional</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td>to
   </td>
   <td>string
   </td>
   <td>Required
   </td>
   <td>Email address of the AI for Work user (single recipient)
   </td>
  </tr>
  <tr>
   <td>message
   </td>
   <td>object
   </td>
   <td>Required
   </td>
   <td>Contains notification title and body text
   </td>
  </tr>
  <tr>
   <td>category
   </td>
   <td>string
   </td>
   <td>Required
   </td>
   <td>Category of the notification (e.g., "agent")
   </td>
  </tr>
  <tr>
   <td>icon 
   </td>
   <td>string 
   </td>
   <td>Required
   </td>
   <td>URL of the notification icon
   </td>
  </tr>
  <tr>
   <td>action
   </td>
   <td>array
   </td>
   <td>Required
   </td>
   <td>Array of interactive response buttons
   </td>
  </tr>
  <tr>
   <td>title
   </td>
   <td>string
   </td>
   <td>Required
   </td>
   <td>Notification Title
   </td>
  </tr>
  <tr>
   <td>body
   </td>
   <td>string
   </td>
   <td>Required
   </td>
   <td>Notification Message
   </td>
  </tr>
  <tr>
   <td>title
   </td>
   <td>string
   </td>
   <td>Required
   </td>
   <td>Button text
   </td>
  </tr>
  <tr>
   <td>type
   </td>
   <td>string
   </td>
   <td>Required
   </td>
   <td>Action type (e.g., "postback")
   </td>
  </tr>
  <tr>
   <td>utterance
   </td>
   <td>string
   </td>
   <td>Required
   </td>
   <td>Text to be sent when button is clicked
   </td>
  </tr>
  <tr>
   <td>payload
   </td>
   <td>object
   </td>
   <td>Required
   </td>
   <td>Custom data passed with the action
   </td>
  </tr>
</table>

## Sample Response

```
{
  "to": "user@example.com",
  "message": {
    "title": "Network Issue Troubleshooting",
    "body": "Could you please describe the network issue you're experiencing and mention which device or service it's affecting?"
  },
  "category": "agent",
  "icon": "https://{{host}}//icons/integrations/r/32/default.png",
  "actions": [
    {
      "title": "Laptop",
      "type": "postback",
      "utterance": "Provide troubleshooting steps for network issue in Laptop",
      "payload": {
        "transactionId": "tx-adaxxxxx",
        "sessionId": "s-da1313xxx",
        "event": "laptopRequest"
      }
    }
  ]
}
```

## Key Points
* The email address of the receiver needs to be a valid AI for Work users.
* Custom payload data can be used for tracking and response handling.
* The ***to*** key in the request payload must be a valid AI for Work user email Id, and it should be singular in the initial implementation.
* ***actions*** in the request payload will be transmitted to AI for Work users as buttons for input.