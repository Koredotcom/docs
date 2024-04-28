# Configure the API Node

**To configure the API node, follow these steps**:

1. Add an API node to the canvas.
2. Click the **API node** and the general properties dialog for the node is displayed on the right side of the page as shown in the following image.

    <img src="../image/configure-api-node.png" alt="Configure API Node" title="Configure API Node" style="border: 1px solid gray; zoom:80%;">

1. Enter a **Custom Name** for the node.
2. Select the API **Type** from the drop-down list.

    * **REST:** A REST API conforms to the constraints of the REST API architecture and allows interaction with RESTful web services.


    * **SOAP**: A SOAP API uses the Simple Object Access Protocol (SOAP), which is a messaging protocol for interchanging data in a decentralized and distributed environment.

1. Configure the API request under **Request Definition**. Define the GET, PUT, POST, or DELETE service request, along with the API call and parameters to pass. To create a new request, click **+ Define Request**.

    <img src="../image/define-request.png" alt="Edit Request" title="Edit Request" style="border: 1px solid gray; zoom:80%;">

    The **Edit Request** window is displayed.

    <img src="../image/edit-request.png" alt="Edit Request" title="Edit Request" style="border: 1px solid gray; zoom:80%;">

1. Select the **HTTP Method** call from the list.

    * **POST** – Sends data to the server. For example, customer information, file upload, and so forth using HTML forms.


    * **PUT** – Replaces the content of the target resource with the content sent.


    * **PATCH** – Appends the content of an existing target resource with the content sent.


    * **DELETE** – Deletes the content of an existing target resource.


    * **GET** – Returns the content of an existing target resource.

1. Paste your **API call URL** in the text field and click **Test**. It triggers the process of creating and sending an HTTP request to that URL, allowing you to interact with the corresponding API endpoint and inspect the response.

1. In the **Headers** tab, specify the details of the header for the Header Key and Value pair if required to access the specified request URL.

    For example: Key : Content-Type  Value: application/json

    You can add a new pair by typing it in the empty fields. You can delete a pair by clicking the **Delete (Bin)** icon next to it as shown in the following image.

    <img src="../image/add-headers.png" alt="Add Headers" title="Add Headers" style="border: 1px solid gray; zoom:80%;">

1. In the **Body** tab, select the body content type. You can select:

    * **application/x-www-form-urlencoded** – Also known as Multipart/Form-data, which is an encoding type that allows files to be sent through an HTTP POST request method if you want to allow a user to upload a file from a form. You can add key/value pairs that are encoded by the XO Platform.


    * **application/json** – Use JSON to transmit data between the Kore.ai servers and your VA’s web application. Any JSON is sent with the request without any processing.


    * **application/xml** – For SOAP services, pass XML payload using POST methods. You can pass entity node values as part of the XML.

    <img src="../image/add-body.png" alt="Add Body" title="Add Body" style="border: 1px solid gray; zoom:80%;">

1. Click the **Test** button to send your API request URL using the specified Auth type, HTTP headers, if defined.

    The response is displayed in the **Response** tab.

1. Click **Save** to save the test response as the sample response for this node. The request for the service node is saved and the **Define Request for &lt; Service Node Name >** dialog is closed.
2. Click the **Actions** icon and select the actions that you want the node to trigger when the API call is successful or when it fails.

    <img src="../image/actions-icon.png" alt="Actions Icon" title="Actions Icon" style="border: 1px solid gray; zoom:80%;">
    
1. Select the **Go to Node** under the **On Success** section of the API node configuration dialog. Based on the node you selected a respective new node is added to the canvas.
2. Select the **Go to Node** under the **On Failure** section of the API node configuration dialog. Based on the node you selected a respective new node is added to the canvas.