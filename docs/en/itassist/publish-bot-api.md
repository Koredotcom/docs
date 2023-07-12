---
title: Publish Bot API

permalink: en/itassist/publish-bot-api

---

# **Publish Bot API**

To initiate a publish request for a bot.

**Note**: Before calling the API, please ensure that at least one channel is enabled for the bot.


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
   <td><code>https://{{host}}/api/public/bot/{{BotID}}/publish</code>
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
See <a href="https://developer.kore.ai/docs/bots/api-guide/apis/#Generating_the_JWT_Token">How to generate the JWT Token</a>.
   </td>
  </tr>
  <tr>
   <td><strong>API Scope</strong>
   </td>
   <td>
<ul>

<li>Bot Builder: Not Applicable

<li>Admin Console: Bot Publish > Publish
</li>
</ul>
   </td>
  </tr>
</table>


 


## Path Parameters


<table>
  <tr>
   <td><strong>PARAMETER</strong>
   </td>
   <td><strong>REQUIRED</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
  </tr>
  <tr>
   <td><strong>host</strong>
   </td>
   <td>Required
   </td>
   <td>The environment URL. For example, <code>https://bots.kore.ai</code>
   </td>
  </tr>
  <tr>
   <td><strong>BotId</strong>
   </td>
   <td>Required
   </td>
   <td><em>Bot ID</em> or <em>Stream ID</em> can be accessed under <strong>General Settings </strong>on the Bot Builder.
<p>
<strong>Note</strong>: This is required only for the Bot Builder API scope of Proactive Messages.
   </td>
  </tr>
</table>


 


## Sample Request


```
curl -X POST \
  https://{{host}}/api/public/bot/{{BotID}}/publish \
  -H 'auth: YOUR_JWT_ACCESS_TOKEN' \
  -H 'content-type: application/json' \
  -d '{
	"versionComment" : "new update",
      "initiateTraining": "true"
}'
```


 


## Body Parameters


<table>
  <tr>
   <td><strong>PARAMETER</strong>
   </td>
   <td><strong>REQUIRED</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
  </tr>
  <tr>
   <td>versionComment
   </td>
   <td>Required
   </td>
   <td>Comments for your Publish request.
   </td>
  </tr>
  <tr>
   <td>initiateTraining
   </td>
   <td>Optional
   </td>
   <td>Indicates whether to trigger or skip the training process when publishing the bot: 
<ul>

<li><em>true</em>: Initiate the training.

<li><em>false</em>: Skip the training.

<p>
<strong>Note</strong>: By default, the platform automatically initiates training upon bot publishing to ensure that the bot is trained with the latest ML and KG changes. Skipping the training can result in issues in intent detection and flow execution.
</li>
</ul>
   </td>
  </tr>
</table>


 
