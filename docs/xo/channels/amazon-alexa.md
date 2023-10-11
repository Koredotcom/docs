# **Adding the Amazon Alexa Channel**

The Kore.ai XO Platform supports the integration of Virtual Assistants (VA) into the **Amazon Alexa** Channel. Ensure you have an Amazon Developer account for this configuration. Additionally, Amazon Alexa should be enabled for VAs built for voice-based channels.

To accomplish the channel enablement, you must do the following:



1. First, update the JSON file with the supported bot tasks from the Kore.ai XO Platform to the **Alexa Developer Portal**.
2. Next, configure the **Webhook URL** from the Kore.ai XO Platform as the **Service Endpoint** on the **Alexa Developer Portal** to receive messages.


## Important Checks and Considerations

The following are the important checks to do and considerations before you enable the Amazon Alexa channel:



1. Enterprise assistants that require the user’s authorization to communicate with it are not supported.
2. If your dialog tasks require the user’s authorization to communicate with external systems, then the Platform will push a card with URL information to the Alexa app.
3. Intents and entities of only Published Dialog Tasks can be exported to Amazon Alexa.
4. Ensure that your intents and entities adhere to the naming guidelines of Amazon Alexa.
5. Not all entity types available in the Kore.ai Platform are available in Alexa. Verify that your tasks contain Alexa-supported entities for optimal user experience.
6. Ensure that your dialog tasks contain one or more utterances.
7. To display responses as templates on supported devices like Echo Show, you must define channel-specific responses/prompts.
8. Ensure that your dialog tasks contain only the Message node as the last node. Alexa marks a task as completed if a VA message is displayed without expecting input from the user.
9. Webhook Nodes work asynchronously and are currently not supported.
10. Amazon Alexa executes one task at a time, so the **Hold & Resume** functionality is not supported.


## Configuration Overview

The steps to add the **Amazon Alexa** channel are given below:



1. **Add a New Skill** – Create a new Alexa skill in the Amazon developer console.
2. **Configure the Interaction Model** – The Alexa skill can be built in one of the following ways:
* Dialog Migration to extract the dialog tasks from Kore.ai and import them into Amazon Alexa’s Skills. This will entail reimport for reflecting the ongoing changes in the dialog definition. Intent detection and execution are primarily controlled by Alexa.
* Redirection to create a single intent in your skill with the [SearchQuery](https://developer.amazon.com/en-US/docs/alexa/custom-skills/slot-type-reference.html#searchquery) Slot Type that accepts user inputs and redirects them to your Kore.ai VA. Intent detection and execution are primarily controlled by the Kore.ai VA.
1. **Enable Account Linking (Optional)** – To access end user’s authentication details to make API calls to external services.
2. **Enable Webhook Integration** – To integrate Amazon Alexa with your Kore.ai VA, enable webhook integration by copying the **Webhook URL** on the **Configurations** tab of the Amazon Alexa Channel page in the XO Platform and select _HTTPS_ as the Service Endpoint type.
3. **Enable Channel** – Enable the channel after completing the integration setup.
4. **Test Integration** – Once the channel is enabled, test any intent utterance using the Test tab of your Alexa Skill to validate a successful integration and check its responses for the given test utterances.
5. **Distribution, Privacy & Compliance, and Certification** – Publish your Alexa Skill on Alexa App and provide details for Privacy and Compliance to enable Skills Beta Testing, which allows you to invite your co-developers to test your app. You must also submit your Skill to Amazon for certification to enable your skill to become visible on Alexa Skills on Amazon App Store after it is certified.


## Step 1: Add a New Skill



1. Log in to your [Amazon Developer Dashboard](https://developer.amazon.com/dashboard) and click the **Alexa** tab.
2. Select **Alexa Skills Kit** on the menu.
3.

<p id="gdcalert1" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image1.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert2">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image1.png "image_tooltip")
Click the **Skills** tab on the **Alexa Developer Console**.
4. Click **Create Skill**.



<p id="gdcalert2" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image2.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert3">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image2.png "image_tooltip")


5. Enter the **Skill Name** field information on the **Create a New Skill** page and select the **primary locale** value.
6. Then, follow the steps below:
* Enable the **Sync Locale** option, if required.
* Select **Custom** (default selection) to **Choose a model to add to your skill** to create all of your skill’s interactions and map them to your custom model.



<p id="gdcalert3" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image3.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert4">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image3.png "image_tooltip")


* Under **Choose a method to host your skill’s backend resources** section, select **Alexa-hosted(Node.js)**.
* Click **Create Skill**.



<p id="gdcalert4" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image4.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert5">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image4.png "image_tooltip")


* Select a template to add to your skill with these steps:
* Select the **Start from Scratch** tab.
* Click **Continue with Template**.



<p id="gdcalert5" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image5.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert6">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image5.png "image_tooltip")


* Enter the captcha shown on the screen and click **Submit** to process and create an Amazon Alexa voice skill.

Your skill is built and listed on the Developer Console.



<p id="gdcalert6" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image6.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert7">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image6.png "image_tooltip")




1. Click **Your Skills** to view the custom skill you added to the console.


## Step 2: Configure the Interaction Model

Configuring the **Interaction Model** helps define the words and phrases in the user utterances on the Alexa channel to configure the virtual assistant skill accordingly. An Interaction Model lets you add intents and annotations and check the **Intent History** and **Utterance Conflicts**. [Learn more](https://developer.amazon.com/en-US/docs/alexa/ask-overviews/voice-interaction-models.html#:~:text=Every%20Alexa%20skill%20has%20a,each%20skill%20type%20for%20you.).


### Dialog Migration to Extract the Dialog Tasks from Kore.ai

To configure a custom Interaction Model, follow the steps below:



1. On the Developer Console, select the **Build** tab. Then, click the **Interaction Model** left menu option.
2. Select the **JSON Editor** option.



<p id="gdcalert7" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image7.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert8">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image7.png "image_tooltip")


3. In the **JSON Editor** window, define the intents and entities to associate with your newly created skill based on the Kore.ai XO Platform definitions.
4. To capture the intents and entities from the Kore.ai XO Builder, follow these steps:
* Select the virtual assistant.
* Navigate to **Deploy** > **Channels** > **Amazon Alexa** > **Configurations**.
* Click **Download File** under **Alexa Skill Definition JSON** to download the VA’s tasks.



<p id="gdcalert8" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image8.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert9">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image8.png "image_tooltip")


* Click **Confirm** on the **Download** window.
* Click **Drag and drop a _.json_ file** on the **JSON Editor** of the Alexa Developer Console and upload the file.



<p id="gdcalert9" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image9.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert10">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image9.png "image_tooltip")


* The JSON Editor gets updated with the information in the uploaded file.
* Click **Evaluate Model** to review and ensure that there are no errors.
* Click **Save Model**, then click **Build Model**.



<p id="gdcalert10" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image10.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert11">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image10.png "image_tooltip")


**Note**: It takes 2-5 mins for the Model to build. Any changes to the built model can be implemented by rebuilding the model.


### Create a Single Intent with the SearchQuery Slot Type

The `AMAZON.SearchQuery` slot type helps capture less-predictable user utterances in the search query for an intent name. Once you configure the **_SearchQuery_** Slot Type, the Alexa Channel redirects the utterances to your Kore.ai Virtual Assistant for intent detection.

**Important Tip**: Please ensure that your skill uses at most one `AMAZON.SearchQuery` slot per intent. The `Amazon.SearchQuery` slot type cannot be combined with another intent slot in sample utterances.

To configure a custom Interaction Model for the **SearchQuery** Slot Type, follow the steps below:



1. Follow the sequence in Step 4 of [Dialog Migration to Extract the Dialog Tasks from Kore.ai](https://developer.kore.ai/docs/bots/channel-enablement/adding-the-amazon-alexa-channel/#Dialog_Migration_to_Extract_the_Dialog_Tasks_from_Koreai).
2. Create a new custom intent by following these [steps](https://developer.amazon.com/en-US/docs/alexa/custom-skills/create-intents-utterances-and-slots.html#create-intent).
3. After writing a few utterances, pick the words or phrases representing variable information as the intent’s slots; For example, “_I would like to order two iPhones_.”
4. Create a slot for each word or phrase and replace the original word with the slot name in curly brackets **({ })**.
5. To create a slot, follow the steps below:
* Sign in to the [Alexa Developer Console](https://developer.amazon.com/alexa/console/ask).
* Click the **Skills** tab.
* In the **SKILL NAME** column, click the name of your custom skill.



<p id="gdcalert11" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image11.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert12">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image11.png "image_tooltip")


* From the left menu, click **Custom** > **Interaction Model** > **Intents**.
* Click **+Add Intent** to create a custom intent.
* Type a _Custom Intent Name_ and click **Create custom Intent**.



<p id="gdcalert12" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image12.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert13">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image12.png "image_tooltip")


* Click this intent name listed on the left menu under **Intents** to open the detail page.
* Add the phrases or words in the **Sample Utterances** text input field.



<p id="gdcalert13" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image13.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert14">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image13.png "image_tooltip")


* In the drop-down box, enter the slot name and click the **+** icon.



<p id="gdcalert14" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image14.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert15">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image14.png "image_tooltip")


* Repeat these steps for all the remaining variable words.

**Note**: On the **Intents** detail page, the **Intent Slots** section displays the slots you add. When you highlight a word or phrase in an utterance, you can add a new slot or select an existing slot.

Select `AMAZON.SearchQuery` from the dropdown list in the **SLOT TYPE** column.



<p id="gdcalert15" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image15.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert16">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image15.png "image_tooltip")


Click **Save Model** and **Build Model** on the top action panel.


## Step 3: Enable Account Linking (Optional)

If end-user authorization is required for making API calls to external services, you need to enable the **Account Linking** feature for your Alexa Skill with the steps below:



1. On **Your Skills** console, select the **Build** tab.
2. Expand the **Tools** left menu, then click **Account Linking**.
3. **Auth Code Grant** is the default _Authorization grant type_ selection on the **Account Linking** page.Enter the values for the mandatory fields under **Security Provider Information**. [Learn more](https://developer.amazon.com/en-US/docs/alexa/account-linking/configure-implicit-grant.html#config).
4. Click **Save** to configure the **Implicit Grant** flow for Account Linking.



<p id="gdcalert16" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image16.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert17">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image16.png "image_tooltip")


Alexa shares the user **access tokens** with Kore.ai assistants to make API calls defined for the Service nodes.

**Important Tip**: Please enable **Account Linking** on the Kore.ai Platform under **Configurations** in the **Amazon Alexa** window. This allows Kore.ai assistants to use the access tokens from Alexa to make API calls defined in the Service nodes.



<p id="gdcalert17" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image17.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert18">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image17.png "image_tooltip")



## Step 4: Enable the Webhook Integration



1. On the **Alexa Developer Console**, click the **Build** tab on the top panel.
2. Click the **Endpoint** left menu option.
3. Select **HTTPS** as the **Service Endpoint Type**.
4.

<p id="gdcalert18" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image18.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert19">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image18.png "image_tooltip")
On the Kore.ai XO Platform, copy the **Webhook URL** available under **Configurations** on the **Amazon Alexa** Channel window.
5. Paste the URL for the **Default Region** field on the **Service Endpoint Type** page.
6.

<p id="gdcalert19" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image19.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert20">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image19.png "image_tooltip")
For the **Select SSL Certificate Type** drop-down, select the option “**_My development endpoint is a sub-domain of a domain that has a wildcard certificate from a certificate authority_**.”
7.

<p id="gdcalert20" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image20.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert21">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image20.png "image_tooltip")
Click the **Save Endpoint** button on the top panel.

The _webhook/callback URL_ is configured successfully to receive messages and events.


## Step 5: Enable the Channel

Before testing your assistant on **Alexa**, complete the channel setup with these steps:



1. Click the **Configurations** in the Amazon Alexa window on the Kore.ai XO Platform.
2. Select **Yes** for **Enable Channel**.
3. Click **Save** to complete the configuration.



<p id="gdcalert21" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image21.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert22">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image21.png "image_tooltip")



## Step 6: Test the Integration

Once done, test the utterance integration on the **Alexa Developer Console** using the steps below:



1. Click the **Test** tab.
2. Select **Development** for the **Skill testing is enabled in** option.
3.

<p id="gdcalert22" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image22.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert23">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image22.png "image_tooltip")
Navigate to the **Alexa Simulator** section, type an intent utterance, and click enter.



<p id="gdcalert23" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image23.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert24">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image23.png "image_tooltip")


If you get a successful response, then the integration is considered a success.


## Step 7: Distribution

To publish your Alexa Skill on the **Alexa App**, follow the steps below:



1. Click the **Distribution** tab on the **Alexa Developer Console**.
2. Click **Skill Preview**.
3.

<p id="gdcalert24" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image24.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert25">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image24.png "image_tooltip")
Enter the values for the required fields.
4. Click **Save and Continue**.


### Privacy & Compliance

On Alexa, it’s important to set up your Privacy and Compliance information before building the model. To update **Privacy and Compliance** information, follow these steps:



1. Click the **Distribution** tab. Then, click the **Privacy & Compliance** left menu option.
2.

<p id="gdcalert25" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image25.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert26">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image25.png "image_tooltip")
Provide all the required details.
3. Click **Save and Continue**.


### Availability

You will be redirected to the **Availability** page to invite your co-developers to test your app. To complete the invitation, follow the steps below:



1. Enable the **Beta Test** option if it’s disabled.
2. Enter the required details.
3. Click **Save and Continue**.



<p id="gdcalert26" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image26.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert27">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image26.png "image_tooltip")



### Validation

The next step is to **validate your skills** for the model. After configuring **Availability**, you will be redirected to the **Validation** page under the **Certification** section. Here, follow these steps:



1. Review and complete any required fixes based on the details displayed for the issue.
2. Click **Run** to validate your skill.



<p id="gdcalert27" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image27.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert28">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image27.png "image_tooltip")


Upon successful validation, your skill will be visible under **Alexa Skills** on Amazon App Store.



<p id="gdcalert28" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image28.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert29">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image28.png "image_tooltip")


Additionally, your **Skill Builder Checklist** will display green checks for all the options.



<p id="gdcalert29" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image29.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert30">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image29.png "image_tooltip")


After enabling the channel and verifying all the configurations, you can test the new channel integration by publishing your virtual assistant. [Learn more](https://developer.kore.ai/docs/bots/publish/publishing-bot/).

To learn more about working with messaging channels within the Kore.ai XO Platform, please see[ Channel Enablement.](https://developer.kore.ai/docs/bots/channel-enablement/adding-channels-to-your-bot/)
