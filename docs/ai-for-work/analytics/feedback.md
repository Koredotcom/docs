# Feedback Management

Feedback Management gives administrators visibility into user feedback submitted across the platform, with configurable email notifications and scoped access by role.

<img src="../images/feedback-1.png" alt="execution analyzer" title="execution analyzer" style="border: 1px solid gray; zoom:80%;">

## Accessing the Feedback Page

The Feedback page is available under **Usage** in the Admin Console. Access is scoped by role:

* **Account-level admins** with Usage access see all feedback across the account.
* **Workspace Owners** see feedback scoped to their workspace.
* **Agent-level** access scopes provide feedback to that specific agent. 


## Feedback Detail View

Click any feedback entry to open its detail view, which displays the associated trace log and the submitted feedback type, category, and any additional comments.


## Notify Feedback

Click **Notify Feedback** on the Feedback page to configure email notifications. Select which feedback types should trigger notifications and add recipients. Recipients can be any valid email address or distribution list and doesn't need to belong to the account.

Notification scope follows the configured level, account-level notifications cover all workspaces and agents, workspace-level covers all agents in that workspace, and agent-level covers only that agent.

**Email notifications include:** user email, query, agent name, workspace, feedback type, feedback category, and additional comments (if provided).


## End User Feedback Submission

Users submit feedback using the Upvote or Downvote icons in the chat interface. Downvote submissions include a category selection and an option to add comments and upload up to 5 screenshots.

<img src="../images/feedback-2.png" alt="execution analyzer" title="execution analyzer" style="border: 1px solid gray; zoom:80%;">

**Share Query and Response**

On enabling **Hide conversation** in Data Settings at the agent or account level, the feedback pop-up shows a **Share Query and Response** checkbox (checked by default). When enabled, the question and response for that entry are stored in an unhidden state. If the user has prior queries in the same thread, a **Share previous queries** option also appears, capturing up to the last 5 queries from that thread.

!!!Note 
    
    Feedback is only recorded when the user clicks **Submit**. Cancelling the pop-up discards the submission entirely.



