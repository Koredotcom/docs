# Agent AI Mapping 

The **Agent AI Mapping** feature lets administrators assign dialog tasks to specific queues. This controls which dialog tasks agents see in the **Proactive** mode (**Assist** tab) and in the **Library** during runtime, including transfer scenarios. At runtime, agents see only the dialog tasks assigned to their queue, ensuring a streamlined and focused experience. 

!!! note

    This feature is available only to Contact Center AI (CCAI) users at this time. 

## Add or Delete a Queue Configuration

The Agent AI Mapping section displays queues and agent information created in CCAI [Contact Center > Routing > Queues](../../contactcenter/routing/queues/queue-management.md){:target="_blank"}. This section describes how to add and delete queue configurations. 

To configure dialogs to  queues: 

1. Sign in to [Platform](https://platform.kore.ai/){:target="_blank"}.
2. Go to **Agent AI** > **Configurations** > **Agent AI Mapping**. 
3. Use the **Agent AI Mapping** toggle to enable it, if disabled. 
4. Click **Add Queue**.  
    <img src="../agent-ai-mapping-images/agent-ai-mapping-main-page.png" alt="agent-ai-mapping-main-page" title="agent-ai-mapping-main-page" style="border: 1px solid gray; zoom:80%;"> 

5. Select the **queue**/**queues** you want to add. Note that previously added queues do not appear in the selection list, unless they are deleted from the Agent AI Mapping dashboard.  
    * To select all available queues, click the global checkbox beside the **Queues** header.
    * To search for an available queue, enter the **queue name** in the **search box**.  

6. Click **Add selected**.  
    <img src="../agent-ai-mapping-images/add-queue-page.png" alt="add-queue-page" title="add-queue-page" style="border: 1px solid gray; zoom:80%;">  

7. The newly added queue/queues appear in the list, with a warning message prompting to complete the configuration for them. Only the configured queues are available to agents at runtime.  
    <img src="../agent-ai-mapping-images/warning-message.png" alt="warning-message" title="warning-message" style="border: 1px solid gray; zoom:80%;">  

    !!! note

        Agents assigned to a queue during its creation appear by default, and the agent-to-queue assignment is controlled through CCAI. For more information, see [this](../../contactcenter/routing/queues/queue-management.md/#assign-agents){:target="_blank"} section. 

To delete a queue, click the “delete” button against it, and then click **Delete** on the confirmation message:  

<img src="../agent-ai-mapping-images/delete-queue.png" alt="delete-queue" title="delete-queue" style="border: 1px solid gray; zoom:80%;">  

## Assign Apps, Channels, Languages, and Dialog Tasks

This section describes the process of assigning apps, channels, languages, and dialog tasks to a queue. To do that: 

1. Click the “edit” button against the newly added queue.
2. Perform the following tasks:
    1. Click to select a **channel**—Chat, Voice, or Email.
    2. Select a **language** from the language list. The language selected during queue creation appears by default, but you can change it, if required.
    3. Select an app from the Apps list.
    4. Select one of the following options:
        1. Select **Allow Dialog Tasks**, if you want selected dialog tasks to appear at runtime.
        2. Select **Don’t Allow Dialog Tasks**, if you don’t want dialog tasks to appear at runtime. 
            <img src="../agent-ai-mapping-images/no-dialogs.png" alt="free text" title="free text" style="border: 1px solid gray; zoom:80%;"> 

    5. If you select **Allow Dialog Tasks**, proceed with the following: 
        3. Select the **dialog tasks** available for the app. 
        4. Click **Select All**, to select all available dialog tasks. The number of selected dialog tasks appear next to the **Dialog Task** section. 
            <img src="../agent-ai-mapping-images/queue-configuration.png" alt="queue-configuration" title="queue-configuration" style="border: 1px solid gray; zoom:80%;">  

3. Click **Save**.

## Edit Queue Configuration

This section describes the process of editing an available queue configuration. To do that:

1. Click the “edit” button against a queue you want to modify.
2. Select an app **bot** from the AppsBot list. 
    <img src="../agent-ai-mapping-images/select-an-app.png" alt="select-an-app" title="select-an-app" style="border: 1px solid gray; zoom:80%;">  

3. Make the necessary changes, and then click **Save**.