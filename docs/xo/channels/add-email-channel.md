# Email

Email is a communication channel through which customers can send inquiries, feedback, or requests to the customer service team for resolution or assistance. It allows for asynchronous communication, maintains a record of interactions, and efficiently handles customer inquiries. By adding the email channel to your Virtual Assistant (VA), end users can interact with it using any standard email client, such as *Microsoft Outlook* or *Yahoo*.

The email channel offers the following functionalities:

* Threaded email structure
* Collapsible email tiles
* Distribution to multiple recipients
* Standard Responses
* Attachments
* Drafts. [Learn more](https://docs.kore.ai/xo/console/interacting-with-customers/#emails).

You can use the Kore.ai Email domain or create your custom Email Domain to configure your email addresses.

To configure the email domains, go to **Contact Center AI** > **Flows & Channels** > **CHANNELS** > **Email**.  
<img src="../channels/images/" alt="google assistant" title="google assistant" style="border: 1px solid gray; zoom:80%;">

## Kore.ai Email Domain

Contact centers need to enable forwarding to the email address configured in the Contact Center AI system. This ensures that any email received by the contact center from its end customer is automatically forwarded to the Kore domain. The Kore domain is linked to the experience flow, allowing seamless integration and management of customer inquiries.

With the capabilities of the experience flow, we can efficiently route incoming emails to appropriate agents, analyze customer intents, execute automation, and more. This streamlined process ensures that each customer query is addressed promptly and accurately.

Any reply email managed by either the agent or the bot is directly sent to the end customer. To maintain transparency and accountability, the customer contact center domain is included in the BCC (Blind Carbon Copy) field and the Reply-to field. This configuration ensures that communication remains open and accessible to all relevant parties.

Whenever the customer responds to the email thread, it is directed back to the customer contact center domain. From there, it is seamlessly forwarded to the Kore domain, ensuring a continuous and efficient communication loop.


<p id="gdcalert2" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image2.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert3">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image2.png "image_tooltip")

### Create a Kore Domain Email Address

Steps to create an email address in the Kore domain:

1. Click the **+ New Email Address** button.


<p id="gdcalert3" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image3.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert4">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image3.png "image_tooltip")

2. Enter the following details.
    1. Email Address
    2. Display Name
    3. Choose whether to use the custom email for inbound, outbound, or both under **Additional Settings**.
    4. Choose whether you want to send a contact card to all users as a part of the introduction message under **Send contact card (.VCF)**.
    5. Under the Enable Channel section, select **Yes** to enable the channel.


        <p id="gdcalert4" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image4.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert5">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


        !  [alt_text](images/image4.png "image_tooltip")

    6. Turn on the **Email Template Design (Optional)** toggle to configure the header and footer of the emails that are sent via the configured email address, and do the following:
        1. Click **Edit Header** and **Edit Footer** to configure the header and footer details.


        <p id="gdcalert5" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image5.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert6">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


        ![alt_text](images/image5.png "image_tooltip")

        2. In the **Edit** window, change the header and footer details, and click **Save**.

    7. Click **Preview** to see a preview of the Email template.


        <p id="gdcalert6" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image6.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert7">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


        ![alt_text](images/image6.png "image_tooltip")

3. Click **Save.**
4. A success message is displayed and the email address is created.


        <p id="gdcalert7" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image7.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert8">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


        ![alt_text](images/image7.png "image_tooltip")

### Attach a Flow to a Kore Domain Email Address

Steps to attach a flow to an email address in the Kore domain:

1. Go to **Flows & Channels** > **FLOWS** > **Start Flows**.


<p id="gdcalert8" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image8.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert9">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image8.png "image_tooltip")

2. Click the ellipsis icon (**⋮**) beside the flow you want to attach to the email and click **Update**.


<p id="gdcalert9" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image9.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert10">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image9.png "image_tooltip")
 \

3. Select the email address and click **Update**.


<p id="gdcalert10" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image10.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert11">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image10.png "image_tooltip")

4. A success message is displayed and the flow is attached to the email.


<p id="gdcalert11" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image11.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert12">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image11.png "image_tooltip")

### Publish Kore Domain Email Addresses

Steps to publish email addresses in the Kore domain:



1. Go to **Deploy** > **Deploy Management** > **Publish**. \


<p id="gdcalert12" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image12.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert13">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image12.png "image_tooltip")
 \

2. Select the email address under channels and click **Proceed**.


<p id="gdcalert13" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image13.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert14">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image13.png "image_tooltip")

3. Enter the Comments and click **Confirm**.


<p id="gdcalert14" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image14.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert15">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image14.png "image_tooltip")

4. A success message is displayed and the email address is published.


<p id="gdcalert15" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image15.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert16">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image15.png "image_tooltip")



### Edit a Kore Domain Email Address

Steps to edit an email address in the Kore domain:



1. Click the ellipsis icon (**⋮**) beside the email address and click **Edit**.


<p id="gdcalert16" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image16.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert17">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image16.png "image_tooltip")
 \

2. The email configuration window is displayed. Click **Update** after making the changes.


<p id="gdcalert17" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image17.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert18">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image17.png "image_tooltip")



### Delete a Kore Domain Email Address

Steps to delete an email address in the Kore domain:



1. Click the ellipsis icon (**⋮**) beside the email address and click **Delete**.


<p id="gdcalert18" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image18.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert19">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image18.png "image_tooltip")

2. Click **Delete** on the confirmation pop-up window.


<p id="gdcalert19" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image19.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert20">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image19.png "image_tooltip")



## Custom Email Domain

Custom email domains add a professional look to your email communications, reinforcing your brand identity with every email you send or receive. Customers perceive custom emails as established, reliable, and legitimate compared to generic email addresses. For example, You can create [help@yourbusiness.com](mailto:help@yourbusiness.com), a branded email account that uses your organization's domain name instead of a domain provided by Kore.ai. You can add up to three email accounts (sales@, support@, info@, etc.) in each custom domain for better organization and delegation. By granting access to your email accounts within the domain, you can track the activity of the configured accounts, respond to incoming emails, and send outbound emails. Email filters are less likely to flag emails from custom domains as spam, ensuring better deliverability rates.

### Create a Custom Domain

Steps to create a custom domain:



1. Click the **+ New Domain** button.


<p id="gdcalert20" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image20.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert21">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image20.png "image_tooltip")

2. In the Add Domain dialog box, enter the **Domain Name** and click **Create**.


<p id="gdcalert21" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image21.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert22">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image21.png "image_tooltip")

3. A success message is displayed and the new domain is created.


<p id="gdcalert22" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image22.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert23">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image22.png "image_tooltip")



### Delete a Custom Domain

Steps to delete a custom domain:



1. Click the ellipsis icon (**⋮**) on the right corner and click **Delete**.


<p id="gdcalert23" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image23.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert24">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image23.png "image_tooltip")


2. Click **Delete** on the confirmation pop-up window.

    **Note**: Custom domains can only be deleted when no email addresses are added to the domain.


<p id="gdcalert24" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image24.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert25">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image24.png "image_tooltip")




### Create a Custom Email Address

Steps to create an email address in the custom domain:



1. Click **+ New Email Address**.


<p id="gdcalert25" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image25.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert26">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image25.png "image_tooltip")

2. Enter the following details in the **Configuration** tab.
    1. Email Address
    2. Display Name
    3. Password
    4. Enter the following details to set up the mail SSL connection for Incoming and Outgoing emails.
        1. I
        2. Protocol
        3. Incoming/Outgoing email server
        4. Port
        5. Select “Use SSL to connect” if you want to use a Secure Socket Layer.
    5. Choose whether to use the custom email for inbound, outbound, or both under **Additional Settings**.
    6. Choose whether you want to send a contact card to all users as a part of the introduction message under **Send contact card (.VCF)**.
    7. Under the Enable Channel section, select **Yes** to enable the channel.


<p id="gdcalert26" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image26.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert27">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image26.png "image_tooltip")

    8. Turn on the **Email Template Design (Optional)** toggle to configure the header and footer of the emails that are sent via the configured email address, and do the following:
        6. Click **Edit Header** and **Edit Footer** to configure the header and footer details.


<p id="gdcalert27" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image27.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert28">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image27.png "image_tooltip")

        7. In the **Edit** window, change the header and footer details, and click **Save**.
    9. Click **Preview** to see a preview of the Email template.


<p id="gdcalert28" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image28.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert29">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image28.png "image_tooltip")

3. Click the **Test Connection** button to verify the domain ownership. A success message is displayed below the button upon successful completion.


<p id="gdcalert29" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image29.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert30">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image29.png "image_tooltip")

4. Click **Save.**
5. A success message is displayed and the email address is created. \
**Note**: You can create up to three custom email addresses in a custom domain.


<p id="gdcalert30" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image30.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert31">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image30.png "image_tooltip")



### Edit a Custom Domain Email

Steps to edit an email address in the custom domain:



1. Click the ellipsis icon (**⋮**) beside the email address and click **Edit**.


<p id="gdcalert31" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image31.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert32">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image31.png "image_tooltip")

2. The email configuration window is displayed. Click **Save** after making the changes.


<p id="gdcalert32" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image32.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert33">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image32.png "image_tooltip")



### Delete a Custom Domain Email

Steps to delete an email address in the custom domain:



1. Click the ellipsis icon (**⋮**) beside the email address and click **Delete**.


<p id="gdcalert33" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image33.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert34">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image33.png "image_tooltip")

2. Click **Delete** on the confirmation pop-up window.


<p id="gdcalert34" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image34.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert35">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image34.png "image_tooltip")




<p id="gdcalert35" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image35.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert36">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image35.png "image_tooltip")
