# Agent Status Details

To show the self-reported status (available, busy, away, etc.) in the given time interval.

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
   <td><code>https://{{host}}/agentassist/api/public/analytics/account/</code>
<code>{{accountId}}/agentstatusdetails</code>
   </td>
  </tr>
  <tr>
   <td>Content-Type
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
   <td>SmartAssist Analytics
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
   <td>The Environment URL. For example, https://smartassist.kore.ai
   </td>
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td>accountId
   </td>
   <td>The Account Id.
   </td>
   <td>String, Required
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
   <td><strong>TYPE</strong>
   </td>
  </tr>
  <tr>
   <td>limit
   </td>
   <td>Default is 50, Maximum is 50 – applied to the agent counts
   </td>
   <td>Number, Optional
   </td>
  </tr>
  <tr>
   <td>offset
   </td>
   <td>Default is 0.
   </td>
   <td>Number, Optional
   </td>
  </tr>
</table>

## Sample Request

```
curl --location --request POST 'https://staging-smartassist.kore.ai/agentassist/api/public/analytics/account/63f07d26f04465685df43234/agentstatusdetails?limit=8&offset=0' \
--header 'auth: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwiYXBwSWQiOiJjcy1iMDIzM2M2Ny0zMjJlLTVkMWEtOWZiNy0z
NjZlN2Y1OTE1YTcifQ.d_q_yz0CKAm5w0TLbB2Rfpf_aMDPMBytThCMNiHCX5A' \
--header 'Content-Type: application/json' \
--data-raw '{
"filter":{
"dateFilter":{
"date": "2023-04-13",
"timeZoneOffSet" : -330
  }
 }
}'
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
   <td>filter
   </td>
   <td>Object with agents and date filter as the fields.
   </td>
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td>agents
   </td>
   <td>The Email Ids of the agents.
   </td>
   <td>String, Optional
   </td>
  </tr>
  <tr>
   <td>dateFilter
   </td>
   <td>Object with start date, end date, and time zone offset as the fields. It contains the following details to filter the result set.
   </td>
   <td>Number, Required
   </td>
  </tr>
  <tr>
   <td>startDate
   </td>
   <td> The start date from which the records need to be considered.
The date format  is :
<code>yyyy-mm-dd</code>
For example, <code>2022-08-25</code>
   </td>
   <td>Date, Required
   </td>
  </tr>
  <tr>
   <td>endDate
   </td>
   <td>The end date from which the records need to be considered.
The date format  is :
<code>yyyy-mm-dd</code>
For example, <code>2022-08-25</code>
   </td>
   <td>Date, Required
   </td>
  </tr>
  <tr>
   <td>timeZoneOffSet
   </td>
   <td>The time zone offset.
For example, <code>-330,630,-500</code>If a user is in US/New York then the timeZoneOffset would be 300. For the -ve numbers use the ‘-‘ sign, and for +ve numbers don’t use the sign. For timeZones east of GMT use the -ve sign , for the timeZones west of GMT don’t use any sign.
   </td>
   <td>Number, Required
   </td>
  </tr>
</table>

## Sample Response

```
{
   "hasMore": false,
   "limit": 3,
   "offset": 2,
   "data": [
       {
           "userId": "u-388b2b2a-264d-511d-918e-f746e5e1xxxx",
           "firstName": "Gau",
           "lastName": "AgentTwo",
           "email": "gauagent2@abc.com"
       },
       {
           "userId": "u-fee373f7-8685-5f9b-b359-1e890ccdxxxx",
           "firstName": "gau",
           "lastName": "AgentOne",
           "email": "gauagent1@gmail.com"
       },
       {
           "userId": "u-fdc72ca0-a35d-57ff-bcb3-a33904a4xxxx",
           "firstName": "gaumur",
           "lastName": "gaumur",
           "email": "gaumur@abc.com",
            "customId": "123456"
           "status": [
               {
                   "primaryStatus": "AVAILABLE",
                   "secondaryStatus": "AVAILABLE",
                   "startTime": "2023-03-09T13:20:38",
                   "endTime": "2023-03-10T21:37:42",
                   "duration": "32:17:04"
               },
               {
                   "primaryStatus": "AVAILABLE",
                   "secondaryStatus": "AVAILABLE",
                   "startTime": "2023-03-10T21:37:42",
                   "endTime": "2023-03-10T21:38:52",
                   "duration": "00:01:10"
               },
               {
                   "primaryStatus": "BUSY",
                   "secondaryStatus": "BUSY",
                   "startTime": "2023-03-10T21:38:52",
                   "endTime": "2023-03-10T21:39:48",
                   "duration": "00:00:55"
               },
               {
                   "primaryStatus": "AVAILABLE",
                   "secondaryStatus": "AVAILABLE",
                   "startTime": "2023-03-10T21:40:17",
                   "endTime": "2023-03-10T21:40:28",
                   "duration": "00:00:11"
               },
               {
                   "primaryStatus": "AVAILABLE",
                   "secondaryStatus": "AVAILABLE",
                   "startTime": "2023-03-10T21:42:49",
                   "endTime": "2023-03-10T21:44:05",
                   "duration": "00:01:16"
               },
               {
                   "primaryStatus": "AVAILABLE",
                   "secondaryStatus": "AVAILABLE",
                   "startTime": "2023-03-10T21:44:48",
                   "endTime": "2023-03-10T21:45:09",
                   "duration": "00:00:21"
               },
               {
                   "primaryStatus": "AVAILABLE",
                   "secondaryStatus": "AVAILABLE",
                   "startTime": "2023-03-10T21:46:42",
                   "endTime": "2023-03-10T21:51:02",
                   "duration": "00:04:20"
               },
               {
                   "primaryStatus": "BUSY",
                   "secondaryStatus": "NBK",
                   "startTime": "2023-03-10T21:51:02",
                   "endTime": "-",
                   "duration": "-"
               }
           ]
       }
   ]
}
```