# Use Content Variables

XO platform allows declaring and using variables within the bot. These variables are used to capture values that are commonly used by different tasks, nodes, and other bot elements.

In this post, we explore a scenario in a Banking Bot, where Bot Variables can be used. We will see how Content Variables are used to pass language-specific messages.

For details on what Bot Variables are and how they are implemented in the XO platform, click <a href="https://docsinternal-kore.github.io/docs/xo/app-settings/variables/using-bot-variables/" target="_blank">here</a>. 

For a use case with Global Variables, click <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/deploy-the-assistant/use-global-variables/" target="_blank">here</a>.

## Problem Statement

In our <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/design-conversation-skills/create-a-sample-banking-assistant/" target="_blank">Banking Bot</a>, we welcome users when they connect to the Bot. The bot is multilingual and we want the messages to be in the appropriate user language.

In this document, we will see how Content Variable can be used to store the message in multiple languages.

## Prerequisites

* Bot building knowledge
* A Banking Bot with the on Connect event configured as below:
    * Select the **Build** tab from the top menu.
    * From **Intelligence** select **Events**.
    * Click the **On Connect** event and configure to **Show Message**.
    <img src="../images/show-message.png" alt="show message" title="show message" style="border: 1px solid gray; zoom:75%;">

* Enable the Spanish language for the bot with the steps below:
    * From **Configurations**, select **Language**.
    * Click **Add Language** and _Configure_ the _Spanish_ language.

## Implementation

Declaring a Content Variable to hold the On Connect message will ensure it is not missed in the language translation.

1. Open the Banking Bot.
2. Select the **Build** tab from the top menu.
3. From **Configurations** select **Content Variables** section.
4. Click **Add Variable** to open the corresponding window.
5. Enter **Variable Name** and **Variable Value**. For this use case, were are calling the Variable _connectMessage_, and for the value, we are entering the “_Welcome to the Banking Portal – your one-stop for all banking needs._"
6. Click **Save**.
<img src="../images/configure-content-variable.png" alt="configure content variable" title="configure content variable" style="border: 1px solid gray; zoom:75%;">

7. Now switch the language to _Spanish_ and for the same **connectMessage** variable using the **Edit** icon enter the text in Spanish – “_Bienvenido al portal bancario: su única parada para todas las necesidades bancarias_.“
<img src="../images/switch-language-to-spanish.png" alt="switch language to spanish" title="switch language to spanish" style="border: 1px solid gray; zoom:75%;">

8. Return to the **On Connect Event Handler** and replace the text with reference to the content variable using the following code: <code>{{content.connectMessage}}</code>.
<img src="../images/on-connect-event-handlers.png" alt="on connect event handlers" title="on connect event handlers" style="border: 1px solid gray; zoom:75%;">

9. **Save** the changes.

## Testing

Use **Talk to Bot** to test the changes.

1. Open **Talk to Bot**.
2. The message will appear in English.
3. Use the cheat command to switch the language:<code>cheat lang Es</code>.
4. Reconnect to the bot and see the message in Spanish.
<img src="../images/test-content-variable-banking-bot.png" alt="test content variable" title="test content variable" style="border: 1px solid gray; zoom:75%;">
