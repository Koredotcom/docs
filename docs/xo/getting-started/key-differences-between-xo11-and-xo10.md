---
hide:
  - feedback
  
---
# Key Differences Between XO11 and XO10
Key differences Between XO11 and XO10 are summarized below.

## Welcome Events Replaced with Welcome Flows

 Earlier, incoming conversations were handled by events such as OnConnect/Welcome events. These events are now replaced with Flows. Flows are designed to replace the Welcome or OnConnect Message, Trigger a Dialog Task, or Run a Script.  
 <img src="../images/xo-platform-welcomeflow.png" alt="Welcome flow" title="Welcome flow" style="border: 1px solid gray; zoom:70%;">
  
## Dialog Builder Upgrade

XO11 has an all-new super intuitive dialog builder.  
<img src="../images/xo-platform-Dialogbuilder.png" alt="Dialog Builder" title="Dialog Builder" style="border: 1px solid gray; zoom:70%;">

## Talk to Bot Moved to Header

Talk to Bot has been renamed to **Test**. Users can Test Voice or Digital Conversation using Talk to Bot. Also, users can now see the current state of your conversation in the Talk-to-Bot (Test/Resume/Stop).  
<img src="../images/Talk-to-bot.png" alt="Talk to bot" title="Talk to bot" style="border: 1px solid gray; zoom:70%;">  
<img src="../images/xo-platform-test.png" alt="Test" title="Test" style="border: 1px solid gray; zoom:70%;">
   
## Create Dialog Enhanced with Generative AI

You can now use Gen AI to create a dialog from scratch. You can also install pre-built Integration Templates directly from the all-new Marketplace as Dialog Tasks.  
<img src="../images/xo-platform-createdialog.png" alt="Create Dialog" title="Create Dialog" style="border: 1px solid gray; zoom:70%;">

## Bot Configurations Moved to App Settings

All the configurations applicable across the app have been moved to a separate menu item - App Settings.    
<img src="../images/xo-platform-appsetting.png" alt="App Setting" title="App Setting" style="border: 1px solid gray; zoom:70%;">

## Shared LLM & Generative Settings for All Products

All the LLM integrations can be managed in one place in an app and used across the products on the Platform. For example, Agent Response Rephrasing applies to both Contact Center AI and Agent AI.  
<img src="../images/xo-platform-LLM&generativeAI.png" alt="LLM & GenerativeAI" title="LLM & GenerativeAI" style="border: 1px solid gray; zoom:70%;">

## Global User Management

User Management is now applicable across the modules. You can set permissions, manage agent-related Permissions, Create a new Role, and Assign a role to a new or existing user. You can also assign a role to User groups (but the creation of User Groups is still in the Admin Console Page).  
<img src="../images/xo-platform-manageuser.png" alt="User Management" title="User Management" style="border: 1px solid gray; zoom:70%;">

## App Level Publishing and Version Management

Be it Publishing Dialogs or Flows, everything is now done in one place. The Platform supports all variants of publishing (partial, full), version control, and Import and export in one centralized place.  
<img src="../images/xo-platform-deploy.png" alt="Deploy" title="Deploy" style="border: 1px solid gray; zoom:70%;">

## Reorganized Analytics

The Analytics module is logically regrouped to address various audience needs. A session starts from Channel through Flows, can go to Automation AI (Virtual Assistant), and then transfer to Agent. The module offers unified analytics across all conversations.  
<img src="../images/xo-platform-analytics.png" alt="Analytics" title="Analytics" style="border: 1px solid gray; zoom:70%;">

## Automation vs. Search (Answers) Fallback Behavior

We have a new setting where users can configure where every user utterance should go first: Automation AI (Virtual Assistant) or Search AI (Answers) to get the response.  
<img src="../images/xo-platform-fallback-behaviour.png" alt="Fallback Behaviour" title="Fallback BehaviourI" style="border: 1px solid gray; zoom:70%;">

## New Marketplace

The New Marketplace is available inside the App (previously, it was on the bot's homepage). The Marketplace empowers you to enhance your virtual assistant's capabilities by seamlessly integrating third-party systems. With pre-built integrations across various domains, you can extend your assistant's functionality effortlessly. The Marketplace streamlines the integration process by providing pre-configured actions and dialogue tasks, saving you valuable development time and effort. Additionally, you can leverage the expertly designed, pre-built dialogue templates tailored for each integration, allowing you to incorporate rich conversational flows with minimal setup. 
<img src="../images/xo-platform-marketplace.png" alt="Marketplace" title="Marketplace" style="border: 1px solid gray; zoom:70%;">

Also, the Marketplace offers pre-built dialogue templates for each integration. These templates are expertly designed by Kore, leveraging the available APIs from the integrated system. When a user installs a template, it is added as a dialogue task to the virtual assistant's use case section, enabling users to create rich and engaging conversational experiences with minimal effort.  
<img src="../images/xo-platform-marketplace 2.png" alt="Marketplace" title="Marketplace" style="border: 1px solid gray; zoom:70%;">

## New Billing Page

The billing definition has been changed to accommodate the various price offerings we are providing in XO11. The Billing Session definition for Automation is 15 minutes of Interaction, and for Contact Center, it's 15 minutes of ideal time. The Platform offers various plans, and users can choose the plan for each product individually. Note that if users want to be Enterprise customers, then they have to choose enterprise plans for all the products.  
<img src="../images/xo-platform-billingpage.png" alt="Billing Page" title="Billing Page" style="border: 1px solid gray; zoom:70%;">

## Other Changes

* Languages are now at the App level. Users can add a language globally and access it inside a specific module. For example, a New Agent language assignment is only done if it is added globally at the App level.
* Dev tools offer all the developer-related menus, such as BotKit, API scopes, Auth profiles, etc., across the products.
