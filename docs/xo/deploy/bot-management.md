
# App Management

This article discusses the main features that allow you to manage your Virtual Assistant (VA) at a high level. These include Importing, Exporting, and Deleting assistants, as well as viewing change logs.

To learn more about Variables and how to use them, see [ Using Bot Variables](../app-settings/variables/using-bot-variables.md).

## Importing and Exporting Assistants

Kore.ai allows you to export and import assistant tasks and associated configurations into another assistant. This feature helps you in the migration of VA definitions, cloning of assistants, or maintaining a periodic backup of VA definitions.

This feature is particularly helpful to test various versions of your assistant at different stages of the development process before it is released for end users. The articles in this section help you understand how the _Export_ and _Import_ features work and how to perform them.

!!! note

    Post v8.0 release, the _enableNegativePatterns_ flag will be included in ‘NLP Settings’ under ‘NLP Data’ in the exported and imported VA definitions. This flag is used to check if the Negative Patterns are enabled/disabled in the assistant.

Prior to this patch, this flag was part of ‘NLP Settings’ under ‘NLP Data’ in the imported VA definitions and ‘Bot Setting’ under ‘Setting’ in the exported VA definitions. This change is aimed at streamlining the functionality and might result in the failure to the incremental import of a VA from an export file generated before v8.0.

### Importing an Assistant

You can import tasks and configurations of a specific assistant into a new or existing assistant using one of these import types:

* **Full import**: Replaces the existing assistant with the imported configurations. Any additional configurations in the target assistant that are not present in the import definition will be deleted. An exception to this rule is the webhook channel, which will be retained even if not present in the import VA definition.

    !!! note

        We strongly recommend you exercise caution and take a backup of the target assistant before importing using this option. 

* **Incremental import**: Upgrades the current assistant with the configurations available in the import file. Any additional configurations available in the target or imported VA are retained. You can select specific VA components to import from the VA tasks, NLP data, and VA settings. Refer to the Bot Items in the Incremental Import table at the end of the article to learn how the imported VA items replace the target VA’s items in incremental import.

**Before you Begin** The _config.json_ file consists of variables that need values for the target assistant. Share the file with the relevant developers or enter suitable values yourself for the variables before importing the VA definition into a new VA.

#### Steps in Importing to an Existing Assistant

To import a Virtual Assistant, follow these steps:

1. Open the assistant you want to export.
2. Select the **Deploy** tab from the left menu.
3. Select **Import & Export** under **DEPLOY MANAGEMENT**.
4. On the Import & Export page, select the **Import** tab.
5. You can choose one of the below import options:

    * Import by uploading **individual JSON files**:
        1. Choose the **JSON Files** radio button.
        2. Click the **Choose File** buttons next to the **Bot Definition File** field and **Bot Config File** fields, and upload the _appDefinition.json_ and _config.json_ files, respectively.
        3. Optionally, upload the custom script file from the imported assistant, if any. The file size is limited to 500kb.
        
        <img src="../images/bot-import-custom-script-file1.png" alt="App import - JSON files" title="App import - JSON files" style="border:1px solid gray; zoom:70%;">

    * Import by uploading a **ZIP file**:
        1. Choose the **Zip File** radio button.
        2. Through the **Choose File** button, browse and import the Zip file. This option allows you to import an app by directly importing the zip file created at the time of Export without having to unzip it.

        <img src="../images/bot-import-zip-file.png" alt="App import - ZIP file" title="App import - ZIP file" style="border:1px solid gray; zoom:70%;">

6. Select one of these import options: **Full Import** or **Incremental Import**. You will get a warning to back up your assistant before performing the import.
7. If you select **Full import**, the VA definition in the in-development copy will be overwritten with the definition in the import file.

    * If the assistant contains one or more additional tasks or languages that are not present in the import definition, these tasks will be marked as deleted and removed when the VA is published.
    * For Generative AI and LLM features, **Full import**:  

        * Deletes existing models and prompts in the target app.
        * Overwrites with models, prompts, and GenAI features from the import file.
        * Retains model configurations if a model exists in both source and target
        * Replaces all feature mappings, custom instructions, and guardrails.
        * Preserve existing integrations.
        * Import XO-GPT integration as-is.
        * Enable imported features with warnings.
        * Handle **Azure Open AI by Kore.ai** integration based on token status.

8. If you select **Incremental import**, you can choose which components to import.

    <img src="../images/bm(4).png" alt="Incremental import" title="Incremental import" style="border:1px solid gray; zoom:60%;">

    * **Bot Tasks**: Here, you can select to import Tasks only (with or without comments), Knowledge Graph, Small Talk, or Digital Forms.

        !!! Note

            If you want to import one or more Bot Tasks, also select the **NLP Data** settings, as they are linked. For example, the utterances assigned to dialog tasks are not imported if you don’t select the NLP Data settings, causing problems in identifying the dialog properly.

    * **NLP Data**: Here you can import Synonyms, Concepts, Traits, Rules, Utterances, Patterns, and Standard Responses. ML Utterances and Patterns can either be Appended or Replaced.
            
        1. **Append** can be used when the utterances in the file should be imported into the assistant, and any additional utterances in the VA should be retained (this is the default behavior).
        2. **Replace** can be used when the utterances in the file should be imported into the assistant. Any additional utterances will be removed.
        
            If you are also importing Tasks, the additional utterances related to tasks being imported will be removed. 

            <img src="../images/bm(1).png" alt="App import" title="App import" style="border:1px solid gray; zoom:60%;">


        3. The imported Traits, Synonyms, and Concepts will replace those in the target VA. Rules can be imported along with their tagged dialog tasks.

    * **Settings**: Bot Settings, Bot Variables, Voice Call Properties, Generative AI and LLM. The Generative AI and LLM setting includes:  

        * Integrations
        * Prompts and Requests Library
        * Feature Mappings
        * Guardrails 
        
    * **Custom Dashboards**: This is useful in case you have created custom dashboards under the Analyze section and want to import them to the new VA as well. 
    * On the confirmation dialog that opens, click **Backup** to download the existing assistant configuration.

        <img src="../images/bm(8).png" alt="Backup notification" title="Backup notification" style="border:1px solid gray; zoom:60;">
    
        !!! Note

            While backing up is an optional choice, we strongly recommend you do so, especially when choosing Full Import, as you cannot recover the configurations after the imported assistant replaces them.

9. Click **Proceed** to start the import.
10. After the import is completed, the following success message appears. Click **Done**.
    
    !!! Note

        Bot import would fail if the assistant has been restored but not published after the restore. 

### Creating a New Assistant Using the Import Option
 
To import a VA while creating it, follow these steps: 

1. On the landing page, click **New App**. Select **Import App** from the popup menu.

    <img src="../images/bm(7)-new.png" alt="New app button" title="New app button" style="border:1px solid gray; zoom:60;">

2. The **Get Started** screen appears. Select **Automation AI** by clicking the **Try now** button on the tile.

    <img src="../images/bm-import-automation-ai.png" alt="Import - Atomation AI" title="Import - Automation AI" style="border:1px solid gray; zoom:60;">

3. Enter an **App Name**. Optionally, set an app icon.
4. You can choose one of the below import options:

    * Import by uploading **individual JSON files**:
        1. Choose the **JSON Files** radio button.
        2. Click the **Choose File** buttons next to the **Bot Definition File** field and **Bot Config File** field, and upload the _appDefinition.json_ and _config.json_ files respectively.
        3. Optionally, upload the custom script file from the imported assistant if any. The file size is limited to 500kb.

    * Import by uploading **ZIP file**:
        1. Choose the **Zip File** radio button.
        2. Through the **Choose File** button, browse and import the Zip file. Using this option you can import an app by directly importing the zip file created at the time of Export, without having to unzip. 

5. Click **Create App** when ready. 

    <img src="../images/bm(5).png" alt="Create app using import" title="Create app using import" style="border:1px solid gray; zoom:60%;">


### Components in the Incremental Import

<table>
  <tr>
   <td>COMPONENT
   </td>
   <td>DESCRIPTION
   </td>
  </tr>
  <tr>
   <td>Tasks with the same Reference ID
   </td>
   <td>Imported tasks replace the tasks in the target assistant, and their status changes to Configured, regardless of their current status (including Suspended and Rejected tasks).
   </td>
  </tr>
  <tr>
   <td>Tasks in the source assistant with a different Reference ID
   </td>
   <td>These tasks are created in the target assistant with the same Reference ID.
   </td>
  </tr>
  <tr>
   <td>Tasks in the target assistant with a different Reference ID
   </td>
   <td>These tasks stay intact.
   </td>
  </tr>
  <tr>
   <td>Utterances, Patterns, and Task-level Synonyms
   </td>
   <td>Imported utterances, patterns, and task-level synonyms replace the ones in the target assistant and apply them to the imported tasks. Published models in the target assistant stay intact.
   </td>
  </tr>
  <tr>
   <td>Knowledge Graph, Bot Synonyms and Standard Responses
   </td>
   <td>Existing knowledge graph, VA synonyms, and standard responses in the target assistant are replaced with the imported ones.
   </td>
  </tr>
  <tr>
   <td>Synonyms, Concepts, and Traits
   </td>
   <td>They are imported from the source VA along with all their underlying terms and replace the ones in the target VA.
   </td>
  </tr>
  <tr>
   <td>Rules
   </td>
   <td>Rules will be imported only if their tagged dialog tasks are imported.<br><br>
    <strong>Note</strong>: On-Prem customers can import the NLP components (Synonyms, Concepts, Rules, Traits) from a source VA of a higher version to a target VA of a lower version by checking the <strong>NLP Settings</strong> checkbox. However, Rules won’t import unless the tagged dialog tasks are also imported.
   </td>
  </tr>
  <tr>
   <td>Generative AI and LLM    
   </td>
   <td>
   <br>
    – Keeps existing prompts, only adds new ones.
    <br>
    – Replaces all feature mappings, custom instructions, and guardrails.
    <br>
    – Preserve existing integrations.
    <br>
    – Import XO-GPT integration as-is.
    <br>
    – Enable imported features with warnings.
    <br>
    – Handle "Azure Open AI by Kore.ai" integration based on token status.
   </td>
  </tr>
</table>

## Exporting an Assistant

You can export a VA’s definition and configuration using the Export option.

!!! Note

    **Forward Compatibility is NOT SUPPORTED**. That is, Export from a lower (not an end-of-life) version to a higher supported version is allowed for all the virtual assistants. However, a VA export from a higher environment and import to an environment running a lower version or lower patch is not supported.

When you export a assistant, it downloads a zipped file with the following parameters:

* **appDefinition.json**: Includes metadata, tasks, VA and task-level synonyms, utterances, patterns, knowledge graph, standard responses, flows, and IDPs. You can select specific items to export from tasks, NLP data – NLP settings, utterances, standard responses – and Settings – VA settings, variables, IVR settings- while exporting the assistant.
* **config.json**: Includes VA settings, VA variables, and IVR settings.
* **Icon.png**: Includes the assistant icon.
* **&lt;_Custom ScriptFile Name_.js> (if available)**: Includes a script file with JavaScript functions. When you upload this file, you can access the functions in the file from anywhere in the assistant.

!!! Note

    The assistant and its components are given unique Reference IDs during export. These IDs help the platform to identify matching tasks in the target VA and update them.

### Export Modes

You can export assistants in two modes: **Published** and **Latest Version**. Depending on the mode that is selected, the corresponding versions of the tasks are exported. You can select specific components to export from the tasks, NLP data, and VA settings in both the modes. Further individual Tasks can also be selected.

#### Published Mode

When you export a VA in the Published mode, only the published versions of the tasks are exported, regardless of any other existing versions. For example, if a VA consists of a published version of a task and also version in Upgrade in Progress, only the published version gets exported. Refer to the table below to understand which versions of the tasks are exported in the Published mode:

<table>
  <tr>
   <td><strong>Task</strong>
   </td>
   <td><strong>Status</strong>
   </td>
  </tr>
  <tr>
   <td><strong>In Progress</strong>
   </td>
   <td>Not exported If a task is in progress for development, it isn’t exported in the Published mode.
   </td>
  </tr>
  <tr>
   <td><strong>Configured</strong>
   </td>
   <td>Not exported If the task configuration is complete but not published for use, it doesn’t get exported in the Published mode.
   </td>
  </tr>
  <tr>
   <td><strong>Published</strong>
   </td>
   <td>Exported All published tasks get exported
   </td>
  </tr>
  <tr>
   <td><strong>Upgrade in Progress</strong>
   </td>
   <td>Not exported Task upgrade configurations that are in progress do not get exported. Only the published configurations get exported.
   </td>
  </tr>
  <tr>
   <td><strong>Rejected</strong>
   </td>
   <td>Not exported Task configurations rejected by admins do not get exported.
   </td>
  </tr>
  <tr>
   <td><strong>Suspended</strong>
   </td>
   <td>Not exported Suspended tasks do not get exported.
   </td>
  </tr>
</table>

!!! note

    In Dialog tasks, only the nodes in the Published status get exported.

#### Latest Version

When you export a VA in the Latest mode, the latest versions of the  tasks get exported, regardless of their publishing status. For example, if a VA consists of a published version of a task and also the version in Upgrade in Progress, the Upgrade in Progress version gets exported, whereas if it just has a Configured version, the configured version is exported. Refer to the table below to understand which versions of the tasks are exported in the Latest mode:

<table>
  <tr>
   <td><strong>Task</strong>
   </td>
   <td><strong>Status</strong>
   </td>
  </tr>
  <tr>
   <td><strong>In Progress</strong>
   </td>
   <td>Exported if it is the only available version Not Exported if a later version exists
   </td>
  </tr>
  <tr>
   <td><strong>Configured</strong>
   </td>
   <td>Exported if it is the only available version Not Exported if a later version exists
   </td>
  </tr>
  <tr>
   <td><strong>Published</strong>
   </td>
   <td>Exported if it is the only available version Not Exported if a later version exists
   </td>
  </tr>
  <tr>
   <td><strong>Upgrade in Progress</strong>
   </td>
   <td>Exported regardless of any other task version in the assistant
   </td>
  </tr>
  <tr>
   <td><strong>Rejected</strong>
   </td>
   <td>Not exported Task configurations rejected by admins do not get exported
   </td>
  </tr>
  <tr>
   <td><strong>Suspended</strong>
   </td>
   <td>Not exported Suspended tasks do not get exported
   </td>
  </tr>
</table>

#### Steps in Exporting the Assistant

1. Open the assistant you want to export.
2. Select **Deploy** tab from the left menu.
3. Select **Import & Export** under **DEPLOY MANAGEMENT**.
4. On the Import & Export page, select the **Export** tab.
5. In the Export tab, select either **Published** or **Latest Version** exporting mode.
6. By default, all the components are selected for export. Deselect the items that you do not want to export.

    <img src="../images/bm(10).png" alt=App export" title="App export" style="border:1px solid gray; zoom:60%;">

7. For Tasks, you can further choose to export only select tasks. By default All Tasks are selected. Click the All Tasks link to open **Select Tasks** dialog to choose the tasks you want to export.

    !!! note

        If you want to export one or more Bot Tasks, also select the **NLP Data** settings, as they are linked. For example, the utterances assigned to dialog tasks are not exported if you don’t select the NLP Data settings, causing problems in identifying the dialog properly.

8. You can also choose to **Include dependent tasks** or not for export. The existence of these will be checked before import and the import will fail if the dependent tasks are missing. These dependent tasks include the following:
    * Linked Dialogs i.e. dialog nodes present in the definition of another dialog;
    * Dialogs linked in defining ‘Behavior on Exceeding Retries’ for IVR Properties of any node of the dialog;
    * Dialog linked as part of sub-intent / interruption settings;
    * Any other scenario where a dialog execution could fail if a dependent task is not included;

        <img src="../images/bm(1).png" alt="App export" title="App export" style="border:1px solid gray; zoom:60%;">

9. Click **Export**. The export happens in the background and the **Download** button gets activated after it is complete. Click **Download** to download the file to your local computer.

### Exported Bot Components

When you export a VA, the following components get exported, depending on your Latest or Published Mode selection:

<table>
  <tr>
   <td colspan="2" ><strong>Tasks</strong>
   </td>
  </tr>
  <tr>
   <td>Tasks Only
   </td>
   <td>
<ul>

<li>Task Definition (Action, Alert, Information, and Dialog)

<li>Synonyms (Task, Field, and Entity)

<li>Patterns (Task, Field, and Entity)
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>Knowledge Graph
   </td>
   <td>Knowledge Graph definition along with the associated synonyms and classes.
   </td>
  </tr>
  <tr>
   <td colspan="2" ><strong>NLP Data</strong>
   </td>
  </tr>
  <tr>
   <td>NLP Settings
   </td>
   <td>The Advanced NLP Settings and Ignore words and Field memory. The Advanced NLP Settings ( Natural Language > Advanced Settings) include the following:
<ul>

<li>Auto-train settings for ML Utterances

<li>Multiple intent detection settings

<li>Threshold and Configurations settings for

<ul style="padding-left: 30px;">
<li>Fundamental meaning

<li>Knowledge Graph

<li>Machine Learning
</ul>

<li>Concepts, Synonyms, and traits, even if no tasks are specifically selected

<li>Rules, only if you are exporting the corresponding dialog tasks too.
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>Utterances
   </td>
   <td>All the utterances of all the enabled languages
   </td>
  </tr>
  <tr>
   <td>Standard Responses
   </td>
   <td>All the standard responses of the assistant in all enabled languages
   </td>
  </tr>
  <tr>
   <td colspan="2" ><strong>Settings</strong>
   </td>
  </tr>
  <tr>
   <td>Bot Settings
   </td>
   <td>The following information from the Bot Settings page:
<ul>

<li>General Settings

<li>Bot name, description, and VA synonyms for each enabled language

<li>Language selection time frame (Bot Settings > Language Management)

<li>Welcome message

<li>Hold and Resume settings (Bot level)

<li>Custom Script file

<li>Tenancy URLs

<li>Error messages

<li>Task setup and execution settings (for executing tasks using UI forms).
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>Bot Variables
   </td>
   <td>All the global and content variables present in the assistant, along with their values.
   </td>
  </tr>
  <tr>
   <td>IVR settings
   </td>
   <td>All the IVR settings for the assistant (Bot Settings > IVR settings).
   </td>
  </tr>
  <tr>
   <td>Generative AI	  
 and LLM
</td>
   <td>
<ul>

<li>Integrations

<li>Prompts and Requests Library

<li>Feature Mappings

<li>Guardrails

</li>
</ul>
   </td>
  </tr>

</table>

## Deleting an Assistant

You cannot delete a VA if any of the tasks are Published. Once you publish a task, the Bots Admin must approve and assign it to users. The developer cannot delete assigned tasks. To delete a published task, the Bots Admin needs to suspend the task. Also, you cannot delete a VA if it is part of a published flow. You must delete the flow or remove the assistant from the flow before attempting to delete it.

To delete a Virtual Assistant:

1. Open the assistant you want to delete.
2. Select the **Deploy** tab from the top menu.
3. From the left navigation under the **Bot Management** menu, click **Delete Bot**.
<img src="../images/bm(6).png" alt="image_tooltip" title="image_tooltip" style="border:1px solid gray; zoom:70%;">

!!! warning

    All the configurations will be lost and there is no way to restore your assistant after deletion. Please exercise caution when using this feature.

## Viewing the Change Log

After creating a VA, you may need to edit it for various reasons such as changing its settings, adding tasks, enabling channels, and add flows. To track all the changes made to a VA, you can view the **Change Logs**, which show a chronological list of modifications to your assistant. It consists of all the changes from the initial save of your assistant to the last update. To view the changelog for a VA, follow these steps:

1. Select **App Settings** from the left side menu.
2. From the left menu click **Change Logs**.

    <img src="../images/bm(2).png" alt="image_tooltip" title="image_tooltip" style="border:1px solid gray; zoom:70%;">

3. On the Change Logs page, you will notice the following;
    * The list is sorted in reverse chronological order.
    * Each page displays the ten most recent changes and the name of the user that made the change, followed by the change synopsis, and the timestamp of the applied change.
    * Logs of the Publish Event are consolidated for all selected tasks, with the tasks listed in case all tasks are not selected for publishing along with the Publish Comments.

Following actions can be performed on the logs:

* Using the **search** text box, you can enter any text and the platform will search for that text in the change description and the logs fulfilling the search criteria would be displayed.
* The **filter** option can be used to filter based on:
    * Developer Name collaborating on the assistant;
    * Date Range either past 24 hrs, past 7 days, or custom date by specifying the start and end date. By default,  changes from all developers in the past 24 hours would be displayed.
* The **export** icon can be used to Export the changelog in CSV format. The logs displayed after applying the search and filter criteria would be downloaded.
