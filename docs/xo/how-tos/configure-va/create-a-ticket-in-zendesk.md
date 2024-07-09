# Enable your VA to Create a Ticket in Zendesk


## Overview

You can streamline your customer support experience with our virtual assistant. Your end-users interact with the virtual assistant to resolve their queries. The assistant can tackle straightforward questions directly in the chat, saving users time and effort. For complex issues requiring more time or expertise or during non-office hours, the assistant can effortlessly guide users in creating a Zendesk support ticket. It can prompt users to collect the required information and create a ticket or convert the ongoing conversation into a ticket, keeping the conversation context in mind.


## Getting Started

The XO Platform makes it simple to link your Zendesk account and add ticket management capabilities to your virtual assistant using pre-built templates. It automatically sets up dialog tasks for each template. 

The entire process consists of the following steps:

    Step 1: Link your Zendesk account

    Step 2: Install the Create a Ticket Template for Zendesk

    Step 3: Train and Test the Dialog Tasks

**Prerequisites**

Before you start the linking process, keep the following information handy:

* Zendesk account credentials.
* User subdomain, username/email, password, and API token of your Zendesk account.

### Step 1: Link your Zendesk Account

1. Click **Marketplace** in the left navigation and select **Zendesk** Integration. The Zendesk Integration dialog box is displayed.
2. Click **Install** at the top-right corner. The Instructions tab is highlighted.
3. Switch to the **Authenticate and Install** tab - click the tab. The Authorization Details section is displayed.
4. In the section, pre-authorize the integration using the Basic Auth option as follows:
    1. Select **Pre-authorize the Integration** and **Basic Auth** options. 


<p id="gdcalert1" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image1.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert2">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image1.png "image_tooltip")

    2. Under the Basic Auth section, enter the following information specific to your Zendesk account:
        * **User Sub Domain**: The instance name of your Zendesk account.
        * **User Email**: The username or email of the Zendesk account. To authenticate the Zendesk account, you must enter /token after the email address, for example, `john@example.com/token`.
        * **API Token**: The password token of the Zendesk account.
    3. Click **Proceed** at the top-right corner of the dialog box.
5. The Integration Installed Successfully confirmation is displayed. 




<p id="gdcalert2" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image2.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert3">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image2.png "image_tooltip")



### Step 2: Install the ‘Create a Ticket’ Template for Zendesk



1. Go to the **Marketplace** and select **Create a Ticket for Zendesk** Dialog Template**.
**

<p id="gdcalert3" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image3.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert4">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image3.png "image_tooltip")
** 
**
2. The** Create a Ticket** installation dialog box is displayed. Click **Install** to begin the installation. 



<p id="gdcalert4" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image4.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert5">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image4.png "image_tooltip")


3. Enter the following details in the Create a Ticket dialog task.
    1. **Name: **Name of the dialog.
    2. **Description:** Description of the dialog.
    3. **Utterances: **Add utterances in all ways you expect customers to articulate a request, which will trigger the dialog.
    4. **Channel Experiences: **Define the experiences you want for this dialog for the channel types.
    5. **Create a Ticket Setup: **Define the Create a Ticket setup and the information to be captured.
        * Follow up actions: Define the zendesk follow up actions and information that needs to be captured. For example,  live agent assistance while creating tickets during business hours.
        * Ticket Details: Define if any particular details need  to be captured, such as an order ID or booking ID.

        

<p id="gdcalert5" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image5.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert6">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image5.png "image_tooltip")


4. Click **Finish**.
5. Once the template is installed, a dialog task is auto-created. You can find it in the list of dialogs in **Automation AI** > **Virtual Assistant** > **Use Cases** > **Dialogs**.


<p id="gdcalert6" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image6.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert7">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image6.png "image_tooltip")
 



### Step 3: Train the VA for the Dialog Task and Test It



1. Click the **Test** icon.
2. Choose a conversation type (Voice Conversation or Chat Conversation) to test the flow.
3. Click **Train** to complete the untrained utterances.
4. Follow the prompts in the App console to create a ticket, as shown below.


<p id="gdcalert7" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image7.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert8">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image7.png "image_tooltip")

5. Enter all the details when prompted by the VA, as shown below: 
 


<p id="gdcalert8" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image8.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert9">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image8.png "image_tooltip")

6. A new Ticket is created in Zendesk. To view the Ticket, click** View Ticket Details** on the app console. You will be redirected to Zendesk. Login to view the Ticket. 


<p id="gdcalert9" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image9.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert10">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image9.png "image_tooltip")
 

7. [Publish your App (VA)](https://docsinternal-kore.github.io/docs/xo/deploy/publishing-bot/?h=publish) so the end users can use this capability.