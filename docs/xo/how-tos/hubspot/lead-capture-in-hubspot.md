# Lead Capture in Hubspot Using a VA


## Overview

You can automate the capture of a lead’s details on voice or chat channels by Installing the Lead Capture for Hubspot CRM. 

With the '**Lead Capture**' dialog template, you can collect user fields in a conversational format and automate the creation of leads in Hubspot.


## Getting Started

The XO Platform makes it simple to Install the Lead Capture template for Hubspot CRM, which automates the capture of a lead’s details on voice or chat channels. Once the fields are captured, the system automatically creates a lead object in Hubspot.

The entire process consists of the following steps:

Step 1: Link your Hubspot account

Step 2: Install the Lead Capture for Hubspot CRM

Step 3 : Train and Test the Dialog Tasks


### Step 1: Link your Hubspot Account


1. Click **Marketplace** in the left navigation and select **Hubspot** Integration. The Hubspot Integration dialog box is displayed.  
<img src="../images/salesforce.png" alt="salesforce" title="salesforce" style="border: 1px solid gray; zoom:70%;">

2. Click **Install** at the top-right corner. The Instructions tab is highlighted. 

3. Switch to the **Authenticate and Install** tab - click the tab. The Authorization Details section is displayed.
4. **Authorization Type** – Select the **Pre-authorize the Integration** option, and then select the **_OAuth_** option. 

<p id="gdcalert2" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image2.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert3">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image2.png "image_tooltip")
 
**System Authorization**

Pre-authorize Hubspot integration with the necessary authorization credentials to obtain the token to access external services.

* Select **System** to enable the Kore.ai’s preconfigured Hubspot app and click **Authorize**.


<p id="gdcalert3" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image3.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert4">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image3.png "image_tooltip")
 

 * Once you click **Authorize**, you are redirected to the Hubspot login page.
 * Enter your developer account credentials to successfully connect with your Hubspot Account.

**Custom Authorization**


Create your own custom authorization profile to obtain an access token and use it to complete integration without using Kore.ai’s Hubspot app for authorization.



* Select the **Custom** to enable the custom authorization profile.
* Click the **Select Authorization** drop-down and select the **Create New** option. 


<p id="gdcalert4" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image4.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert5">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image4.png "image_tooltip")

* Select the type of authorization mechanism. For example, select the **OAuth v2** option. To create custom OAuth profiles, see [Setting Up Authorization Using OAuth v2](https://docsinternal-kore.github.io/docs/xo/app-settings/dev-tools/bot-authorization/setting-up-authorization-using-oauth-v2).


<p id="gdcalert5" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image5.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert6">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image5.png "image_tooltip")

* Enter the following authentication credentials for the OAuth v2 mechanism:
    * Call back URL
    * Identity Provider Name
    * Client ID
    * Client Secret Key
    * Authorization URL
    * Token Request URL
    * Scope
    * Refresh Token URL



<p id="gdcalert6" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image6.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert7">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image6.png "image_tooltip")




* Click **Save Auth** to save Authorization Profile
* Select the new **Authorization Profile,** which you created to enable integration.
* Click **Authorize**. You are navigated to “app.hubspot.com”. 


<p id="gdcalert7" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image7.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert8">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image7.png "image_tooltip")

* Enter login credentials to successfully connect with your Hubspot Account.
* Once the authorization is successful, you will see a success message.
* Click **Proceed**. When you configure the action for the first time, the **Integration Installed Successfully** pop-up is displayed.


### Step 2: Install the Lead Capture Template for Hubspot CRM



1. Go to the **Marketplace** and select **Lead Capture** for Hubspot CRM Dialog Template. 


<p id="gdcalert8" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image8.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert9">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image8.png "image_tooltip")

2. The **Lead Capture** installation dialog box is displayed. Click **Install** to begin the installation. 


<p id="gdcalert9" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image9.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert10">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image9.png "image_tooltip")
 
3. Enter the following details in the Lead Capture dialog task.
    1. **Name:** Name of the dialog.
    2. **Description:** Description of the dialog.
    3. **Utterances:** Create utterances in all ways you expect customers to articulate a request, which will trigger the dialog.
    4. **Channel Experiences:** Define the experiences you want for this dialog for the channel types.
    5. **Lead Capture Setup:** Define the Lead Capture setup and the information to be captured.

        

<p id="gdcalert10" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image10.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert11">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image10.png "image_tooltip")


4. Click **Finish**.
5. Once the template is installed, a dialog task is auto-created. You can find it in the list of dialogs in **Automation AI** > **Virtual Assistant** > **Use Cases** > **Dialogs**.


<p id="gdcalert11" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image11.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert12">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image11.png "image_tooltip")
 



### Step 3: Train the VA for the Dialog Task and Test it



1. Click the **Test** icon.
2. Choose a conversation type (Voice Conversation or Chat Conversation) to test the flow.
3. Click **Train** to complete the untrained utterances.
4. Follow the prompts in the App console to create a lead, as shown below.


<p id="gdcalert12" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image12.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert13">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image12.png "image_tooltip")

5. Enter all lead details when prompted by the VA, as shown below:


<p id="gdcalert13" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image13.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert14">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image13.png "image_tooltip")

6. The new lead is created in Hubspot CRM. To view the lead, log in to Hubspot, click **CRM** in the left menu bar, and then select **Tickets**. 

7. [Publish your App (VA)](../../deploy/publishing-bot.md) so the end users can use this capability.