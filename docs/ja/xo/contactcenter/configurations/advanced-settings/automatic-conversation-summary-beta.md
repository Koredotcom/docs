# Automatic Conversation Summary [Beta]

Contact Center AI can automatically generate conversation summaries of the interaction between the agents and customers. These summaries are generated in two places.

1. **Arrival Summary**: The arrival summary appears on the live interaction pane above the compose bar.
2. **Post-conversation Summary**: The post-conversation summary appears in the Disposition & Notes section.

Administrators can enable/disable the automatic generation of the conversation summary.

Steps to enable Automatic Conversation Summary:

1. Go to **Contact Center AI** > **CONFIGURATIONS** > **Advanced Settings** > **Automatic Conversation Summary [Beta]**.  
<img src="../images/advanced-conversation-summary-beta.png" alt="Advanced Conversation Summary (Beta)" title="Advanced Conversation Summary (Beta)" style="border: 1px solid gray; zoom:80%;">

2. Turn on the  **Arrival and Post Conversation Summary** toggle.

    !!! Note

        All existing users have this feature enabled by default.

    <img src="../images/enable-automatic-conversation-summary.png" alt="Enable Automatic Conversation Summary" title="Enable Automatic Conversation Summary" style="border: 1px solid gray; zoom:80%;">

3. A confirmation message is displayed.
<img src="../images/confirmation-automatic-summary-generation.png" alt="Confirmation-Automatic Summary Generation" title="Confirmation-Automatic Summary Generation" style="border: 1px solid gray; zoom:80%;">

The changes made to this setting are recorded on the Audit Report page in the Analytics module of the [Kore.ai Bots Admin Console](../../../administration/adminconsole.md#intro-to-bots-admin-console).  [Learn More](../../../administration/analytics.md#audit-report-details).

## Behavior When Automatic Summary Generation is Enabled

### Arrival Summary

Upon an agent accepting a conversation, the arrival summary appears on the Live Interaction pane above the compose bar.  
<img src="../images/live-interaction-summary.png" alt="Summary-Live Interaction" title="Summary-Live Interaction" style="border: 1px solid gray; zoom:80%;">

### Post Conversation Summary

When an agent clicks the **End** button, the **Disposition & Notes** section displays an automatically generated conversation summary. Agents can edit the notes and select the resolution to close the conversation.
<img src="../images/disposition-and-notes.png" alt="Summary-Disposition and Notes" title="Summary-Disposition and Notes" style="border: 1px solid gray; zoom:80%;">

## Behavior When Auto Summary Generation is Disabled

### Arrival Summary

Upon an agent accepting a conversation, the arrival summary section on the Live Interaction pane is blank.  
<img src="../images/live-interaction-summary.png" alt="Auto Summary Generation Disabled" title="Auto Summary Generation Disabled" style="border: 1px solid gray; zoom:80%;">

### Post Conversation Summary

When an agent clicks the End conversation button, the Disposition & Notes section is blank. Agents can add notes if required and select the resolution to close the conversation.  
<img src="../images/post-conversation-summary.png" alt="Post Conversation Summary" title="Post Conversation Summary" style="border: 1px solid gray; zoom:80%;">