# Using AI for Work Assistant

Log in to the AI for Work here: [AI for Work Login](https://work.kore.ai/login){:target="_blank"}

The **AI for Work** Assistant is available on the homepage, you can ask an open-ended question to the assistant.

For instance, if you're connected to Jira, you can type “Get my Jira issues” in the **Ask or search anything** search box. The Jira agent will be triggered and retrieve your Jira issues.

**AI for Work** can also manage complex workflows by organizing tasks into a structured sequence, each handled by a specialized “agent.” In this approach, each agent performs a unique function and automatically executes its task in the correct order. By passing information seamlessly from one agent to the next, the flow ensures efficient, sequential completion of each step, allowing multiple instructions to be handled with minimal manual effort. This streamlined solution is known as **Agentic Flow**.

### Agentic Flow Example

**Ask Assistant:** “Get my Jira issues. Let me know John Doe’s availability for a meeting tomorrow. Send the Jira issues to John Doe.”

**Agents Involved**:

1. **Jira:** Fetches the user's Jira issues.
2. **Google Calendar:** Checks John Doe’s availability for a specified time.
3. **Gmail:** Sends the fetched Jira issues to John Doe via email. 

<img src="../images/agentic-flow.png" alt="agentic-flow" title="agentic-flow" style="border: 1px solid gray; zoom:80%;">

**Steps to execute the flow:**

1. Provide the instructions and press enter. Each action is mapped to its respective agent.
2. Hover over any instruction to display the **Edit** and **Delete** icons, which allow you to modify or remove individual actions.
3. Click **Start** to initiate the flow. Each task is executed sequentially.
4. For the above use case, the first two actions will run automatically.
5. For the third action, a draft email is created. Review and edit the draft, then click **Send** to complete the task.
