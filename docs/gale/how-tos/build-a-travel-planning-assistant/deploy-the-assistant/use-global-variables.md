# Travel VA: Use Global Variables

The XO Platform allows you to declare and use variables within the assistants you build. These variables can be used to capture values that are commonly used by different tasks, nodes, and other elements.

In this Use Case we will explore a scenario in a Travel Planning Assistant, where Variables can be used. We will see how Global Variables can be used to pass API endpoints and change them easily when migrating from development to testing to production environments.

For details on what Variables are and how they are implemented in the XO Platform, click <a href="https://docsinternal-kore.github.io/docs/xo/app-settings/variables/using-bot-variables/" target="_blank">here</a>. 

For a use case with Content Variables, click <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-travel-planning-assistant/deploy-the-assistant/use-content-variables/" target="_blank">here</a>.

## Problem Statement

In our Travel Planning Assistant, we have two tasks:

1. Check Flight Status, which makes a service call and retrieves the flight status based on a flight number provided by the user. 
2. Update Booking, which makes a service call to update user bookings based on the booking number and type of update.

Both the above tasks call the same service and the service API endpoint changes for development, testing, and production environments.

Changing the service call in both the Dialog Tasks is cumbersome and can lead to errors, if the change is not done properly.

In this document, we will see how Global Variable can be used to store the API endpoint and use it for the service calls.

## Prerequisites

To go through these configurations, you need to know at least the basics of <a href="https://docsinternal-kore.github.io/docs/xo/virtual-assistants-overview/?h=overview#building-intelligent-conversational-virtual-assistants" target="_blank">building a Virtual Assistant</a>. This is because your assistant needs to have been already built when you begin working on your variables.

## Implementation

Declaring a Global Variable to hold the API endpoint will help make the transition easier and faster.

1. Open the Travel Planning Assistant.
2. Select the **Build** tab from the top menu.
3. From **Configurations** select the **Environment Variables** section.
4. Click **Add Variable** to open the corresponding window.
5. Enter **Variable Name** and **Variable Value**. For this use case, we are calling the Variable _bookingURL_, and for value, we are entering the _Service API call endpoint._
6. **Save**.
<img src="../images/add-global-enironment-variables.png" alt="add global variables" title="add global variables" style="border: 1px solid gray; zoom:75%;">  

7. Now open the **Check Flight Status** Dialog Task.
8. Select the **Get Status** Service Node.
9. Click **Edit Request** under the **Request Definition**
10. Replace the request URL with the Global Variable created above. using the env prefix followed by any parameters needed. In this case: 
`{{env.bookingURL}}{{context.entities.FlightNumber}}`
<img src="../images/replace-request-url.png" alt="replace request url" title="replace request url" style="border: 1px solid gray; zoom:75%;"> 

11. Repeat for the **Update Booking** Dialog Task.
12. Now when you Export and Import the assistant to another environment, all you need to worry about is to change the value of the Global Variable and the changes will be effective in both the Dialog Tasks.