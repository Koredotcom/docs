
# Rate Limits

The Platform enforces rolling rate limits to restrict the number of API requests a user, application, or service can make within a dynamic timeframe. It helps to prevent any single user or service from consuming disproportionate resources that could degrade the service for others. 

The requests are checked against both the 60-second and 1-hour limits. An application can continue to send requests as long as it doesn't exceed either limit. Once the 1-hour limit is breached, further requests are denied, regardless of whether it complies with the 60-second limit. Once the rate limit is reached, subsequent requests fail with the following error message: “_Rate limit for this API has been reached. Please try again after some time._”


## API Rate Limit Matrix


<table>
  <tr>
   <td><strong>API Type</strong>
   </td>
   <td><strong>Period (Seconds)</strong>
   </td>
   <td><strong>Rate Limit </strong>
   </td>
   <td><strong>Enforcement Level</strong>
   </td>
  </tr>
  <tr>
   <td rowspan="2" >Runtime APIs<br>
(Proactive <a href="https://developer.kore.ai/docs/bots/api-guide/proactive-notifications-api/" target="_blank">Notification</a> and <a href="https://developer.kore.ai/docs/bots/api-guide/proactive-notification-status-api/" target="_blank">Status</a> APIs)
   </td>
   <td>60
   </td>
   <td>600
   </td>
   <td>bot
   </td>
  </tr>
  <tr>
   <td>3600
   </td>
   <td>18000
   </td>
   <td>bot
   </td>
  </tr>
  <tr>
   <td rowspan="2" >Design Time APIs<br>
(<a href="https://developer.kore.ai/docs/bots/api-guide/api-list/#Bot_Definition_APIs">Bot Definition</a>, <a href="https://developer.kore.ai/docs/bots/api-guide/api-list/#NLP_Training_APIs" target="_blank">NLP Training</a>, and <a href="https://developer.kore.ai/docs/bots/api-guide/api-list/#Analytics_APIs" target="_blank">Analytics APIs</a>)  
   </td>
   <td>60
   </td>
   <td>60
   </td>
   <td>bot
   </td>
  </tr>
  <tr>
   <td>3600
   </td>
   <td>1800
   </td>
   <td>bot
   </td>
  </tr>
  <tr>
   <td rowspan="2" >Design Time Admin APIs<br>
(<a href="https://developer.kore.ai/docs/bots/api-guide/api-list/#Admin_APIs" target="_blank">Admin APIs</a>)
   </td>
   <td>60
   </td>
   <td>60
   </td>
   <td>account
   </td>
  </tr>
  <tr>
   <td>3600
   </td>
   <td>1800
   </td>
   <td>account
   </td>
  </tr>
  <tr>
   <td rowspan="2" >Runtime Table APIs<br>
(<a href="https://developer.kore.ai/docs/bots/api-guide/api-list/#Data_Data_Table_Access_APIs" target="_blank">Data Access APIs</a>)
   </td>
   <td>60
   </td>
   <td>600
   </td>
   <td>account + table
   </td>
  </tr>
  <tr>
   <td>3600
   </td>
   <td>18000
   </td>
   <td>account + table
   </td>
  </tr>
  <tr>
   <td rowspan="2" >Design Time Status APIs<br>
(All design time APIs returning status)
   </td>
   <td>60
   </td>
   <td>60
   </td>
   <td>requestid
   </td>
  </tr>
  <tr>
   <td>3600
   </td>
   <td>1800
   </td>
   <td>requestid
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
