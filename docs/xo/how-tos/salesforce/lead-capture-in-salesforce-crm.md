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


<p id="gdcalert1" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image1.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert2">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image1.png "image_tooltip")

2. Click **Install** at the top-right corner. The Instructions tab is highlighted. 

3. Switch to the **Authenticate and Install** tab - click the tab. The Authorization Details section is displayed.
4. **Authorization Type** – Select the **Pre-authorize the Integration** option, and then select the **_OAuth_** option. 
 
**System Authorization**

    Pre-authorize Salesforce CRM integration with the necessary authorization credentials to obtain the token to access external services.

        * Select **System** to enable the Kore.ai’s preconfigured Salesforce app and click **Authorize**. 


<p id="gdcalert2" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image2.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert3">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image2.png "image_tooltip")

        * Once you click **Authorize**, you are redirected to “login.salesfore.com”
        * Enter your developer account credentials to successfully connect with your Salesforce Account
        * Click the **Allow Access** button to use Kore.ai’s app to fetch the access token to complete the authorization.

**Custom Authorization**


    Create your own custom authorization profile to obtain an access token and use it to complete integration without using Kore.ai’s Salesforce app for authorization.



* Select the **Custom** to enable the custom authorization profile.
* Click the **Select Authorization** drop-down and select the **Create New** option. 


<p id="gdcalert3" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image3.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert4">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image3.png "image_tooltip")

* Select the type of authorization mechanism. For example, select the **OAuth v2** option. To create custom OAuth profiles, see [Setting Up Authorization Using OAuth v2](https://docsinternal-kore.github.io/docs/xo/app-settings/dev-tools/bot-authorization/setting-up-authorization-using-oauth-v2). 


<p id="gdcalert4" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image4.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert5">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image4.png "image_tooltip")

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


<p id="gdcalert6" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image6.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert7">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image6.png "image_tooltip")

* Enter login credentials to successfully connect with your Salesforce Account.
* Once the authorization is successful, you will see a success message.
* Click **Proceed**. When you configure the action for the first time, the **Integration Installed Successfully** pop-up is displayed. 


<p id="gdcalert7" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image7.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert8">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image7.png "image_tooltip")



### Step 2: Install the Lead Capture Template for Salesforce CRM



1. Go to the **Marketplace** and select **Lead Capture** for Salesforce CRM Dialog Template**. 
**

<p id="gdcalert8" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image8.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert9">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image8.png "image_tooltip")

2. The** Lead Capture** installation dialog box is displayed. Click **Install** to begin the installation. 


<p id="gdcalert9" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image9.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert10">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image9.png "image_tooltip")


3. Enter the following details in the Lead Capture dialog task.
    1. **Name: **Name of the dialog.
    2. **Description:** Description of the dialog.
    3. **Utterances: **Create utterances in all ways you expect customers to articulate a request, which will trigger the dialog.
    4. **Channel Experiences: **Define the experiences you want for this dialog for the channel types.
    5. **Lead Capture Setup: **Define the Lead Capture setup and the information to be captured.

        

<p id="gdcalert10" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image10.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert11">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image10.png "image_tooltip")


4. Click **Finish**.
5. Once the template is installed, a dialog task for it is auto-created. You can find it in the list of dialogs in **Automation AI** > **Virtual Assistant** > **Use Cases** > **Dialogs**. 


<p id="gdcalert11" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image11.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert12">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image11.png "image_tooltip")
 



### Step 3: Train the VA for the Dialog Task and Test It



1. Click the **Test** icon.
2. Choose a conversation type (Voice Conversation or Chat Conversation) to test the flow.
3. Click **Train** to complete the untrained utterances.
4. Follow the prompts in the App console to create a lead, as shown below. 


<p id="gdcalert12" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image12.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert13">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image12.png "image_tooltip")


5. Enter all lead details when prompted by the VA, as shown below: 


<p id="gdcalert13" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image13.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert14">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image13.png "image_tooltip")

6. The new lead is created in Salesforce CRM. To view the lead, log in to **Salesforce**,  go to **App Launcher** > **Marketing CRM Classic** > **Leads**.



<p id="gdcalert14" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image14.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert15">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image14.png "image_tooltip")


7.  [Publish your App (VA)](https://docsinternal-kore.github.io/docs/xo/deploy/publishing-bot/?h=publish) so the end users can use this capability.
