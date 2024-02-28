
# Rate Limits

The Platform enforces rolling rate limits to restrict the number of API requests a user, application, or service can make within a dynamic timeframe. It helps to prevent any single user or service from consuming disproportionate resources that could degrade the service for others. 

The requests are checked against both the 60-second and 1-hour limits. An application can continue to send requests as long as it doesn't exceed either limit. Once the 1-hour limit is breached, further requests are denied, regardless of whether it complies with the 60-second limit. Once the rate limit is reached, subsequent requests fail with the following error message: “_Rate limit for this API has been reached. Please try again after some time._”


## API Rate Limit Matrix


<table>
  <tr>
   <td><strong>ENFORCEMENT LEVEL</strong>
   </td>
   <td><strong>RATE LIMIT</strong>
   </td>
   <td><strong>API LIST</strong>
   </td>
  </tr>
  <tr>
   <td>bot
   </td>
   <td>60 per minute
<p>
1800 per hour
   </td>
   <td>Bot Definition APIs<br> (<a href="../upload-file/">Upload File</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/import-bot-as-a-new-bot-api/">Import Bot as a New Bot</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/import-bot-into-an-existing-bot-api/">Import Bot into an Existing Bot</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/import-bot-functions-api/">Import Bot Functions</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/install-sample-bot-api/">Install Sample Bot</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/bot-export-api/">Bot Export</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/channel-enablement-api/">Enable Channel</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/add-and-enable-a-new-language-api/">Add and Enable a New Language</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/enable-an-existing-language-api/">Enable an existing Language</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/disable-an-existing-language-api/">Disable an existing Language</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/language-updation-api/">Update a Language Configuration</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/publish-bot-api/">Publish Bot</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/bot-variables-import/">Bot Variables Import</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/batch-test-execution-api/">Batch Test Execution</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/get-batch-test-suites-api/">Get Batch Test Suites</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/export-batch-test-suite-api/">Export Batch Test Suite</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/import-batch-test-suite-api/">Import Batch Test Suite</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/delete-batch-test-suite-api/">Delete Batch Test Suite</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/delete-batch-test-suite-execution-api/">Delete Batch Test Suite Execution</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/create-a-test-suite-api/">Create (Import) a Conversation Test Suite</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/execute-a-test-suite-api/">Conversation Test Suite Execution</a>, and <a href="https://developer.kore.ai/docs/bots/api-guide/delete-a-test-suite-api/">Delete Conversation Test Suite</a>)
<p>
NLP Training APIs (<a href="https://developer.kore.ai/docs/bots/api-guide/ml-utterances-import-api/">ML Utterances Import</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/ml-training-api/">ML Utterance Train</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/ml-utterances-export-api/">ML Utterances Export</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/faq-training-api/">FAQ Training</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/extract-from-file-or-url-kg/">Extraction from file or URL</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/get-extracts-history-kg/">Get Extractions History</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/get-extraction-questions-kg/">Get Extraction Question</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/get-knowledgetasks-kg/">Get KnowledgeTasks</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/add-questions-from-extract-kg/">Add Questions from Extraction</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/get-faqs-kg/">Get FAQs</a>, and <a href="https://developer.kore.ai/docs/bots/api-guide/update-nlp-configurations/">Update NLP Configurations</a>)
<p>
Analytics APIs (<a href="https://developer.kore.ai/docs/bots/api-guide/find-intent-api/">Find Intent</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/conversation-history-api/">Conversation History</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/conversation-summary-api/">Conversation Summary</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/feedback-survey-api/">Feedback Analytics</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/debug-logs-api/">Debug Logs</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/get-changelogs-api/">Get ChangeLogs</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/sessions-api/">Sessions History</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/get-widget/">Get Dashboard Widget Data</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/get-analytics-api/">Get Analytics</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/user-engagement-trend-api/">User Engagement Trend</a>, and <a href="https://developer.kore.ai/docs/bots/api-guide/conversation-details-summary-api/">Conversation Details and Summary</a>)
   </td>
  </tr>
  <tr>
   <td>request_id
   </td>
   <td>60 per minute
<p>
1800 per hour
   </td>
   <td>Bot Definition Status APIs (<a href="https://developer.kore.ai/docs/bots/api-guide/bot-import-status-api/">Bot Import Status</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/bot-export-status-api/">Bot Export – Status</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/bot-publish-status-api/">Bot Publish Status</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/batch-test-execution-status-api/">Batch Test Execution Status</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/get-the-creation-status-of-a-test-suite-api/">Conversation Test Suite Creation Status</a>, and <a href="https://developer.kore.ai/docs/bots/api-guide/get-the-execution-status-and-summary-of-a-test-suite-api/">Conversation Test Suite Execution Status</a>)
<p>
NLP Training Status APIs (<a href="https://developer.kore.ai/docs/bots/api-guide/ml-utterances-import-status-api/">ML Utterances Import Status</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/ml-training-status-api/">ML Utterance Train Status</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/ml-utterances-export-status-api/">ML Utterances Export Status</a>, and <a href="https://developer.kore.ai/docs/bots/api-guide/faq-training-status-api/">FAQ Training Status</a>)
   </td>
  </tr>
  <tr>
   <td>account
   </td>
   <td>60 per minute
<p>
1800 per hour
   </td>
   <td>Admin APIs (<a href="https://developer.kore.ai/docs/bots/api-guide/get-bots-api/">Get Bots</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/import-roles-api/">Import Roles</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/get-roles-api/">Get Roles</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/get-user-roles-details-api/">Get User Roles Details</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/get-groups-api/">Get Groups</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/export-roles-api/">Export Roles</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/assign-bt-roles-api/">Assign BT Roles</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/assign-admin-roles-api/">Assign Admin Roles</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/update-user-access-api/">Update User Access</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/create-user-api/">Create Users</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/get-user-api/">Get Users Information</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/update-user-api/">Update User</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/delete-user-api/">Remove Users from Account</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/delete-customer-data-api/">Delete Customer Data</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/delete-customer-data-status-api/">Delete Customer Data Status API</a>, and <a href="https://developer.kore.ai/docs/bots/api-guide/get-audit-logs-api/">Get Admin Console Audit Logs</a>)
   </td>
  </tr>
  <tr>
   <td>bot
   </td>
   <td>600 per minute
<p>
18000 per hour
   </td>
   <td>Bot Definition Notification APIs (<a href="https://developer.kore.ai/docs/bots/api-guide/proactive-notifications-api/">Proactive Notification</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/proactive-notification-status-api/">Proactive Notification Status</a>)
   </td>
  </tr>
  <tr>
   <td>account+table
   </td>
   <td>600 per minute
<p>
18000 per hour
   </td>
   <td>Data access APIs (<a href="https://developer.kore.ai/docs/bots/api-guide/data-insert-api/">Insert Data</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/data-insert-bulk-api/">Insert Bulk Data</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/data-update-api/">Update Data</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/data-delete-api/">Delete Data</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/query-data-table-api/">Get Table Data</a>, and <a href="https://developer.kore.ai/docs/bots/api-guide/query-data-view-api/">Get View Data</a>)
   </td>
  </tr>
</table>





### An Example of Rate Limit Enforcement


#### **Scenario**



* **Runtime API Rate Limits**: 600 requests/60 seconds and 18,000 requests/3600 seconds.
* **Starting Point**: An application begins requesting the API at 12:00 PM.


### **Example Timeline**



1. **12:00 PM - 12:01 PM**: The application sends 600 requests in the first minute. It has now hit the 60-second limit but is well within the 1-hour limit. The 61st-second request is evaluated against both windows. It's allowed if the total requests in the last 60 seconds are under 600 and the total requests in the last 3600 seconds are under 18,000.
2. **12:01 PM - 12:30 PM**: Each new request is checked against both limits. The requests are allowed if they don't push the total over 600 in any 60-second window or over 18,000 in the ongoing 1-hour window.
3. **At 12:30 PM**: If the application continues to send requests at the same rate, hitting the 60-second limit each minute. By 12:30 PM, the application had sent a total of 18,000 requests (600 requests/minute multiplied by 30 minutes), thus exceeding the 1-hour limit before the hour was up. Additional requests are now denied, even if they fall within the 600 requests/minute limit because the 1-hour limit has been breached.


## Best Practices



* Spread out calls evenly to avoid traffic spikes.
* Use filters to limit the data response size and avoid calls that request overlapping data.
* When the limit has been reached, stop making API calls. Wait for the specific time period to pass. Alternatively, implement a backoff strategy where your application automatically reduces its request frequency and retries failed requests after a calculated delay.

Need a higher or custom rolling Rate Limit? [Contact support](https://support.kore.ai/){:target="_blank"}.
