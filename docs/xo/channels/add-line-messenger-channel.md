# **Adding the LINE Channel**

To add the LINE channel to your Kore.ai bot, you must set up a webhook integration to configure the connection between LINE and Kore.ai. Adding the LINE channel to your Kore.ai assistant allows end-users to interact with it using their _LINE_ accounts. To add the LINE channel to your bot, you must also have or create a LINE account.


# Step 1: Create a LINE Provider



1. Log in to your [LINE Developer account portal](https://developers.line.me/), and click **Create a new provider**..If you already have a _Provider_ that you want to use for this bot, then choose the provider from the Provider_ List._

<p id="gdcalert1" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image1.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert2">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image1.png "image_tooltip")

2.  Click **Create a Messaging API Channel**. \


<p id="gdcalert2" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image2.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert3">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image2.png "image_tooltip")



# Step 2: Add a Channel on LINE



1. Under **Create a new channel **, provide the required details.
2. Click **Create **to review and proceed with channel creation. \


<p id="gdcalert3" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image3.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert4">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image3.png "image_tooltip")


    ```
Note: The Kore.ai XO Platform uses PUSH_MESSAGE APIs to deliver non-interactive messages to end-users. These scenarios include cases like alert notifications, session closure messages, and any other scenario where the replyToken from the LINE channel is either not available or expired. These API calls may be charged; review the LINE plan options and select the appropriate plan that suits your needs.
```




# Step 3: Enable the Channel



1. After the channel is created, you are redirected to the **Provider dashboard** with a list of available channels.
2. Select the channel you have created above to continue with channel configurations.
3. From under **Basic Settings**, capture the **Channel ID** and **Channel Secret** of your LINE channel.
4. Go to the XO Platform and select the assistant that you want to add the LINE channel to.
5. Go to **Deploy > Channels > LINE > Configuration**.
6. Enter the **Channel User** ID and **Channel Secret**, retrieved from LINE.
7. Under Enable Channel, select Yes and click Save to enable the LINE Channel for your assistant.

<p id="gdcalert4" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image4.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert5">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image4.png "image_tooltip")



# Step 4 : Enable the Webhook Integration



1. From the LINE Channel Configuration page in the XO Platform, copy the **Webhook URL**.
2. Go to  LINE, and navigate to the **Messaging API **section of your newly created LINE Channel.  Scroll to Webhook Settings and click Edit to enter the Webhook URL you just copied from the XO Platform. \


<p id="gdcalert5" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image5.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert6">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image5.png "image_tooltip")

3. Click **Update**. \


<p id="gdcalert6" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image6.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert7">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image6.png "image_tooltip")

4. After saving the webhook URL, Enable the Webhook, choose whether to enable redelivery and error statistics aggregation, then click **Verify **to ensure that the webhook call from LINE is acknowledged by the Kore.ai XO Platform. \


<p id="gdcalert7" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image7.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert8">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image7.png "image_tooltip")



# Step 5: Review Additional Options

We recommend that you review additional options available for your LINE channels like group behavior, auto-replies, and greetings messages.

After the channel is enabled and all configurations are verified, you can optionally publish the assistant to make it available for end-users, with the new channel. Learn more about[ Publishing your Virtual Assistant](https://developer.kore.ai/docs/bots/publish/publishing-bot/).

To learn more about working with Channels within the Kore.ai XO Platform, please see[ Channel Enablement.](https://developer.kore.ai/docs/bots/channel-enablement/adding-channels-to-your-bot/)
