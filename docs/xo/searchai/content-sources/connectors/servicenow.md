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
   <tr>
   <td>RACL Support
   </td>
   <td>Yes.
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

### RACL Support

SearchAI offers access control for content ingested from ServiceNow Knowledgebases. Currently, **SearchAI enforces access control at the knowledge base level.**

To learn the basics of RACL in SearchAI, refer to this. 


#### **Understanding User Permissions in ServiceNow**

In ServiceNow, user access to knowledge base articles can be defined in three ways:

1. Owners of the Knowledgebase
2. Managers of the Knowledgebase
3. User Criteria with specific access permissions (Can Read and Can Contribute) \

![User criteria](./images/connectors/servicenow/racl/user-criteria.png "User criteria")
 \
 \
User Criteria in ServiceNow is a method to group users based on specific conditions. Users can be added directly or included based on conditions such as department, role, etc. \
![Individual Users](./images/connectors/servicenow/racl/users-in-user-criteria.png "Individual Users")

#### **Handling User Permissions in SearchAI**

By default, SearchAI grants access to the following:

    * **Owners **of the Knowledgebase – This list of owners will be added directly in racl field(sourceACL) in the indexed content.
    * **Managers **of the Knowledgebase – This list of managers will be added directly in racl field of the indexed content.
    * **Individual users** listed under each **User Criteria** with Can Read and Can Contribute permissions.  

![Individual Users](./images/connectors/servicenow/racl/individual-users.png "Individual Users")
 \
Each User Criteria is retrieved as a Permission Entity. The permission entity ID is added and is visible in the racl fields of the indexed content. Only users directly listed in the criteria are retrieved as part of the Permission Entity by default.  Users associated with other conditions (e.g., department or role) are not automatically included. Therefore, these users cannot access articles unless they are explicitly added to the permission entity using the Permission Entity APIs. For instance, if the owner of a knowledgebase is John@example.com and the knowledgebase can be accessed by users who fulfil a given user criteria, the indexed content will look something like this. `"sourceAcl": [`

    ```
     "25431493ff4221009b20ffffffffffe0",
     "John@example.com"
    ],
    ```



        The alphanumeric field “25431493ff4221009b20ffffffffffe0” in the indexed content refers to the Permission Entity corresponding to the user criteria for the article. 


        ` \
`If there are any identities directly added as Users inside the user criteria, those users will be automatically added to the permission entity. To grant access to all others within the user criteria, those added through other conditions, use the [Permission Entity API](https://docs.kore.ai/searchassist/public-apis/permission-entity-apis/) to associate them with the permission entity.
