# Default Conversations

There are multiple places where the platform responds to user utterances without the developer having to code the details. Examples include:

* **Default Dialog** when the user intent is not found or understood by the bot.
* **Standard Responses** to certain questions, greetings, error and warning scenarios, etc.
* **Event Handlers** for certain common bot events can be defined. <a href="https://docsinternal-kore.github.io/docs/xo/automation/intelligence/event-handling/" target="_blank">Learn more</a>.

Though these are set by default by the platform, you can customize them as per your business requirements. In this document, we look into such customizations.

## Default Dialog

You can choose to run a dialog task or display a standard error message if the Natural Language Processor for Kore.ai cannot determine the user intent. The default setting is to display a standard error message.

Under the **Build** tab, from the left menu, click **Intelligence** > **Default Dialog** to define a default dialog task.

For example, you can switch the conversation from the bot to a live agent, or run a generic dialog such as the main menu if the user intent is not determined in the bot conversation.

If a default dialog task is not defined, standard error messages and any customizations defined in the **Standard Responses** section are used.

The following illustration is an example of the **Default Dialog** section in Bot Builder configured to run the _Get Account Help_ dialog task when the user intent cannot be determined in the _Banking Portal_ bot.

<img src="../images/default-dialog-configuration.png" alt="default dialog configuration" title="default dialog configuration" style="border: 1px solid gray; zoom:75%;">

### Define a Default Dialog

To complete the following procedure, you must have already defined a dialog to select as the default dialog.

1. Select the **Build** tab from the top menu.
2. From the left menu, click the **Intelligence > Default Dialog** option.
3. In the **If user’s intent is not understood** section, select **Automatically run a dialog task**.
4. In the **Default Dialog Task** field, select a default dialog from the list.
5. Click **Save**.

The "**Settings successfully saved**" message is displayed.

## Standard Responses

In the Kore.ai Bot Builder tool, you can view the default Natural Language Processing, or NLP interpreter responses to user inputs or events.

For example, a reply to a user input of _Hi!_ The bot replies with one of the following responses, chosen randomly at runtime:

* Hi!
* Hello
* Hi there!
* Hey 🙂

The NLP interpreter displays pre-defined text responses to users based on an event, condition, trigger, or user input. Depending on your custom bot and users of that bot, you may want to modify the default responses to users displayed for an event or request for input.

Example

* **User Input** – When were you born?
* **Event** – Authorization Failure
* **Trigger** – Task canceled

You can define both standard bot responses, or if desired, add a channel override response that is displayed only in the specified channel the user is in, otherwise, one of the standard default responses is displayed. <a href="https://docsinternal-kore.github.io/docs/xo/automation/intelligence/conversation-management/standard-responses/" target="_blank">Learn more</a>.

For example, in the SMS channel, you may only want to use short bot responses to save data.

### Default Responses

To access and manage the default responses in bot builder, follow the below steps:

1. Select the **Build** tab from the top menu
2. From the left menu, click **Intelligence > Standard Responses**.
    <img src="../images/default-responses.png" alt="default responses" title="default responses" style="border: 1px solid gray; zoom:75%;">

    For each standard response category tab, the event or user input is listed followed by one or more NLP interpreter standard responses. 

You can modify the default response, and if needed, add additional responses selected randomly by the NLP interpreter in response to user input or system event.

In the **Standard Response** section, the standard bot responses are categorized in the following tabs:

* **Statements** – Responses displayed to the user as the result of an action by the bot or user. For example, a user cancels a task, or a user gives an invalid response to your bot request.
* **Queries** – Statements from the bot to the user to ask for more information. For example, _Which field do you want to change?_
* **Error & Warnings** – Statements from the bot to the user when an error occurs during the scenario, such as the _End date cannot be before or same as the start date!_
* **Questions** – Questions the bot may pose to the user when not included in any other category.
* **Choices** – The bot is asking for Yes/No input. For example, _Would you like to receive push notifications every time this task occurs?_
* **Greeting** – Initial responses by the bot when the bot is installed, or other initial contacts. For example, when a user returns to the interaction after a period of inactivity.

### Add and Edit Responses

#### Add a New Standard Response

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>If the standard responses are updated at the conditions wherein an ambiguity is presented to the user, the bot response will not display the ambiguous choices to the user and you need to use the function <code>getChoices()</code> to present the ambiguity list (refer to point 6 below).</p>
</div>

To add a new standard response, follow the steps below:

1. Select a tab category for the standard response. For example, **Greeting**, and then hover the situation for which you want to add the response. 
2. Click **Add Response**.
3. When the **Add Channel Overrides** dialog is displayed, follow the steps below:

    * In the **Choose a channel** drop-down list, select a channel to create a channel-specific response. You can go with the Any Channel option to enable the response for all channels.
    * In the case of channel-specific response, from the **Choose a Task** drop-down list, select **Any Task** to apply this channel-specific response to all tasks or select a specific task.
    * When a specific task is selected, the **Choose a Field is** drop-down is displayed. Select **Any Field** or a specific field for this channel-specific response.
    <img src="../images/add-channel-override.png" alt="add channel override" title="add channel override" style="border: 1px solid gray; zoom:75%;">

    * In the bot **Response** editor, you can override the default Bot Response for this channel using basic editor controls on the **Simple Mode** tab, or write custom JavaScript for the response on the **Advanced Mode** tab as follows:
        * **Simple Mode** tab – Enter the text for the default standard response. For example, *There* you are, I was *hoping* you would return soon! and then optionally, format the text using the formatting buttons for bold, italics, header styles, hyperlinks, ordered and unordered lists, and inserting a line. For more information, refer to <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/dialogs/prompt-editor/#prompt-editor" target="_blank">Using the Prompt Editor</a>.
        * **Advanced Mode tab** – Enter JavaScript to override the channel message as described in the following code examples.

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>Use the following keys to return default values for:</p>
<p><ul><li><code>response.message</code>– Returns the default message as a string.</li>
<li><code>response.choices</code>– Returns the options choice or confirmation message types as an array.</li></ul></p>
</div>

**Slack Channel Override Example**

```js
var message = {};
var attachments = [];
var attachment = {
    'text': "Exception occurred during API execution",
    'color': '#FFCC00',
    'attachment_type': 'default'
};
attachments.push(attachment);
message.attachments = attachments;
print(JSON.stringify(message));
```

**FaceBook Channel Override Example**

```js
var message = {
text: response.message
};
var buttons = [];
for (var i = 0; i < response.choices.length; i++) {
    var choiceItem = response.choices[i];
    if (choiceItem.length > 20) {
        choiceItem = choiceItem.substring(
            0, 18) + '..';
    }
    var element = {
        content_type: 'text',
        title: choiceItem,
        payload: choiceItem
    };
    buttons.push(element);
}
message.quick_replies = buttons;
print(JSON.stringify(message));
```

**Email Channel Override Example**

```js
var message = {};
var text = response.message + ' ';
for (var i = 0; i < response.choices.length; i++) {
    text = text.concat(
        '<u> + response.choices[i] + ' <
        /u> <br>');
    }
    message.text = text;
print(JSON.stringify(message));
```

**SMS Channel Override Example**

```js
var message = {};
var indexArray = ['a', 'b', 'c',
        'd', 'e',
        'f', 'g', 'h', 'i', 'j',
        'k', 'l', 'm', 'n', 'o',
        'p', 'q', 'r', 's', 't',
        'u', 'v', 'w', 'x', 'y',
        'z'
    ];
    var text = response.message + 'n';
    for (var i = 0; i < response.choices
        .length; i++) {
        text = text.concat(indexArray[i] +
            ') ' + response.choices[
                i] + 'n');
    }
    message.text = text;
print(JSON.stringify(message));
```

Using the <code>getChoices()</code> function, you can also customize the **response display format** using the <a href="https://docsinternal-kore.github.io/docs/xo/web-mobile-SDK-message-formatting-and-templates/" target="_blank">message formatting templates</a>. When the <code>getChoices()</code> function is called and there is an ambiguity, the platform returns the ambiguous choices information as an array which can be used to present the options to the end users.

For example, to display the standard response for _Did you mean in_ a button format, you can use the following code:

```js
var info =getChoices();
var message = {
"type": "template",
"payload": {
  "template_type": "button",
  "text": "Did you mean",
  "subText": "You can now customize response for did you mean",
  "buttons": []
 }
};
for (i = 0; i < info.length; i++) {
var button = {
  "type": "postback",
  "title": info[i],
  "payload": "payload1"
};

message.payload.buttons.push(button);
}
print(JSON.stringify(message)); 
```

<ul><li>Click <b>Done</b> to save and close the <b>Edit Response</b> dialog and apply the new standard response.</li></ul>