# Use Global Variables

The XO Platform provides a way to declare and use variables within the bot. These variables can be used to capture values that are commonly used by different tasks, nodes, and other bot elements.

In this post, we explore a Banking Bot scenario, where **Bot Variables** can be used. We see how Global Variables are used to pass API endpoints and can change them easily when migrating from development to testing to production environments.

For details on Bot Variables usage in the XO Platform, click <a href="https://docsinternal-kore.github.io/docs/xo/app-settings/variables/using-bot-variables/" target="_blank">here</a>.

For a use case with Content Variables, click <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/deploy-the-assistant/use-content-variables/" target="_blank">here</a>.

## Problem Statement

In our <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/design-conversation-skills/create-a-sample-banking-assistant/" target="_blank">Banking Bot</a>, we have two tasks:

1. <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/design-conversation-skills/create-a-sample-banking-assistant/#get-balance-intent" target="_blank">Get Balance</a> which makes a service call with a given account number to get the balance in that account.
2. <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/design-conversation-skills/create-balance-task/#update-balance-intent" target="_blank">Update Balance</a> which makes a service call to update a given account with the specified amount.
3. Both the above tasks call the same service and the service API endpoint changes for development, testing, and production environments.
4. Changing the service call in both the Dialog Tasks is cumbersome and leading to errors, if the change is not done properly.

In this document, we will see how Global Variable can be used to store the API endpoint and use it for the service calls.

## Prerequisites

* Bot building knowledge.
* A Banking Bot with the dialogs as mentioned below:
    * **Get Balance** – Dialog task prompting the user for their Account Number and displaying the available balance in the account.
    <img src="../images/global-variables-prerequisites.png" alt="prerequisites" title="prerequisites" style="border: 1px solid gray; zoom:75%;">

    * **Update Account** – Dialog task prompting the user for Account Number that needs to be updated, the Amount to be updated and whether the amount needs to be credited or debited and updating the Account balance accordingly.
    <img src="../images/global-variables-update-account.png" alt="update account" title="update account" style="border: 1px solid gray; zoom:75%;">

## Implementation Steps

Declaring a Global Variable to hold the API endpoint will help the transition easier and faster.

1. Open the Banking Bot.
2. Select the **Build** tab from the top menu.
3. From **Configurations** select the **Environment Variables** section.
4. Click **Add Variable** to open the corresponding window.
5. Enter **Variable Name** and **Variable Value**. For this use case, were are calling the Variable _accountURL_, and for value, we are entering the _Service API call endpoint._
6. Click **Save**.
<img src="../images/global-variables-overview.png" alt="global variables implementation" title="global variables implementation" style="border: 1px solid gray; zoom:75%;">

7. Now open the **Get Balance** Dialog Task.
8. Select the **GetAccountBalance** Service Node.
9. Click **Edit Request** under the **Request Definition**.
10. Replace the request URL with the Global Variable created above. using the `env` prefix followed by any parameters needed. In this case: 
<code>{{env.accountURL}}{{context.entities.AccountNumber}}</code>.
<img src="../images/replace-request-url-global-variable.png" alt="replace global variable" title="replace global variable" style="border: 1px solid gray; zoom:75%;">

11. Repeat for **Update Balance** Dialog Task.
12. Now when you Export and Import the Bot to another environment, all you need to worry about is to change the value of the Global Variable and the changes will be effective in both the Dialog Tasks.