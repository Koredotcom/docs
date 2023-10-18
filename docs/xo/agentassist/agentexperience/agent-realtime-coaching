<# Real-time Agent Coaching


## Introduction

Contact center agents are often under pressure to provide better customer experiences. Dealing with high call volumes and complex conversations can make it challenging for agents to meet or exceed customer expectations without sufficient support, guidance, and tools.

The Real-time Agent Coaching feature enables real-time coaching based on the analysis of agent utterances and speech. You can set up specific utterances and speech patterns for AgentAssist to take relevant actions, such as providing hints and nudges or emailing the manager when those patterns occur.

As a contact center supervisor, you can view triggered utterances, including the frequency of their occurrence, and evaluate how well agents follow the recommended actions within a specific time frame. You can also review speech patterns such as cross talks, dead air, and speech speed to help agents optimize their communication style.

This document is meant for the contact center supervisors and explains everything about the Real-time Agent Coaching feature, including rules, associated triggers, and actions.


## Rules

Rules are a combination of triggers and actions to solve an issue. Each rule is an independent entity that you can edit, delete, tag, untag, enable, or disable. For easy identification, you can tag all relevant rules with the same tag. You can use multiple tags for one rule and one tag for multiple rules. Real-time Agent Coaching has two types of rules:



* Pre-built: These are pre-existing coaching options that come with Agent Coaching.
* New rules: These are new rules you can create based on your requirements.

Currently, the pre-built rules section has two rules - None Intent and Price Objection.


### None Intent

The None Intent rule contains utterances that are used to prevent false positives during intent identification. By using these utterances, you can train the system to differentiate between a positive (trained) and a false-positive (wrong, untrained, ambiguous) utterance. For example, an utterance “I need help with my account” is a positive intent and the system has to act accordingly, but an utterance “It is too expensive” is a false-positive intent wherein the system should not take any action.

This rule is enabled by-default, and you can’t disable or delete it. You can, however, add more utterances to make this rule more effective.


#### **Adding None Intent Utterances**

You can add utterances in two ways:



* AI Assist: You can take assistance from AI to generate and add more none intent utterances, based on the utterances of your selected rules.
* Input Utterances Manually: You can manually enter and save none intent utterances.

Steps to add none intent utterances:



1. Log in to [https://agentassist.kore.ai/koreagentassist](https://agentassist.kore.ai/koreagentassist/).
2. Click **Configuration**> **Agent Coaching**.
3. Click the **edit** button under **Actions**.
![Alt text](agent-realtime-coaching-images/image_1.png)
4. Click **Add Utterance(s)**. \
![Alt text](agent-realtime-coaching-images/image_2.png)
5. Select **AI Assist** or **Input Utterances Manually**. \
 \
**Follow these steps if you select AI Assist**:
    1. Select **AI Assist**. \
![Alt text](agent-realtime-coaching-images/image_3.png)
    2. Select rules, as required, from the **Add Rules** list and click **Add**. \
![Alt text](agent-realtime-coaching-images/image_4.png)
    3. All added rules are displayed on the left, and the AI starts searching for more utterances that are similar in meaning to the utterances of your selected rules.. \
![Alt text](agent-realtime-coaching-images/image_5.png)
    4. Select utterances, as required, and then click **Add Selected**. \
![Alt text](agent-realtime-coaching-images/image_6.png)
    5. Click **Save** to complete the process. \
![Alt text](agent-realtime-coaching-images/image_7.png)
 


    **Follow these steps if you select Input Utterances Manually:**

    1. Select **Input Utterances Manually**.
    ![Alt text](agent-realtime-coaching-images/image_8.png)
    2. Enter your utterance in the **Utterances** field and press the **Enter** key.
    ![Alt text](agent-realtime-coaching-images/image_9.png)
Following this step, you can add multiple utterances.
    3. Click **Save**
.
![Alt text](agent-realtime-coaching-images/image_10.png)

        * The new utterance gets added to the list of utterances. \
![Alt text](agent-realtime-coaching-images/image_11.png)



### Price Objection

This is a predefined rule with conditions and actions that come with Agent Coaching. You can customize the conditions and actions, but can’t edit or delete the rule name. However, you can disable this rule, if needed. It contains a customer’s price objection utterance and defines the actions agents should take in response. The predefined conditions and actions are:



* **Condition (When)**: Price objection utterance by customer
* **Actions (Then do)**:
    * Alert Type: Hint Agent
    * Alert Title: Price Objection identified
    * Alert Body: Please reassure the customer and offer discounts
    * Alert Display: Doesn’t auto close
    * Alert Adherence: “Ok, Got it”
* **Assigned to**: All Agents

The following screenshot displays the Price Objection rule:
![Alt text](agent-realtime-coaching-images/image_12.png)
For information on rule functionalities, refer to the section 

<p id="gdcalert13" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: undefined internal link (link text: "Create, Publish, Edit, Delete, and Disable Rules"). Did you generate a TOC with blue links? </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert14">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

[Create, Publish, Edit, Delete, and Disable Rules](#heading=h.fvxyd24rl93g). 


## Create, Publish, Edit, Delete, and Disable Rules

This section explains how to create, tag, publish, edit, delete, and disable rules.


### Creating a New Rule

From time to time, depending on newer or different situations, you can create new rules to help agents with newer issues. This section explains the steps to create a new rule.


#### Steps to create a new rule:



1. Log in to [https://agentassist.kore.ai/koreagentassist](https://agentassist.kore.ai/koreagentassist/).
2. Click **Configuration **> **Agent Coaching**. \
![Alt text](agent-realtime-coaching-images/image_13.png)
3. Click **+New Rule**.  \
![Alt text](agent-realtime-coaching-images/image_14.png)
4. Enter a name for the new rule in the **Name** field.
![Alt text](agent-realtime-coaching-images/image_15.png)
5. Enter a short description about the rule in the **Description** field. \
To read how to form a rule description, hover over the “**i**” button beside the **Description** field.
![Alt text](agent-realtime-coaching-images/image_16.png)

    The rule description should be concise and include keywords and conditions. It trains our AI for real-time assistance.
6. Enter a tag in the **Tag** field and then press the **Enter** key to add the tag.
7. Click **Voice** or **Live Chat** or both in the **Channels** field.
    * **Voice**: Choose Voice if you want this rule to take input utterance only through the voice (voice calls) medium.
    * **Live Chat**: Choose Live Chat if you want this rule to take input utterance only through the live chat (text messages) medium.
    * **Both**: Choose both Voice and Live Chat if you want this rule to take input utterance through both these mediums.
8. Click **Apply** to complete the rule creation process: \
![Alt text](agent-realtime-coaching-images/image_17.png)
A message shows up to confirm new rule creation.
9. Click **+Add a trigger** under **When…** to add a trigger condition for the rule. For more information, refer to the **

<p id="gdcalert19" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: undefined internal link (link text: "Agent Coaching Rule Triggers"). Did you generate a TOC with blue links? </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert20">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

[Agent Coaching Rule Triggers](#heading=h.erf80zv7srj3)** section.
10. Click **+Add an action** under **Then do…** to add an action for the rule. For more info, refer to the **

<p id="gdcalert20" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: undefined internal link (link text: "Agent Coaching Actions"). Did you generate a TOC with blue links? </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert21">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

[Agent Coaching Actions](#heading=h.w4w32yx8fk41)** section.
11. Click **Add agents, groups** under **Assign this to…** to add agents or groups you want to assign this rule to. For more info, refer to the **

<p id="gdcalert21" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: undefined internal link (link text: "Assign this to"). Did you generate a TOC with blue links? </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert22">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

[Assign this to](#heading=h.j511ahl30x61)** section.
12. Click **Save**.


### Publishing a Rule

After creating a new rule, you need to publish it to be available in the system. You can either publish a rule after it’s created or wait and publish multiple new rules at once.


#### Steps to publish a rule



1. Log in to [https://agentassist.kore.ai/koreagentassist](https://agentassist.kore.ai/koreagentassist/).
2. Click **Configuration **> **Agent Coaching**.
3. Click the **Publish** button on the top right corner of the page. 
![Alt text](agent-realtime-coaching-images/image_18.png)
    * The Published Successfully confirmation message appears on the screen. \
![Alt text](agent-realtime-coaching-images/image_19.png)


### Editing a Rule

You can add to or change an existing rule, from time to time based on the requirements.


#### Steps to edit a rule



1. Log in to [https://agentassist.kore.ai/koreagentassist](https://agentassist.kore.ai/koreagentassist/).
2. Click **Configuration **> **Agent Coaching**.
3. Locate the rule you want to edit–either from the displayed list or by partially entering the rule name in the **Search** box.
    * As you start entering the rule name, matching rule names appear on the screen. \
![Alt text](agent-realtime-coaching-images/image_20.png)
4. Click the **edit** button beside a rule name that you want to edit. \
![Alt text](agent-realtime-coaching-images/image_21.png)

**Note**: Co-editing a rule is not allowed–if you edit a rule, it's locked, and no one else can edit or delete it simultaneously. AgentAssist will notify you if you attempt to co-edit a rule. If a rule is locked for editing, but the user has not performed any editing for 15 minutes or left the **Rules Configuration** screen, AgentAssist unlocks the rule for editing by another user.


### Deleting a Rule

You can delete a rule due to irrelevance or other reasons. AgentAssist lets you delete an existing rule with the click of a button.


#### Steps to delete a rule



1. Go to the **Configuration > Agent Coaching** main page.
2. Click the delete button beside a rule name that you want to delete. \
![Alt text](agent-realtime-coaching-images/image_22.png)
3. Click the **Yes** button in the confirmation popup window. \
![Alt text](agent-realtime-coaching-images/image_23.png)



### Disabling a Rule

If you don’t want to use a rule temporarily, you can disable it.


#### Steps to disable a rule



1. Go to the **Configuration > Agent Coaching** main page.
2. In the **Enabled** column, click the **disable** 
 button corresponding to the rule you want to disable. \
![Alt text](agent-realtime-coaching-images/image_24.png)
    * The **Configuration has been saved** message appears on the screen. \
![Alt text](agent-realtime-coaching-images/image_25.png)



## Agent Coaching Rule Triggers (When…)

Trigger setting is essential to rule creation. You can’t have a rule without a trigger. Triggers define the conditions for a rule to come into effect. This section explains how to set up triggers for new rules. The available triggers are:



* Utterance Triggers
* Speech Analysis Triggers


### Utterance Triggers

Utterances are inputs from either the customers or the agents. In Utterance Triggers, you set up conditions like input from customer or agent, the number of times the input came, and the time frame within which the input came to set off the trigger.


#### Steps to set up Utterance Triggers:



1. Go to the rule trigger creation page. For help, refer to 

<p id="gdcalert31" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: undefined internal link (link text: "Steps to create a new rule"). Did you generate a TOC with blue links? </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert32">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

[Steps to create a new rule](#heading=h.6fgyarkaa4td). 
2. Under **When**, click the **+ Add a trigger** button. \
![Alt text](agent-realtime-coaching-images/image_26.png)
3. Select **Utterance**. \
![Alt text](agent-realtime-coaching-images/image_27.png) \
4. Click **{select person}**. \
![Alt text](agent-realtime-coaching-images/image_28.png)
5. Select either **Agent** or **Customer**.\
6. Click **set utterances**. \
![Alt text](agent-realtime-coaching-images/image_29.png)
7. Enter an utterance that the user (customer or agent) may use in the **Utterances** box. \
8. Select the utterance you have entered. \
![Alt text](agent-realtime-coaching-images/image_30.png)

    *  There may be other matching utterances the AI suggests: \
![Alt text](agent-realtime-coaching-images/image_31.png)
9. Select the AI-suggested utterances, as required. \
![Alt text](agent-realtime-coaching-images/image_32.png)
**Note**: AI suggests utterances that match with what you have entered based on conversation history. It also shows the appearance percentage of utterances.  
10. Click **Add**. (The appearance of this button is based on the number of utterances entered by you plus the number of AI-suggested utterances you have selected. In this example, it’s 1+3. So, it’s displayed as **Add 4**.) \
![Alt text](agent-realtime-coaching-images/image_33.png)
11. Click **Okay**. \
![Alt text](agent-realtime-coaching-images/image_34.png)
12. Click **Save**. \
 ![Alt text](agent-realtime-coaching-images/image_35.png)
**Note**: Before clicking the **Save** button, you can delete any utterance that you either would have added by mistake or think is not relevant.
    * The following screen appears: \
![Alt text](agent-realtime-coaching-images/image_36.png)
13. Click **1 time** to select the number of times any of these utterances appear. The default selection is **1 time**. For example, a customer may use any of these utterances once by mistake and to be sure, you want the customer to use them twice or thrice. You need to select **2 times** or **3 times** for such situations.   \
![Alt text](agent-realtime-coaching-images/image_37.png)
14. Click the default time frame, **in conversation**, to change it if you want to select other options. \
![Alt text](agent-realtime-coaching-images/image_38.png)
    * If you select **Anytime in conversation**, the following screen appears: \
![Alt text](agent-realtime-coaching-images/image_39.png)
    * If you select **By time**, the following screen appears: \
![Alt text](agent-realtime-coaching-images/image_40.png)
From the dropdown, select **first** or **within** and enter the time in seconds.
    * If you select **By number of messages**, the following screen appears: \
![Alt text](agent-realtime-coaching-images/image_41.png)
 \
From the dropdown, select **first** or **within** and enter a number in the **messages** field.
15. Press the **Enter** key to complete the process.


### Speech Analysis Triggers

This feature analyzes the speech pattern or event of both the customer and the agent and provides real-time feedback and coaching to improve customer-agent conversation quality. This section explains the steps to set up the Speech Analysis Triggers feature.


#### Steps to set up Speech Analysis Triggers



1. Select **Speech Analysis** after clicking **When > +Add a trigger**. \
![Alt text](agent-realtime-coaching-images/image_42.png)
2. Click **{speech type}** and select a type for analysis.  \
![Alt text](agent-realtime-coaching-images/image_43.png)
    * If you select **Cross Talk**, the following screen appears: \
    ![Alt text](agent-realtime-coaching-images/image_44.png)
        1. Click **30** to enter the duration in seconds–30 seconds is the default value.
        2. Enter the duration in seconds and then press the **Enter** key. \
        ![Alt text](agent-realtime-coaching-images/image_45.png)
        3. Click **1 time** to update the number of times crosstalk happened in a conversation. \
        ![Alt text](agent-realtime-coaching-images/image_46.png)
        4. Click to select the number of times, as required.
        5. Click **in conversation** to update when crosstalk happened–**in conversation** is the default value. \
        ![Alt text](agent-realtime-coaching-images/image_47.png)
            1. If you select **Anytime in conversation**, the following screen appears: \
            ![Alt text](agent-realtime-coaching-images/image_48.png)
            2. If you select **By time**, the following screen appears: \
            ![Alt text](agent-realtime-coaching-images/image_49.png)
                1. From the dropdown, select **first** or **within** and enter the time in seconds.
                2. Press the **Enter** key to save the new values. \
**Note**: A validation error is displayed, as highlighted in the screenshot, either if the configured crosstalk time duration is lesser than the selected conversation time period or if the trigger setup is incomplete.
    * If you select **Dead Air**, the following screen appears: \
    ![Alt text](agent-realtime-coaching-images/image_50.png)
        6. Click **30** to enter the duration in seconds, and then press the **Enter** key to save it. \
        ![Alt text](agent-realtime-coaching-images/image_51.png)
        7. Click **{select person}** to select the user. \
        ![Alt text](agent-realtime-coaching-images/image_52.png)
        8. Click **1 time** to select the frequency.
        9. Click **In conversation** to select a time frame. \
        ![Alt text](agent-realtime-coaching-images/image_53.png)
            3. From the dropdown, select **first** or **within** and enter the time in seconds.
            4. Press the **Enter** key to save the new values. \
**Note**: A validation error is displayed, as highlighted in the screenshot, either if the configured Dead Air duration is lesser than the selected conversation time period or if the trigger setup is incomplete.
    * If you select **Speech Speed**, the following screen appears: \
    ![Alt text](agent-realtime-coaching-images/image_54.png)
        10. Click **{select person}** to select either Agent or Customer. \
        ![Alt text](agent-realtime-coaching-images/image_55.png)
        11. Click **180** to enter words per minute–180 words per minute is the default value.
        12. Enter the number of words per minute and then press the **Enter** key to save it.
        13. Click **1 time** to select the frequency.
        14. Click **In conversation** to select a time frame.
    * If you select **Talk Ratio**, the following screen appears: \
    ![Alt text](agent-realtime-coaching-images/image_56.png)
        15. Click **{Comparator}** to select a value comparison. \
        ![Alt text](agent-realtime-coaching-images/image_57.png)
            5. If you select **Less than **or** Greater than**, a screen similar to the following appears: \
            ![Alt text](agent-realtime-coaching-images/image_58.png)
            6. If you select **In between**, the following screen appears: \
            ![Alt text](agent-realtime-coaching-images/image_59.png)
        16. Click **{Value}** to enter a percentage value. \
        ![Alt text](agent-realtime-coaching-images/image_60.png)
If you have selected **In between**, you have to enter the values twice, and click the tick mark, as highlighted in the following screenshot: \
![Alt text](agent-realtime-coaching-images/image_61.png)
        17. Click **in conversation** to select a time duration. By default, **Anytime in conversation** is selected. \
        ![Alt text](agent-realtime-coaching-images/image_62.png)
            7. Click **By time** to indicate a selected time frame for talk ratio measurement.
            8. Enter time in minutes and press the **Enter** key. \
            ![Alt text](agent-realtime-coaching-images/image_63.png)


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

<li><strong>Anytime in conversation: </strong>Select it to configure the dead air period as anytime during a conversation.

<li><strong>By time: </strong>Select it to choose the exact time frame when dead air was noticed. Valid values are: 
<ul>
 
<li>First: Select and enter the time frame as first (variable) seconds of conversation.
 
<li>Within: Select and enter the time frame as within (variable) seconds anytime during the conversation. 
</li> 
</ul>
</li> 
</ul>
   </td>
  </tr>
  <tr>
   <td>Speech Speed
   </td>
   <td>Number of words per minute during a session - either by the agent or the customer.
   </td>
  </tr>
  <tr>
   <td>Talk Ratio
   </td>
   <td>Agent to customer talk ratio - proportion of speaking time by an agent compared to a customer. By default, it can be identified only once. Here is a list of different scenarios for different talk ratio ranges:
<ul>

<li><strong>Equal to 50% for 1 Time in Conversation</strong>: Both the agent and the customer contribute equally to the conversation. A balanced conversation where both parties are actively engaged and sharing information, questions, and responses.

<li><strong>&lt;20% for 4 Times By Time in the first 30 seconds</strong>: The agent speaks less than the customer for four instances within the first 30 seconds of the conversation. It could be due to the agent allowing the customer to express their concerns or issues before providing assistance or solutions.

<li><strong>Less than or equal to 60% for 1 Time By Time within 30 seconds</strong>: The agent's speaking time is limited to 60% or less of the conversation time within the first 30 seconds. This might occur when the agent is actively listening to the customer's initial query or complaint, gathering relevant information, and demonstrating empathy before engaging in a more detailed conversation.

<li><strong>Between 20% and 40% for 1 Time Any Time in Conversation</strong>: A balanced conversation, where the agent speaks for a moderate portion of the conversation (20% to 40%) while allowing the customer to express their needs and concerns.

<li><strong>Between 20% and 40% for 4 Times By Time in the first 30 seconds</strong>: For four instances within the first 30 seconds, the agent maintains a talk ratio of 20% to 40%, giving the customer ample space to explain their issue or query before responding.

<li><strong>Between 20% and 40% for 1 Time By Time within 30 seconds</strong>: The agent maintains a balanced talk ratio (20% to 40%) within the first 30 seconds of the conversation, showing attentiveness and understanding of the customer's initial statements.
</li>
</ul>
   </td>
  </tr>
</table>



### And/Or Condition

AgentAssist allows you to add multiple rule triggers. It lets you set different conditions like combining multiple rules or choosing one or a set of rules against another or a different set of rules. You can even choose or combine rules from different trigger types like Utterance and Speech Analysis triggers.


#### Steps to select And/Or condition



1. Click **+Add a trigger** in the rule trigger creation page to create a new trigger.
2. Click **+Add a trigger **again to create a new rule trigger.
3. Select **And** or **Or**. \
![Alt text](agent-realtime-coaching-images/image_64.png)
**Note**: For creating multiple rule triggers, it is mandatory to choose **And** or **Or**. When you choose “**And,**” the rule triggers add up. When you choose “**Or**,” the rule triggers set to either of the rules. Here’s an example of this functionality:
![Alt text](agent-realtime-coaching-images/image_65.png)

The **And** condition ensures that rule triggers 1 and 2 are combined, and the **Or** condition ensures that either the combination of the first two rule triggers (1+2) or the third rule trigger (3) becomes applicable.




## Agent Coaching Actions (Then do…)

After setting up rule triggers, you need to set up actions for those triggers. Here, you configure what actions Agent Coaching should take if the conditions you set up are met. You can set up three different actions:



* Nudge Agent
* Hint Agent
* Email Manager

You can also set up adherence, which is like an acknowledgment, to ensure the agent has followed the instructions.


### Add Adherence

The Add Adherence feature lets you know the agent’s adherence to the instructions in the form of nudges and hints. Later, you can use this acknowledgement to measure agent performance in the Dashboard. This feature is applicable only for the Nudge and Hint Agent actions. 


#### Add Adherence Types

You have two types of adherences to choose from:



* **Acknowledge Pressed**: Choosing this option sends an acknowledgement that the agent understood your instructions. The agent doesn’t need to take any other action except acknowledging your message. An example would be a compliment to the agent for a job well done. The following screenshot is displayed when this option is used: \
![Alt text](agent-realtime-coaching-images/image_66.png)  
* **Utterance**: Choosing this option sends an acknowledgement that the agent will take further action within a specified time frame during a session. An example would be when you ask the agent to offer a discount to the customer, and the agent acknowledges that they will perform this action within the next few messages, few minutes, or anytime during the session. The following screenshot is displayed when this option is selected: \
![Alt text](agent-realtime-coaching-images/image_67.png)
For practical examples of this feature, refer to steps 7-8 of 

<p id="gdcalert75" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: undefined internal link (link text: "Steps to set up the Nudge Agent actions"). Did you generate a TOC with blue links? </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert76">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

[Steps to set up the Nudge Agent actions](#heading=h.xs5uzo2mdkhi).


### Nudge Agent

The Nudge Agent actions are the small messages that pop up on the agent’s screen while communicating with the customers. They are disappearing messages, which stay on the agent’s screen for 5 seconds. Through these messages, you either compliment the agents for a good job or direct them to take other appropriate actions to serve the customers in the best way possible. Here are the following four nudges that you can choose from:



* Positive
* Neutral
* Alert
* Critical


#### Steps to set up the Nudge Agent actions:



1. Go to the rule action setup page.
2. Click **+ Add an action** under the section, **Then do… \
**
![Alt text](agent-realtime-coaching-images/image_68.png)
3. Click the **Nudge Agent** option in the **Choose an Action** window. \
![Alt text](agent-realtime-coaching-images/image_69.png)
4. Click **{Choose}** to select one of the sentiment messages. \
![Alt text](agent-realtime-coaching-images/image_70.png)
5. Click **{Choose}** to enter a message, as displayed in the following screen: \
![Alt text](agent-realtime-coaching-images/image_71.png)
6. Enter a message in the **Nudge Message** box, and then click the tick mark to save it. \
![Alt text](agent-realtime-coaching-images/image_72.png)
7. Click **+Add Adherence** to set an adherence for the agent. \
![Alt text](agent-realtime-coaching-images/image_73.png)
8. Select **Utterance** in the **Choose a Trigger** window. \
![Alt text](agent-realtime-coaching-images/image_74.png)
9. Click **{set utterances}** to enter the agent’s utterance. \
![Alt text](agent-realtime-coaching-images/image_75.png)
10. Type and select the utterance. You can select similar utterances from the  utterances list. \
![Alt text](agent-realtime-coaching-images/image_76.png)
11. Click **Add**, and then click **Save**. \
![Alt text](agent-realtime-coaching-images/image_77.png)
12. Click **Anytime** in the next screen to select one of the options. \
![Alt text](agent-realtime-coaching-images/image_78.png)
    * If you select **Within next (n) messages**, the following screen appears: \
![Alt text](agent-realtime-coaching-images/image_79.png)
You can change the number of messages, as required, by clicking the highlighted area.
    * If you select **Within next (n) minutes**, the following screen appears: \
![Alt text](agent-realtime-coaching-images/image_80.png)
You can change the time in minutes, as required, by clicking the highlighted area. \
 \
The agent gets screens similar to the following on their system for:
        1. Positive Nudges \
        ![Alt text](agent-realtime-coaching-images/image_81.png)
        2. Neutral Nudges \
        ![Alt text](agent-realtime-coaching-images/image_82.png)
        3. Warning Nudges \
        ![Alt text](agent-realtime-coaching-images/image_83.png)
        4. Critical Nudges \
        ![Alt text](agent-realtime-coaching-images/image_84.png)


### Hint Agent

The Hint Agent actions are small pop-up messages that advise agents to take further action. They appear on the agent’s screen while communicating with the customers and may or may not auto-close, based on how you set them. Through these messages, you also compliment the agents for a good job. Here are the four hint types that you can choose from:



* Positive
* Neutral
* Alert
* Critical


#### Steps to set up the Hint Agent actions:



1. Go to the rule action setup page.
2. Click **+ Add an action** under section, **Then do…**
![Alt text](agent-realtime-coaching-images/image_85.png)
3. Click the **Hint Agent** option in the **Choose an Action** window. \
![Alt text](agent-realtime-coaching-images/image_86.png)
4. Click **{Choose}** and select one of the message types, as highlighted in the following screenshot: \
![Alt text](agent-realtime-coaching-images/image_87.png)
5. Click **{Choose}** to enter the title of your message, as highlighted in the following screenshot: \
![Alt text](agent-realtime-coaching-images/image_88.png)
6. Click the tick mark after entering the title. \
![Alt text](agent-realtime-coaching-images/image_89.png)
7. Click **{Choose}** to enter the body of your message, as highlighted in the following screenshot: \
![Alt text](agent-realtime-coaching-images/image_90.png)
8. Click the tick mark after entering the body of your message. \
![Alt text](agent-realtime-coaching-images/image_91.png)
9. Click **{Choose}** to select the display option of your message, as highlighted in the following screenshot: \
![Alt text](agent-realtime-coaching-images/image_92.png)
    1. If you select **Auto Close**, the following screen displays: \
    ![Alt text](agent-realtime-coaching-images/image_93.png)
Click the default value of **5 seconds** to update it, as required. After entering the value, press the Enter key to update the new entry.
    2. If you select **Does not auto close**, the following screen displays: \
    ![Alt text](agent-realtime-coaching-images/image_95.png)
10. Click **+Add Adherence** to set up agent adherence of the rule action. \
![Alt text](agent-realtime-coaching-images/image_96.png)
11. Select an adherence trigger: \
![Alt text](agent-realtime-coaching-images/image_97.png)
    3. If you select **Acknowledge Pressed**, the following screen is displayed: \
    ![Alt text](agent-realtime-coaching-images/image_98.png)
    4. If you select **Utterance**, follow steps 9-12 of 

<p id="gdcalert107" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: undefined internal link (link text: "Steps to set up the Nudge Agent actions"). Did you generate a TOC with blue links? </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert108">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

[Steps to set up the Nudge Agent actions](#heading=h.xs5uzo2mdkhi) to complete the process. \


    The agent gets screens similar to the following on their system for:

* Positive Hints \
![Alt text](agent-realtime-coaching-images/image_99.png)
* Neutral Hints \
![Alt text](agent-realtime-coaching-images/image_100.png)
* Warning Hints \
![Alt text](agent-realtime-coaching-images/image_101.png)
* Critical Hints \
![Alt text](agent-realtime-coaching-images/image_102.png)


### Email Manager

This feature lets you set a push notification alert to the manager’s desktop. You can set who should receive this notification and customize the title and the body of the message. It applies to the customer’s actions, such as using profanity or too many crosstalks. Instead of nudges and hints, the system can send an alert notification to the manager in these situations.


#### Steps to set up the Email Manager action:



1. Go to the rule action setup page.
2. Click **+ Add an action** under section, **Then do…** \
![Alt text](agent-realtime-coaching-images/image_103.png)
3. Click the **Email Manager** option in the **Choose an Action** window. \
![Alt text](agent-realtime-coaching-images/image_104.png)
4. Click **{select people}** to enter the email address of one or multiple managers who should receive the notification. \
![Alt text](agent-realtime-coaching-images/image_105.png)
5. Enter the email addresses, and then click the tick mark to save them. \
![Alt text](agent-realtime-coaching-images/image_106.png)
**Note**: Use commas to separate multiple email addresses.
6. Click **{set subject}** to enter a subject for your notification. \
![Alt text](agent-realtime-coaching-images/image_107.png)
7. Click the tick mark to save it. \
![Alt text](agent-realtime-coaching-images/image_108.png)
8. Click **{set body}** to enter the body of the notification. \
![Alt text](agent-realtime-coaching-images/image_109.png)
9. Enter the notification content and then click the tick mark to save it. \
![Alt text](agent-realtime-coaching-images/image_110x.png)



## Assign This To

This feature lets you assign the rule to the intended agents or groups. Currently, by default, this feature is assigned to all agents.


### Steps to assign rules to agents or groups



1. Go to the rule action setup page. For help, refer to 

<p id="gdcalert121" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: undefined internal link (link text: "Steps to create a new rule"). Did you generate a TOC with blue links? </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert122">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

[Steps to create a new rule](#heading=h.6fgyarkaa4td). \
2. Click **+Add agents, groups** under the section **Assign this to...** \
![Alt text](agent-realtime-coaching-images/image_110.png)
    * The following screen shows the default selection of **All Agents**: \
    ![Alt text](agent-realtime-coaching-images/image_111.png)

3. Click **Save** from the top right corner of the screen. \
![Alt text](agent-realtime-coaching-images/image_112.png)
    * The new rule appears at the bottom of the list of all new rules. \
    ![Alt text](agent-realtime-coaching-images/image_112.png)
