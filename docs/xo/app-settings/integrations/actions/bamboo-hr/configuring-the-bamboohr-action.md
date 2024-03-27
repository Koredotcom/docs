# Configuring the BambooHR Action

The XO Platform lets you easily connect the HubSpot integration to create, view, and update employees. You can also search and view time off requests, who is out and update request status using the pre-built templates. 

This document explains how to enable, authorize, configure, and install the BambooHR pre built templates.


## Authorizations Supported

The Kore.ai XO Platform supports basic authentication to allow BambooHR integration to exchange data. For more information, read the [Bot Authorization Overview](../../../../dev-tools/bot-authorization/bot-authentication){:target="_blank"} article.

The Kore.ai XO Platform supports the following authorization types for the BambooHR integration:

* **Pre-Authorize the Integration** – To make the integration process smoother for developers and customers, you can pre-authorize it by providing the necessary authorization credentials to obtain the access token. 
* **Allow Users to Authorize the Integration** – This method requires the end user to provide credentials during the conversation for authorization. This authorization process involves requesting permission for Kore.ai’s BambooHR app to access an access token at runtime. To learn more about BambooHR account types, see [BambooHR documentation](https://documentation.bamboohr.com/docs){:target="_blank"}.


## Step 1: Enable the BambooHR Action

**Prerequisites**:

Before enabling the BambooHR action, complete the following prerequisites:

* If you don’t have BambooHR account credentials, create a developer account in BambooHR and note down login credentials. Use the [BambooHR Documentation](https://documentation.bamboohr.com/docs){:target="_blank"} for more information.
* Copy the user sub domain and API key values and keep them for future use to enable the integration.

Steps to enable the BambooHR action:

1. Go to **Build > Integrations > Actions**.
2. Once you click the **Actions** menu, all integrations are shown in the **Available** region. Select the **BambooHR** action.
<img src="../images/bamboo-hr-img1.png" alt="BambooHR" title="BambooHR" style="border: 1px solid gray;zoom:50%;"/>

### Pre-authorize the Integration

**Basic Auth**

You can authorize the integration using your credentials. The developer authorization lets you authorize the integration with preconfigured Kore.ai’s app with the Basic Auth option.

Steps to authorize a BambooHR action using developer credentials:

1. Go to **Build > Integrations > Actions**.
2. Select the **BambooHR** action in the **Available Actions** region.
3. In the **Configurations** dialog, select the **Authorization** tab.
4. Enter the following details:
    * **Authorization Type** – Select the **Pre-authorize the Integration** option, and then select the **Basic Auth** option.  
    <img src="../images/bamboo-hr-img2.png" alt="Authorization Type-Basic Auth" title="Authorization Type-Basic Auth" style="border: 1px solid gray;zoom:50%;"/>
    * **API Key** – The secret API key of your BambooHR account.

5. Click **Enable**. When you configure the action for the first time, the **Integration Successful**  pop-up is displayed.  
<img src="../images/bamboo-hr-img3.png" alt="Integration Successful" title="Integration Successful" style="border: 1px solid gray;zoom:50%;"/>

**Note**: You will notice the BambooHR action is moved from _Available_ to _Configured_ region.


### Allow End User to Authorize

You can authorize the integration at a user level with their login credentials. The user authorization process involves requesting permission for Kore.ai’s BambooHR app to access an access token at runtime. You can also use the basic auth profile to let a user configure the integration at runtime.

Steps to authorize a BambooHR action at a user level:

1. Go to **Build > Integrations > Actions**.
2. Select the **BambooHR** action in the **Available Actions** region.
3. In the Configurations dialog, select the **Authorization** tab.
4. Enter the following details:
    * **Authorization Type** – Select the **Allow Users to Authorize the Integration** option, and then select the **Basic Auth** option.
        * Create your authorization profile to obtain an access token and use it to complete integration without using Kore.ai’s BambooHR app for authorization.
    * Click the **Select Authorization** drop-down and select the **Create New** option.  
    <img src="../images/bamboo-hr-img4.png" alt="Create New" title="Create New" style="border: 1px solid gray;zoom:50%;"/>
    * Select the type of authorization mechanism. For example, select the **Basic Auth** option. To create Basic Auth profiles, see [Bot Authorization Overview](../../../../dev-tools/bot-authorization/bot-authentication){:target="_blank"}.  
    <img src="../images/bamboo-hr-img5.png" alt="Auth mechanism type" title="Auth mechanism type" style="border: 1px solid gray;zoom:50%;"/>

5. Enter the following authentication credentials for the Basic Auth mechanism:
    * _Name_ – Enter the name for the Basic Auth profile.
    * Select _Yes; some tasks will have tenancy URLs, and the user must provide the URLs to successfully authenticate_.
    * _Base URL_ – Enter the base tenant URL for the BambooHR instance.
    * _Authorization Check URL_ – Enter the authorization check URL for your BambooHR instance.
    * _Description_ – Enter the description of the basic authentication profile.  
    <img src="../images/bamboo-hr-img6.png" alt="Auth credentials" title="Auth credentials" style="border: 1px solid gray;zoom:50%;"/>

6. Click **Save Auth** to save the authorization profile.
7. Select the new **Authorization Profile,** which you created to complete integration.  
<img src="../images/bamboo-hr-img7.png" alt="Select new auth profile" title="Select new auth profile" style="border: 1px solid gray;zoom:50%;"/>

8. Click **Enable**. When you configure the action for the first time, the **Integration Successful**  pop-up is displayed.


## Step 2: Install the BambooHR Action Templates

Once you have configured a BambooHR integration, you can explore and install action templates.

Steps to install action templates:

1. On the Integration Successful dialog, click the **Explore Templates** button to view the templates.  
<img src="../images/bamboo-hr-img8.png" alt="Explore templates" title="Explore templates" style="border: 1px solid gray;zoom:50%;"/>

2. In the Integration Templates dialog, click the **Install** button to begin the installation.  
<img src="../images/bamboo-hr-img9.png" alt="Begin installation" title="Begin installation" style="border: 1px solid gray;zoom:50%;"/>

3. Once the template is installed, click the **Go to Dialog** button to view the dialog task.
4. Once all templates are installed, a dialog task for each template is auto-created.  
<img src="../images/bamboo-hr-img10.png" alt="Dialog tasks created for installed templates" title="Dialog tasks created for installed templates" style="border: 1px solid gray;zoom:50%;"/>

5. You can also select the desired dialog task from the templates and click **Proceed**. For example, select the **Create an employee** task.  
<img src="../images/bamboo-hr-img11.png" alt="Select task and proceed" title="Select task and proceed" style="border: 1px solid gray;zoom:50%;"/>

6. Once you click **Proceed**, the dialog task is auto-created, and the canvas opens with all required entity nodes, service nodes, and message scripts.  
<img src="../images/bamboo-hr-img12.png" alt="Canvas for new task" title="Canvas for new task" style="border: 1px solid gray;zoom:50%;"/>