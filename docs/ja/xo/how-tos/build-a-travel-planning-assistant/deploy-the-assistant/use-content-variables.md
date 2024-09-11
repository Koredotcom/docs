# Travel VA: Use Content Variables

The XO Platform allows you to declare and use variables within the assistants you build. These variables can be used to capture values that are commonly used by different tasks, nodes, and other elements

In this use case, we will explore a scenario in a Travel Planning Assistant, where variables can be used, and see how Content Variables can be used to pass language-specific messages.

For details on what Variables are and how they are implemented in the XO Platform, click <a href="https://docsinternal-kore.github.io/docs/xo/app-settings/variables/using-bot-variables/" target="_blank">here</a>. 

For a use case with Global Variables, click <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-travel-planning-assistant/deploy-the-assistant/use-global-variables/" target="_blank">here</a>.

## Problem Statement

In our Travel Planning Assistant, we welcome users when they connect. The assistant is multilingual and we want the messages to be in the appropriate user language.

In this document, we will see how Content Variable can be used to store the message in multiple languages.

## Prerequisites

To go through these configurations, you need to know at least the basics of <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-travel-planning-assistant/create-a-travel-virtual-assistant/" target="_blank">building a Virtual Assistant</a>. This is because your assistant needs to have been already built when you begin working on your variables.

Your Virtual Assistant will also need an <em><a href="https://developer.kore.ai/docs/bots/bot-intelligence/event-based-bot-actions/" target="_blank">on Connect</a></em> event configured, as well as some language settings, as explained below:

1. Select the **Build** tab from the top menu.
2. From **Intelligence** select **Events**.
3. Click the **On Connect** event and configure to **Show Message**.

    <img src="../images/on-connect-event.png" alt="on connect event" title="on connect event" style="border: 1px solid gray; zoom:75%;"> 

4. Enable the Spanish language for the assistant by following the steps below:
    * From **Configurations**, select **Language,**
    * Click **Add Language** and _Configure_ the _Spanish_ language.
    <img src="../images/add-language.png" alt="test bot function" title="test bot function" style="border: 1px solid gray; zoom:75%;"> 

Declaring a Content Variable to hold the On Connect message will ensure it is not missed in the language translation.

1. Open the Travel Planning Assistant.
2. Select the **Build** tab from the top menu
3. From **Configurations** select the **Content Variables** section.
4. Click **Add Variable** to open the corresponding window.
5. Enter **Variable Name** and **Variable Value**. For this use case, we are calling the Variable _connectMessage_, and for the value, we are entering the “_Welcome to our Travel Portal_”.
6. Click **Save**.
<img src="../images/configure-variable-name.png" alt="configure variable name" title="configure variable name" style="border: 1px solid gray; zoom:75%;">  

7. Now switch the language to _Spanish_ and for the same connectMessage variable using the **edit** icon enter the text in Spanish – “_Le damos la bienvenida al portal de viajes_".   <img src="../images/switch-language.png" alt="switch language" title="switch language" style="border: 1px solid gray; zoom:75%;"> 

8. Return to the English version of your assistant.
9. Return to the On Connect Event Handler, click **Add Response** and replace the text with reference to the content variable using the following code: 
`{{content.connectMessage}}`
10. **Save** the changes.

## Testing

Use **Talk to Bot** to test the changes.

1. Open **Talk to Bot**.
2. The message will appear in English.
3. Use the cheat command to switch the language: 
`cheat lang Es`.
4. Reconnect to the assistant and see the message in Spanish.
<img src="../images/test-content-variables.png" alt="test content variables" title="test content variables" style="border: 1px solid gray; zoom:75%;"> 