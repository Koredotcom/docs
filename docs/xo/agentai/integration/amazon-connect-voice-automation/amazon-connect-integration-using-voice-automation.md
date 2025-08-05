# Amazon Connect Integration with Kore using Amazon External Voice Connector (Voice Automation)

This document outlines the steps for Kore users to integrate Kore Voice Automation with Amazon Connect, leveraging Amazon's external voice transfer capabilities. This setup enables voice transfers from Amazon Connect to a Voice Gateway and back, facilitating a seamless call experience through the Amazon Connect desktop.

## Prerequisites

* External voice transfer connectors per account with AWS Connect Instance enabled.
* A Kore voice AI Agent trained with few use cases. 

!!! note

    Amazon Connect external voice pricing is subject to change. Refer to the [Amazon Connect External Voice Pricing Changes](https://aws.amazon.com/about-aws/whats-new/2025/05/amazon-connect-external-voice-pricing-changes/){:target="_blank"} document for the latest information. 

## Setup Instructions

### **1. Enabling External Voice Transfer in Amazon Connect**

Before setting up the integration, you must enable the "External voice systems" option in your Amazon Connect instance. Refer to [Set up Amazon Connect external voice transfer to an on-premise voice system](https://docs.aws.amazon.com/connect/latest/adminguide/external-voice-transfer.html){:target="_blank"} for more information. 

* **Service Quota Increase**: Submit a **Service Quota Increase** request to Amazon Connect. This feature is enabled only after Amazon Connect approves your request. 
* **Accessing the Option**: Once approved, the "External voice systems" option becomes visible in your Amazon Connect console.  
<img src="../images/external-voice-systems-1.png" alt="external-voice-systems" title="external-voice-systems" style="border: 1px solid gray; zoom:80%;">  

### **2. Creating an External Voice Transfer Connector** 

After enabling the feature, create a connector under **Voice transfer integrations** to link Amazon Connect with your Voice Gateway.  

* **Navigate to Connector Creation**: Click the **External voice systems** option to access the connector creation screen.  
<img src="../images/specificy-connector-details-2.png" alt="specificy-connector-details" title="specificy-connector-details" style="border: 1px solid gray; zoom:80%;">  

* **Connector Configuration**:
    * **Name**: Provide any desired name for the connector.
    * **Connector destination type**: Select **audio code** from the dropdown list.
    * **Voice system type**: Select one or multiple options; it does not affect the functionality. 
    * **Encryption**: Select **Disabled**.  
    * **Logging**: Select the option(s) to view the corresponding log in Connector Logs. It is recommended to select both the options.  
* **Host and Port Details**: After creation, the connector configuration displays the IP address of the host, the protocol, and the port. This port should correspond to your Voice Gateway environment.
* The final configuration appears as shown in the following screenshot:  
<img src="../images/test-kore-connector-3.png" alt="test-kore-connector" title="free text" style="border: 1px solid gray; zoom:80%;">  

### **3. Configuring the Amazon Connect Flow**  

The next step involves modifying your Amazon Connect flow to utilize the newly created external voice connector.  

* **Add "Transfer to Phone Number" Node**: Within your Amazon Connect flow, add a "Transfer to phone number" node.  
<img src="../images/transfer-to-phone-number-node-4.png" alt="transfer-to-phone-number-node" title="transfer-to-phone-number-node" style="border: 1px solid gray; zoom:80%;">  

* **Select External Voice System**: Instead of entering a phone number, select the **External voice system** option.
* **Attach Connector**: Attach the specific connector you created in the previous step.
* **Enable "Resume flow after disconnect"**: Set this option to "Yes." This step ensures that after the call ends with the third-party system (Voice Gateway), the call is transferred back to Amazon Connect, facilitating a continuous flow and correlation between Amazon Connect and the Kore system.  
<img src="../images/destination-arn-5.png" alt="destination-arn" title="destination-arn" style="border: 1px solid gray; zoom:80%;">  

### **4. Configuring Contact Center AI (Kore Side Configuration)** 

On Kore side, specific configurations are required in Contact Center AI (CCAI) to receive and manage calls transferred from Amazon Connect.  

* **Create New Configuration**: In CCAI, create a new configuration (or use an existing one).  
* **Whitelist IP Address**: The most critical step here is to whitelist the IP address provided by Amazon Connect. This IP address is essential for allowing communication from Amazon Connect to Kore. Check with Amazon Connect documentation or Support for the details on this IP address.  
* **DID Number**: Provide the same Direct Inward Dialing (DID) number that will be used for the transfer (which was entered in the **Transfer to phone number** node in the previous step).  
<img src="../images/configure-sip-trunk-6.png" alt="configure-sip-trunk" title="configure-sip-trunk" style="border: 1px solid gray; zoom:80%;">  

* **Attach to Start Flow**: Once the configuration is complete, attach this number to the relevant Experience Flow within Kore.  
<img src="../images/start-flows-7.png" alt="start-flows" title="start-flows" style="border: 1px solid gray; zoom:80%;">   

### **End-to-End Call Flow** 

The following steps describe the call flow after this integration:  

1. A call originates in Amazon Connect by calling the Amazon Connect number.  
<img src="../images/amazon-connect-number-8.png" alt="amazon-connect-number" title="amazon-connect-number" style="border: 1px solid gray; zoom:80%;">  

    <img src="../images/call-originates-9.png" alt="call-originates" title="call-originates" style="border: 1px solid gray; zoom:80%;">  

2. The Amazon Connect flow transfers the call to Voice Gateway via the external voice connector. 
3. Kore CCAI handles the call. You can view the details of the call in the CCAI **Dashboard** > **Interactions** section.  
<img src="../images/ccai-dashboard-interaction-10.png" alt="ccai-dashboard-interaction" title="ccai-dashboard-interaction" style="border: 1px solid gray; zoom:80%;">  

4. After interaction with Kore, the call is transferred back to Amazon Connect.  
<img src="../images/transfer-back-to-amazon-11.png" alt="transfer-back-to-amazon" title="transfer-back-to-amazon" style="border: 1px solid gray; zoom:80%;">  

This setup provides a robust solution for leveraging Kore's voice automation capabilities within your Amazon Connect Contact Center environment.
