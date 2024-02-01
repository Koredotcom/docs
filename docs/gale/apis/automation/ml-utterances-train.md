# ML Utterances Train API

To initiate the ML training for a bot.

<table>
  <tr>
   <td><strong>Method</strong>
   </td>
   <td>POST
   </td>
  </tr>
  <tr>
   <td><strong>Endpoint</strong>
   </td>
   <td><code>https://{{host}}/api/public/bot/{{BotID}}/ml/train</code>
   </td>
  </tr>
  <tr>
   <td><strong>Content Type</strong>
   </td>
   <td><code>application/json</code>
   </td>
  </tr>
  <tr>
   <td><strong>Authorization</strong>
   </td>
   <td><code>auth: {{JWT}}</code>
<p>
See <a href="../api-introduction/#generating-the-jwt-token">How to generate the JWT Token</a>.
   </td>
  </tr>
  <tr>
   <td><strong>API Scope</strong>
   </td>
   <td>
<ul>

<li>Bot Builder: Train ML

<li>Admin Console: Test and Train > Train ML
</li>
</ul>
   </td>
  </tr>
</table>

## Query Parameters


<table>
  <tr>
   <td><strong>PARAMETER</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
   <td><strong>MANDATE</strong>
   </td>
  </tr>
  <tr>
   <td><strong>host</strong>
   </td>
   <td>The environment URL. For example, <code>https://bots.kore.ai</code>
   </td>
   <td>Required
   </td>
  </tr>
  <tr>
   <td><strong>BotID</strong>
   </td>
   <td>The <strong>Bot ID</strong> or <strong>Stream ID</strong> to be accessed under <strong>General Settings</strong> on the Bot Builder.
   </td>
   <td>Required
   </td>
  </tr>
</table>

## Sample Request


```json
curl -X POST \
  https://{{host}}/api/public/bot/{{BotId}}/ml/train \
  -H 'auth: {{YOUR_JWT_ACCESS_TOKEN}}' \
```
## Body Parameters

No Body Parameters are passed.

## Sample Response


```json
[
    {
        "message": "Training Queued.",
        "Training_ID": "5dxxxxxxxxxxxxxxxxxxxxxx"
    }
]
```