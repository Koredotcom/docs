# API Node - Automate API Calls

API nodes let you connect to external systems and retrieve data by making SOAP or REST API calls. You can configure the APIs and pass the necessary parameters to fetch the required information.

## Add and Configure an API Node

Setting up an API node in a tool flow involves adding the node at the appropriate location in the flow and configuring various node properties.

Steps to add and configure the node:

1. On the **Tools** tab, click the name of the tool to which you want to add the node. The Tool Flow page is displayed. 

2. Click **Go to flow** to edit the in-development version of the flow.

3. In the flow builder, click the “**+**” icon on any existing node on the canvas and select **API** from the pop-up menu. (Alternatively, drag the **API** node from the Assets panel onto the canvas.)

4. Click the added node to open its properties dialog box. The General Settings for the node are displayed.  
<img src="./../images/api-node-general-settings.png" alt="Go to Flow Canvas" title="Go to Flow Canvas" style="border: 1px solid gray; zoom:60%;">

**General Settings**
<table>
  <tr>
   <td><strong>Field<strong> </td>
   <td><strong>Description<strong></td>
  </tr>
  <tr>
   <td>Node Name

   </td>
   <td>Enter an appropriate name for the node.

   </td>
  </tr>
  <tr>
   <td>Type

   </td>
   <td>Select the API type from the drop-down: **REST** or **SOAP**.

   </td>
  </tr>
  <tr>
   <td>Integration Type

   </td>
   <td>Select the integration type: **Synchronous** or **Asynchronous**. **Synchronous**: Waits for a response before proceeding. 



* **Synchronous Timeout:** Range: **5 to 180 seconds** (default: **60 seconds**). Triggers a timeout if the response is not received within the set time.

**Asynchronous**: Continues processing without waiting for response.



* **Asynchronous Timeout:** Range: **30 to 300 seconds** (default: **60 seconds**). 
* **No timeout**: Waits indefinitely for the response without triggering a timeout error. Useful for automating custom workflows like approvals and checks. 

**Note**: Ensure the "No timeout" setting is selected for both the API node and the tool to avoid timeout errors.

   </td>
  </tr>
  <tr>
   <td>Request Definition

   </td>
   <td>Define the service request details to make the call and fetch the data. Click **Define Request** and enter or select the following details in the Edit Request dialog box:



* Select the request type from the list.
* Paste your API Endpoint URL or cURL in the text field.
* In the **Auth** section, select the required **Auth Profile** from the list of configured profiles. Next, provide the authorization details. 
    * **Pre-authorize the Integration**: Select this option if the authorization has already been completed in advance. This is suitable for API calls that do not require the end user to authenticate or provide credentials. \
**Example**: Connecting to a service using a system-level token or client credentials that have already been authorized. In this case, the same credentials are used for all users.
    * **Allow users to authorize the integration**: Choose this option if each end user needs to dynamically authorize the integration at runtime. This is useful when user-specific credentials or tokens are required for access. **Example**: Connecting to a third-party service like Google Drive, where each user must log in and grant access to their account. This ensures personalized access and respects individual user permissions.
* In the **Headers** tab, specify the details of the Key and Value pair. For example, Key: Content-Type Value: application/json
* The **Body** tab is displayed for all request types except GET. Select the body content type from the drop-down list:
    * application/x-www-form-urlencoded: Allows file uploads through HTTP POST requests. Add key/value pairs encoded by the platform.
    * application/json: Transmits data between servers and web applications using JSON format without processing.
    * application/xml: Sends XML payload for SOAP services using POST methods, with the option to include node values.
    * Custom: Allows sending request payload in non-standard formats, such as for handling blogs or custom variables.
* Click the **Test** button at the top-right corner of the dialog. The API response is displayed on the **Response** tab.
* Click **Save** at the top-right corner of the dialog.
   </td>
  </tr>
</table>

**Connections**
Click the **Connections** icon in the left navigation and select **Go to Node** for success and failure conditions.  
<img src="./../images/api-node-connections.png" alt="API node Connections Properties" title="API node Connections Properties" style="border: 1px solid gray; zoom:80%;">

1. **On Success** > **Go to Node**: After the current node is successfully executed, go to a selected node in the flow to execute next. For example, you can process the data from this node into a Function node and then use it further. In this case, select the Function node. 
    
2. **On Failure** > **Go to Node**: If the execution of the current node fails, go to an appropriate node having a custom error message configured.

7. Finally, test the flow and fix any issues found. Click the **Run Flow** button at the top-right corner of the flow builder and follow the onscreen instructions.


!!! note
    
    Use the following syntax to access an API node using the context variable: 
    ~~~
    {{context.steps.Start.APINodeName}}
    ~~~

## API Status Codes

* 200: Request successful
* 400: Client error, cannot process request
* 401: Authentication required
* 403: Access denied
* 404: Resource not found
* 500: Unexpected server error
* 504: Gateway timeout, no timely response from the upstream server
