# Notify API

The Notify API enables developers to send interactive notifications to AI for Work users. These notifications can include customizable response options and action buttons. 
  
!!! note

    Applicable only for Bot Agents.

| Method<br>           | Post<br>                                                                                                                                               |
|----------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------|
| Endpoint<br>         | https://{{host}}/api/public/agents/{agentId}/notify<br>                                                                                                |
| Content type<br>     | application/json<br>                                                                                                                                   |
| Authorization<br>    | authorization: &lt;authToken><br><br>**Note**: The access token obtained from the Bot agent settings page will serve as the authorization token. See [Bot Agent](../custom-agents/bot-agent.md/#step-2-add-bot)  <img src="../images/Auth_Token.png" alt="AuthToken" title="AuthToken" style="border: 1px solid gray; zoom:70%;"> |
| API Scope<br>        | Notification<br>                                                                                                                                       |


## Path Parameter

| Parameter<br>    | Required/Optional<br>    | Description<br>                                                                                                                                                                                                                                                                                                         |
|------------------|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| host<br>         | Required<br>             | Environment URL, for example, https://work.kore.ai<br>                                                                                                                                                                                                                                                                  |
| agent ID<br>     | Required<br>             | This portion of the URL is a placeholder for the unique identifier of the specific agent. When making an actual API request, you must replace {agentId} with the actual ID of the agent you want to notify.<br><br> **Note**: Obtain the agent ID from the Post URL field while creating a bot agent. See [Bot Agent](../custom-agents/bot-agent.md/#step-2-add-bot) <img src="../images/Agent_ID.png" alt="AgentID" title="AgentID" style="border: 1px solid gray; zoom:70%;">   |

## Sample Request

```

curl --location --request POST 'https://work.kore.ai/api/1.1/public/agents/ag-4405269f-4510-5ae2-bcea-6d356yvsu01/notify' \
--header 'authorization: EypCddcFH6sgaJJkWj6k-Wbz6meimT09RXbTYDnYB3FA8$' \
--header 'Content-Type: application/json' \
--data-raw '{
    "to": "john.doe@kore.com",
    "message": {
        "title": "Agent Update",
        "body": "Notification description"
    },
    "category": "agent",
    "actions": [
        {
            "title": "LaptopRequest",
            "type": "postback",
            "utterance": "submit action 1",
            "payload": {
                "transactionId": "tx-qwe2cd11",
                "sessionId": "s-reryt21rt",
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
    "notify": "success"
}
```

## Key Points
* The email address of the receiver needs to be a valid AI for Work users.
* Custom payload data can be used for tracking and response handling.
* The ***to*** key in the request payload must be a valid AI for Work user email Id, and it should be singular in the initial implementation.
* ***actions*** in the request payload will be transmitted to AI for Work users as buttons for input.