# Surveys

Surveys let you send customers a satisfaction survey after they interact with your business.

To access surveys, go to **Contact Center AI** > **CONFIGURATIONS** > **Surveys**.  
<img src="../images/surveys-page.png" alt="Surveys Page" title="Surveys Page" style="border: 1px solid gray; zoom:80%;">

## How Surveys Work

The Surveys feature lets you get customer satisfaction ratings after conversations. You can only create one survey, which you can assign to voice, chat, or both.

The survey is sent according to a frequency that you can customize. Once a customer conversation ends, the customer will be asked to provide feedback using a survey form.  
<img src="../images/survey-link.png" alt="Surveys Link" title="Survey Link" style="border: 1px solid gray; zoom:80%;">

When clicking the Feedback button, customers see a short survey through which they can rate the conversation on a scale from 1 to 5 (1 is extremely poor, while 5 is extremely good).  
<img src="../images/survey-link.png" alt="Surveys Link" title="Survey Link" style="border: 1px solid gray; zoom:80%;">

The submitted rating reflects in the Dashboard, under the Queues and Agents view, as the _Average Satisfaction Rating_ and _Customer Satisfaction by Channel._

## The Surveys Live Board

The Surveys section lets you create a survey or view and edit an existing one. In addition, you can find the following information:

* **Survey Name**: The name given to your survey.
* **Actions**: An Edit action is available under this column, allowing you to make changes to an existing survey. This action only displays if there is a survey created.
* **Description**: The description provided for the survey.
* **Experience Enabled For**: The channels for which the survey is enabled.
* **Frequency**: The frequency with which the survey goes out: 
    * **None**: The survey displays to everyone,
    * **Show to every nth user**: The survey displays once every set number of customers,
    * **Agents can trigger**: The survey only displays to customers to whom agents choose to send it.
* **Status**: Enabled or Disabled.

## Create a Survey

To create a survey, follow these steps:

1. Go to **Contact Center AI** > **CONFIGURATIONS** > **Surveys**.
2. In the Surveys section, click the **+ New Survey** button.  
<img src="../images/new-survey-button.png" alt="Add New Survey" title="Add New Survey" style="border: 1px solid gray; zoom:80%;">

3. In the _New Survey_ window, configure the following:

## General Information

Under General Information, provide information for the following mandatory fields:

* Survey Name: The name by which to identify the survey.
* Description: A short description of the survey.
<img src="../images/general-information-section.png" alt="General Information Section" title="General Information Section" style="border: 1px solid gray; zoom:80%;">

## Chat and Call Experience

The Chat Experience and Call Experience tabs provide access to the following features:

* Click the **Chat Experience** or **Call Experience** tab.
* Enable the Chat Experience or Call Experience to request customers to take the survey during an agent chat session.
* Edit the Request Message and Gratitude Messages to display to customers before and after taking the survey.
    * Choose the message language, type the message in, then click **Done**.  
    <img src="../images/request-messages.gif" alt="Request Messages" title="Request Messages" style="border: 1px solid gray; zoom:80%;">
* Set the Survey Frequency by configuring the following options:
    * **Show to Everyone** – Select this option to make the survey visible to all the customers.
    * **Show to Every nth User** – Select this option to make the survey visible to every _nth_ user. For example, if you enter 2 in the input textbox, the survey will appear to every second customer.
    * **Agents can Trigger** – This will let the agents trigger the survey.
* Toggle on Enable at the top right to ensure the survey is active.
* Click **Done** to begin sending it to customers. If you do not want to do so, leave the survey disabled.  
<img src="../images/chat-experience.png" alt="Configure Chat Experience" title="Configure Chat Experience" style="border: 1px solid gray; zoom:80%;">

## Edit a Survey

Steps to edit a survey:

1. In the Surveys section, click the **Survey Name** or the **Edit** icon.
<img src="../images/edit-suvey.png" alt="Edit a Survey" title="Edit a Survey" style="border: 1px solid gray; zoom:80%;">

2. Make the required changes in the survey window, then click **Done**.

## Delete a Survey

Steps to delete a survey:

1. In the Surveys section, click the **Survey Name** or the **Edit** icon.
2. In the survey configuration window, click the **Delete** (bin) button on the left side of the bottom toolbar.  
<img src="../images/delete-survey.png" alt="Delete a Survey" title="Delete a Survey" style="border: 1px solid gray; zoom:80%;">
3. Confirm your choice.

!!! Note

    You cannot restore deleted surveys. Once deleted, surveys are no longer sent to customers.
