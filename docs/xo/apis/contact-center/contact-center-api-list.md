# Contact Center API List

Several APIs are available from Contact Center AI. Based on the functionality addressed, the APIs can be categorized as:

* [Analytics and Reporting APIs](#analytics-and-reporting-apis)
* [Agent Creation APIs](#agent-creation-apis)
* [Skills APIs](#skills-apis)
* [Skill Group APIs](#skill-group-apis)
* [Agent Group APIs](#agent-group-apis)
* [Contacts Public APIs](#contacts-public-apis)
* [Import/Export Data APIs](#importexport-data-apis)
* [Call Recording API](#call-recording-api)
* [Outbound Calling API](#outbound-calling-api)
* [Transfer Conversation to a Specific Agent or Queue API](#transfer-conversation-to-a-specific-agent-or-queue-api)
* [Queue Management APIs](#queue-management-apis)

### Analytics and Reporting APIs

| API                                                  | DESCRIPTION                                                                                                            | ASSOCIATED APP SCOPE |
|------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------|----------------------|
| [Get Intent Real-Time Data](../contact-center/get-intent-real-time-data.md)            | To retrieve the most recent conversational data for the given Bot Id. Gets the latest 25 sessions data for the given Bot Id that completed the execution of the flow. | SmartAssist Analytics |
| [Historical Agent Status Summary](../contact-center/historical-agent-status-summary.md) | To retrieve the status of every agent for each bucket in the given time interval. The status shown can be available, busy, away, etc. | SmartAssist Analytics |
| [Agent Status Details API](../contact-center/agent-status-details.md)                   | To retrieve the status of every agent for each bucket in the given time interval. The status shown can be available, busy, away, etc. | SmartAssist Analytics |
| [Get All Conversations Data – Call Details](../contact-center/get-all-conversations-data-call-details.md) | To retrieve the raw data for all conversations with the given Account Id.                                              | SmartAssist Analytics |
| [List of Conversations](../contact-center/list-of-conversations.md)                     | To retrieve the list of conversations with the given stream Id.                                                        | SmartAssist Analytics |
| [Get a specific Conversation](../contact-center/get-a-specific-conversation.md)         | To retrieve a particular conversation by providing the Conversation Id.                                                 | SmartAssist Analytics |
| [Queue Size](../contact-center/queue-size.md)                                           | To retrieve the queueDetails by giving queueId and filters with the given stream Id.                                   | SmartAssist Analytics |

### Agent Creation APIs

| API                                                                                           | DESCRIPTION                                                                                                        | ASSOCIATED APP SCOPE |
|-----------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------|----------------------|
| [Create an Agent](../contact-center/create-an-agent.md)                                                         | To add an agent with the given Stream Id.                                                                         | SmartAssist Analytics |
| [List All Agents](../contact-center/list-all-agents.md)                                                         | To retrieve the list of all agents with the given Stream Id.                                                       | SmartAssist Analytics |
| [Get a Specific Agent](../contact-center/get-a-specific-agent.md)                                               | To retrieve the details of a particular agent with the given stream Id and agent Id.                              | SmartAssist Analytics |
| [Update a Specific Agent](../contact-center/update-a-specific-agent.md)                                         | To update the details of a particular agent with the given Stream Id and Agent Id.                                | SmartAssist Analytics |
| [Delete a Specific Agent from a Particular Agent Group](../contact-center/delete-a-specific-agent-from-a-particular-agent-group.md) | To delete a particular agent with the given Stream Id and Agent Id.                                               | SmartAssist Analytics |

### Skills APIs
| API                                                                                                   | DESCRIPTION                                                                                                                       | ASSOCIATED APP SCOPE |
|-------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------|----------------------|
| [Create a Skill](../contact-center/create-a-skill.md)                                                                  | To add a skill with the given Stream Id and Skill Group ID.                                                                      | SmartAssist Analytics |
| [Get All Skills from a Skill Group](../contact-center/get-all-skills-from-a-skill-group.md)                              | To retrieve the list of skills with the given Stream Id and Skill Group Id.                                                      | SmartAssist Analytics |
| [Get a Particular Skill](../contact-center/get-a-particular-skill.md)                                                  | To retrieve the details of a particular skill with the given Stream Id, Skill Group Id, and Skill Id.                            | SmartAssist Analytics |
| [Update a Particular Skill](../contact-center/update-a-particular-skill.md)                                            | To update a particular skill with the given Stream Id, Skill Group Id, and Skill Id.                                             | SmartAssist Analytics |
| [Delete a Skill from a Particular Skill Group](../contact-center/delete-a-skill-from-a-particular-skill-group.md)        | To delete a particular skill with the given Stream Id and Agent Id.                                                               | SmartAssist Analytics |

### Skill Group APIs

| API                                                                                    | DESCRIPTION                                                                                                       | ASSOCIATED APP SCOPE |
|----------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------|----------------------|
| [Create a Skill Group](../contact-center/create-a-skill-group.md)                                        | To add a Skill Group with the given Stream Id.                                                                    | SmartAssist Analytics |
| [Get All Skill Groups](../contact-center/get-all-skill-groups.md)                                        | To retrieve the list of skills groups with the given Stream Id.                                                   | SmartAssist Analytics |
| [Get a Skill Group](../contact-center/get-a-skill-group.md)                                              | To retrieve the details of a particular skill group with the given Stream Id and Skill Group Id.                | SmartAssist Analytics |
| [Update a Skill Group](../contact-center/update-a-skill-group.md)                                        | To update a particular skill group with the given Stream Id and Skill Group Id.                                  | SmartAssist Analytics |
| [Delete a Skill Group](../contact-center/delete-a-skill-group.md)                                        | To delete a particular skill group with the given Stream Id and Skill Group Id.                                   | SmartAssist Analytics |

### Agent Group APIs

| API                                                                                           | DESCRIPTION                                                                                                          | ASSOCIATED APP SCOPE |
|-----------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------|----------------------|
| [Create an Agent Group](../contact-center/create-an-agent-group.md)                                            | To add an agent group with the given Stream Id.                                                                     | SmartAssist Analytics |
| [Get All Agent Groups](../contact-center/get-all-agent-groups.md)                                              | To retrieve the list of agent groups with the given Stream Id.                                                      | SmartAssist Analytics |
| [Get an Agent Group](../contact-center/get-an-agent-group.md)                                                  | To retrieve the details of a particular skill with the given Stream Id, Skill Group Id, and Skill Id.              | SmartAssist Analytics |
| [Update an Agent Group](../contact-center/update-an-agent-group.md)                                            | To update a particular agent group with the given Stream Id and Agent Group Id.                                      | SmartAssist Analytics |
| [Delete an Agent Group](../contact-center/delete-an-agent-group.md)                                            | To delete the particular skill group with the given Stream Id and Skill Group Id.                                    | SmartAssist Analytics |

### Contacts Public APIs

| API                                                                                               | DESCRIPTION                                                                                                 | ASSOCIATED APP SCOPE |
|---------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|----------------------|
| [Create a Contact by Giving Details](../contact-center/create-a-contact-by-giving-details.md)                        | To create a contact with the given Stream Id.                                                               | Configuration        |
| [Create Bulk Contacts](../contact-center/create-bulk-contacts.md)                                                    | To create bulk contacts from a CSV file with the given Stream Id.                                           | Configuration        |

### Import/Export Data APIs

| API                                                                                               | DESCRIPTION                                                                                           | ASSOCIATED APP SCOPE            |
|---------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------|--------------------------------|
| [Import/Save Data by Giving Details](../contact-center/import-or-save-data-by-giving-details.md)                     | To import/save data with the given accountId and orgId.                                              | SmartAssist Import and Export Feature |
| [Export Data by Giving Details](../contact-center/export-data-by-giving-details.md)                                   | To export data with the given accountId and orgId.                                                   | SmartAssist Import and Export Feature |

### Call Recording API

| API                                                                                               | DESCRIPTION                                                                                                                       | ASSOCIATED APP SCOPE |
|---------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------|----------------------|
| [Fetch Call Recording](../contact-center/fetch-call-recording.md)                                                   | To retrieve the recording of a specific call using either the user Id or session Id.                                             | SmartAssist Recordings |
| [Fetch Call Recording (v2)](../contact-center/fetch-call-recording-(v2).md)                                         | This API facilitates the downloading of voice call recordings. The API provides an S3-hosted URL where the recording can be accessed. | SmartAssist Recordings |
| [Delete Call Recording](../contact-center/delete-call-recording.md)                                                 | This API is used to delete Voice Call Recordings. The response varies based on whether the execution is successful or not.        | Delete Recordings     |

### Outbound Calling API

| API                                                                                               | DESCRIPTION                                                                                                 | ASSOCIATED APP SCOPE |
|---------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|----------------------|
| [Outbound Calling (Kore.ai VG)](./outbound-calling-kore-ai-vg.md)                                               | To trigger an outbound call and receive call status notifications.                                           | SmartAssist Dialout  |

### Transfer Conversation to a Specific Agent or Queue API

| API                                                                                               | DESCRIPTION                                                                                                                      | ASSOCIATED APP SCOPE |
|---------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------|----------------------|
| [Transfer Conversation to a Specific Agent](./transfer-conversation-to-a-specific-agent-or-queue.md)         | To transfer a conversation to a specific agent using the provided botSessionId and aId. It posts specific messages to the provided callbackUrl to indicate the success or failure of the conversation transfer. | Routing              |

### Queue Management APIs

| API                                                                                               | DESCRIPTION                                                                                                  | ASSOCIATED APP SCOPE |
|---------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|----------------------|
| [Create a Queue](../contact-center/create-a-queue.md)                                                               | To create a queue with the given streamId.                                                                   | Configuration        |
| [Get a List of Queues](../contact-center/get-a-list-of-queues.md)                                                   | To get a list of queues with the given streamId.                                                             | Configuration        |
| [Get a List of Agents or Queues](../contact-center/get-a-list-of-agents-or-queues.md)                               | To get all agents if you have queueIds and all the queues if you have agentIds.                               | Configuration        |
| [Get a Specific Queue](../contact-center/get-a-specific-queue.md)                                                   | To get a specific queue with the given streamId and queueId.                                                 | Configuration        |
| [Update a Specific Queue](../contact-center/update-a-specific-queue.md)                                             | To update a specific queue with the given streamId and queueId.                                               | Configuration        |
| [Delete a Queue](../contact-center/delete-a-queue.md)                                                               | To delete a specific queue with the given streamId and queueId.                                               | Configuration        |