# **Default Flows**

The **Default Flows** feature lets you customize experiences for common events like welcome, transfer, or an unknown Intent.

Here, you can configure the interaction flow based on the customer’s behavior in two scenarios:

1. **Off-Working Hours**: When the customer tries to connect to an agent during off-working hours.
2. **No Agents Available**: When agents with specific skills, as required by the customer, are unavailable.

The contact center module provides inbuilt **Phone and Chat Experience** flows for these scenarios. However, you can change the default flow and the message to the customer based on the current conversation channel.

To start, go to **Contact Center > Configuration > Default Flows**.
<img src="../images/default-flows-page.png" alt="
Default Flows Page" title="Default Flows Page" style="border: 1px solid gray; zoom:80%;">

# Phone Experiences

The following sections describe configuring the default flows for a phone experience.


## Off-Working Hours

This flow plays a voice message to the caller who tries to reach an agent during off-working or non-business hours. Off-working hours are considered those that are outside of your configured [Hours of Operation](https://docs.kore.ai/smartassist/settings/hours-of-operation-2/).

To configure the **Off Working Hours **flow, click the **Off Working Hours** tile in the **Phone Experiences **section.



<p id="gdcalert2" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image2.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert3">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image2.png "image_tooltip")


In the **Off Working Hours for Calls **panel, a text area displays the default message a customer hears while attempting to reach a live voice agent during off-working hours. You can edit this message by clicking the **Edit **icon on the top right. You can **choose the message language** by clicking on one of the language selection buttons. 



<p id="gdcalert3" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image3.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert4">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image3.png "image_tooltip")



## No Agents Available

You can set the message played to the customer if the available online agents don’t have the required skills.



<p id="gdcalert4" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image4.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert5">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image4.png "image_tooltip")


To configure the **No Agents Available** flow, click the **No Agents Available** tile under **Phone Experiences**.

In the **No Online Agents with needed skill** panel, use the text area to configure the message to be played to callers when no agent is available. You can edit this message by clicking the **Edit **icon on the top right. You can **choose the message language** by clicking on one of the language selection buttons. 



<p id="gdcalert5" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image5.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert6">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image5.png "image_tooltip")



# Chat Experiences

The following sections describe the default flows configuration for a chat experience.


## Off Working Hours

The **Off Working Hours **flow sets the auto-response message during non-business hours for automated and live chats. To configure this feature, follow these steps:



1. Click the **Off Working Hours** tile under **Chat Experiences**. 
2. In the **Off Working Hours for Chats **panel, you can define the messages displayed during off-working hours (based on the [hours of operation](https://docs.kore.ai/smartassist/settings/hours-of-operation-2/)) when a customer attempts to reach a live chat agent. 

You can define messages for the following scenarios:


### Messaging Chat Channels

This feature lets you customize the auto-response message during off-working hours. To use this option, follow these steps:



1. Use the text area to configure the message to be played to callers when no agent is available. You can **choose the message language** by clicking on one of the language selection buttons. 
2. You can edit the message and configure the next action by clicking the **Edit **icon on the top right. \


<p id="gdcalert6" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image6.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert7">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image6.png "image_tooltip")

3. The **After that **section defines what happens after the message is displayed to the customer. Select one of the following options:
    1. **End Chat** ends the chat conversation.
    2. **Add to Queue** adds the customer to the waiting queue of an agent.
4. **Save **when done. \


<p id="gdcalert7" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image7.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert8">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image7.png "image_tooltip")



### If Live Chat

You can set the message to the customer when they interact on a live chat channel. To configure, follow these steps:



1. Use the text area to configure the message to be played to callers when no agent is available. You can **choose the message language** by clicking on one of the language selection buttons. 
2. You can edit the message and configure the next action by clicking the **Edit **icon on the top right. \


<p id="gdcalert8" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image8.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert9">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image8.png "image_tooltip")

3. The **After that **section defines what happens after the message is displayed to the customer. Select one of the following options:
    1. **End Chat** ends the chat conversation.
    2. **End Chat with Email Deflection **ends the chat conversation and deflects it to the Email channel. This option lets you configure the email message sent to the customer if their conversation is deflected. 
        1. You can **choose the message language** by clicking on one of the language selection buttons. 
        2. You can **configure the email subject and format the body text** using the formatting toolbar.
4. **Save **when done. \


<p id="gdcalert9" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image9.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert10">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image9.png "image_tooltip")



## No Agents Available

You can set the message displayed to the customer if the available online agents don’t have the required skills.

To get started, click the **No agents Available** tile under **Chat Experiences**.

In the **No Online Agents with needed skill** window, define what to do if the skills a customer requires do not match any online agent. Here you can configure the following:


### Messaging Chat Channels

This section is where you can define the message displayed when the customer comes from a chat channel that supports async messaging. 

Use the text area to configure the message to be displayed when no agent is available. You can edit the message and choose the message language by clicking the **Edit **icon on the top right. 



<p id="gdcalert10" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image10.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert11">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image10.png "image_tooltip")



### Live Chat Channels

If the customer comes from a live chat channel and SmartAssist determines that no available agent matches the required skills, then the customer will see the message configured in this section.

Use the text area to configure the message to be displayed when no agent is available. You can edit the message and choose the message language by clicking the **Edit **icon on the top right. 



<p id="gdcalert11" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image11.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert12">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image11.png "image_tooltip")


Once completing any of these default flows, click **Save **to save your changes.
