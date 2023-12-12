# Travel Assistant Overview

The Kore.ai XO Platform allows you to create a variety of Virtual Assistants, to suit business needs that are just as diverse. In this section of the Platform’s Documentation, we will explore a use case that will help you gain more in-depth knowledge about building specific scenarios within your VA. For this purpose, we will build a Travel Planning Assistant and focus on several essential topics, which we will be discussing below: 

## Designing Conversation Skills

Conversation skills are central to your VA, since they make the functionality possible. In this section of our Use Case Documentation, you will learn how to create the following:

1. A simple [Travel Planning Assistant](https://developer.kore.ai/docs/bots/how-tos/travel-planing-assistant/create-a-travel-virtual-assistant/), with a _Check Flight Status_ Dialog Task.
2. An [Update Booking Dialog Task](https://developer.kore.ai/docs/bots/how-tos/update-booking-task/) that allows users to update the name on their travel booking. 
3. A [Change Flight Task](https://developer.kore.ai/uncategorised/change-flight-task/) that lets users change flights by providing the flights to change from and to, as well as the seat preference.
4. Some [Knowledge Graph](https://developer.kore.ai/uncategorised/build-a-travel-assistant-knowledge-graph/) FAQs along with relevant structure that lets your VA reply to users’ questions, initiate tasks and detect intents appropriately. 
5. A [Smart Alert](https://developer.kore.ai/docs/bots/how-tos/travel-planing-assistant/schedule-a-smart-alert/) that sends users weather forecasts.

## Designing Digital Skills

Digital Skills improve your user’s experience by gathering and displaying information in a more efficient and visually appealing manner. You can build the following:

1. [Digital Forms](https://developer.kore.ai/docs/bots/how-tos/travel-planing-assistant/travel-va-configuring-digital-forms/): These allow you to build complex forms through which to retrieve information from users in one go, rather than through multiple back and forth User-VA interactions.
2. [Digital Views](https://developer.kore.ai/docs/bots/how-tos/travel-planing-assistant/travel-va-configure-digital-views/): These are composed of Widgets and Panels, which you can use to display information to users, either via the VA or via an app integration.

## Training the Assistant

Assistant Training is essential to any well-performing VA. For our use case, we discuss the following training related topics, within the context of our Travel Planning Assistant:

1. [Using Traits](https://developer.kore.ai/docs/bots/how-tos/travel-planing-assistant/travel-va-using-traits/) to improve intent detection.Traits let you make specific associations which the VA should follow in order to properly detect specific intents.
2. [Using Patterns ](https://developer.kore.ai/docs/bots/how-tos/travel-planing-assistant/travel-va-using-patterns-for-intents-entities/)to improve intent detection, as well as entity recognition. Patterns allow you, for example, to determine word order for expressions that should be used as such when determining intents or entities.
3. [Context Switching](https://developer.kore.ai/docs/bots/how-tos/travel-planing-assistant/travel-va-managing-context-switching/) allows you to enable content sharing across intents and/or FAQs to improve experience and avoid redundancy.

## Deploying the Assistant

When the Travel Assistant has been developed, it is time to deploy it. For this section, we will go through the following scenarios:

1. [Configuring Agent Transferf](https://developer.kore.ai/docs/bots/how-tos/travel-planing-assistant/travel-va-configuring-agent-transfer/) to LiveChat to allow the VA to pass conversations to human agents via the LiveChat application.
2. [Using Bot Functions](https://developer.kore.ai/docs/bots/how-tos/travel-planing-assistant/travel-va-using-bot-functions/) to enable the use of scripts across the VA.
3. [Using Content Variable](https://developer.kore.ai/docs/bots/how-tos/travel-planing-assistant/travel-va-use-content-variables/) to improve performance and avoid having to manually process the same type of information multiple times. 
4. [Using Global Variables](https://developer.kore.ai/docs/bots/how-tos/travel-planing-assistant/travel-va-using-global-variables/) to pass API endpoints and easily change them when migrating from development to testing to production environments.
5. [A tutorial of the Kore.ai Web SDK](https://developer.kore.ai/docs/bots/how-tos/travel-planing-assistant/travel-va-web-sdk-tutorial/) that allows you to integrate the XO Platform to external applications.