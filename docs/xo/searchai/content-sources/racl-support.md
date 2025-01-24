# RACL Support

RACL refers to the method of controlling access to specific resources or information based on the roles of individual users within the organization. Through RACL, the enterprise search application can ensure that users only see answers and access documents or information relevant to their organizational roles. This helps maintain data security, confidentiality, and compliance with organizational policies and regulations.

In the context of SearchAI, this feature allows users to access answers only from the content they can access. In other words, SearchAI displays content based on the end user’s identity. 

Each file or knowledge base article has associated user access permissions. During data ingestion, this information is fetched from the third-party application and stored in the indexed content, along with other details about the content. When a user submits a query to SearchAI, the application identifies all pertinent content that the user can access and then presents the best answer to the user from the identified content.  

Access control in SearchAI can be summarized with the following flowchart. 

![Overview](../images/connectors/racl/overview1.png "RACL overview")


The response to a query can vary depending on the end user’s identity.  Consider two users, where one can access the company’s policy documents and the other can only access the FAQs. If a policy description is requested, the first user will see the response generated from the policy document (assuming the best match to the query). On the other hand, since the second user cannot access the policy document, he will see the response generated from the FAQs (assuming the next best match). The response will differ in this case depending on the content of the two documents. 

Note: This feature is currently in beta. If you encounter any issues, please contact our support team. We will help you resolve the issue.  

## RACL Implementation in SearchAI

During the ingestion process, SearchAI imports the permissions (list of users, user groups, or user criteria- depending on the specific connector) that define who can access a particular file or article, along with the content and metadata. This access information is stored within the indexed content. Specifically, it is stored in the <code>sourceACL </code></strong>field with every chunk.

When a user submits a query to the application, results are displayed only if the user’s identity is listed in the sourceAcl field of the content from which the results are derived.

Example: Consider a Google Drive file owned by John and shared with Smitha and Abby. In this case, the sourceAcl field will contain the identities of all three users. As a result, any answers generated from this file will be accessible only to John, Smitha, and Abby.

Due to variations in the nature of permissions and scopes across different connectors, distinct sets of permissions are used to fetch this information from the content. When a specific content contains information about a group of users, a **Permission Entity** is created corresponding to it and populated in the `sourceACL `field for the content. For more specific details on how the `sourceACL `field is populated for a connector, refer to the documentation of the respective connector.

### **Step 1: Retrieving and Storing Access Information**

When RACL is enabled, the connector fetches document permissions along with its content from the source using the APIs provided by the source or the third-party application (e.g., Google Drive).  The type of permissions depends on the supported mechanism in the backend application. For specific details, refer to the documentation of the respective connector.

The permissions retrieved from the document are stored in the sourceACL field in the Answer Index.

The permissions for an item can be broadly categorized into the following types:

1. **Individual permissions**– where the content (file, knowledge article, etc.) specifies the list of user identities that can access it ( for example, user1@example.com, user2@example.com, etc.).In this case, user identities are retrieved and stored in the racl field of the indexed content as shown below. 
```json
"sourceACL": [
 "abraham.lincoln@example.com",
 "bernard.laboy@example.com"
 ],

```

2. **Group Permissions**- where the content specifies a group of users or a criteria that defines who can access it (for example, search-devteam@example.com).When the access information retrieved from the content refers to group permissions, SearchAI uses **Permission Entities**. A unique permission entity is created for each group or user criteria associated with the content. For example, if a Google Drive file is accessible to two individuals, “john.divi@kore.com”, “smitha.joseph@kore.com” and to all the members of the group “searchassisttest@gmail.com”, SearchAI will fetch the access list and store it in the indexed content. In this case, the first two entries are corresponding to the users, and the third is corresponding to the permission entity created for the group. 
![Group Permissions](../images/connectors/racl/group-permissions.png "Group Permissions")
Similarly, if a ServiceNow article gives access to two user criteria, SearchAI will create two permission entities corresponding to the user criteria. The article’s manager and owners will also be granted access. Hence, the sourceACL field will be something like this: the first two entries are for the permission entities, and the next two are for the article’s owners and managers.
```json
"sourceAcl": [
 "25431493ff4221009b20ffffffffffe0",
 "29b4e0c9873023000e3dd61e36cb0b42",
 "abraham.lincoln@example.com",
 "bernard.laboy@example.com"
]
```
Note that the content and format of the permission entity can vary between connectors.

3. **Public Access**: Where the content has no specific permissions associated with it and is accessible to all. In this case, no access control is required. The racl fields in the indexed content are set to *, as shown below. Any file indexed in this way will be accessible to all the users.
![Public Access](../images/connectors/racl/public-access.png "public-access")


#### View Permission Information

To view and verify the user permissions in the Answer Index, go to the **Browse page**, open the JSON view of a chunk corresponding to the file, and verify the contents of the sourceACL field. 

![Chunk Viewer](../images/connectors/racl/chunk-viewer.png "Chunk Viewer")

### **Step 2: Verifying user identities**

When a user sends a query, SearchAI uses the user identity information and finds answers from the accessible content only. 

The user identity is matched against the racl fields in the chunks. In case, the user belongs to a group and the group is a permission entity for the content, SearchAI needs additional information about the association of the user with the corresponding permission entity. Refer to the [Handling Group Identities](https://docs.kore.ai/searchassist/manage-content-sources/racl-overview/#Resolving_user_identity) section below.  

* **Passing User Identities in Search APIs**

    When the user interacts with SearchAI via APIs(Answer Generation API), the user must send the identity information along with other fields in the request object. The user cannot access restricted content unless the identity information is passed.


    SearchAI allows passing user identity through both the request header as well as the request body in the API. The system admin configures this. Contact your system admin to learn about the variable name and format for passing the user identity information in the search APIs. 


    For instance, if the user identity information is mapped to a field named ‘useremail’ sent as part of Request Headers, invoke theadvancedSearch API accordingly. 


    ```
    curl --location --request POST 'https://my-xo.kore.ai/api/public/stream/st-670f1a12-9xxxxxx5c3f/advancedSearch?useremail=myemail@example.com' \
    --header 'Content-Type: application/json' \
    --header 'integration-service: general' \
    --header 'service-host: https://solutions-pilot.kore.ai/api/1.1/public/tables/' \
    --header 'datatable: pushnotificationstable-dev' \
    --header 'Auth: eyJhbGciOiJIUzxxxxxxxxxxxxxxxxxxxxxxZ9GbULGdQaPQ' \
    --data-raw '{
      "query":"AI regulations"
    }'
    ```


* **Passing User Identities from SDK**

    When using an SDK to perform a search using the SearchAI application, you can embed the user identity information into the SDK code so that the application can identify the user and perform access checks as needed. 



#### **Resolving user identity**

When a user group or user criteria is used to define a file’s access list, the indexed content contains a Permission Entity corresponding to the user group. In this case, SearchAI needs additional information to resolve user identities. For example, if a file is accessible only to employees in the HR department, the permission entity generated for the file will reflect departmental access and will not have information about the individual users associated with the group. 

In such a case, SearchAI needs additional information to determine the association between the users and the groups. This can be done with the help of Permission Entity APIs, which can be used to add or remove users from a group. Learn more about [Permission Entity APIs here.](../../apis/searchai/permission-entity-apis.md) 

## Set up 

RACL is currently supported for content ingested from connectors only. To enable RACL, go to the **Permissions and Security** tab under the corresponding connector configuration and select the **Permission Aware** option as shown below.

![Set Up](images/connectors/racl/set-up.png "Set Up")

This enables SearchAI to read the permissions associated with the content for different users in the third-party application. 

When RACL is enabled, i.e., the access is changed from Public Access to Permission Aware access, initiate the synchronization of content manually from the corresponding connector. This allows the connector to fetch access information for the ingested content. If a sync with the connector is scheduled in the future, updated permissions will apply after the next sync activity.

When the access is changed from Permission Aware Access to Public Access, the connector automatically disables the RACL feature and makes the content publicly available. Sync operation is not required in this case.

