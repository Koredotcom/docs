# Create a Contact by Giving Details

To create a contact with the given stream Id.

<table>
  <tr>
   <td>Method
   </td>
   <td>POST
   </td>
  </tr>
  <tr>
   <td>Endpoint
   </td>
   <td><code>https://{host}/agentassist/api/v1/public/{{streamId}}/contacts</code>
   </td>
  </tr>
  <tr>
   <td>Content Type
   </td>
   <td><code>application/json</code>
   </td>
  </tr>
  <tr>
   <td>Authorization
   </td>
   <td><code>auth: {{JWT}}</code>
See <a href="https://docs.kore.ai/smartassist/api/api-setup/#Generating_a_JWT_token">How to generate the JWT Token.</a>
   </td>
  </tr>
  <tr>
   <td>API Scope
   </td>
   <td>Configuration
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
   <td><strong>TYPE</strong>
   </td>
  </tr>
  <tr>
   <td>host
   </td>
   <td>Environment URL, for example, https://smartassist.kore.ai
   </td>
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td>BotId
   </td>
   <td>BotId or StreamId. You can access it from the General Settings page of the bot.
   </td>
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td>accountId
   </td>
   <td>Your Account ID.
   </td>
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td>contacts
   </td>
   <td>Contact details, for example, firstName, salutation, phoneNumber, countryCode, extension.
   </td>
   <td>String, Required
   </td>
  </tr>
</table>

## Sample Request

```
curl --location --request POST \
     'https://{host}/agentassist/api/v1/public/{{streamId}}/contacts'
      --header 'auth: {jwt-code}' \
      --header 'accountId:123456789'
      --header 'Content-Type: application/json' \
[
     {
       "firstName": "John",
       "lastName": "Doe",
       "salutation": "Mr",
       "cellPhone": {
            "phoneNumber": "98765xxxxx",
            "countryCode": "+91",
            "extension": "+"
        }
     }
]
```

## Body Parameters

<table>
  <tr>
   <td><strong>PARAMETER</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
   <td><strong>TYPE</strong>
   </td>
  </tr>
  <tr>
   <td>firstName
   </td>
   <td>The first name of the contact.
   </td>
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td>lastName
   </td>
   <td>The last name of the contact.
   </td>
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td>salutation
   </td>
   <td>The salutation (Mr. or Mrs.) of the contact.
   </td>
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td>cellPhone.phoneNumber
   </td>
   <td>The phoneNumber of the contact in numeric digits without any special characters or alphabets.
   </td>
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td>cellPhone.countryCode
   </td>
   <td>The countryCode of the contact
   </td>
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td>cellPhone.extension
   </td>
   <td>The extension of the contact.
   </td>
   <td>String, Required
   </td>
  </tr>
</table>

## Sample Response

```
[
  {
    "status": "ACTIVE",
    "firstName": "John",
    "lastName": "Doe",
    "salutation": "Mr",
    "cellPhone": {
          "phoneNumber": "+9198765xxxxx",
          "countryCode": "+91",
          "extension": "+"
        },
        "createdBy":
   "u-5304b2ff-3647-53eb-9ef1-7ae63175xxxx",
        "orgId":
   "o-acccb4e7-4378-564e-9822-3f5f8bf3xxxx",
        "accountId": "635ba2bbec8cd28846c7xxxx",
        "instanceBotId":
   "st-2c7f48ca-fe7c-5778-a903-2854a94cxxxx",
        "fullName": "John Doe",
        "address": [],
        "twitterDetails": [],
        "createdAt": "2023-01-18T10:21:05.318Z",
        "updatedAt": "2023-01-18T10:21:05.318Z",
        "id": "63c7c8119187ebc8bae1xxxx"
  }
]
```