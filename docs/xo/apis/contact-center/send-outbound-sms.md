# Send Outbound SMS API

This API enables sending outbound SMS messages through the platform's generic SMS channel. The capability can be integrated into applications or services to facilitate SMS communication with customers.

## Prerequisites

* The SMS channel must be configured to send outbound SMS using this API. [Learn more](../../channels/add-sms-channel.md).
* The phone number must be attached to an experience flow. [Learn more](../../flows/create-flows.md#sms).

<table>
  <tr>
   <td>
<strong>Method</strong>
   </td>
   <td>POST
   </td>
  </tr>
  <tr>
   <td><strong>Endpoints</strong>
   </td>
   <td><code>https://{{host}}/api/public/bot/{{BotId}}/outboundsms</code>
   </td>
  </tr>
  <tr>
   <td><strong>Content-Type</strong>
   </td>
   <td><code>application/json</code>
   </td>
  </tr>
  <tr>
   <td><strong>Authorization</strong>
   </td>
   <td><code>auth: {{JWT}}</code>
<p>
See <a href="https://docs.kore.ai/xo/apis/automation/api-introduction/?h=generating+the+jwt#generating-the-jwt-token">How to generate the JWT Token.</a>
   </td>
  </tr>
  <tr>
   <td><strong>API Scope</strong>
   </td>
   <td>Outbound SMS
   </td>
  </tr>
</table>

## Path Parameters

<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Description</strong>
   </td>
   <td><strong>Type</strong>
   </td>
  </tr>
  <tr>
   <td>host
   </td>
   <td>Environment URL, for example, https://smartassist.kore.ai
   </td>
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>BotId
   </td>
   <td>BotId or StreamId. You can access it from the bot's General Settings page.
   </td>
   <td>string, required
   </td>
  </tr>
</table>

## Sample Request

```
curl --location 'https://{{host}}/api/public/bot/st-26d52ba6-7a77-56b2-be4e-a8db1da7e440/outboundsms' \
--header 'Content-Type: application/json;charset=UTF-8' \
--header 'auth: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwiYXBwSWQiOiJjcy1kYzZlY2RmZC1jYmE3LTUwNTUtYTk4My1mZmZhMTE1NWEzZjUifQ.03LljsV8Not1NMbo-3Y-pJvNWjB6J8dTciPGPx-8h4Q' \
--data '{
    "fromNo": "+16693422058",
    "toNo": "+917760336484"
}'
```

## Body Parameters

<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Description</strong>
   </td>
   <td><strong>Type</strong>
   </td>
  </tr>
  <tr>
   <td>fromNo
   </td>
   <td>The sender's phone number in E.164 format. For example, +19876543210. \
<strong>Note</strong>: This number must be attached to an Experience Flow.
   </td>
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>toNo
   </td>
   <td>The recipient's phone number in E.164 format. For example, +911234567890
   </td>
   <td>string, required
   </td>
  </tr>
</table>

## Sample Response

```
{
    "message": "Triggered the configured Experience flow to deliver message via SMS channel"
}
```