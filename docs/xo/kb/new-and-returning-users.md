# Personalize Experience for New and Returning Users Across Channels for a Bot

Each channel provides a unique identity for users, such as a Twitter handle, Facebook ID, or email address (Slack/Team), call ID or phone number (IVR), and email/customer ID (SDK). The XO Platform creates a corresponding unique identity for each user, ensuring that a user is consistently identified across different channels when interacting with a specific bot.

When a user starts a conversation with a bot, the Platform checks if the user’s channel-provided identity matches any previous users who have interacted with that bot. If a match occurs, the user is marked as a ‘returning user’ by setting the `isReturningUser` flag to `true` in the ‘BotUserSession’ context object (`context.BotUserSession.isReturningUser`). If there is no match, the user is marked as new.

Bot developers can use the `isReturningUser` flag to provide personalized user experiences by implementing different business logic for new versus returning users.

**Related Links**

* <a href="../context-object" target="_blank">Working with Context Object</a>
* <a href="../event-handling" target="_blank">Configure Welcome / On-Connect Event</a>
* <a href="../users-dashboard" target="_blank">Users Trend Analysis</a>
