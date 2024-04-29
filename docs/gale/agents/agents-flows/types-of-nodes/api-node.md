# API Node

This node enables you to initiate requests via SOAP or REST API calls, facilitating connections to third-party systems housing enterprise data. By defining a service request, which involves configuring APIs and passing parameters, you can retrieve information or perform queries from an external system.

## Add a New API Node

**To add an API node, follow these steps**:

1. Open the required agent from the list of agents to create the flow.
2. Click **Agent flow** from the left navigation bar. The **Agent flow** page is displayed.
3. Click **Go to flow** to open the flow builder page.

    <img src="../images/go-to-flow-canvas.png" alt="Go to Flow Canvas" title="Go to Flow Canvas" style="border: 1px solid gray; zoom:80%;">

    The **Agents Flow** canvas is displayed, and you can start creating a new flow.

1. You can add a new node in 2 ways:

    * Click the down arrow corresponding to the node from the **Assets** section from the left navigation bar of the **Agents** page and then click **+New API**.

        Or

    * Click **API** from the bottom bar of the **Agents** page.

    <img src="../images/add-a-new-api-node.png" alt="Add a New API Node" title="Add a New API Node" style="border: 1px solid gray; zoom:80%;">


The API node is created on the canvas, and you can now define the node's properties by clicking on the node. You can drag and move a node to any location on the canvas.


!!! note

    The start node is displayed by default on the flow builder.

## Configure the API Node

**To configure the API node, follow these steps**:

1. Add an API node to the canvas.
2. Click the **API node** and the general properties dialog for the node is displayed on the right side of the page as shown in the following image.

    <img src="../images/configure-api-node.png" alt="Configure API Node" title="Configure API Node" style="border: 1px solid gray; zoom:80%;">

1. Enter a **Custom Name** for the node.
2. Select the API **Type** from the drop-down list.

    * **REST:** A REST API conforms to the constraints of the REST API architecture and allows interaction with RESTful web services.


    * **SOAP**: A SOAP API uses the Simple Object Access Protocol (SOAP), which is a messaging protocol for interchanging data in a decentralized and distributed environment.

1. Configure the API request under **Request Definition**. Define the GET, PUT, POST, or DELETE service request, along with the API call and parameters to pass. To create a new request, click **+ Define Request**.

    <img src="../images/define-request.png" alt="Define Request" title="Define Request" style="border: 1px solid gray; zoom:60%;">

    The **Edit Request** window is displayed.

    <img src="../images/edit-request.png" alt="Edit Request" title="Edit Request" style="border: 1px solid gray; zoom:80%;">

1. Select the **HTTP Method** call from the list.

    * **POST** – Sends data to the server. For example, customer information, file upload, and so forth using HTML forms.


    * **PUT** – Replaces the content of the target resource with the content sent.


    * **PATCH** – Appends the content of an existing target resource with the content sent.


    * **DELETE** – Deletes the content of an existing target resource.


    * **GET** – Returns the content of an existing target resource.

1. Paste your **API call URL** in the text field and click **Test**. It triggers the process of creating and sending an HTTP request to that URL, allowing you to interact with the corresponding API endpoint and inspect the response.

1. In the **Headers** tab, specify the details of the header for the Header Key and Value pair if required to access the specified request URL.

    **Syntax**: 
    
    Key : Content-Type  
    Value: application/json

    You can add a new pair by typing it in the empty fields. You can delete a pair by clicking the **Delete (Bin)** icon next to it as shown in the following image.

    <img src="../images/add-headers.png" alt="Add Headers" title="Add Headers" style="border: 1px solid gray; zoom:80%;">

1. In the **Body** tab, select the body content type. You can select:

    * **application/x-www-form-urlencoded** – Also known as Multipart/Form-data, which is an encoding type that allows files to be sent through an HTTP POST request method if you want to allow a user to upload a file from a form. You can add key/value pairs that are encoded by the XO Platform.


    * **application/json** – Use JSON to transmit data between the Kore.ai servers and your VA’s web application. Any JSON is sent with the request without any processing.


    * **application/xml** – For SOAP services, pass XML payload using POST methods. You can pass entity node values as part of the XML.

    <img src="../images/add-body.png" alt="Add Body" title="Add Body" style="border: 1px solid gray; zoom:80%;">

1. Click the **Test** button to send your API request URL using the specified Auth type, HTTP headers, if defined.

    The response is displayed in the **Response** tab.

1. Click **Save** to save the test response as the sample response for this node. The request for the service node is saved and the **Define Request for &lt; Service Node Name >** dialog is closed.
2. Click the **Actions** icon and select the actions that you want the node to trigger when the API call is successful or when it fails.

    <img src="../images/actions-icon.png" alt="Actions Icon" title="Actions Icon" style="border: 1px solid gray; zoom:80%;">
    

## Status Codes

**Errors**

* 400 Bad Request: The server cannot process the request due to a client error (e.g., malformed request syntax, invalid parameters).
* 401 Unauthorized: The client must authenticate itself to get the requested response.
* 403 Forbidden: The client does not have permission to access the requested resource.
* 404 Not Found: The server cannot find the requested resource. 
* 500 Internal Server Error: The server encountered an unexpected condition that prevented it from fulfilling the request.
* 504 Gateway Timeout: The server, acting as a gateway or proxy, did not receive a timely response from an upstream server it needed to access in order to complete the request. 
* Status code 200:  It means that the request made was successful.

**Connection**:

* **On Success**: On successful execution of the current node this connection can be linked with another node such as Gen AI node, Function node, Condition node, API node, or an End node.
* **On Failure**: On failure in execution of the current node this connection should be linked with an End node to display the custom error message from the API node.