# API Node

The API Node lets you connect to external systems and retrieve data by making SOAP or REST API calls. You can configure the APIs and pass the necessary parameters to fetch the required information.

## Add and Configure an API Node

Setting up an API node in an Agent Flow involves adding the node at the appropriate location in the flow and configuring various node properties, as explained below.

Steps to add and configure the node:

1. On the **Agents** tab, click the name of the agent to which you want to add the node. The Agent Flow page is displayed. 

2. Click the **Go to flow** button for the in-development version of the flow for editing.

3. In the flow builder, click the “**+**” icon on any existing node on the canvas and select **API** from the pop-up menu. (Alternatively, you can drag the **API** node from the Assets panel onto the canvas.)

4. Click the added node to open its properties dialog box. The General Settings for the node are displayed.  
<img src="../images/api-node-general-settings.png" alt="Go to Flow Canvas" title="Go to Flow Canvas" style="border: 1px solid gray; zoom:80%;">

5. Enter or select the following information:

    * **Custom Name**: Enter an appropriate name for the node.
    * **Type**: Select the API type from the drop-down list - REST or SOAP.
    * **Integration Type**: Select the integration type for the connection—synchronous or Asynchronous—and choose the timeout duration for the integration.
        * **Synchronous**: The allowed range is 5 to 180 seconds (3 minutes). The default is 60 seconds.
        * **Asynchronous**: The allowed range is 60 seconds to 24 hours (86,400 seconds). The default is 60 seconds.

        The node will trigger a timeout error if the request is not completed within the selected time frame.

        !!! Note

            The key difference between synchronous and asynchronous integration types is how the integration processes the request and response. Synchronous integrations block the client until the response is received, while asynchronous integrations allow the client to continue working while the integration processes the request.

    * **Request Definition**: Define the details of the service request to make the call and fetch the data. Click **Define Request** and enter or select the following details in the Edit Request dialog box:  
    <img src="../images/api-node-edit-request.png" alt="Go to Flow Canvas" title="Go to Flow Canvas" style="border: 1px solid gray; zoom:80%;">
        1. Select the request type from the list - GET, PUT, POST, PATCH, or DELETE.
        2. Paste your API Endpoint URL or cURL in the text field.
        3. In the **Headers** tab, specify the details of the Key and Value pair. For example,
        Key: Content-Type
        Value: application/json
        4. The **Body** tab is displayed for all request types except GET. Select the body content type from the drop-down list:
            * application/x-www-form-urlencoded: Allows file uploads through HTTP POST requests. Add key/value pairs encoded by the platform.
            * application/json: Transmits data between servers and web applications using JSON format without processing.
            * application/xml: Sends XML payload for SOAP services via POST methods, with the option to include node values.
            * Custom: Allows sending request payload in non-standard formats, such as for handling blogs or custom variables.
        5. Click the **Test** button at the top-right corner of the dialog. The API response will appear on the **Response** tab.
        6. Click **Save** at the top-right corner of the dialog.

6. Click the **Connections** icon in the left navigation and select the **Go to Node** for both success and failure conditions.  
<img src="../images/api-node-connections.png" alt="API node Connections Properties" title="API node Connections Properties" style="border: 1px solid gray; zoom:80%;">

    1. **On Success** > **Go to Node**: After the current node is successfully executed, go to a selected node in the flow to execute next. For example, you can process the data from this node into a Function node and then use it further. In this case, select the Function node. 
    
    2. **On Failure** > **Go to Node**: If the execution of the current node fails, go to an appropriate node having a custom error message configured.

7. Finally, test the flow and fix any issues found: Click the **Run Flow** button at the top-right corner of the flow builder.


!!! note
    
    To access an API node using the context variable, use the following format: 
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
