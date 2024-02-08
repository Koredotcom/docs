# **Installing the BotKit SDK**

The Kore.ai BotKit SDK runs as a Node.js application. You can add your own reverse proxy, firewall, and load balancer to meet your functional requirements for availability, scalability, and performance.

This section provides a high-level overview of BotKit SDK installation and configuration.

For a detailed end-to-end tutorial on installation and setup using our Kore.ai Sample Assistants, see this [Kore.ai BotKit SDK Tutorial](../tutorials/flight-search-sample-bot).

To install the BotKit SDK, you will need to:

* Register your application on the Kore.ai XO Platform by creating a Virtual Assistant, and then configuring it for the Web/Mobile channel.
* Download and deploy the BotKit SDK libraries.
* Configure the config.json file.

## Authorization

As a prerequisite for BotKit SDK installation, you need to register your SDK app with the Kore.ai XO Platform, as follows.

In the XO Platform, you need to create a bot, and then from API Extensions -> BotKit SDK section,

* Go to **Deploy > Integrations > BotKit.**
* Register/create an app for that assistant to generate the **ClientID** and **Client Secret** security credentials used for mutual SSL authentication for communication between your app and the XO Platform and to authorize API calls from your SDK to the Kore.ai XO Platform. 

In the config.json file in the SDK, you will need to copy the following authentication keys from the XO Platform.

* appId = ClientID
* appKey – Client Secret

For more information, see [SDK App Registration](../app-registration).

## Installation and Setup

The Kore.ai BotKit SDK libraries can be downloaded from the Github repository at:

[https://github.com/Koredotcom/BotKit](https://github.com/Koredotcom/BotKit)

To configure your SDK, you must define the following keys in your config.json file to get your BotKit up and running.

<table>
  <tr>
   <td><strong>KEY</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
  </tr>
  <tr>
   <td>“server”: {
<p>
“port”:
<p>
}
   </td>
   <td>Specifies the port to run the BotKit NodeJS app .
   </td>
  </tr>
  <tr>
   <td>app”: {
<p>
“apiPrefix” :
<p>
}
   </td>
   <td>Specifies the API path prefix to the NodeJS express route.
   </td>
  </tr>
  <tr>
   <td>“credentials”: {
<p>
“appId”:
<p>
}
   </td>
   <td>The Client ID value generated in Kore XO Platform when registering your SDK app.
   </td>
  </tr>
</table>

!!!note
   By default, the JWT token would expire in 60 seconds. You can change this using the following KoreConfig setting:
   
   ```
   “botkit”:{

        “jwt_expiry”: 300 //seconds

    }
   ```

To run BotKit SDK, in a **Terminal** window, enter:
```
node app.js
```

Ensure that the node.js version is 10 or higher.
