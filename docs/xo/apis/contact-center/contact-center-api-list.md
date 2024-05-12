# Contact Center API List

Several APIs are available from the SmartAssist Platform. Based on the functionality addressed, the APIs can be categorized as:

* [Analytics and Reporting APIs](#analytics-and-reporting-apis)
* [Agent Creation APIs](#agent-creation-apis)
* [Skills APIs](#skills-apis)
* [Skill Group APIs](#skill-group-apis)
* [Agent Group APIs](#agent-group-apis)
* [Contacts Public APIs](#contacts-public-apis)
* [Import/Export Data APIs](#importexport-data-apis)
* [Call Recording API](#call-recording-api)
* [Outbound Calling API](#outbound-calling-api)
* [Transfer Conversation to a Specific Agent API](#transfer-conversation-to-a-specific-agent-api)
* [Queue Management APIs](#queue-management-apis)

### Analytics and Reporting APIs

<table>
  <tr>
   <td>API
   </td>
   <td>DESCRIPTION
   </td>
   <td>ASSOCIATED APP SCOPE
   </td>
  </tr>
  <tr>
   <td><a href="../get-intent-real-time-data">Get Intent Real-Time Data</a>
   </td>
   <td>To retrieve the most recent conversational data for the given Bot Id. Gets the latest 25 sessions data for the given Bot Id that completed the execution of the flow.
   </td>
   <td>SmartAssist Analytics
   </td>
  </tr>
  <tr>
   <td><a href="../historical-agent-status-summary">Historical Agent Status Summary</a>
   </td>
   <td>To retrieve the status of every agent for each bucket in the given time interval. The status shown can be available, busy, away, etc.
   </td>
   <td>SmartAssist Analytics
   </td>
  </tr>
  <tr>
   <td><a href="../agent-status-details">Agent Status Details API</a>
   </td>
   <td>To retrieve the status of every agent for each bucket in the given time interval. The status shown can be available, busy, away, etc.
   </td>
   <td>SmartAssist Analytics
   </td>
  </tr>
  <tr>
   <td><a href="../get-all-conversations-data-call-details">Get All Conversations Data – Call Details</a>
   </td>
   <td>To retrieve the raw data for all conversations with the given Account Id.
   </td>
   <td>SmartAssist Analytics
   </td>
  </tr>
  <tr>
   <td><a href="../list-of-conversations">List of Conversations</a>
   </td>
   <td>To retrieve the list of conversations with the given stream Id.
   </td>
   <td>SmartAssist Analytics
   </td>
  </tr>
  <tr>
   <td><a href="../get-a-specific-conversation">Get a specific Conversation</a>
   </td>
   <td>To retrieve a particular conversation by providing the Conversation Id.
   </td>
   <td>SmartAssist Analytics
   </td>
  </tr>
  <tr>
   <td><a href="../queue-size">Queue Size</a>
   </td>
   <td>To retrieve the queueDetails by giving queueId and filters with the given stream Id.
   </td>
   <td>SmartAssist Analytics
   </td>
  </tr>
</table>

### Agent Creation APIs

<table>
  <tr>
   <td>API
   </td>
   <td>DESCRIPTION
   </td>
   <td>ASSOCIATED APP SCOPE
   </td>
  </tr>
  <tr>
   <td><a href="../create-an-agent">Create an Agent</a>
   </td>
   <td>To add an agent with the given Stream Id.
   </td>
   <td>SmartAssist Analytics
   </td>
  </tr>
  <tr>
   <td><a href="../list-all-agents">List All Agents</a>
   </td>
   <td>To retrieve the list of all agents with the given Stream Id.
   </td>
   <td>SmartAssist Analytics
   </td>
  </tr>
  <tr>
   <td><a href="../get-a-specific-agent">Get a Specific Agent</a>
   </td>
   <td>To retrieve the details of a particular agent with the given stream Id and agent Id.
   </td>
   <td>SmartAssist Analytics
   </td>
  </tr>
  <tr>
   <td><a href="../update-a-specific-agent">Update a Specific Agent</a>
   </td>
   <td>To update the details of a particular agent with the given Stream Id and Agent Id.
   </td>
   <td>SmartAssist Analytics
   </td>
  </tr>
  <tr>
   <td><a href="../delete-a-specific-agent-from-a-particular-agent-group">Delete a Specific Agent from a Particular Agent Group</a>
   </td>
   <td>To delete a particular agent with the given Stream Id and Agent Id.
   </td>
   <td>SmartAssist Analytics
   </td>
  </tr>
</table>

### Skills APIs

<table>
  <tr>
   <td>API
   </td>
   <td>DESCRIPTION
   </td>
   <td>ASSOCIATED APP SCOPE
   </td>
  </tr>
  <tr>
   <td><a href="../create-a-skill">Create a Skill</a>
   </td>
   <td>To add a skill with the given Stream Id and Skill Group ID.
   </td>
   <td>SmartAssist Analytics
   </td>
  </tr>
  <tr>
   <td><a href="../get-all-skills-from-a-skill-group">Get All Skills from a Skill Group</a>
   </td>
   <td>To retrieve the list of skills with the given Stream Id and Skill Group Id.
   </td>
   <td>SmartAssist Analytics
   </td>
  </tr>
  <tr>
   <td><a href="../get-a-particular-skill">Get a Particular Skill</a>
   </td>
   <td>To retrieve the details of a particular skill with the given Stream Id, Skill Group Id, and Skill Id.
   </td>
   <td>SmartAssist Analytics
   </td>
  </tr>
  <tr>
   <td><a href="../update-a-particular-skill">Update a Particular Skill</a>
   </td>
   <td>To update a particular skill with the given Stream Id, Skill Group Id, and Skill Id.
   </td>
   <td>SmartAssist Analytics
   </td>
  </tr>
  <tr>
   <td><a href="../delete-a-skill-from-a-particular-skill-group">Delete a Skill from a Particular Skill Group</a>
   </td>
   <td>To delete a particular skill with the given Stream Id and Agent Id.
   </td>
   <td>SmartAssist Analytics
   </td>
  </tr>
</table>

### Skill Group APIs

<table>
  <tr>
   <td>API
   </td>
   <td>DESCRIPTION
   </td>
   <td>ASSOCIATED APP SCOPE
   </td>
  </tr>
  <tr>
   <td><a href="../create-a-skill-group">Create a Skill Group</a>
   </td>
   <td>To add a Skill Group with the given Stream Id.
   </td>
   <td>SmartAssist Analytics
   </td>
  </tr>
  <tr>
   <td><a href="../get-all-skill-groups">Get All Skill Groups</a>
   </td>
   <td>To retrieve the list of skills groups with the given Stream Id.
   </td>
   <td>SmartAssist Analytics
   </td>
  </tr>
  <tr>
   <td><a href="../get-a-skill-group">Get a Skill Group</a>
   </td>
   <td>To retrieve the details of a particular skill group with the given Stream Id and Skill Group Id.
   </td>
   <td>SmartAssist Analytics
   </td>
  </tr>
  <tr>
   <td><a href="../update-a-skill-group">Update a Skill Group</a>
   </td>
   <td>To update a particular skill group with the given Stream Id and Skill Group Id.
   </td>
   <td>SmartAssist Analytics
   </td>
  </tr>
  <tr>
   <td><a href="../delete-a-skill-group">Delete a Skill Group</a>
   </td>
   <td>To delete a particular skill group with the given Stream Id and Skill Group Id.
   </td>
   <td>SmartAssist Analytics
   </td>
  </tr>
</table>

### Agent Group APIs

<table>
  <tr>
   <td>API
   </td>
   <td>DESCRIPTION
   </td>
   <td>ASSOCIATED APP SCOPE
   </td>
  </tr>
  <tr>
   <td><a href="../create-an-agent-group">Create an Agent Group</a>
   </td>
   <td>To add an agent group with the given Stream Id.
   </td>
   <td>SmartAssist Analytics
   </td>
  </tr>
  <tr>
   <td><a href="../get-all-agent-groups">Get All Agent Groups</a>
   </td>
   <td>To retrieve the list of agent groups with the given Stream Id.
   </td>
   <td>SmartAssist Analytics
   </td>
  </tr>
  <tr>
   <td><a href="../get-an-agent-group">Get an Agent Group</a>
   </td>
   <td>To retrieve the details of a particular skill with the given Stream Id, Skill Group Id, and Skill Id.
   </td>
   <td>SmartAssist Analytics
   </td>
  </tr>
  <tr>
   <td><a href="../update-an-agent-group">Update an Agent Group</a>
   </td>
   <td>To update a particular agent group with the given Stream Id and Agent Group Id.
   </td>
   <td>SmartAssist Analytics
   </td>
  </tr>
  <tr>
   <td><a href="../delete-an-agent-group">Delete an Agent Group</a>
   </td>
   <td>To delete the particular skill group with the given Stream Id and Skill Group Id.
   </td>
   <td>SmartAssist Analytics
   </td>
  </tr>
</table>

### Contacts Public APIs

<table>
  <tr>
   <td>API
   </td>
   <td>DESCRIPTION
   </td>
   <td>ASSOCIATED APP SCOPE
   </td>
  </tr>
  <tr>
   <td><a href="../create-a-contact-by-giving-details">Create a Contact by Giving Details</a>
   </td>
   <td>To create a contact with the given Stream Id.
   </td>
   <td>Configuration
   </td>
  </tr>
  <tr>
   <td><a href="../create-bulk-contacts">Create Bulk Contacts</a>
   </td>
   <td>To create bulk contacts from a CSV file with the given Stream Id.
   </td>
   <td>Configuration
   </td>
  </tr>
</table>

### Import/Export Data APIs

<table>
  <tr>
   <td>API
   </td>
   <td>DESCRIPTION
   </td>
   <td>ASSOCIATED APP SCOPE
   </td>
  </tr>
  <tr>
   <td><a href="../import-or-save-data-by-giving-details">Import/Save Data by Giving Details</a>
   </td>
   <td>To import/save data with the given accountId and orgId.
   </td>
   <td>SmartAssist Import and Export Feature
   </td>
  </tr>
  <tr>
   <td><a href="../export-data-by-giving-details">Export Data by Giving Details</a>
   </td>
   <td>To export data with the given accountId and orgId.
   </td>
   <td>SmartAssist Import and Export Feature
   </td>
  </tr>
</table>

### Call Recording API

<table>
  <tr>
   <td>API
   </td>
   <td>DESCRIPTION
   </td>
   <td>ASSOCIATED APP SCOPE
   </td>
  </tr>
  <tr>
   <td><a href="../fetch-call-recording">Fetch Call Recording</a>
   </td>
   <td>To retrieve the recording of a specific call using either the user Id or session Id.
   </td>
   <td>SmartAssist Recordings
   </td>
  </tr>
  <tr>
   <td><a href="../fetch-call-recording">Fetch Call Recording</a>
   </td>
   <td>To retrieve the recording of a specific call using either the user Id or session Id.
   </td>
   <td>SmartAssist Recordings
   </td>
  </tr>
  <tr>
   <td><a href="../contact-center/delete-call-recording">Delete Call Recording</a>
   </td>
   <td>This API is used to delete Voice Call Recordings. The response varies based on whether the execution is successful or not.
   </td>
   <td>Delete Recordings
   </td>
  </tr>
</table>

### Outbound Calling API

<table>
  <tr>
   <td>API
   </td>
   <td>DESCRIPTION
   </td>
   <td>ASSOCIATED APP SCOPE
   </td>
  </tr>
  <tr>
   <td><a href="../outbound-calling-savg">Outbound Calling (SAVG)</a>
   </td>
   <td>To trigger an outbound call and receive call status notifications.
   </td>
   <td>SmartAssist Dialout
   </td>
  </tr>
</table>

### Transfer Conversation to a Specific Agent API

<table>
  <tr>
   <td>API
   </td>
   <td>DESCRIPTION
   </td>
   <td>ASSOCIATED APP SCOPE
   </td>
  </tr>
  <tr>
   <td><a href="../transfer-conversation-to-a-specific-agent">Transfer Conversation to a Specific Agent</a>
   </td>
   <td>To transfer a conversation to a specific agent using the provided botSessionId and aId. It posts specific messages to the provided callbackUrl to indicate the success or failure of the conversation transfer.
   </td>
   <td>Routing
   </td>
  </tr>
</table>

### Queue Management APIs

<table>
  <tr>
   <td>API
   </td>
   <td>DESCRIPTION
   </td>
   <td>ASSOCIATED APP SCOPE
   </td>
  </tr>
  <tr>
   <td><a href="../create-a-queue">Create a Queue</a>
   </td>
   <td>To create a queue with the given streamId.
   </td>
   <td>Configuration
   </td>
  </tr>
  <tr>
   <td><a href="../get-a-list-of-queues">Get a List of Queues</a>
   </td>
   <td>To get a list of queues with the given streamId.
   </td>
   <td>Configuration
   </td>
  </tr>
  <tr>
   <td><a href="../get-a-list-of-agents-or-queues">Get a List of Agents or Queues</a>
   </td>
   <td>To get all agents if you have queueIds and all the queues if you have agentIds.
   </td>
   <td>Configuration
   </td>
  </tr>
  <tr>
   <td><a href="../get-a-specific-queue">Get a Specific Queue</a>
   </td>
   <td>To get a specific queue with the given streamId and queueId.
   </td>
   <td>Configuration
   </td>
  </tr>
  <tr>
   <td><a href="../update-a-specific-queue">Update a Specific Queue</a>
   </td>
   <td>To update a specific queue with the given streamId and queueId.
   </td>
   <td>Configuration
   </td>
  </tr>
  <tr>
   <td><a href="../delete-a-queue">Delete a Queue</a>
   </td>
   <td>To delete a specific queue with the given streamId and queueId.
   </td>
   <td>Configuration
   </td>
  </tr>
</table>