# Surveys

Surveys let you send customers a satisfaction survey after they interact with your business.

To access surveys, go to **Contact Center AI** > **CONFIGURATIONS** > **Surveys**.  
<img src="../images/survey-page.png" alt="Surveys Page" title="Surveys Page" style="border: 1px solid gray; zoom:80%;">

## How Surveys Work

The Surveys feature lets you get customer satisfaction ratings after conversations. You can only create one survey, which you can assign to voice, chat, or both.
survey configuration window
The system sends the survey according to a frequency that you can customize. After a customer conversation ends, the system or agent can ask the customer to provide feedback using a survey form.  

When selecting the Feedback option, customers see a short survey through which they can rate the conversation on a scale from 1 to 5 (1 is extremely poor, while 5 is extremely good).  

The submitted rating reflects in the Dashboard, under the Queues and Agents view, as the _Average Satisfaction Rating_ and _Customer Satisfaction by Channel._

## The Surveys Live Board

The Surveys section lets you create a survey or view and edit an existing one. You can find the following information:

* **Survey Name**: The name given to your survey.
* **Description**: The description provided for the survey.
* **Experience Enabled For**: The system lists the survey enabled channels.
* **Frequency**: The frequency with which the survey goes out.
* **Status**: Enabled or Disabled.

## General Information

Under General Information, provide information for the following mandatory fields:

* Survey Name: The name by which to identify the survey.
* Description: A short description of the survey.
    <img src="../images/general-information.png" alt="General Information Section" title="General Information Section" style="border: 1px solid gray; zoom:60%;">

## Chat, Call, and Email Experience

The Chat, Call, and Email Experience tabs provide access to the following features:

1. Select the **Chat Experience**, **Call Experience**, or **Email Experience** tabs.
1. Enable the **Chat Experience**, **Call Experience**, or **Email Experience** to request customers to take the survey.
1. Configure the **Request Message** and add a **Gratitude Message** that appears to customers before and after they take the survey. Choose the message language, type the message in, then select **Done**.  
    <img src="../images/edit-message.png" alt="Request Messages" title="Request Messages" style="border: 1px solid gray; zoom:60%;">

    !!! Note

        Email message can be written in plain text or HTML/CSS code.

1. Set the Survey Frequency by configuring one of the following options:

    | Option                 | Description                                                                              |
    | :--------------------- | :--------------------------------------------------------------------------------------- |
    | Show to Everyone       | Makes the survey visible to all customers.                                                                                                          |
    | Show to Every nth User | Makes the survey visible to every nth customer. For example, if you enter `2`, the survey appears for every second customer.                                |
    | Agents can Trigger     | Lets agents to trigger the survey. When Auto Trigger Survey is enabled, the system sends surveys automatically, and agents can turn them off if required. |


1. Advanced Survey Conditions

    * Trigger the Customer Satisfaction (CSAT) survey when no agents are available: Triggers a CSAT survey when agent transfer isn't initiated.
    * Trigger the CSAT survey outside business hours: Triggers a CSAT survey outside business hours when no agents are available.
    * Trigger CSAT for agent-closed conversations: Triggers CSAT survey for conversations closed by agents.

1. Turn on the toggle to verify the survey is active.
1. Select **Done** to begin sending it to customers. If you don't want to do so, leave the survey disabled.  
    <img src="../images/auto-trigger-survey.png" alt="Configure Experience" title="Configure Experience" style="border: 1px solid gray; zoom:60%;">

## Edit a Survey

Steps to edit a survey:

1. In the Surveys section, select the **Survey Name** or the **Edit** icon.  
2. Make the required changes in the survey window, then select **Done**.

## Delete a Survey

Steps to delete a survey:

1. In the Surveys section, select the **Survey Name** or the **Edit** icon.
2. In the survey configuration window, select **Delete** on the left side of the bottom toolbar and confirm your choice.

!!! Warning "Deleted Surveys"

    You cannot restore deleted surveys. After you delete a survey, the system no longer sends it to customers.