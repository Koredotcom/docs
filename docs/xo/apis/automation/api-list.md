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

|     |     |     |     |
| --- | --- | --- | --- |
| API | DESCRIPTION | ASSOCIATED APP SCOPE |     |
|     |     | **XO PLATFORM** | **ADMIN CONSOLE** |
| [Upload File](../upload-file) | To upload the botdefinition, botconfig, and botfunction file (if any) as well as the bot icon to the local server and get the file ID to be used in the Import Bot API.<br><br>To upload utterances in [ML Utterances Import API](../import-ml-utterances), bot roles, admin roles for [Import Roles API](../import-roles), [Import Batch Test Suite](../import-batch-test-suite) details and [Extraction from file or URL](../extract-kg-from-file-url) to extract FAQs. | NA  | Bot Definition > Bot Import |
| [Import Bot as a New Bot](../import-bot-as-new-bot) | To create a new assistant in the account owner’s XO Platform using the File IDs generated when uploading the files. | NA  | Bot Definition > Bot Import |
| [Import Bot into an Existing Bot](../import-bot-into-an-existing-bot) | To import the bot definition file into an existing assistant for upgrading to a new version or restoring to an earlier version. | NA  | Bot Definition > Bot Import |
| [Bot Import Status](../bot-import-status) | To get the status of the bot import request. | NA  | Bot Definition > Bot Import |
| [Install Sample Bot](../install-sample-bot) | To install a sample assistant. | NA  | Bot Definition > Bot Create |
| [Bot Export](../bot-export) | To export a bot definition and all associated components. | Bot Export | Bot Definition > Bot Export |
| [Bot Export – Status](../bot-export-status) | To get the status of the Bot Export request and also provides the download link of the export copy after the export is completed. | Bot Export | Bot Definition > Bot Export |
| [Enable Channel](../channel-enablement) | To enable or update a channel for an assistant. | NA  | Channel Management |
| [Add and Enable a New Language](../add-enable-new-language) | To add and enable a new language for a virtual assistant. | Languages Configuration. | API Scopes > Language Settings |
| [Enable an existing Language](../enable-existing-language) | To enable an [existing language](/app-settings/language-management/building-multi-language-bots) for a virtual assistant. | Languages Configuration. | API Scopes > Language Settings |
| [Disable an existing Language](../disable-existing-language) | To disable an existing language for a virtual assistant that is currently enabled. | Languages Configuration. | API Scopes > Language Settings |
| [Update a Language Configuration](../language-updation) | To update the configuration of an existing language for a virtual assistant. | Languages Configuration. | API Scopes > Language Settings |
| [Proactive Notification](../proactive-notifications) | To send proactive notifications to the configured channel. | NA  | Channel Management > Proactive Messages |
| [Proactive Notification Status](../proactive-notifications-status) | To send proactive notifications to the configured channel. | NA  | Channel Management > Proactive Messages |
| [Publish Bot](../publish-bot) | To initiate a bot publish request. | NA  | Bot Publish > Publish |
| [Bot Publish Status](../bot-publish-status) | Gets the publish status of the ongoing assistant or the last completed status request of the assistant. | NA  | Bot Publish > Publish |
| [Bot Variables Import](../bot-variables-import) | To import global and content variables into the assistant. | Import Variables | NA  |
| [Batch Test Execution](../batch-test-execution) | To invoke the execution of a Batch Test suite. | Batch Tests Execution | NA  |
| [Batch Test Execution Status](../batch-test-execution-status) | To know the status of the execution against a unique Test Request Id. | Batch Tests Execution | NA  |
| [Get Batch Test Suites](../get-batch-test-suites) | To get the list of Batch Test Suites available. | Batch Tests Management | Batch Tests Management |
| [Export Batch Test Suite](../export-batch-test-suite) | To export the test cases of a given Batch Test Suite. | Batch Tests Management | Batch Tests Management |
| [Import Batch Test Suite](../import-batch-test-suite) | To import a batch test suite. | Batch Tests Management | Batch Tests Management |
| [Delete Batch Test Suite](../delete-batch-test-suite) | To delete a Batch Test Suite. | Batch Tests Management | Batch Tests Management |
| [Delete Batch Test Suite Execution](../delete-batch-test-suite-execution) | To delete a specific execution of a Batch Test Suite. | Batch Tests Management | Batch Tests Management |
| [Create (Import) a Conversation Test Suite](../create-conversation-test-suite) | To create or import a Conversation Test Suite. | Conversation Tests Management | Conversation Tests Management |
| [Conversation Test Suite Creation Status](../get-conversation-test-suite-creation-status) | To get the creation status of a Conversation Test Suite. | Conversation Tests Management | Conversation Tests Management |
| [Conversation Test Suite Execution](../execute-test-suite) | To execute a Conversation Test Suite. | Conversation Tests Execution | Conversation Tests Execution |
| [Conversation Test Suite Execution Status](../get-test-suite-execution-status) | To get the execution status and summary of a Conversation Test Suite. | Conversation Tests Execution | Conversation Tests Execution |
| [Delete Conversation Test Suite](../delete-test-suite) | To delete a Conversation Test Suite. | Conversation Tests Management | Conversation Tests Management |

## NLP Training APIs

|     |     |     |     |
| --- | --- | --- | --- |
| API | DESCRIPTION | ASSOCIATED APP SCOPE |     |
|     |     | **XO PLATFORM** | **ADMIN CONSOLE** |
| [ML Utterances Import](../import-ml-utterances) | To import ML Utterances into an assistant. | Utterances Import | Test > Utterances Import & Train |
| [ML Utterances Import Status](../ml-utterances-import-status) | To get the status of the ML utterances import request made through Import ML Utterances API. | Utterances Import | Test > Utterances Import & Train |
| [ML Utterance Train](../ml-utterances-train) | To initiate ML training of an assistant. | Train ML | Test > Train ML & Train |
| [ML Utterance Train Status](../ml-utterances-train-status) | To get the status of the ML training. | Train ML | Test > Train ML & Train |
| [ML Utterances Export](../ml-utterances-export) | To export the ML utterances of an assistant. | Utterances Export | Test > Utterances Export & Train |
| [ML Utterances Export Status](../ml-utterances-export-status) | To get the download link of the ML Utterances export copy. | Utterances Export | Test > Utterances Export & Train |
| [FAQ Training](../faq-training) | To initiate the training of the knowledge graph. | Train Faq | Test > Train FAQ & Train |
| [FAQ Training Status](../faq-training-status) | To get the status of the FAQ training. | Train Faq | Test > Train FAQ & Train |
| [Extraction from file or URL](../extract-kg-from-file-url) | To extract FAQs using a file or URL. | Manage Knowledge Graph | Manage Knowledge Graph |
| [Get Extractions History](../get-kg-extraction-history) | To get a list of KG Extractions history. | Manage Knowledge Graph | Manage Knowledge Graph |
| [Get Extraction Question](../get-kg-extraction-questions) | To get a list of KG Extraction Questions. | Manage Knowledge Graph | Manage Knowledge Graph |
| [Get KnowledgeTasks](../get-knowledge-tasks) | To get a listing of knowledge Tasks along with the nodes. | Manage Knowledge Graph | Manage Knowledge Graph |
| [Add Questions from Extraction](../add-questions-to-knowledgegraph) | To add specific questions from extraction to the Knowledge Graph. | Manage Knowledge Graph | Manage Knowledge Graph |
| [Get FAQs](../get-faqs-from-knowledge-task) | To get a list of questions and nodes under the Knowledge task. | Manage Knowledge Graph | Manage Knowledge Graph |
| [Update NLP Configurations](../update-nlp-configurations) | To update the NLP thresholds and configurations. | NLP Configurations | Test > NLP Configurations & Train |

## Analytics APIs

|     |     |     |     |
| --- | --- | --- | --- |
| API | DESCRIPTION | ASSOCIATED APP SCOPE |     |
|     |     | **XO PLATFORM** | **ADMIN CONSOLE** |
| [Find Intent](../find-intent) | To obtain the intent recognition result and the scoring from NLP and ML engines. | Intent and Entity Detection | Intent Identification > Intent and Entity Detection |
| [Conversation History](../conversation-history) | To fetch the conversational messages between the assistant and user in reverse chronological order. | Chat History | Bot Analytics > Chat History |
| [Conversation Summary](../conversation-summary) | To summarizes the conversation between a user and an agent. | Conversation Summary | NA  |
| [Feedback Analytics](../fetch-feedback-survey-scores) | To fetch the Feedback Survey Response Data and push it to the Feedback Analytics Dashboard. | Feedback Survey | Bot Analytics > Feedback Analytics |
| [Debug Logs](../fetch-debug-logs) | To get debug logs of a specific conversation. | Debug Logs | NA  |
| [Get ChangeLogs](../get-change-logs) | To get the list of changes made to the assistant definition for a given date period. | Logs History | Logs > Bot Audit Logs |
| [Sessions History](../get-sessions-history) | To retrieve the conversation sessions created. | Bot Sessions | Bot Analytics > Bot Sessions |
| [Get Dashboard Widget Data](../get-dashboard-widget-data) | To get the data result of a widget from a specific Custom Dashboard added to an assistant. | Custom Reports | Custom Reports > Custom Reports |
| [Get Analytics](../get-analytics) | To extract the metrics data related to the intent detection and task performance using API | Metrics | NA  |
| [Task Execution-based Containment Report](../task-execution-based-containment-report) | To extract task execution details (including success and failure status) across all the conversation sessions of the virtual assistant in the selected timeframe for Drop-off, Self-service, and Agent Hand-off containment types using API. | Metrics | NA  |
| [User Engagement Trend](../user-engagement-trend) | To provide the number of users who have interacted with the assistant in a given period across different time intervals. | User Engagement Trend | NA  |
| [Conversation Details and Summary](../conversation-details-and-summary) | To fetch the conversational details and summary between the bot and the user.. | Conversation History | NA  |
| [LLM and Generative AI Usage Logs API](../llm-usage-logs-api) | To fetch the LLM & Generative AI usage logs. | Gen AI and LLM Usage Logs | API Scopes > Gen AI and LLM Usage Logs |

## Admin APIs

|     |     |     |
| --- | --- | --- |
| API | DESCRIPTION | ASSOCIATED BOT ADMIN APP SCOPE |
| [Get Bots](../get-bots) | To retrieve the list of bots available in an account | Profile Management > Role Management |
| [Import Roles](../import-roles) | To import bot or admin roles into an account | Profile Management > Role Management |
| [Get Roles](../get-roles) | To retrieve the list of bot or admin roles available in an account. | Profile Management > Role Management |
| [Get User Roles Details](../get-user-roles-details) | To get full information on all users and their associated roles in the account | Profile Management > Role Management |
| [Get Groups](../get-groups) | To get the list of groups and group members available in the account | Profile Management > Role Management |
| [Export Roles](../export-roles) | To export bot or admin roles from an account | Profile Management > Role Management |
| [Assign BT Roles](../assign-bt-roles) | To assign a bot role to a set of users in a specific assistant | Profile Management > Role Management |
| [Assign Admin Roles](../assign-admin-roles) | To add or remove users or groups from admin roles | Profile Management > Role Management |
| [Update User Access](../update-user-access) | To add or remove the ability to access XO Platform, create new assistants | Profile Management > Role Management |
| [Create Users](../create-users) | To add users to an account | User Management |
| [Get Users Information](../get-user-information) | To retrieve the user details | User Management |
| [Update User](../update-user) | To update user details | User Management |
| [Remove Users from Account](../delete-users) | To remove users from an account | User Management |
| [Delete Customer Data](../delete-customer-data) | To delete customer data | Profile Management > Delete Users Data |
| [Delete Customer Data Status API](../delete-customer-data-status) | To get the status of the Customer Data Delete request | Profile Management > Delete Users Data |
| [Get Admin Console Audit Logs](../get-admin-console-audit-logs) | To get admin console audit logs. | Logs Admin > Admin Console Audit Logs |

## Data (Data Table) Access APIs

|     |     |     |
| --- | --- | --- |
| API | DESCRIPTION | ASSOCIATED APP SCOPE |
| [Insert Data](../data-insert) | To insert data into Data Table | Write access to the Data Table |
| [Insert Bulk Data](../bulk-data-insert) | To insert bulk data into Data Table | Write access to the Data Table |
| [Update Data](../data-update) | To update data into Data Table. | Read and Write access to the Data Table |
| [Delete Data](../data-delete) | To delete data from Data Table. | Read and Delete access to the Data Table |
| [Get Table Data](../query-table-data) | To get data from Data Table. | Read access to the Data Table |
| [Get View Data](../query-data-table-view) | To get data from Data View. | Read access to the Table View |
