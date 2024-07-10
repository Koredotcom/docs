# Lead Capture in Salesforce CRM Using a VA

## Overview

You can automate the capture of a lead’s details on voice or chat channels by Installing the Lead Capture for Salesforce CRM. 

With the '**Lead Capture**' dialog template, you can collect user fields in a conversational format and automate the creation of leads in Salesforce.

## Getting Started

The XO Platform makes it simple to Install the Lead Capture template for Salesforce CRM to automate the capture of a lead’s details on voice or chat channels. Once the fields are captured, the system automatically creates a lead object in Salesforce

The entire process consists of the following steps:

Step 1: Link your Salesforce account

Step 2: Install the Lead Capture for Salesforce CRM

Step 3: Train and Test the Dialog Tasks

### Step 1: Link your Salesforce CRM Account

1. Click **Marketplace** in the left navigation and select **Salesforce CRM** Integration. The Salesforce CRM Integration dialog box is displayed. 
<img src="../image/marketplace_salesforce.png" alt="marketplace" title="marketplace" style="border: 1px solid gray; zoom:70%;">

2. Click **Install** at the top-right corner. The Instructions tab is highlighted. 

3. Switch to the **Authenticate and Install** tab - click the tab. The Authorization Details section is displayed.
4. **Authorization Type** – Select the **Pre-authorize the Integration** option, and then select the **_OAuth_** option. 
<img src="../image/authorization.png" alt="authorization" title="authorization" style="border: 1px solid gray; zoom:70%;">
 
**System Authorization**

Pre-authorize Salesforce CRM integration with the necessary authorization credentials to obtain the token to access external services.

 * Select **System** to enable the Kore.ai’s preconfigured Salesforce app and click **Authorize**.  
 <img src="../image/system_authorise.png" alt="authorization" title="authorization" style="border: 1px solid gray; zoom:70%;">  
 

  * Once you click **Authorize**, you are redirected to “login.salesfore.com”
  * Enter your developer account credentials to successfully connect with your Salesforce Account
  * Click the **Allow Access** button to use Kore.ai’s app to fetch the access token to complete the authorization.

**Custom Authorization**

Create your own custom authorization profile to obtain an access token and use it to complete integration without using Kore.ai’s Salesforce app for authorization.

* Select the **Custom** to enable the custom authorization profile.
* Click the **Select Authorization** drop-down and select the **Create New** option. 


<img src="../image/custom_authorize.png" alt="authorization" title="authorization" style="border: 1px solid gray; zoom:70%;">

* Select the type of authorization mechanism. For example, select the **OAuth v2** option. To create custom OAuth profiles, see [Setting Up Authorization Using OAuth v2](https://docsinternal-kore.github.io/docs/xo/app-settings/dev-tools/bot-authorization/setting-up-authorization-using-oauth-v2).  
<img src="../images/OauthV2.png" alt="authorization" title="authorization" style="border: 1px solid gray; zoom:70%;">  

* Enter the following authentication credentials for the OAuth v2 mechanism:
    * Call back URL
    * Identity Provider Name
    * Client ID
    * Client Secret
    * Authorization URL
    * Token Request URL
    * Scope
    * Refresh Token URL

<p id="gdcalert5" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image5.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert6">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image5.png "image_tooltip")

* Click **Save Auth** to save Authorization Profile
* Select the new **Authorization Profile,** which you created to enable integration
* Click **Authorize**. You are navigated to “login.salesforce.com”. 

<img src="../image/salesforce_authorise.png" alt="authorization" title="authorization" style="border: 1px solid gray; zoom:70%;">

* Enter login credentials to successfully connect with your Salesforce Account.
* Once the authorization is successful, you will see a success message.
* Click **Proceed**. When you configure the action for the first time, the **Integration Installed Successfully** pop-up is displayed. 

<img src="../images/installation_installed_successfully.png" alt="successfull-message" title="successfull-message" style="border: 1px solid gray; zoom:70%;">

### Step 2: Install the Lead Capture Template for Salesforce CRM

1. Go to the **Marketplace** and select **Lead Capture** for Salesforce CRM Dialog Template**. 
**
<img src="../images/marketplace_leadcapture.png" alt="marketplace_leadcapture" title="marketplace_leadcapture" style="border: 1px solid gray; zoom:70%;">

2. The** Lead Capture** installation dialog box is displayed. Click **Install** to begin the installation.  
<img src="../images/lead_capture.png" alt="leadcapture" title="leadcapture" style="border: 1px solid gray; zoom:70%;">

3. Enter the following details in the Lead Capture dialog task.
    1. **Name:** Name of the dialog.
    2. **Description:** Description of the dialog.
    3. **Utterances:** Create utterances in all ways you expect customers to articulate a request, which will trigger the dialog.
    4. **Channel Experiences:** Define the experiences you want for this dialog for the channel types.
    5. **Lead Capture Setup:** Define the Lead Capture setup and the information to be captured.  
    <img src="../images/install_template.png" alt="install_template" title="install_template" style="border: 1px solid gray; zoom:70%;">


4. Click **Finish**.
5. Once the template is installed, a dialog task for it is auto-created. You can find it in the list of dialogs in **Automation AI** > **Virtual Assistant** > **Use Cases** > **Dialogs**.  
<img src="../images/dialogs.png" alt="dialogs" title="dialogs" style="border: 1px solid gray; zoom:70%;"> 

### Step 3: Train the VA for the Dialog Task and Test It

1. Click the **Test** icon.
2. Choose a conversation type (Voice Conversation or Chat Conversation) to test the flow.
3. Click **Train** to complete the untrained utterances.
4. Follow the prompts in the App console to create a lead, as shown below. 

<img src="../images/app_console.png" alt="app-console" title="app-console" style="border: 1px solid gray; zoom:70%;">

5. Enter all lead details when prompted by the VA, as shown below: 


<p id="gdcalert13" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image13.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert14">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image13.png "image_tooltip")

6. The new lead is created in Salesforce CRM. To view the lead, log in to **Salesforce**,  go to **App Launcher** > **Marketing CRM Classic** > **Leads**.

<img src="../images/salesforce.png" alt="salesforce" title="salesforce" style="border: 1px solid gray; zoom:70%;">


7.  [Publish your App (VA)](../../deploy/publishing-bot.md) so the end users can use this capability.
