# Import data by accountId and orgId

To save/import data which is one of (skillsGroups, Queues, StandardResponses, Waiting Experience) by giving details with account Id and org Id.

| **Parameter**    | **Description**                                                            | **Type**      |
|--------------|------------------------------------------------------------------------|-----------|
| **Method**       | POST                                                                   |           |
| **Endpoint**     | `http://{{host}}/agentassist/api/public/analytics/{{instanceBotId}}/exportSmartAssistFunctionalities` |           |
| **Content Type** | `application/json`                                                     |           |
| **Authorization**| `auth: {{JWT}}`<br>See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token) |           |
| **API Scope**    | SmartAssist Import and Export Feature                                   |           |

## Sample Request

```
{
metaData:{
"userId": "u-ff75c048-bd2d-595c-8870-e087bdf1xxxx",
       	"type": "standardResponses",
       	"accountId": "63f0d24c13564ad73088xxxx",
       	"orgId": "o-36548691-459c-555c-a1cc-34a2517exxxx",
       	"appLanguage": ""
}
Data:[{},{}], // output of the importSmartAssistFunctionalities API is kept here. 
}
```

## Body Parameters

| **PARAMETER**         | **DESCRIPTION**                            | **TYPE**          |
|-------------------|----------------------------------------|---------------|
| Data              | The data that is to be imported.       | string, required |
| MetaData.orgId   | This field should have an orgId.       | string, required |
| MetaData.accountId | This field should have an accountId.  | string, required |
| MetaData.type     | This field should have a type.         | string, required |
| MetaData.userId   | This field should have a userId.       | string, required |

## Sample Response

The response will be a success message.