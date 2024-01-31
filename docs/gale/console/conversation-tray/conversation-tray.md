# Conversation Tray

The conversation tray helps agents track their workload by displaying all conversations that are currently assigned to them.
<img src="../images/conversation-tray.png" alt="Conversation Tray" title="Conversation Tray" style="border: 1px solid gray; zoom:80%;">

# Conversation Status

The conversation tray divides conversations into different statuses, which are displayed at the top. Conversations can have any of the following four statuses:

* **Overdue**: These are conversations where the agent has not responded to the customer within the system-specified time.
* **Ongoing**: These are conversations where the last sent or received message was within the system-specified time.
* **Idle**: These are conversations where the last message was sent or received more than the system-specified time ago.
* **Expired**: These are conversations where the user left the conversation, or the conversation was auto-closed after the system-specified time of inactivity. These conversations are also known as dropped-off conversations.
<img src="../images/conversation-status.png" alt="Conversation Status" title="Conversation Status" style="border: 1px solid gray; zoom:100%;">

# Conversation Information

This section displays data about the conversations you are handling.

Each entry in this tray includes the following information:

* Customer Name (if available)
* Skills that have been identified based on customer intent
* The last exchange in the conversation
* Customer profile picture
* Interaction channel icon
* Conversation status icon.
<img src="../images/conversation.png" alt="Conversation" title="Conversation" style="border: 1px solid gray; zoom:80%;">

# Manual Call using the Dialer

You can use the Dialer to call external contacts, as follows:

1. Click the **Dialer** icon on the Conversation Tray to display the **Outbound Call** window.  
<img src="../images/dialer.png" alt="Dialer" title="Dialer" style="border: 1px solid gray; zoom:80%;">

2. To initiate an outbound call using the **Dialer** tab, select the country, dial any phone number, and click the **Call** button.
<img src="../images/outbound_call_dialer.png" alt="Outbound Call Dialer" title="Outbound Call Dialer" style="border: 1px solid gray; zoom:80%;">

3. The **Contacts** tab is a public directory (published by Administrators using [Public APIs](https://docs.kore.ai/smartassist/api/apis-list/#Contacts_Public_APIs)) where you can view saved contacts – **Name** and **Phone Number**.
4. You can search for a specific name and click the **Call** button to initiate an Outbound Call with the selected contact.
<img src="../images/contacts.png" alt="Contacts" title="Contacts" style="border: 1px solid gray; zoom:80%;">

# Call History

To view the Outbound Call History, follow these steps:

1. Click the **Dialpad** icon to display the **Outbound Call** window.
2. Click the **Call History** tab to view the following:
    * Name
    * Phone Number
    * Day (_Today, Yesterday, Monday, etc._)
    * Date
    * Time of call and duration
    * Type of call (Incoming, Outgoing, or Transferred)
    <img src="../images/call_history.png" alt="Call History" title="Call History" style="border: 1px solid gray; zoom:80%;">