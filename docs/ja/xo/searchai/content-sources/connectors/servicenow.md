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

If you are using **Basic authentication**, you can skip this step. To use OAuth 2.0 for authentication, set up an OAuth endpoint in your ServiceNow instance. Refer to[ this documentation](https://docs.servicenow.com/bundle/washingtondc-platform-security/page/administer/security/task/t_CreateEndpointforExternalClients.html) for step-by-step instructions to do the same.

## **Step 2: Configure the ServiceNow connector in Search AI**

* Select the ServiceNow connector from the list of available connectors. 
* Go to the **Authorization** tab and enter the following details:

![ServiceNow Authorization](../images/servicenow/auth-tab.png "ServiceNow Authorization")

* **Name**: Give a unique name to the connector
* **Authorization Type**: Search AI supports two types of authentication: **Basic** and **OAuth 2.0**.
* **Grant Type**: For OAuth 2.0, Search AI supports the following two Grant Types for Service Now:
  * **Authorization Code**: If you are using this grant type, enter the client ID and client secret, generated in the above step.
  * **Password Grant Type**: If you are using this grant type, enter user credentials along with the client ID and client secret, generated in the above step.

* **Host URL**: Host of your ServiceNow instance

Click the **Connect** button to initiate authorization with the application. After the connection is established, go to the **Configurations** tab and click **Sync Now** to ingest content to the application.

