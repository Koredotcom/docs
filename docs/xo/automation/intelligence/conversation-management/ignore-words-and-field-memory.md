# Ignore Words and Field Memory

Developers can include words for the NLP engine to ignore when interpreting the user input for a task. Assistants can then respond faster to user input and improve the probability of correct task recognition. The NLP engine comes pre-built with a large set of generic ignore words.

To manage this setting,

1. Open the assistant where you want to configure these ignore words.
2. From the top menu, select **Build**.
3. On the left pane, click **Intelligence** > **Ignore Words & Field Memory**.

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>This option is available only if an Alert task is configured for the Assistant. Otherwise, the option is hidden from the menu.</p>
</div>

You can edit each task to persist data for that task to pre-populate in another related task for the same VA in the **Field Memory** settings for each task. For example, for a travel planning assistant, *Get Wait Times for Boarding* task, you can pre-populate task fields into the related task, *Book a FastPass* task. 

You can also configure words to ignore in the user input at the task level. For example, for a *7-day Weather Forecast* task, you might want days of the week, such as *Monday*, *Tuesday*, and so forth to be ignored since all weekdays are included.

<img src="../images/ignore-words-edit-alert-tasks.png" alt="edit alert tasks for ignore words" title="edit alert tasks for ignore words" style="border: 1px solid gray; zoom:75%;">

Click a task name to show task fields that can be configured or edited for Field Memory and other field settings. 

The task fields are the parameters defined for the selected task. To define ignore words for a task, hover over the task, and then click the **Edit** icon.

## Edit a Task

To modify or add a configuration for a task,

1. Hover over the name of the task, and then click **Edit.** The **Edit Task** window is displayed.
2. **Turn Off Confirmation Messages** – Select **Yes** to disable confirmation of the execution of a task when using NLP. When **No** is selected, the user is asked to confirm the task before running it.
3. **Ignore Words** – Enter one or more ignore words for the task name. The list of words to ignore is processed by the XO Platform before interpreting the user input.
This means the VA can respond faster to user input and provide the correct task by filtering out words that apply to many tasks but do not help to identify which task. For example, a user may input, *I want to get the weather forecast for today.* To return the correct task to the user, the XO Platform interpreter only needs to recognize three words, *weather*, *forecast*, and *today*. The rest of the words can be ignored. The Kore.ai interpreter is already defined with a set of generic ignore words, so words like *I, you, want, get*, etc., do not need to be defined as ignore words. If your assistant uses the same words for many or all tasks, for example, your company name, you might add your company name as an ignore word.
4. Click **Save** to save the settings and close the **Edit Task** window.

## Manage Field Memory for a Task

To add or edit **Field Memory** settings for a task, follow the steps below:

1. Click the **Task Name** to display the associated **Task Fields**; then click the **Edit** icon to display the **Field Memory** window. In the **Field Memory** dialog, you can specify the following options:
    * **Entity Type** – Select the type of data that the NLP interpreter should expect as input to enhance recognition and performance. <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/dialogs/entity-types/" target="_blank">Learn more</a>.
    * **Memory User-Provided Value** – Enable or disable persistence of data provided by the user for a specified time. One of: 
**No, do not memorize** – The user’s data for this field is not persisted after the task is completed.**Yes, memorize this value** – The field value is persisted for the time specified in minutes.
2. Click **Save** to save the settings and close the **Field Memory** window.