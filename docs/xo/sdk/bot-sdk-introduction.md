# Bot SDKs

Kore.ai offers Bots SDKs as a set of platform-specific client libraries that provide a quick and convenient way to get Kore.ai XO Platform capability into custom applications and provide you with more control over the assistants you build.

With just a few lines of code, you can embed our Kore.ai widget into your applications to enable end-users to interact with their applications using Natural Language Processing.

Using our BotKit SDK that resides on your servers and enables interaction between the user and the Kore.ai XO Platform, you can intercept and customize messages and influence the conversation flow.

## Platform-Specific Bot SDKs

Bot SDKs are available for the following platforms:

* **Bots Web SDK** – The Bots Web SDK contains HTML5 and JavaScript libraries that you can integrate with web applications and hybrid mobile apps. The SDK is available in our GitHub repository at [https://github.com/Koredotcom/web-kore-sdk](https://github.com/Koredotcom/web-kore-sdk).
* **Bots Native iOS SDK** – The Bots Native iOS SDK contains native iOS libraries that you can integrate with native iOS mobile applications. The SDK is available in our GitHub repository at [https://github.com/Koredotcom/iOS-kore-sdk](https://github.com/Koredotcom/iOS-kore-sdk)
* **Bots Native Android SDK –** The Bots Native Android SDK contains native Android libraries that you can integrate with native Android mobile applications. The SDK is available in our GitHub repository at [https://github.com/Koredotcom/android-kore-sdk](https://github.com/Koredotcom/android-kore-sdk)

To get started with Kore.ai Bot SDKs, you must have an application to embed the SDK into, host a JWT generation web service, and register your app in the XO Platform. For more information, see [SDK Security](../sdk-security).

You can also try out our tutorial using a Kore.ai sample assistant, a test application, and configuring your local host server for JWT generation. For more information, see the [Kore.ai Web SDK Tutorial](../tutorials/web-sdk).

## BotKit SDK

The BotKit SDK enables you to define precise control of your assistant’s interactions.For example, if you have an assistant used to book a flight, it may take some time after a user request,s and available taxis can be displayed. Using an asynchronous call, while the user waits for a response, you can display a message such as _Looking for your flight_. The asynchronous     response request enables the XO Platform to process other requests and will post the response to the user when it becomes available. There are a variety of BotKit SDK events that you can capture, and control the bot using functions.

To learn more about the BotKit SDK, see [Using the BotKit SDK](../using-the-botkit-sdk/).

With v. 7.2 of the Platform, the Widget SDK has also been included in the BotKit SDK. To learn more about the Widget SDK, see [Using the Widget SDK](../tutorials/widget-sdk).
