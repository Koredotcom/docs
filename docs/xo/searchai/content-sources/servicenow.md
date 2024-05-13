# ServiceNow Connector

You can connect to the ServiceNow application to enable users to fetch query results using the knowledge articles managed by ServiceNow.

<span style="text-decoration:underline;">Specifications</span>


<table>
  <tr>
   <td>Type of Repository 
   </td>
   <td>Cloud
   </td>
  </tr>
  <tr>
   <td>Answer Support
   </td>
   <td>knowledge articles managed by ServiceNow.
   </td>
  </tr>
</table>


 

To configure the ServiceNow connector, follow the steps listed below.


## **Step 1: Configure an OAuth endpoint in ServiceNow**

If you are using Basic authentication, skip this step. To use OAuth 2.0 for authentication, set up an OAuth endpoint in your ServiceNow instance. Refer to[ this documentation](https://docs.servicenow.com/bundle/washingtondc-platform-security/page/administer/security/task/t_CreateEndpointforExternalClients.html) for step-by-step instructions to do the same.


## **Step 2: Configure the ServiceNow connector in Search AI**

* Select the ServiceNow connector from the list of available connectors. 
* Go to the **Authorization** tab and enter the following details:


![ServiceNow Authorization](../images/connectors/servicenow/authorization-tab.png "ServiceNow Authorization")

**Name** - Give a unique name to the connector.
**Client ID** - The auto-generated unique ID of the application.
**Client Secret**- The secret generated while configuring the OAuth.
**Host URL**- Host of your ServiceNow instance.
**Username**- Username to authenticate with the instance.
**Password** - Password to authenticate with the instance.

Click the **Connect** button to initiate authorization with the application. 
