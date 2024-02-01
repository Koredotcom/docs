# Travel Assistant Overview

The Kore.ai XO Platform allows you to create a variety of Virtual Assistants, to suit business needs that are just as diverse. In this section of the Platform’s Documentation, we will explore a use case that will help you gain more in-depth knowledge about building specific scenarios within your VA. For this purpose, we will build a Travel Planning Assistant and focus on several essential topics, which we will be discussing below: 

## Designing Conversation Skills

Conversation skills are central to your VA, since they make the functionality possible. In this section of our Use Case Documentation, you will learn how to create the following:

1. A simple <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-travel-planning-assistant/create-a-travel-virtual-assistant/" target="_blank">Travel Planning Assistant</a> , with a _Check Flight Status_ Dialog Task.
2. An <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-travel-planning-assistant/design-conversation-skills/update-booking-task/" target="_blank">Update Booking Dialog Task</a> that allows users to update the name on their travel booking. 
3. A <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-travel-planning-assistant/design-conversation-skills/change-flight-task/" target="_blank">Change Flight Task</a> that lets users change flights by providing the flights to change from and to, as well as the seat preference.
4. Some <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-travel-planning-assistant/design-conversation-skills/build-a-knowledge-graph/" target="_blank">Knowledge Graph</a> FAQs along with relevant structure that lets your VA reply to users’ questions, initiate tasks and detect intents appropriately. 
5. A <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-travel-planning-assistant/design-conversation-skills/schedule-a-smart-alert/" target="_blank">Smart Alert</a> that sends users weather forecasts.

## Designing Digital Skills

Digital Skills improve your user’s experience by gathering and displaying information in a more efficient and visually appealing manner. You can build the following:

1. <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-travel-planning-assistant/design-digital-skills/configure-digital-forms/" target="_blank">Digital Forms</a>: These allow you to build complex forms through which to retrieve information from users in one go, rather than through multiple back and forth User-VA interactions.
2. <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-travel-planning-assistant/design-digital-skills/configure-digital-views/" target="_blank">Digital Views</a>: These are composed of Widgets and Panels, which you can use to display information to users, either via the VA or via an app integration.

## Training the Assistant

Assistant Training is essential to any well-performing VA. For our use case, we discuss the following training related topics, within the context of our Travel Planning Assistant:

1. <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-travel-planning-assistant/train-the-assistant/using-traits/" target="_blank">Using Traits</a> to improve intent detection.Traits let you make specific associations which the VA should follow in order to properly detect specific intents.
2. <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-travel-planning-assistant/train-the-assistant/using-patterns/" target="_blank">Using Patterns</a> to improve intent detection, as well as entity recognition. Patterns allow you, for example, to determine word order for expressions that should be used as such when determining intents or entities.
3. <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-travel-planning-assistant/train-the-assistant/manage-context-switching/" target="_blank">Context Switching</a> allows you to enable content sharing across intents and/or FAQs to improve experience and avoid redundancy.

## Deploying the Assistant

When the Travel Assistant has been developed, it is time to deploy it. For this section, we will go through the following scenarios:

1. <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/deploy-the-assistant/configure-an-agent-transfer/" target="_blank">Configuring Agent Transfer</a> to LiveChat to allow the VA to pass conversations to human agents via the LiveChat application.
2. <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-travel-planning-assistant/deploy-the-assistant/use-bot-functions/" target="_blank">Using Bot Functions</a> to enable the use of scripts across the VA.
3. <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-travel-planning-assistant/deploy-the-assistant/use-content-variables/" target="_blank">Using Content Variable</a> to improve performance and avoid having to manually process the same type of information multiple times. 
4. <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-travel-planning-assistant/deploy-the-assistant/use-global-variables/" target="_blank">Using Global Variables</a> to pass API endpoints and easily change them when migrating from development to testing to production environments.
5. <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-travel-planning-assistant/deploy-the-assistant/web-sdk-tutorial/" target="_blank">A tutorial of the Kore.ai Web SDK</a> that allows you to integrate the XO Platform to external applications.