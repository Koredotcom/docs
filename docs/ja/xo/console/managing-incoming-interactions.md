# Incoming Interactions

## Next In Queue Notifications

The section at the bottom left corner of the Agent Console displays new interactions assigned to an agent along with the count.  
<img src="../images/next-in-queue-notification.png" alt="Next in Queue Notification" title="Next in Queue Notification" style="border: 1px solid gray; zoom:80%;">

## Browser Notifications

A system push notification accompanies new interactions, so you can see them even when the browser is minimized or the Agent Console is not in use. System notifications are supported for Chrome, Firefox, Chromium-based Microsoft Edge, and Safari. Each notification plays a sound, too.

When the first notification is pushed, your browser will ask you to allow notifications from Contact Center AI. Please allow this if you want to receive such notifications or block if you do not. If you block these notifications, you will continue to hear the sound alert and will see the Next in Queue popup under your Conversation Tray when opening the Agent Console.  
<img src="../images/new-interaction.png" alt="New Interaction" title="New Interaction" style="border: 1px solid gray; zoom:80%;">

## Handling Incoming Interactions Based on Answer Mode

### Manual Answer Mode

When the manual answer mode is enabled, agents can click **Accept** to interact with the next customer. The conversation panel corresponding to the newly accepted conversation is displayed when the agent clicks this button.  
<img src="../images/accep-conversation.png" alt="Accept Interaction" title="Accept Interaction" style="border: 1px solid gray; zoom:80%;">

If an agent does not accept the assigned interaction in the period specified under answer mode. In that case, the conversation is returned to the queue and the agent status is automatically changed to away to avoid further conversations from being assigned to them.

If Explicit Reject is enabled in the Answer Mode:  
* Agents can Accept (✅) or Reject (❌) each interaction on the conversation tray.  
* **Accept**: Displays conversation panel for that conversation.  

* **Reject**: Removes conversation from agent's queue, and returns it to the queue for reassignment.  
<img src="../images/accept-reject-button.png" alt="Accept Reject Button" title="Accept Reject Button" style="border: 1px solid gray; zoom:80%;">

### Auto-Answer Mode

If auto-answer mode is enabled, the accepted conversations appear at the top or bottom of the conversation tray list, depending on the selected sorting order, and are marked with a **New** indicator. This will be displayed till the agent clicks the conversation and sends the first message.

For more information, refer to [Agent Settings > Answer Mode](../contactcenter/agent-and-supervisors/agent-management/agent-management.md#answer-mode).  
<img src="../images/new-accepted-conversations.png" alt="New Accepted Interaction" title="New Accepted Interaction" style="border: 1px solid gray; zoom:80%;">

If an agent does not send the first response to the auto-assigned interaction in the period specified under answer mode. In that case, the conversation is returned to the queue and the agent status is automatically changed to away to avoid further conversations from being assigned to them.

## Handling Interactions When Conversation Filters Are Applied

When conversation state filters are applied (for example, ongoing, idle), accepted conversations are displayed on the conversation tray with a **View** option on the conversation. This will be displayed till the agent clicks the conversation and sends the first message.  
<img src="../images/filter-on-view-conversation.png" alt="Filter on View Interaction" title="Filter on View Interaction" style="border: 1px solid gray; zoom:90%;">

## Sort Incoming Interactions

New interactions will appear at the top of the conversation tray based on their order of acceptance. This can be revised as follows:

1. Click the **↑↓** icon at the top of the conversation tray.  
<img src="../images/sort-button.png" alt="Sort Button" title="Sort Button" style="border: 1px solid gray; zoom:80%;">

2. Select either **Latest on Top** or **Latest at Bottom**.  
<img src="../images/sort-options.png" alt="Sort Options" title="Sort Options" style="border: 1px solid gray; zoom:80%;">

3. A confirmation message is displayed and the sorting order is updated. The blue check mark indicates the current selection.