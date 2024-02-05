# Configure an Agent Transfer

One of the frequently asked questions is how to transfer a conversation to a human agent from a Virtual Assistant? This is especially necessary if your VA is in the customer service industry. Virtual Assistants are not meant to completely replace humans. Many times the assistant will fail to answer satisfactorily or the user would just want to talk/conversation to a human from the beginning. When this happens the assistant should transfer the conversation to a human agent.

In this article, we provide an overview of how we can integrate a live conversation into our VA using Kore.ai **Agent Transfer**. The source code for the Agent Transfer is available at <a href="https://github.com/Koredotcom/BotKit" target="_blank">Kore.ai github repo</a>.

!!!note

    The configuration and steps listed on this page are guidelines only. The steps may have changed due to the changes introduced in the recent version of the third-party products, apps, or services. Contact support if the steps are not working for you.

## The Role of the Virtual Assistant

Apart from performing business functionality, our VA would also act as a proxy between the user and agent.

* **Bot/VA**: The Virtual Assistant that the Users interact with.
* **Users**: Users are the customers who would be using this VA.
* **Agent**: Agents are humans who would converse with the users. Agents will also need a conversation window. For this we will use LivePerson / LiveChat software.

## Prerequisites

1. A fully functional Banking VA. <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/design-conversation-skills/create-a-sample-banking-assistant/" target="_blank">Learn more</a>.
2. Download BotKit SDK from <a href="https://github.com/Koredotcom/BotKit" target="_blank">Kore’s github</a>.
3. Download and Install the Node.js (version 10 or above). The BotKit SDK requires `node.js` to run on the same server where the SDK is installed.
    * Go to `https://nodejs.org/en/download/` and select your OS as a `.pkg` file type for Mac and `.msi` file type for Windows.
    * In a Terminal window, run the `node -v` command to verify installation and version, for example, v6.10.2.
4. A test callback server application. We will be using NGROK from <a href="https://dl.equinox.io/ngrok/ngrok/stable" target="_blank">here</a> to simulate the callback server application. Following are the steps to install NGROK:
    * Open this <a href="https://dl.equinox.io/ngrok/ngrok/stable" target="_blank">link</a>.
    * Download and install the ngrok file for your operating system.
        * **On Windows:**
            * Download the zip file for your Windows machine 32-bit or 64-bit.
            * Unzip and run the `ngrok.exe` file to install ngrok.
        * **On MacOS:**
            * Press <code><em>Command+Space</em></code> and type <strong>Terminal</strong> and press <strong>enter/return</strong> key.
            * Run in Terminal app: 
            <code>ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" </dev/null 2> /dev/null</code> and press <strong>enter/return</strong> key. 
            If the screen prompts you to enter a password, please enter your Mac’s user password to continue. When you type the password, it won’t be displayed on the screen, but the system will accept it. So just type your password and press the <strong>ENTER/RETURN</strong> key. Then wait for the command to finish.

        * Run <code>brew cask install ngrok</code>.
5. A live agent software. We will be using <a href="https://www.livechatinc.com/" target="_blank">LiveChatInc.com</a>. You can use your own LiveChat subscription or set up a free 30-day trial account at LiveChatInc.com by entering your business email in the <strong>Start using LiveChat!. </strong>Sign up and create an account.

## Design and Configuration

1. Open the <a href="https://bots.kore.ai/botbuilder/" target="_blank">XO Platform</a>.
2. Select the VA for which Agent Transfer needs to be configured.
3. Open or create a dialog task (_Support Call Back)_ and add an **Agent transfer** node.
<img src="../images/agent-transfer-node.png" alt="agent transfer node" title="agent transfer node" style="border: 1px solid gray; zoom:75%;">

4. Enter a _Name (LiveAgent)_ and _Description_ and **Save**.
5. You will see a message ‘_SDK is not currently configured/Subscribed. Please go to API Extensions to configure the SDK_’. For now ignore this message as we will be showing how to configure SDK, later in this article.
6. From the XO Platform screen go to **Build > Integrations > Agent Transfer**.
7. In the **App Name** section, select an existing app from the list or use the Create App option to create a new app.
8. Make a note of the **Bot ID**, **Client ID** and **Client Secret** keys.
9. Enter the Callback URL of your application, to be invoked by BotKIt SDK events. Since we are using NGROK, we will show how to obtain the callback URL:
    * In a **Terminal** Window, start _ngrok_ to monitor port 8003 using the following command: `ngrok http 8003`.
    * Copy ngrok forwarding URL. It will be in the format mentioned <a href="http://xxxxxxaa.ngrok.io/" target="_blank">here</a>.
    <img src="../images/ngrok-dorwarding-url.png" alt="ngrok forwarding url" title="ngrok forwarding url" style="border: 1px solid gray; zoom:75%;">
    
    Use this forwarding URL as the call back URL and save. 

!!!note

    The forwarding URL changes whenever the ngrok is restarted. Make sure you make the changes to the callback URL every time ngrok is restarted.

<ol start="10"><li>The agent transfer is configured at the dialog level. You can open the dialog task, and open the agent transfer node to see that the configuration is saved. You can select the Events required.</li>
<li>Install any live agent software eg Livechat, Liveperson, Concentrix, Vayusphere etc. depending on your enterprise requirement and license availability. Since we are using LiveChat, we will should you how to obtain the license details needed for Agent Transfer:</li>
    <ul><li>Sign in to your LiveChat account.</li>
    <li>Go to <strong>Settings</strong> from the left navigation and select <strong>Chat Link</strong>.</li>
    <li>Copy the URL and note the <strong>license code</strong>. If the URL is <code>https://lc.chat/now/104xx297/</code> and then the license code is <code>104xx297</code>.</li></ul>
<li>Open the downloaded <strong>BotKit SDK folder</strong> and do the following:</li>
    <ul><li>Edit <code>livechatapi.js</code>.</li>
    <li>Give the respective botId and botName of your VA, which you have copied earlier.</li>
    <li>This JS file contains 3 API’s of Kore – Initialization, Send Message, Get Message. If required, any new API’s written for human agent transfer should be put in here.    
    Example: If closing connection is required, then close connection api written needs to go into <code>livechatapi.js</code></li>
        <img src="../images/js-file-apis.png" alt="js file apis" title="js file apis" style="border: 1px solid gray; zoom:75%;">
    <li>Edit <code>config.json.</code></li>
        <ul><li>Client ID, Client Secret key, respective server ports running and liveagent license of the third-party server goes here.</li>
        <li>Client Id, Client Secret can be copied from Events and Extensions – Agent Transfer.</li>
        <li><code>ngrok</code> forwarding url can be copied from ngrok running instance. It is the call back url. This should be the URL entry.</li>
        <li><code>Liveagentlicense</code> is the code given in the chatlink of livechat.</li>
        <img src="../images/live-agent-license.png" alt="live agent license" title="live agent license" style="border: 1px solid gray; zoom:75%;"></ul>
    <li>Edit <code>LiveChat.js</code></li>
        <ul><li>Give the respective botId and botName, which you have copied earlier and save.</li>
        <img src="../images/give-bot-id-and-name.png" alt="give bot id and name" title="give bot id and name" style="border: 1px solid gray; zoom:75%;"></ul>
    <li>Edit <code>app.js.</code></li>
        <ul><li>Add the following line <code>sdk.registerBot(require('./LiveChat.js')).</code></li>
        <li>Delete any existing sdk.registerBot statements, if not needed.</li>
        <img src="../images/delete sdk bot statements.png" alt="delete sdk bot statements" title="delete sdk bot statements" style="border: 1px solid gray; zoom:75%;"></ul></ul></ol>

## Execution

1. Open a terminal window and run the BotKit SDK by entering the command: `node app.js`
2. Please make sure to install all the missing modules for running the server successfully without any errors as shown below. 
Example, if error “_method url-template, node-schedule are missing”_ is shown, then install the above modules using command. 
`npm install <module-name>` for windows, sudo `npm install <module-name>` for mac.
3. `ngrok` and `node.js` server will be running in different terminals.
4. When a user initiates the conversation from the VA, it transfers the call to an agent and sends a message to the user.
5. An agent receives a notification about this on the live chat.
6. Now the connection between the agent and the user has been established and the conversation continues..

## Events

!!!note

    The events and methods required for sending messages from the User or the VA and transferring to Agent are outlined in LiveChat.JS.

1. _on user message_ event is triggered when a user sends a message and this message is sent to the VA using sendBotMessage method.
2. _on bot message_ is triggered when the VA sends a message and this message is sent to the user using SendUserMessage method.
3. _on agent transfer_ event is triggered when the service agentTransfer node is triggered in the VA. And this event connects to the agent using connectToAgent method, which internally calls `initconversationAPI`.
4. _gethistory_ method, gives the conversation history of the user with the VA to the transferred agent
5. _scheduleJob_ is run for every 5 secs and it polls for the pending messages from the Agent, which internally calls getPendingMessages.
6. _getPendingMessages_ gets all the pending messages from Agent and delivers it to the User.
7. _chat closed_ gets triggered when the agent closes the conversation with the user.