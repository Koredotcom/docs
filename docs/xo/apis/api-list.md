# APIs List

Following is the list of APIs available from the Kore.ai XO Platform. For details on the API functioning and usage instructions [refer here](https://developer.kore.ai/docs/bots/api-guide/apis/).

These APIs are available for testing in your Postman setup, for configuration details [see here](https://developer.kore.ai/docs/bots/api-guide/api-collection/).

Based on the functionality addressed, the APIs can be categorized as:



1. APIs related to the Bot Definition functionality, [more](#bot-definition-apis)
2. APIs related to NLP training, [more](#nlp-training-apis)
3. APIs aiding in Analyzing the performance and behavior, [more](#analytics-apis)
4. APIs related to the Admin Console functionality, [more](#admin-apis)
5. APIs related to the data access from Data Tables, [more](#data-data-table-access-apis)

!!!note
    All the APIs have rate limits to manage the usage. If the rate limit is exceeded, an API call fails with the following error message – “_Rate limit for this API has been reached. Please try again after some time._”


## Bot Definition APIs


<table>
  <tr>
   <td>API
   </td>
   <td>DESCRIPTION
   </td>
   <td colspan="2" >ASSOCIATED APP SCOPE
   </td>
  </tr>
  <tr>
   <td>
   </td>
   <td>
   </td>
   <td><strong>XO PLATFORM</strong>
   </td>
   <td><strong>ADMIN CONSOLE</strong>
   </td>
  </tr>
  <tr>
   <td><a href="../upload-file">Upload File</a>
   </td>
   <td>To upload the botdefinition, botconfig, and botfunction file (if any) as well as the bot icon to the local server and get the file ID to be used in the Import Bot API.
<p>
To upload utterances in <a href="../import-ml-utterances">ML Utterances Import API</a>, bot roles, admin roles for <a href="../import-roles">Import Roles API</a>, <a href="../import-batch-test-suite">Import Batch Test Suite </a>details and <a href="../extract-kg-from-file-url">Extraction from file or URL</a> to extract FAQs.
   </td>
   <td>NA
   </td>
   <td>Bot Definition > Bot Import
   </td>
  </tr>
  <tr>
   <td><a href="../import-bot-as-new-bot">Import Bot as a New Bot</a>
   </td>
   <td>To create a new assistant in the account owner’s XO Platform using the File IDs generated when uploading the files.
   </td>
   <td>NA
   </td>
   <td>Bot Definition > Bot Import
   </td>
  </tr>
  <tr>
   <td><a href="../import-bot-into-an-existing-bot">Import Bot into an Existing Bot</a>
   </td>
   <td>To import the bot definition file into an existing assistant for upgrading to a new version or restoring to an earlier version.
   </td>
   <td>NA
   </td>
   <td>Bot Definition > Bot Import
   </td>
  </tr>
  <tr>
   <td><a href="../bot-import-status">Bot Import Status</a>
   </td>
   <td>To get the status of the bot import request.
   </td>
   <td>NA
   </td>
   <td>Bot Definition > Bot Import
   </td>
  </tr>
  <tr>
   <td><a href="../install-sample-bot">Install Sample Bot</a>
   </td>
   <td>To install a sample assistant.
   </td>
   <td>NA
   </td>
   <td>Bot Definition > Bot Create
   </td>
  </tr>
  <tr>
   <td><a href="../bot-export">Bot Export</a>
   </td>
   <td>To export a bot definition and all associated components.
   </td>
   <td>Bot Export
   </td>
   <td>Bot Definition > Bot Export
   </td>
  </tr>
  <tr>
   <td><a href="../bot-export-status">Bot Export – Status</a>
   </td>
   <td>To get the status of the Bot Export request and also provides the download link of the export copy after the export is completed.
   </td>
   <td>Bot Export
   </td>
   <td>Bot Definition > Bot Export
   </td>
  </tr>
  <tr>
   <td><a href="../channel-enablement">Enable Channel</a>
   </td>
   <td>To enable or update a channel for an assistant.
   </td>
   <td>NA
   </td>
   <td>Channel Management
   </td>
  </tr>
  <tr>
   <td><a href="../add-enable-new-language">Add and Enable a New Language</a>
   </td>
   <td>To add and enable a new language for a virtual assistant.
   </td>
   <td>Languages Configuration.
   </td>
   <td>API Scopes > Language Settings
   </td>
  </tr>
  <tr>
   <td><a href="../enable-existing-language">Enable an existing Language</a>
   </td>
   <td>To enable an <a href="/app-settings/language-management/building-multi-language-bots">existing language</a> for a virtual assistant.
   </td>
   <td>Languages Configuration.
   </td>
   <td>API Scopes > Language Settings
   </td>
  </tr>
  <tr>
   <td><a href="../disable-existing-language">Disable an existing Language</a>
   </td>
   <td>To disable an existing language for a virtual assistant that is currently enabled.
   </td>
   <td>Languages Configuration.
   </td>
   <td>API Scopes > Language Settings
   </td>
  </tr>
  <tr>
   <td><a href="../language-updation">Update a Language Configuration</a>
   </td>
   <td>To update the configuration of an existing language for a virtual assistant.
   </td>
   <td>Languages Configuration.
   </td>
   <td>API Scopes > Language Settings
   </td>
  </tr>
  <tr>
   <td><a href="../proactive-notifications">Proactive Notification</a>
   </td>
   <td>To send proactive notifications to the configured channel.
   </td>
   <td>NA
   </td>
   <td>Channel Management > Proactive Messages
   </td>
  </tr>
  <tr>
   <td><a href="../proactive-notifications-status">Proactive Notification Status</a>
   </td>
   <td>To send proactive notifications to the configured channel.
   </td>
   <td>NA
   </td>
   <td>Channel Management > Proactive Messages
   </td>
  </tr>
  <tr>
   <td><a href="../publish-bot">Publish Bot</a>
   </td>
   <td>To initiate a bot publish request.
   </td>
   <td>NA
   </td>
   <td>Bot Publish > Publish
   </td>
  </tr>
  <tr>
   <td><a href="../bot-publish-status">Bot Publish Status</a>
   </td>
   <td>Gets the publish status of the ongoing assistant or the last completed status request of the assistant. 
   </td>
   <td>NA
   </td>
   <td>Bot Publish > Publish
   </td>
  </tr>
  <tr>
   <td><a href="../bot-variables-import">Bot Variables Import</a>
   </td>
   <td>To import global and content variables into the assistant.
   </td>
   <td>Import Variables
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td><a href="../batch-test-execution">Batch Test Execution</a>
   </td>
   <td>To invoke the execution of a Batch Test suite.
   </td>
   <td>Batch Tests Execution
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td><a href="../batch-test-execution-status">Batch Test Execution Status</a>
   </td>
   <td>To know the status of the execution against a unique Test Request Id.
   </td>
   <td>Batch Tests Execution
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td><a href="../get-batch-test-suites">Get Batch Test Suites</a>
   </td>
   <td>To get the list of Batch Test Suites available.
   </td>
   <td>Batch Tests Management
   </td>
   <td>Batch Tests Management
   </td>
  </tr>
  <tr>
   <td><a href="../export-batch-test-suite">Export Batch Test Suite</a>
   </td>
   <td>To export the test cases of a given Batch Test Suite.
   </td>
   <td>Batch Tests Management
   </td>
   <td>Batch Tests Management
   </td>
  </tr>
  <tr>
   <td><a href="../import-batch-test-suite">Import Batch Test Suite</a>
   </td>
   <td>To import a batch test suite.
   </td>
   <td>Batch Tests Management
   </td>
   <td>Batch Tests Management
   </td>
  </tr>
  <tr>
   <td><a href="../delete-batch-test-suite">Delete Batch Test Suite</a>
   </td>
   <td>To delete a Batch Test Suite.
   </td>
   <td>Batch Tests Management
   </td>
   <td>Batch Tests Management
   </td>
  </tr>
  <tr>
   <td><a href="../delete-batch-test-suite-execution">Delete Batch Test Suite Execution</a>
   </td>
   <td>To delete a specific execution of a Batch Test Suite.
   </td>
   <td>Batch Tests Management
   </td>
   <td>Batch Tests Management
   </td>
  </tr>
  <tr>
   <td><a href="../create-conversation-test-suite">Create (Import) a Conversation Test Suite</a>
   </td>
   <td>To create or import a Conversation Test Suite.
   </td>
   <td>Conversation Tests Management
   </td>
   <td>Conversation Tests Management
   </td>
  </tr>
  <tr>
   <td><a href="../get-conversation-test-suite-creation-status">Conversation Test Suite Creation Status</a>
   </td>
   <td>To get the creation status of a Conversation Test Suite.
   </td>
   <td>Conversation Tests Management
   </td>
   <td>Conversation Tests Management
   </td>
  </tr>
  <tr>
   <td><a href="../execute-test-suite">Conversation Test Suite Execution</a>
   </td>
   <td>To execute a Conversation Test Suite.
   </td>
   <td>Conversation Tests Execution
   </td>
   <td>Conversation Tests Execution
   </td>
  </tr>
  <tr>
   <td><a href="../get-test-suite-execution-status">Conversation Test Suite Execution Status</a>
   </td>
   <td>To get the execution status and summary of a Conversation Test Suite.
   </td>
   <td>Conversation Tests Execution
   </td>
   <td>Conversation Tests Execution
   </td>
  </tr>
  <tr>
   <td><a href="../delete-test-suite">Delete Conversation Test Suite</a>
   </td>
   <td>To delete a Conversation Test Suite.
   </td>
   <td>Conversation Tests Management
   </td>
   <td>Conversation Tests Management
   </td>
  </tr>
</table>



## NLP Training APIs


<table>
  <tr>
   <td>API
   </td>
   <td>DESCRIPTION
   </td>
   <td colspan="2" >ASSOCIATED APP SCOPE
   </td>
  </tr>
  <tr>
   <td>
   </td>
   <td>
   </td>
   <td><strong>XO PLATFORM</strong>
   </td>
   <td><strong>ADMIN CONSOLE</strong>
   </td>
  </tr>
  <tr>
   <td><a href="../import-ml-utterances">ML Utterances Import</a>
   </td>
   <td>To import ML Utterances into an assistant.
   </td>
   <td>Utterances Import
   </td>
   <td>Test > Utterances Import & Train
   </td>
  </tr>
  <tr>
   <td><a href="../ml-utterances-import-status">ML Utterances Import Status</a>
   </td>
   <td>To get the status of the ML utterances import request made through Import ML Utterances API.
   </td>
   <td>Utterances Import
   </td>
   <td>Test > Utterances Import & Train
   </td>
  </tr>
  <tr>
   <td><a href="../ml-utterances-train">ML Utterance Train</a>
   </td>
   <td>To initiate ML training of an assistant.
   </td>
   <td>Train ML
   </td>
   <td>Test > Train ML & Train
   </td>
  </tr>
  <tr>
   <td><a href="../ml-utterances-train-status">ML Utterance Train Status</a>
   </td>
   <td>To get the status of the ML training.
   </td>
   <td>Train ML
   </td>
   <td>Test > Train ML & Train
   </td>
  </tr>
  <tr>
   <td><a href="../ml-utterances-export">ML Utterances Export</a>
   </td>
   <td>To export the ML utterances of an assistant.
   </td>
   <td>Utterances Export
   </td>
   <td>Test > Utterances Export & Train
   </td>
  </tr>
  <tr>
   <td><a href="../ml-utterances-export-status">ML Utterances Export Status</a>
   </td>
   <td>To get the download link of the ML Utterances export copy.
   </td>
   <td>Utterances Export
   </td>
   <td>Test > Utterances Export & Train
   </td>
  </tr>
  <tr>
   <td><a href="../faq-training">FAQ Training</a>
   </td>
   <td>To initiate the training of the knowledge graph.
   </td>
   <td>Train Faq
   </td>
   <td>Test > Train FAQ & Train
   </td>
  </tr>
  <tr>
   <td><a href="../faq-training-status">FAQ Training Status</a>
   </td>
   <td>To get the status of the FAQ training.
   </td>
   <td>Train Faq
   </td>
   <td>Test > Train FAQ & Train
   </td>
  </tr>
  <tr>
   <td><a href="../extract-kg-from-file-url">Extraction from file or URL</a>
   </td>
   <td>To extract FAQs using a file or URL.
   </td>
   <td>Manage Knowledge Graph
   </td>
   <td>Manage Knowledge Graph
   </td>
  </tr>
  <tr>
   <td><a href="../get-kg-extraction-history">Get Extractions History</a>
   </td>
   <td>To get a list of KG Extractions history.
   </td>
   <td>Manage Knowledge Graph
   </td>
   <td>Manage Knowledge Graph
   </td>
  </tr>
  <tr>
   <td><a href="../get-kg-extraction-questions">Get Extraction Question</a>
   </td>
   <td>To get a list of KG Extraction Questions.
   </td>
   <td>Manage Knowledge Graph
   </td>
   <td>Manage Knowledge Graph
   </td>
  </tr>
  <tr>
   <td><a href="../get-knowledge-tasks">Get KnowledgeTasks</a>
   </td>
   <td>To get a listing of knowledge Tasks along with the nodes.
   </td>
   <td>Manage Knowledge Graph
   </td>
   <td>Manage Knowledge Graph
   </td>
  </tr>
  <tr>
   <td><a href="../add-questions-to-knowledgegraph">Add Questions from Extraction</a>
   </td>
   <td>To add specific questions from extraction to the Knowledge Graph.
   </td>
   <td>Manage Knowledge Graph
   </td>
   <td>Manage Knowledge Graph
   </td>
  </tr>
  <tr>
   <td><a href="../get-faqs-from-knowledge-task">Get FAQs</a>
   </td>
   <td>To get a list of questions and nodes under the Knowledge task.
   </td>
   <td>Manage Knowledge Graph
   </td>
   <td>Manage Knowledge Graph
   </td>
  </tr>
  <tr>
   <td><a href="../update-nlp-configurations">Update NLP Configurations</a>
   </td>
   <td>To update the NLP thresholds and configurations.
   </td>
   <td>NLP Configurations
   </td>
   <td>Test > NLP Configurations & Train
   </td>
  </tr>
</table>

## Analytics APIs

<table>
  <tr>
   <td>API
   </td>
   <td>DESCRIPTION
   </td>
   <td colspan="2" >ASSOCIATED APP SCOPE
   </td>
  </tr>
  <tr>
   <td>
   </td>
   <td>
   </td>
   <td><strong>XO PLATFORM</strong>
   </td>
   <td><strong>ADMIN CONSOLE</strong>
   </td>
  </tr>
  <tr>
   <td><a href="../find-intent">Find Intent</a>
   </td>
   <td>To obtain the intent recognition result and the scoring from NLP and ML engines.
   </td>
   <td>Intent and Entity Detection
   </td>
   <td>Intent Identification > Intent and Entity Detection
   </td>
  </tr>
  <tr>
   <td><a href="../conversation-history">Conversation History</a>
   </td>
   <td>To fetch the conversational messages between the assistant and user in reverse chronological order.
   </td>
   <td>Chat History
   </td>
   <td>Bot Analytics > Chat History
   </td>
  </tr>
  <tr>
   <td><a href="../conversation-summary">Conversation Summary</a>
   </td>
   <td>To summarizes the conversation between a user and an agent.
   </td>
   <td>Conversation Summary
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td><a href="../fetch-feedback-survey-scores">Feedback Analytics</a>
   </td>
   <td>To fetch the Feedback Survey Response Data and push it to the Feedback Analytics Dashboard.
   </td>
   <td>Feedback Survey
   </td>
   <td>Bot Analytics > Feedback Analytics
   </td>
  </tr>
  <tr>
   <td><a href="../fetch-debug-logs">Debug Logs</a>
   </td>
   <td>To get debug logs of a specific conversation.
   </td>
   <td>Debug Logs
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td><a href="../get-change-logs">Get ChangeLogs</a>
   </td>
   <td>To get the list of changes made to the assistant definition for a given date period.
   </td>
   <td>Logs History
   </td>
   <td>Logs > Bot Audit Logs
   </td>
  </tr>
  <tr>
   <td><a href="../get-sessions-history">Sessions History</a>
   </td>
   <td>To retrieve the conversation sessions created.
   </td>
   <td>Bot Sessions
   </td>
   <td>Bot Analytics > Bot Sessions
   </td>
  </tr>
  <tr>
   <td><a href="../get-dashboard-widget-data">Get Dashboard Widget Data</a>
   </td>
   <td>To get the data result of a widget from a specific Custom Dashboard added to an assistant.
   </td>
   <td>Custom Reports
   </td>
   <td>Custom Reports > Custom Reports
   </td>
  </tr>
  <tr>
   <td><a href="../get-analytics">Get Analytics</a>
   </td>
   <td>To extract the metrics data related to the intent detection and task performance using API
   </td>
   <td>Metrics
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td><a href="../user-engagement-trend">User Engagement Trend</a>
   </td>
   <td>To provide the number of users who have interacted with the assistant in a given period across different time intervals.
   </td>
   <td>User Engagement Trend
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td><a href="../conversation-details-and-summary">Conversation Details and Summary</a>
   </td>
   <td>To fetch the conversational details and summary between the bot and the user..
   </td>
   <td>Conversation History
   </td>
   <td>NA
   </td>
  </tr>
</table>

## Admin APIs

<table>
  <tr>
   <td>API
   </td>
   <td>DESCRIPTION
   </td>
   <td>ASSOCIATED BOT ADMIN APP SCOPE
   </td>
  </tr>
  <tr>
   <td><a href="../get-bots">Get Bots</a>
   </td>
   <td>To retrieve the list of bots available in an account
   </td>
   <td>Profile Management > Role Management
   </td>
  </tr>
  <tr>
   <td><a href="../import-roles">Import Roles</a>
   </td>
   <td>To import bot or admin roles into an account
   </td>
   <td>Profile Management > Role Management
   </td>
  </tr>
  <tr>
   <td><a href="../get-roles">Get Roles</a>
   </td>
   <td>To retrieve the list of bot or admin roles available in an account.
   </td>
   <td>Profile Management > Role Management
   </td>
  </tr>
  <tr>
   <td><a href="../get-user-roles-details">Get User Roles Details</a>
   </td>
   <td>To get full information on all users and their associated roles in the account
   </td>
   <td>Profile Management > Role Management
   </td>
  </tr>
  <tr>
   <td><a href="../get-groups">Get Groups</a>
   </td>
   <td>To get the list of groups and group members available in the account
   </td>
   <td>Profile Management > Role Management
   </td>
  </tr>
  <tr>
   <td><a href="../export-roles">Export Roles</a>
   </td>
   <td>To export bot or admin roles from an account
   </td>
   <td>Profile Management > Role Management
   </td>
  </tr>
  <tr>
   <td><a href="../assign-bt-roles">Assign BT Roles</a>
   </td>
   <td>To assign a bot role to a set of users in a specific assistant
   </td>
   <td>Profile Management > Role Management
   </td>
  </tr>
  <tr>
   <td><a href="../assign-admin-roles">Assign Admin Roles</a>
   </td>
   <td>To add or remove users or groups from admin roles
   </td>
   <td>Profile Management > Role Management
   </td>
  </tr>
  <tr>
   <td><a href="../update-user-access">Update User Access</a>
   </td>
   <td>To add or remove the ability to access XO Platform, create new assistants
   </td>
   <td>Profile Management > Role Management
   </td>
  </tr>
  <tr>
   <td><a href="../create-users">Create Users</a>
   </td>
   <td>To add users to an account
   </td>
   <td>User Management
   </td>
  </tr>
  <tr>
   <td><a href="../get-user-information">Get Users Information</a>
   </td>
   <td>To retrieve the user details
   </td>
   <td>User Management
   </td>
  </tr>
  <tr>
   <td><a href="../update-user">Update User</a>
   </td>
   <td>To update user details
   </td>
   <td>User Management
   </td>
  </tr>
  <tr>
   <td><a href="../delete-users">Remove Users from Account</a>
   </td>
   <td>To remove users from an account
   </td>
   <td>User Management
   </td>
  </tr>
  <tr>
   <td><a href="../delete-customer-data">Delete Customer Data</a>
   </td>
   <td>To delete customer data
   </td>
   <td>Profile Management > Delete Users Data
   </td>
  </tr>
  <tr>
   <td><a href="../delete-customer-data-status">Delete Customer Data Status API</a>
   </td>
   <td>To get the status of the Customer Data Delete request
   </td>
   <td>Profile Management > Delete Users Data
   </td>
  </tr>
  <tr>
   <td><a href="../get-admin-console-audit-logs">Get Admin Console Audit Logs</a>
   </td>
   <td>To get admin console audit logs.
   </td>
   <td>Logs Admin > Admin Console Audit Logs
   </td>
  </tr>
</table>

## Data (Data Table) Access APIs

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
   <td><a href="../data-insert">Insert Data</a>
   </td>
   <td>To insert data into Data Table
   </td>
   <td>Write access to the Data Table
   </td>
  </tr>
  <tr>
   <td><a href="../bulk-data-insert">Insert Bulk Data</a>
   </td>
   <td>To insert bulk data into Data Table
   </td>
   <td>Write access to the Data Table
   </td>
  </tr>
  <tr>
   <td><a href="../data-update">Update Data</a>
   </td>
   <td>To update data into Data Table.
   </td>
   <td>Read and Write access to the Data Table
   </td>
  </tr>
  <tr>
   <td><a href="../data-delete">Delete Data</a>
   </td>
   <td>To delete data from Data Table.
   </td>
   <td>Read and Delete access to the Data Table
   </td>
  </tr>
  <tr>
   <td><a href="../query-table-data">Get Table Data</a>
   </td>
   <td>To get data from Data Table.
   </td>
   <td>Read access to the Data Table
   </td>
  </tr>
  <tr>
   <td><a href="../query-data-table-view">Get View Data</a>
   </td>
   <td>To get data from Data View.
   </td>
   <td>Read access to the Table View
   </td>
  </tr>
</table>

