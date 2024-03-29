# Waiting Flows

While customers wait for an agent to assist with their query via voice or chat, you can customize their Waiting Experience to maintain engagement and improve customer satisfaction.

## Key Features

You can configure the Waiting Experience within Contact center using the following features:

* Routing rules based on agent skills.
* Message options for both voice and chat requests:
    * Initial message when a request is assigned to a queue.
    * Hold audio for calls,
    * Periodic message delivered while contacts wait – both for calls and chats.
* Message language configuration.
* Call to chat deflection if the wait time exceeds a specified limit.
* Callback if the wait time exceeds a specified limit.
* Send a voicemail if the call wait duration exceeds a specified limit, the queue position is too long, or the estimated wait time exceeds a specified limit.

    !!! NOTE

        The voicemail option is only available for accounts configured with Kore Voice Gateway.

## The Waiting Experience Live Board

You can find the Waiting Experience Live Board by navigating to **Contact Center > FLOWS & ROUTING > Waiting Flows**.
<img src="../images/waiting-flows-page.png" alt="Waiting Flows Page" title="Waiting Flows Page" style="border: 1px solid gray; zoom:80%;">

### Waiting Experience Live Board features

The Waiting Experience section displays the following fields:

<table>
  <tr>
   <td><strong>FIELD</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
  </tr>
  <tr>
   <td>Name
   </td>
   <td>The name of the Waiting Experience entry.
   </td>
  </tr>
  <tr>
   <td>Skill Rule
   </td>
   <td>The skill rules that have been configured for the entry. The waiting experience. Conversations matching these skill rules will go through the waiting experience configured within this entry.
   </td>
  </tr>
  <tr>
   <td>Description
   </td>
   <td>The description of the Waiting Experience entry.
   </td>
  </tr>
  <tr>
   <td>Update (Icon)
   </td>
   <td>This icon lets you access the configuration area for a Waiting Experience entry, where you can update the available options.
   </td>
  </tr>
</table>

## Add Waiting Experience

To add a new waiting experience entry, follow these steps:

* Navigate to **Contact Center > FLOWS & ROUTING > Waiting Flows**.
* Click the **+ New Waiting Experience** button.
<img src="../images/add-new-experience-flow.png" alt="Add New Waiting Experience" title="Add New Waiting Experience" style="border: 1px solid gray; zoom:80%;">

* In the **Add New Waiting Experience** window, you will see three tabs:
    1. Configuration, where you can set up the name, description, and routing rules;
    2. Call Experience, where you can configure the Waiting Experience for customers who call;
    3. Chat Experience, where you can customize the Waiting Experience for chats.

### Configuration

The **Configuration** section lets you set up the basics of your Waiting Experience entry.
<img src="../images/skill-configuration.png" alt="Configure New Experience" title="Configure New Experience" style="border: 1px solid gray; zoom:80%;">

Get started by configuring the following:

#### Name and Description

Provide a **Name** and a brief **Description** for the Waiting Experience entry.
<img src="../images/name-description.png" alt="Name and Description of the Experience" title="Name and Description of the Experience" style="border: 1px solid gray; zoom:80%;">

#### Routing Rules

Define the configuration rules for the **Skill Group** and **Skill** waiting queue constraints.

1. Select the Skill Group, then the Skill that the Waiting Experience should match;
2. Click the row-wise **+Add** button to add a new row to the existing **Routing Rule** (OR) condition and the Delete icon to delete a row;
3. Configure the **AND/OR** conditional logic by hovering over a rule row and toggling between the tabs, as shown in the demo below;
4. To configure the _AND_ condition, click the **+ Add** button below the _OR/AND_ section;
5. To remove a rule row, click the **Delete (ⓧ)** icon next to the row. To delete a rule section, click the **Delete (bin) **icon next to it.
<img src="../images/routing-rules.gif" alt="Routing Rules" title="Routing Rules" style="border: 1px solid gray; zoom:80%;">

Below is an example configuration for Routing Rules:
<img src="../images/routing-rules-example.png" alt="Routing Rules Example" title="Routing Rules Example" style="border: 1px solid gray; zoom:80%;">
In this example, customers are mapped to a specific agent as follows:
    1. If the **skill group _Languages_** and **skill** is _English OR_,
    2. If the **skill group** is _Languages_ and **skill** is _Spanish_, _AND_,
    3. If the **skill group** is _Travel Requirements_ and **skill** is _US Entry_.

### Call Experience

To set the call waiting experience, click **Call Experience** for customers contacting you using the voice channel.
<img src="../images/call-experience.gif" alt="Call Experience" title="Call Experience" style="border: 1px solid gray; zoom:80%;">

In the **Call Experience** page, configure the settings below:

#### Initial Message

This message is played to the customer waiting in the queue and is enabled by default. To change the language, select the desired language tab, edit the message, and click **Done**.
<img src="../images/initial-message.png" alt="Initial Message" title="Initial Message" style="border: 1px solid gray; zoom:80%;">

#### Hold Audio

This audio is played to the customers on hold. Select the audio you wish to play from the Hold Audio dropdown list.
<img src="../images/hold-audio.png" alt="Hold Audio" title="Hold Audio" style="border: 1px solid gray; zoom:80%;">

#### Periodic Messages

These messages are played periodically to the customers waiting in the queue or put on hold. To configure them, follow these steps:

1. Set the number of seconds within which the periodic message should play;
2. Set the play order as either _random _or _sequential_;
3. Select the type of playback – either _once _or _looped_;
4. Edit the message and change the language, as needed, by clicking one of the language options at the top of the editor. Click ✔ **Done** to save or click **x** **Close** to discard your changes;
5. To add another message, click **+ Add Another**;
6. To delete a message, click the **Delete** icon next to it.
<img src="../images/periodic-messages.png" alt="Periodic Messages" title="Periodic Messages" style="border: 1px solid gray; zoom:80%;">

Periodic messages also enable organizations to allow their customers to view/listen to their Queue Position and Estimated Wait Time (EWT).

You can configure the following variables:

* **Queue Wait Time**: {{queue.waitTime}} min
* **Queue Position**: {{queue.position}}

**Chat Deflection**

You can configure the following _call to chat deflection_ when the wait time exceeds a set limit:

1. **Enable** the option to activate it;
2. Set the **digit key** that customers should press for deflection; then **set the time** after which the chat deflection should occur. For example, deflect from call to chat if the estimated wait time exceeds 3 minutes, and ask customers to press #7;
3. **Edit the chat deflection message** in the textbox. Use the language tab to change languages. Click ✔ **Done** to save or click  **x** **Close** to discard your changes.
<img src="../images/chat-deflection.png" alt="Chat Deflection" title="Chat Deflection" style="border: 1px solid gray; zoom:80%;">

**CallBack Option** 

If the wait time exceeds a set limit, you can offer or force a callback for waiting customers as follows:

1. **Enable** the option to activate it;
2. Set the **digit key** that customers should press to be redirected to the callback service. Waiting customers can either be offered or **forced** to receive a callback based on the settings configured here;
3. **Edit the chat deflection message** in the textbox. Use the language tab to change languages. Click ✔ **Done** to save or click **x** **Close** to discard your changes.
<img src="../images/callback-option.png" alt="Call Back Option" title="Call Back Option" style="border: 1px solid gray; zoom:80%;">

**Voicemail**

You can offer or force a voicemail for waiting customers in the following scenarios:

* Call waiting duration is greater than “x” minutes.
* Queue position is greater than “x”.
* Estimated wait time is greater than “x” minutes.

Steps to offer or force voicemail:

1. **Enable** the option to activate it;
2. Set the **digit key** that customers should press to be redirected to the voicemail service. Customers waiting in the queue can either be **offered** or **forced** to receive a callback based on the settings configured here;
3. **Edit the message** in the textbox. Use the language tab to change languages. Click ✔ **Done** to save or click **x** **Close** to discard your changes.
<img src="../images/voicemail.png" alt="Voicemail" title="Voicemail" style="border: 1px solid gray; zoom:80%;">

### Chat Experience

Click the **Chat Experience** tab to start configuring the waiting experience for customers contacting you via chat.
<img src="../images/chat-experience.png" alt="Chat Experience" title="Chat Experience" style="border: 1px solid gray; zoom:80%;">

In the Chat Experience section, you can configure the following settings:

#### Initial Message

This message will be displayed to the contact waiting in the queue. By default, the initial message is enabled.

To edit this message text and language, type your custom message in the textbox, and then select a language. Click ✔ **Done** to save or click **x** **Close** to discard your changes.
<img src="../images/initial-message-chat.png" alt="Initial Message Chat" title="Initial Message Chat" style="border: 1px solid gray; zoom:80%;">

#### Periodic Messages

These messages are periodically displayed to customers waiting in the chat queue. They can be configured as follows:

1. Set the number of seconds within which the periodic message should display;
2. Choose whether to display the messages randomly or sequentially;
3. Select whether the message should display _once_ or be _looped_;
4. Edit the message text and change the language, as needed, by clicking one of the language options at the top of the editor. Click ✔ **Done** to save or click **x** **Close** to discard your changes;
5. To add another message, click **+ Add Another**;
6. To delete a message, click the **Delete** icon next to it.
<img src="../images/periodic-messages-chat.png" alt="Periodic Message Chat" title="Periodic Message Chat" style="border: 1px solid gray; zoom:80%;">

### Save

Click the **Save** button at the bottom of the Edit Waiting Experience window to make sure that your configuration is saved. You can save all your settings by clicking in any tab.
<img src="../images/save-experience.png" alt="Save Experience" title="Save Experience" style="border: 1px solid gray; zoom:80%;">

### Edit Waiting Experience

To edit Waiting Experience configurations, follow these steps:

1. In the **Waiting Experience** section, click the **Edit** icon for the waiting experience entry you want to edit.
<img src="../images/edit-experience.png" alt="Edit Waiting Experience" title="Edit Waiting Experience" style="border: 1px solid gray; zoom:80%;">

2. In the **Edit Waiting Experience** window, modify the configurations as required, and click **Save**.
3. A success confirmation message is displayed when the **Waiting Experience** changes are updated.
<img src="../images/confirmation-message.png" alt="Waiting Experience Updated" title="Waiting Experience Updated" style="border: 1px solid gray; zoom:80%;">

### Delete Waiting Experience

To delete a Waiting Experience entry, follow these steps:

1. In the **Waiting Experience** section, edit the entry you want to delete;
2. At the top right of the Edit Waiting Experience window, click **Delete Waiting Experience**.;
<img src="../images/delete-waiting-experience.png" alt="Delete Waiting Experience" title="Delete Waiting Experience" style="border: 1px solid gray; zoom:80%;">

3. You will be asked to confirm your choice. If you are sure that you want to delete the entry, click **Yes**.

!!! Note

    Deleted Waiting Experience entries cannot be restored. Please proceed with caution.