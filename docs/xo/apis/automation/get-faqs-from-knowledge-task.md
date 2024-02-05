# Get FAQs – KG

To get a list of questions and nodes under the Knowledge task.


<table>
  <tr>
   <td><strong>Method</strong>
   </td>
   <td>GET
   </td>
  </tr>
  <tr>
   <td><strong>Endpoint</strong>
   </td>
   <td><code>https://{{host}}/api/public/bot/{{botId}}/faqs?ktId=&limit=&offset=&parentId=&withallchild=&type=&language=en</code>
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

<li>Bot Builder: Manage Knowledge Graph

<li>Admin Console: Manage Knowledge Graph
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
   <td><strong>BotId</strong>
   </td>
   <td><em>Bot ID</em> or <em>Stream ID</em> can be accessed under <strong>General Settings</strong> on the Bot Builder.
   </td>
   <td>Required
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
   <td><strong>ktId</strong>
   </td>
   <td>The <em>Knowledge task ID</em> based on which the FAQs are listed.
<p>
You can retrieve the <em>ktId</em> from the request of the <em>GetFAQs</em> API call. <a href="https://community.kore.ai/t/using-getfaqs-api/1724/2">Learn more</a>.
<p>
<strong>Note:</strong> The <em>ktId</em> values are different for both in-development and published bots.
   </td>
   <td>Required
   </td>
  </tr>
  <tr>
   <td><strong>limit</strong>
   </td>
   <td>The number of records to be fetched. The default count and the maximum limit is 50.
   </td>
   <td>Optional
   </td>
  </tr>
  <tr>
   <td><strong>offset</strong>
   </td>
   <td>The number of records to be skipped. The default count is set 0.
   </td>
   <td>Optional
   </td>
  </tr>
  <tr>
   <td><strong>parentId</strong>
   </td>
   <td>The ID of the nodes in the Knowledge tasks section.
<p>
You can retrieve the <em>parentId</em> from the response of the <em>GetFAQs</em> API call. <a href="https://community.kore.ai/t/using-getfaqs-api/1724/2">Learn more</a>.
   </td>
   <td>Optional
   </td>
  </tr>
  <tr>
   <td><strong>withallchild</strong>
   </td>
   <td>Whether child nodes need to be included
   </td>
   <td>Optional
   </td>
  </tr>
  <tr>
   <td><strong>type</strong>
   </td>
   <td>Type of FAQs to be fetched.
   </td>
   <td>Optional
   </td>
  </tr>
  <tr>
   <td><strong>language</strong>
   </td>
   <td>The Bot language which is identified by the language acronym. For example, <em>en</em> for English and <em>de</em> for German. The user can set the default language of the bot.
   </td>
   <td>Required
   </td>
  </tr>
  <tr>
   <td><strong>search</strong>
   </td>
   <td>Used to search the KG using the <em>reference id</em> or <em>display name</em>.
   </td>
   <td>Optional
   </td>
  </tr>
</table>



## Sample Request


```json
curl -X GET \
  'https://{{host}}/api/public/bot/{{bot_id}}/faqs?ktId=5afxxxxxf&limit=30&offset=0&parentId=xxxxx-xxx-xxx-xxx-xxxxx&withallchild=true&type=all&language=en' \
  -H 'auth: {{YOUR_JWT_ACCESS_TOKEN}}' \
  -H 'content-type: application/json'  
```

## Body Parameters

No body parameters are passed.


## Sample Response


```json
{
    "faqs": [
        {
            "_id": "5exxxxxxxxxxxxxxxxxxxxxx",
            "subAnswers": [],
            "editLocked": false,
            "isPublished": true,
            "questionPayload": {
                "question": "What is Bank Internet Banking?",
                "tagsPayload": []
            },
            "answerPayload": [
                {
                    "_id": "mt-95xxxxxx-9xxa-5xxe-97xx-56xxxxxxxxxx",
                    "channel": "default",
                    "streamId": "st-xxxxx-xxx-xxx-xxx-xxxxx",
                    "lModBy": "u-xxxxx-xxx-xxx-xxx-xxxxx",
                    "lMod": "Fri Jan 03 2020 13:11:03 GMT+0530 (India Standard Time)",
                    "createdBy": "u-xxxxx-xxx-xxx-xxx-xxxxx",
                    "createdOn": "Fri Jan 03 2020 13:11:03 GMT+0530 (India Standard Time)",
                    "text": "Bank Internet banking is a convenient way to bank anytime, anywhere even from the comfort of your home using your PC or Tab.",
                    "type": "basic"
                }
            ],
            "knowledgeTaskId": "5axxxxxxxxxxxxxxxxxxxxxx",
            "subQuestions": [],
            "responseType": "message",
            "referenceId" :"12xxx32",
            "label" :"displayname",
            "streamId": "st-xxxxx-xxx-xxx-xxx-xxxxx",
            "parent": "pa-xxxxx-xxx-xxx-xxx-xxxxx",
            "leafterm": "yes",
            "language": "en",
            "createdBy": "u-xxxxx-xxx-xxx-xxx-xxxxx",
            "lastModifiedBy": "u-xxxxx-xxx-xxx-xxx-xxxxx",
            "createdOn": "2020-01-03T07:41:03.017Z",
            "modifiedOn": "2020-01-03T07:41:03.017Z",
            "sortId": 1578037263017,
            "botName": "BankingBot",
            "refId": "re-xxxxx-xxx-xxx-xxx-xxxxx",
            "__v": 0
        }]
}
```