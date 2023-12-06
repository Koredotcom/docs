# Migrate Google Dialogflow Bot

The Kore.ai XO Platform supports the migration of an existing **Google Dialogflow** bot into your XO Platform account using the External NLU Adapter.

This easy migration reduces the manual efforts in creating the dialog flow on the XO Platform while allowing you to implement the inbuilt features of Kore.ai on the imported bot. 

You can integrate life-like conversational AI with state-of-the-art virtual assistants on the Platform. You can leverage the key features of Google Dialogflow, like Visual flow builder, Omnichannel implementation, Advanced AI, State-based data models, and end-to-end management for your XO Platform projects.

**Benefits of the Google Dialogflow Bot-Kore Platform Migration**

* Natural and accurate interactions for multi-turn conversations with feedback support.
* Integrates seamlessly with your visual builder and pre-built virtual agents.
* Easy to manage and scale.

The following are the results of completing the Bot Migration from Google Dialogflow to Kore.ai:

1. All the intents nodes are created in the Kore.ai Virtual Assistant.
2. All the entities within an intent are created as entity nodes.
3. Any entity type not in Kore Platform is mapped to a string entity.
4. Intent Training is imported as ML training utterances.
5. NER tags (if any) are imported for utterances.

## Migration Flow

The migration is a simple 3-steps process:

1. <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/migrate-external-bots/google-dialogflow-bot/#step-1-export-the-google-dialogflow-bot-project" target="_blank">Export the Google Dialogflow Bot Project</a>.
2. <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/migrate-external-bots/google-dialogflow-bot/#step-2-import-the-dialogflow-project" target="_blank">Import the Dialogflow Project to the Kore.AI XO Platform</a>. 
3. <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/migrate-external-bots/google-dialogflow-bot/#step-3-import-the-bot" target="_blank">Import the Virtual Assistant</a>.

### Step 1: Export the Google Dialogflow Bot Project

The first step in the migration process is to copy and export your **Google Dialogflow bot project** from the **Bot-export-import** folder.

**Prerequisites**

Install the <a href="https://www.dialogflow.com/" target="_blank">Dialogflow API</a> development suite- **_google-cloud-dialogflow_** <a href="https://pypi.org/project/google-cloud-dialogflow/" target="_blank">here</a>.

To export your Google Dialogflow project, follow the steps below:

1. Navigate to the **DialogFlow Essentials** test console <a href="https://dialogflow.cloud.google.com/" target="_blank">here</a>. You must create at least one agent to access the console.
2. Select the **Dialogflow bot** project you want to export.
3. Click the **Export and Import** tab on the bot configuration page.
4. Click the **Export as ZIP** button.
5. Once you download and extract the **Dialogflow bot project** folder, the intents, entities, agent, and package are saved to **Downloads** > **Bot-export-import** > **Bot-export-import** > **src** > **dialogflow** > **exportData**.

**Output Files**

1. The downloaded Dialogflow folder export copy is stored in the path `Bot-export-import/tree/master/src/dialogflow/exportData`.
2. The converted Kore Dialogflow project import copy will be stored in the path `Bot-export-import/tree/master/src/ImportData`.

### Step 2: Import the Dialogflow Project

After the **Bot-export-import** folder is exported, you should import the project to the **ImportData** folder with the steps below:

1. On the command prompt screen in your system, navigate to **Bot-export-import** > **Bot-export-import** > **src** and run the `python -m main` command.
<img src="../images/command-prompt.png" alt="command prompt" title="command prompt" style="border: 1px solid gray; zoom:75%;">

2. Enter **1** for **Dialogflow** when prompted.
<img src="../images/enter-input-dialogflow.png" alt="enter input" title="enter input" style="border: 1px solid gray; zoom:75%;">

3. The bot project folder is created at **Bot-export-import** > **Bot-export-import** > **src** > **ImportData**.
<img src="../images/bot-project-folder.png" alt="bot project folder" title="bot project folder" style="border: 1px solid gray; zoom:75%;">

4. In the downloaded folder, navigate to **Bot-export-import** > **Bot-export-import** > **src** > **ImportData** to view the **botDefinition** and **config** JSON source files.
<img src="../images/bot-export-import.png" alt="export import bot" title="export import bot" style="border: 1px solid gray; zoom:75%;">

### Step 3: Import the Bot 

On the Kore.ai XO Platform, you can import the migrated bot with the steps mentioned <a href="https://developer.kore.ai/docs/bots/bot-settings/bot-management/bot-management-2/#Steps_in_Importing_to_an_Existing_Assistant" target="_blank">here</a>.

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>In the <b>Import Bot</b> window, select the relevant <b>Bot definition</b> and <b>config</b> files from the <b>ImportData</b> folder.</p>
</div>

<img src="../images/import-bot.png" alt="import bot" title="import bot" style="border: 1px solid gray; zoom:75%;">
