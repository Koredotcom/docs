# Agent Real-time Coaching (Beta)


## **Introduction**

Contact center agents are often under pressure to provide better customer experiences. Dealing with high call volumes and complex conversations can make it challenging for agents to meet or exceed customer expectations without sufficient support, guidance, and tools.

The Real-time Agent Coaching feature enables real-time coaching based on the analysis of agent utterances and speech. You can set up specific utterances and speech patterns for AgentAssist to take relevant actions, such as providing hints and nudges or emailing the manager when those patterns occur.

As a contact center supervisor, you can view triggered utterances, including the frequency of their occurrence, and evaluate how well agents follow the recommended actions within a specific time frame. You can also review speech patterns such as cross talks, dead air, and speech speed to help agents optimize their communication style.

This document is meant for the contact center supervisors and explains everything about the Real-time Agent Coaching feature, including rules, associated triggers, and actions.


## **Rules**

Rules are a combination of triggers and actions to solve an issue. Each rule is an independent entity that you can edit, delete, tag, untag, enable, or disable. For easy identification, you can label all relevant rules with the same tag. You can use multiple tags for one rule and one tag for multiple rules. Real-time Agent Coaching has two types of rules:



* **Pre-built**: Pre-existing coaching options that come with Agent Coaching.
* **New rules**: New rules you can create based on your requirements.

Currently, the pre-built rules section has two rules – None Intent and Price Objection.


### **None Intent**

The None Intent rule contains utterances that are used to prevent false positives during intent identification. By using these utterances, you can train the system to differentiate between a positive (trained) and a false-positive (wrong, untrained, ambiguous) utterance. For example, an utterance “I need help with my account” is a positive intent and the system has to act accordingly, but the utterance “It is too expensive” is a false-positive intent wherein the system should not take any action.

This rule is enabled by default, and you can’t disable or delete it. You can, however, add more utterances to make this rule more effective.


#### **Adding None Intent Utterances**

You can add utterances in two ways:



* **AI Assist**: You can take assistance from AI to generate and add more none intent utterances based on the utterances of your selected rules.
* **Input Utterances Manually**: You can manually enter and save none intent utterances.


##### Steps to add none intent utterances



1. Sign in to XO Platform.
2. Click **AgentAssist **> **Experience **>** Agent Coaching**.
3. Click the **edit** button against a **Pre-built, None Intent** rule under **Actions**.




![alt_text](agent-coaching-images/image1.png "image_tooltip")

4. Click **Add Utterance(s)**.
5. Select **AI Assist** or **Input Utterances Manually**. \
 \
Follow these steps if you select **AI Assist**:
    1. Select **AI Assist**. \
**Note**: To avail the **AI Assist** feature, enable **OpenAI** in the **App Settings** > **Generative AI Tools**, and enable **Generating Opposite…** in the **Co-Pilots** section.
    2. Select rules, as required, from the **Add Rules** list and click **Add**. \


<p id="gdcalert2" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image2.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert3">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image2.png "image_tooltip")

    3. All added rules are displayed on the left, and the AI starts searching for more utterances that are similar in meaning to the utterances of your selected rules.
    4. Select utterances, as required, and then click **Add Selected**.
    5. Click **Save** to complete the process.

Follow these steps if you select **Input Utterances Manually**:



1. Select **Input Utterances Manually**.
2. Enter your utterance in the **Utterances** field and press the **Enter** key. \


<p id="gdcalert3" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image3.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert4">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image3.png "image_tooltip")
 \
Following this step, you can add multiple utterances.
3. Click **Save**. \

    1. The new utterance gets added to the list of utterances. \



### **Price Objection**

This is a predefined rule with conditions and actions that come with Agent Coaching. You can customize the conditions and actions, but can’t edit or delete the rule name. However, you can disable this rule, if needed. It contains a customer’s price objection utterance and defines the actions agents should take in response. The predefined conditions and actions are:



* **Condition (When)**: Price objection utterance by customer
* **Actions (Then do)**:
    * Alert Type: Hint Agent
    * Alert Title: Price Objection identified
    * Alert Body: Please reassure the customer and offer discounts
    * Alert Display: Doesn’t auto close
    * Alert Adherence: “Ok, Got it”
* **Assigned to**: All Agents

The following screenshot displays the **Price Objection** rule: \


<p id="gdcalert4" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image4.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert5">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image4.png "image_tooltip")


For information on rule functionalities, refer to the section [Create, Publish, Edit, Delete, and Disable Rules](https://docs.kore.ai/agentassist/agent/agent-coaching/#Create_Publish_Edit_Delete_and_Disable_Rules). 


## **Create, Publish, Edit, Delete, and Disable Rules**

This section explains how to create, tag, publish, edit, delete, and disable rules.


### **Creating a New Rule**

From time to time, depending on newer or different situations, you can create new rules to help agents with newer issues. This section explains the steps to create a new rule.


#### **Steps to create a new rule:**



1. Sign in to **XO Platform**.
2. Click **AgentAssist **>** Experience **>** Agent Coaching**.
3. Click **+New Rule**.
4. Enter a name for the new rule in the **Name** field.
5. Enter a short description about the rule in the **Description** field. \
To read how to form a rule description, hover over the “i” button beside the **Description** field. \


<p id="gdcalert5" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image5.jpg). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert6">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image5.jpg "image_tooltip")
 \
Rule description should be concise and include keywords and conditions. It trains the AI for real-time assistance.
6. Enter a tag in the **Tag** field and then press the **Enter** key to add the tag.
7. Click **Voice** or **Live Chat** or both in the **Channels** field.
    1. **Voice**: Choose **Voice** if you want this rule to take input utterance only through the voice (voice calls) medium.
    2. **Live Chat**: Choose **Live Chat** if you want this rule to take input utterance only through the live chat (text messages) medium.
    3. **Both**: Choose both **Voice** and **Live Chat** if you want this rule to take input utterance through both these mediums.
8. Click **Apply** to complete the rule creation process: \


<p id="gdcalert6" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image6.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert7">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image6.png "image_tooltip")
 \
A message shows up to confirm a new rule creation.
9. Click **+Add a trigger** under **When…** to add a trigger condition for the rule. For more information, refer to the [Agent Coaching Rule Triggers](https://docs.kore.ai/agentassist/agent/agent-coaching/#Agent_Coaching_Rule_Triggers_When%E2%80%A6) section.
10. Click **+Add an action** under **Then do…** to add an action for the rule. For more info, refer to the [Agent Coaching Actions](https://docs.kore.ai/agentassist/agent/agent-coaching/#Agent_Real-time_Coaching_Actions_Then_do%E2%80%A6) section.
11. Click **Add agents, groups** under **Assign this to…** to add agents or groups you want to assign this rule to. For more info, refer to the [Assign this to](https://docs.kore.ai/agentassist/agent/agent-coaching/#Assign_This_To) section.
12. Click **Save**.


### **Editing a Rule**

You can add to or change an existing rule based on the requirements.


#### **Steps to edit a rule**



1. Sign in to XO Platform.
2. Click **AgentAssist **>** Experience **>** Agent Coaching**.
3. Locate the rule you want to edit–either from the displayed list or by partially entering the rule name in the **Search** box.
    1. As you enter the rule name in the **Search** box, matching rule names appear on the screen.
4. Click the **edit** button beside a rule name that you want to edit.

**Note**: Co-editing a rule is not allowed–if you edit a rule, it’s locked, and no one else can edit or delete it simultaneously. AgentAssist will notify you if you attempt to co-edit a rule. If a rule is locked for editing, but the user has not performed any editing for 15 minutes or left the Rules Configuration screen, AgentAssist unlocks the rule for editing by another user.


### **Deleting a Rule**

You can delete a rule due to irrelevance or other reasons. AgentAssist lets you delete an existing rule with the click of a button.


#### **Steps to delete a rule**



1. Go to the **AgentAssist **>** Experience **>** Agent Coaching** main page.
2. Click the **delete** button beside a rule name that you want to delete.
3. Click **Yes** in the confirmation popup window. \



### **Disabling a Rule**

If you don’t want to use a rule temporarily, you can disable it.


#### **Steps to disable a rule**



1. Go to the **AgentAssist **>** Experience **>** Agent Coaching **main page.
2. In the **Enabled** column, use the toggle to disable or enable a rule.
    1. The **Configuration has been Saved** message appears on the screen.


## **Agent Coaching Rule Triggers (When…)**

Trigger setting is essential to rule creation. You can’t have a rule without a trigger. Triggers define the conditions for a rule to come into effect. This section explains how to set up triggers for new rules. The available triggers are:



* Utterance Triggers
* Speech Analysis Triggers


### **Utterance Triggers**

Utterances are inputs from either the customers or the agents. In Utterance Triggers, you set up conditions like input from the customer or agent, the number of times the input came, and the time frame within which the input came to set off the trigger.


#### **Steps to set up Utterance Triggers:**



1. Go to the rule trigger creation page. For help, refer to [Steps to create a new rule](https://docs.kore.ai/agentassist/agent/agent-coaching/#Steps_to_create_a_new_rule). 
2. Under **When**, click the **+ Add a trigger** button.
3. Select **Utterance**.
4. Click **{select person}**.
5. Select either **Agent** or **Customer**.
6. Click **set utterances**.
7. Enter an utterance that the user (customer or agent) may use in the **Utterances** box.
8. Select the utterance you have entered.
    1.  There may be other matching utterances the AI suggests:
9. Select the **AI-suggested utterances**, as required. \
**Note**: AI suggests utterances that match with what you have entered based on conversation history. It also shows the appearance percentage of utterances.  
10. Click **Add**. (The appearance of this button is based on the number of utterances entered by you plus the number of AI-suggested utterances you have selected. In this example, it’s 1+3. So, it’s displayed as Add 4.) \


<p id="gdcalert7" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image7.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert8">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image7.png "image_tooltip")

11. Click **Okay**.
12. Click **Save**. \
**Note**: Before clicking the **Save** button, you can delete any utterance you would have added by mistake or think is irrelevant.
    2. The following screen appears: \


<p id="gdcalert8" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image8.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert9">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image8.png "image_tooltip")

13. Click **1 time** to select the number of times any of these utterances appear. The default selection is **1 time**. For example, a customer may use any of these utterances once by mistake and to be sure, you want the customer to use them twice or thrice. You need to select **2 times** or **3 times** for such situations. \


<p id="gdcalert9" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image9.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert10">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image9.png "image_tooltip")

14. Click the default time frame, in conversation, to change it if you want to select other options. \


<p id="gdcalert10" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image10.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert11">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image10.png "image_tooltip")
 \

    3. If you select **Anytime in conversation**, the following screen appears: \


<p id="gdcalert11" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image11.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert12">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image11.png "image_tooltip")

    4. If you select **By time**, the following screen appears: \


<p id="gdcalert12" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image12.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert13">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image12.png "image_tooltip")
 \
From the dropdown, select **first** or **within** and enter the time in seconds.
    5. If you select **By number of messages**, the following screen appears: \


<p id="gdcalert13" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image13.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert14">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image13.png "image_tooltip")
 \
From the dropdown, select **first** or **within** and enter a number in the messages field.
15. Press the **Enter** key to complete the process.


### **Speech Analysis Triggers**

This feature analyzes the speech pattern or event of both the customer and the agent and provides real-time feedback and coaching to improve customer-agent conversation quality. This section explains the steps to set up the Speech Analysis Triggers feature.


#### **Steps to set up Speech Analysis Triggers**



1. Select **Speech Analysis** after clicking **When **>** +Add a trigger**. \


<p id="gdcalert14" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image14.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert15">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image14.png "image_tooltip")

2. Click **{speech type}** and select a type for analysis. \


<p id="gdcalert15" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image15.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert16">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image15.png "image_tooltip")
 \

    1. If you select **Cross Talk**, the following screen appears: \


<p id="gdcalert16" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image16.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert17">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image16.png "image_tooltip")
 \

        1. Click **30** to enter the duration in seconds–30 seconds is the default value.
        2. Enter the duration in seconds and then press the **Enter** key. \


<p id="gdcalert17" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image17.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert18">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image17.png "image_tooltip")

        3. Click **1 time** to update the number of times crosstalk happened in a conversation. \


<p id="gdcalert18" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image18.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert19">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image18.png "image_tooltip")

        4. Click to select the number of times, as required.
        5. Click **in conversation** to update when crosstalk happened; **in conversation** is the default value. \


<p id="gdcalert19" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image19.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert20">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image19.png "image_tooltip")
 \

            1. If you select **Anytime in conversation**, the following screen appears: \


<p id="gdcalert20" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image20.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert21">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image20.png "image_tooltip")

            2. If you select **By time**, the following screen appears: \


<p id="gdcalert21" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image21.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert22">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image21.png "image_tooltip")
 \

                1. From the dropdown, select first or within and enter the time in seconds.
                2. Press the **Enter** key to save the new values. \
**Note**: If the configured crosstalk time duration is less than the selected conversation time period or if the trigger setup is incomplete, a validation error is displayed, as highlighted in the screenshot.
* If you select **Dead Air**, the following screen appears: \


<p id="gdcalert22" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image22.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert23">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image22.png "image_tooltip")
 \

    1. Click **30** to enter the duration in seconds, and then press the **Enter** key to save it. \


<p id="gdcalert23" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image23.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert24">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image23.png "image_tooltip")

    2. Click **{select person}** to select the user. \


<p id="gdcalert24" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image24.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert25">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image24.png "image_tooltip")

    3. Click **1 time** to select the frequency.
    4. Click **In conversation** to select a time frame. \


<p id="gdcalert25" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image25.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert26">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image25.png "image_tooltip")
 \

        1. From the dropdown list, select **first** or **within** and enter the time in seconds.
        2. Press the **Enter** key to save the new values. \
**Note**: A validation error is displayed, as highlighted in the screenshot, either if the configured Dead Air duration is lesser than the selected conversation time period or if the trigger setup is incomplete.
* If you select **Speech Speed**, the following screen appears: \


<p id="gdcalert26" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image26.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert27">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image26.png "image_tooltip")
 \

    5. Click **{select person}** to select either Agent or Customer. \


<p id="gdcalert27" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image27.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert28">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image27.png "image_tooltip")

    6. Click **180** to enter words per minute–**180 words per minute** is the default value.
    7. Enter the number of words per minute and then press the **Enter** key to save it.
    8. Click **1 time** to select the frequency.
    9. Click **In conversation** to select a time frame.
* If you select **Talk Ratio**, the following screen appears: \


<p id="gdcalert28" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image28.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert29">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image28.png "image_tooltip")
 \

    10. Click **{Comparator}** to select a value comparison. \


<p id="gdcalert29" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image29.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert30">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image29.png "image_tooltip")
 \

        3. If you select **Less than** or **Greater than**, a screen similar to the following appears: \


<p id="gdcalert30" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image30.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert31">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image30.png "image_tooltip")

        4. If you select **In between**, the following screen appears: \


<p id="gdcalert31" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image31.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert32">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image31.png "image_tooltip")

    11. Click **{Value}** to enter a percentage value. \


<p id="gdcalert32" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image32.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert33">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image32.png "image_tooltip")
 \
If you have selected **In between**, you must enter the values twice and click the **tick mark**, as highlighted in the following screenshot: \


<p id="gdcalert33" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image33.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert34">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image33.png "image_tooltip")

    12. Click **in conversation** to select a time duration. By default, **Anytime in conversation** is selected. \


<p id="gdcalert34" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image34.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert35">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image34.png "image_tooltip")
 \

        5. Click **By time** to indicate a selected time frame for talk ratio measurement.
        6. Enter time in minutes and press the **Enter** key. \


<p id="gdcalert35" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image35.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert36">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image35.png "image_tooltip")


**Coaching Rule:**


<table>
  <tr>
   <td><strong>Field</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td>Rule Name
   </td>
   <td>The name of the new rule and the users it has been assigned to.
   </td>
  </tr>
  <tr>
   <td>Actions
   </td>
   <td>Edit or delete a rule.
   </td>
  </tr>
  <tr>
   <td>Description
   </td>
   <td>A short description of the rule.
   </td>
  </tr>
  <tr>
   <td>Tags
   </td>
   <td>Name of the tags a rule has been tagged with.
   </td>
  </tr>
  <tr>
   <td>Channels
   </td>
   <td>Communication channels through which rules are applied. Valid values are:
<ul>

<li>Voice

<li>Chat
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>Last Updated
   </td>
   <td>Time and date when a rule was last updated.
   </td>
  </tr>
  <tr>
   <td>Status
   </td>
   <td>Current status of a rule. Valid values are:
<ul>

<li>Enable

<li>Disable
</li>
</ul>
   </td>
  </tr>
</table>


 

**Speech Type**:


<table>
  <tr>
   <td><strong>Field</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td>Cross Talk
   </td>
   <td>When the talks between the agent and the customer cross each other.
   </td>
  </tr>
  <tr>
   <td>Dead Air
   </td>
   <td>No talk/silence either by the customer or the agent.
<p>
Valid values to choose from:
<ul>

<li>Anytime in conversation: Select it to configure the dead air period as anytime during a conversation.

<li>By time: Select it to choose the exact time frame when dead air was noticed. Valid values are:

<li>First: Select and enter the time frame as first (variable) seconds of conversation.

<li>Within: Select and enter the time frame as within (variable) seconds anytime during the conversation. 
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>Speech Speed
   </td>
   <td>Number of words per minute during a session – either by the agent or the customer.
   </td>
  </tr>
  <tr>
   <td>Talk Ratio
   </td>
   <td>Agent to customer talk ratio – proportion of speaking time by an agent compared to a customer. By default, it can be identified only once. Here is a list of scenarios for different talk ratio ranges:
<ul>

<li>Equal to 50% for 1 Time in Conversation: Both the agent and the customer contribute equally to the conversation. A balanced conversation where both parties are actively engaged and sharing information, questions, and responses.

<li>&lt;20% for 4 Times By Time in the first 30 seconds: The agent speaks less than the customer for four instances within the first 30 seconds of the conversation. It could be due to the agent allowing the customer to express their concerns or issues before providing assistance or solutions.

<li>Less than or equal to 60% for 1 Time By Time within 30 seconds: The agent’s speaking time is limited to 60% or less of the conversation time within the first 30 seconds. This might occur when the agent is actively listening to the customer’s initial query or complaint, gathering relevant information, and demonstrating empathy before engaging in a more detailed conversation.

<li>Between 20% and 40% for 1 Time Any Time in Conversation: A balanced conversation, where the agent speaks for a moderate portion of the conversation (20% to 40%) while allowing the customer to express their needs and concerns.

<li>Between 20% and 40% for 4 Times By Time in the first 30 seconds: For four instances within the first 30 seconds, the agent maintains a talk ratio of 20% to 40%, giving the customer ample space to explain their issue or query before responding.

<li>Between 20% and 40% for 1 Time By Time within 30 seconds: The agent maintains a balanced talk ratio (20% to 40%) within the first 30 seconds of the conversation, showing attentiveness and understanding of the customer’s initial statements.
</li>
</ul>
   </td>
  </tr>
</table>



###  \
And/Or Condition

AgentAssist allows you to add multiple rule triggers. It lets you set different conditions like combining multiple rules or choosing one or a set of rules against another or a different set of rules. You can even choose or combine rules from different trigger types like Utterance and Speech Analysis triggers.


#### **Steps to select And/Or condition**



1. Click **+Add a trigger** in the rule trigger creation page to create a new trigger.
2. Click **+Add a trigger** again to create a new rule trigger.
3. Select **And** or **Or**. \


<p id="gdcalert36" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image36.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert37">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image36.png "image_tooltip")


**Note**: For creating multiple rule triggers, it is mandatory to choose **And** or **Or**. When you choose “And,” the rule triggers add up. When you choose “Or,” the rule triggers set to either of the rules. Here’s an example of this functionality: \


<p id="gdcalert37" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image37.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert38">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image37.png "image_tooltip")


The **And** condition ensures that rule triggers **1** and **2** are combined, and the **Or** condition ensures that either the combination of the first two rule triggers (**1+2**) or the third rule trigger (**3**) becomes applicable.


## **Agent Real-time Coaching Actions (Then do…)**

After setting up rule triggers, you must set up actions for those triggers. Here, you configure what actions AgentAssist should take if the conditions you set up are met. You can set up three different actions:



* Nudge Agent
* Hint Agent
* Email Manager

You can also set up adherence, which is like an acknowledgment, to ensure the agent has followed the instructions.


### **Add Adherence**

The Add Adherence feature lets you know the agent’s adherence to the instructions in the form of nudges and hints. Later, you can use this acknowledgment to measure agent performance in the Dashboard. This feature is applicable only for the Nudge and Hint Agent actions. 


#### **Add Adherence Types**

You have two types of adherences to choose from:



* **Acknowledge Pressed**: Choosing this option sends an acknowledgment that the agent understood your instructions. The agent doesn’t need to take any other action except acknowledging your message. An example would be a compliment to the agent for a job well done. The following screenshot is displayed when this option is used: \


<p id="gdcalert38" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image38.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert39">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image38.png "image_tooltip")

* **Utterance**: Choosing this option sends an acknowledgment that the agent will take further action within a specified time frame during a session. An example would be when you ask the agent to offer a discount to the customer, and the agent acknowledges that they will perform this action within the next few messages, a few minutes, or anytime during the session. The following screenshot is displayed when this option is selected: \


<p id="gdcalert39" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image39.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert40">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image39.png "image_tooltip")
 \
For practical examples of this feature, refer to steps 7-8 of [Steps to set up the Nudge Agent actions](https://docs.kore.ai/agentassist/agent/agent-coaching/#Steps_to_set_up_the_Nudge_Agent_actions).


### **Nudge Agent**

The Nudge Agent actions are the small messages that pop up on the agent’s screen while communicating with the customers. They are disappearing messages, which stay on the agent’s screen for 5 seconds. The agent can close these messages anytime after their appearance. Through these messages, you either compliment the agents for a good job or direct them to take other appropriate actions to serve the customers in the best way possible. Here are the following four nudges that you can choose from:



* Positive
* Neutral
* Alert
* Critical


#### **Steps to set up the Nudge Agent actions:**



1. Go to the rule action setup page.
2. Click **+ Add an action** under the **Then do…**section. \


<p id="gdcalert40" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image40.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert41">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image40.png "image_tooltip")

3. Click the **Nudge Agent** option in the **Choose an Action** window. \


<p id="gdcalert41" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image41.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert42">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image41.png "image_tooltip")

4. Click **{tChoose}** to select one of the sentiment messages, as displayed in the following screen: \


<p id="gdcalert42" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image42.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert43">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image42.png "image_tooltip")

5. Click **{Choose}** to enter a message, as displayed in the following screen: \


<p id="gdcalert43" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image43.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert44">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image43.png "image_tooltip")

6. Enter a message in the **Nudge Message** box, and then click the **tick** mark to save it.
7. Click **+Add Adherence** to set an adherence for the agent. \


<p id="gdcalert44" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image44.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert45">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image44.png "image_tooltip")

8. Select **Utterance** in the **Choose a Trigger** window. \


<p id="gdcalert45" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image45.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert46">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image45.png "image_tooltip")

9. Click **{set utterances}** to enter the agent’s utterance. \


<p id="gdcalert46" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image46.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert47">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image46.png "image_tooltip")

10. Type and select the utterance. You can select similar utterances from the **Utterances** list. \


<p id="gdcalert47" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image47.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert48">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image47.png "image_tooltip")

11. Click **Add** > **Save**. \


<p id="gdcalert48" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image48.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert49">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image48.png "image_tooltip")

12. Click **Anytime** on the next screen to select one of the options. \


<p id="gdcalert49" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image49.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert50">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image49.png "image_tooltip")
 \
If you select **Within next (n) messages**, the following screen appears: \


<p id="gdcalert50" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image50.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert51">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image50.png "image_tooltip")
You can change the number of messages, as required, by clicking the highlighted area. If you select **Within next (n) minutes**, the following screen appears: \


<p id="gdcalert51" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image51.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert52">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image51.png "image_tooltip")
You can change the time in minutes, as required, by clicking the highlighted area. \
 \
The agent gets screens similar to the following on their system for:
    1. Positive Nudges \


<p id="gdcalert52" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image52.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert53">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image52.png "image_tooltip")

    2. Neutral Nudges \


<p id="gdcalert53" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image53.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert54">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image53.png "image_tooltip")

    3. Warning Nudges \


<p id="gdcalert54" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image54.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert55">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image54.png "image_tooltip")

    4. Critical Nudges \


<p id="gdcalert55" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image55.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert56">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image55.png "image_tooltip")



### **Hint Agent**

The Hint Agent actions are small pop-up messages that advise agents to take further action. They appear on the agent’s screen while communicating with the customers and may or may not auto-close based on how you set them. Through these messages, you also compliment the agents for a good job. Here are the four hint types that you can choose from:



* Positive
* Neutral
* Alert
* Critical


#### **Steps to set up the Hint Agent actions:**



1. Go to the rule action setup page.
2. Click **+ Add an action** under the **Then do…**section.
3. Click the **Hint Agent** option in the **Choose an Action** window. \


<p id="gdcalert56" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image56.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert57">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image56.png "image_tooltip")

4. Click **{Choose}** and select one of the message types, as highlighted in the following screenshot: \


<p id="gdcalert57" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image57.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert58">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image57.png "image_tooltip")

5. Click **{Choose}** to enter the title of your message, as highlighted in the following screenshot: \


<p id="gdcalert58" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image58.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert59">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image58.png "image_tooltip")

6. Click the **tick** mark after entering the title.
7. Click **{Choose}** to enter the body of your message, as highlighted in the following screenshot: \


<p id="gdcalert59" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image59.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert60">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image59.png "image_tooltip")

8. Click the **tick** mark after entering the body of your message.
9. Click **{Choose}** to select the display option of your message, as highlighted in the following screenshot: \


<p id="gdcalert60" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image60.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert61">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image60.png "image_tooltip")
 \

    1. If you select **Auto Close**, the following screen displays: \


<p id="gdcalert61" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image61.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert62">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image61.png "image_tooltip")
Click the default value of **5 seconds** to update it, as required. After entering the value, press the **Enter** key to update the new entry.
    2. If you select **Does not auto close**, the following screen displays: \


<p id="gdcalert62" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image62.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert63">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image62.png "image_tooltip")

10. Click **+Add Adherence** to set up agent adherence of the rule action. \


<p id="gdcalert63" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image63.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert64">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image63.png "image_tooltip")

11. Select an adherence trigger: \


<p id="gdcalert64" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image64.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert65">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image64.png "image_tooltip")
 \

    3. If you select **Acknowledge Pressed**, the following screen is displayed: \


<p id="gdcalert65" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image65.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert66">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image65.png "image_tooltip")

    4. If you select **Utterance**, follow steps 9-12 of [Steps to set up the Nudge Agent actions](https://docs.kore.ai/agentassist/agent/agent-coaching/#Steps_to_set_up_the_Nudge_Agent_actions) to complete the process.

The agent gets screens similar to the following on their system for:



* Positive Hints \


<p id="gdcalert66" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image66.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert67">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image66.png "image_tooltip")

* Neutral Hints \


<p id="gdcalert67" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image67.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert68">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image67.png "image_tooltip")

* Warning Hints \


<p id="gdcalert68" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image68.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert69">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image68.png "image_tooltip")

* Critical Hints \


<p id="gdcalert69" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image69.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert70">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image69.png "image_tooltip")



### **Email Manager**

This feature lets you set a push notification alert to the manager’s desktop. You can set who should receive this notification and customize the title and the body of the message. It applies to the customer’s actions, such as using profanity or too many cross-talks. Instead of nudges and hints, the system can send an alert notification to the manager in these situations.


#### **Steps to set up the Email Manager action:**



1. Go to the rule action setup page.
2. Click **+ Add an action** under the **Then do…**section.
3. Click the **Email Manager** option in the **Choose an Action** window. \


<p id="gdcalert70" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image70.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert71">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image70.png "image_tooltip")

4. Click **{select people}** to enter the email address of one or multiple managers who should receive the notification. \


<p id="gdcalert71" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image71.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert72">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image71.png "image_tooltip")

5. Enter the email addresses, and then click the **tick** mark to save them. \
**Note**: Use commas to separate multiple email addresses.
6. Click **{set subject}** to enter a subject for your notification. \


<p id="gdcalert72" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image72.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert73">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image72.png "image_tooltip")

7. Click the **tick** mark to save it.
8. Click **{set body}** to enter the body of the notification. \


<p id="gdcalert73" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image73.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert74">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image73.png "image_tooltip")

9. Enter the notification content and then click the **tick** mark to save it.


## **Assign This To**

This feature lets you assign the rule to the intended agents or groups. Currently, by default, this feature is assigned for all agents.


### **Steps to assign rules to agents or groups**



1. Go to the rule action setup page. For help, refer to steps 1 and 2 of [Steps to create a new rule](https://docs.kore.ai/agentassist/agent/agent-coaching/#Steps_to_create_a_new_rule).
2. Click **+Add agents, groups** under the **Assign this to…**section. \
The following screen shows the default selection of **All Agents**: \


<p id="gdcalert74" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image74.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert75">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image74.png "image_tooltip")
 
3. Click **Save** from the top-right corner of the screen. \


<p id="gdcalert75" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image75.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert76">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image75.png "image_tooltip")
 \
The new rule appears under the group for which you created it. \


<p id="gdcalert76" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image76.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert77">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](agent-coaching-images/image76.png "image_tooltip")
