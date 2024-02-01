# Building a Virtual Assistant
This document describes the process of implementing a Virtual Assistant using the Kore.ai XO Platform.

If you are new to the Kore.ai XO Platform and want to familiarize yourself with the terms and concepts we use, please refer to[ Concepts and Terminology](https://developer.kore.ai/docs/bots/chatbot-overview/about-bots/).

!!! Disclaimer

    **PCI Compliance Disclaimer**: You must use data masking to collect credit card information but never capture CVV numbers. Kore.ai is committed to safeguarding all payment card data collected and processed for its business. However, card payment processing is not supported in Kore.ai-owned systems. If card payment processing is required during Bot interactions, you must transfer the processing to a PCI-compliant merchant.


## Steps for Building your Virtual Assistant

Once you get access to the Kore.ai XO Platform, you can build your first VA by following the steps below.



1. **Define / Design**: This is the step during which you clarify the necessary details, before you begin to actually build your VA.
2. **Build / Develop**: At this stage, your VA takes shape within the Kore.ai XO Platform; you begin making the necessary configurations and developing it to continuously fit your organization’s needs.


## Define / Design the VA

Every VA must be built to solve a well-defined use case.

The first step to create a well-defined use case involves gathering market requirements and assessing internal needs. Typically, you want to include all relevant stakeholders, such as business sponsors, product owners, business analysts, and VA developers in this process.

Next, get a good idea of what the VA needs to do. A clear description of each step and a flow chart of the various conversation flows will go a long way in easing the process of building the VA.

Below, we present our recommendations when it comes to the design process and the questions you should ask when defining your VA.


### Recommended Design Process

We recommend that you follow the steps below while designing your VA:



* **Understand your Users’ Needs**: To set the scope of the VA, the business sponsors, business analysts, and product owners play an important role in identifying the users’ needs by gathering market requirements and assessing internal needs.
* **Set the Virtual Assistant Goals**: This involves converting the above-identified scope to a use case. It is advisable to involve the VA developer in this phase.
* **Design a Virtual Assistant Conversation**: This helps define chatbot behavior in every possible scenario in its interaction with the user. Simulating conversations go a long way in identifying such scenarios.

Once the VA capabilities and ideal use cases are well-defined, the developer can begin the process of configuring the tasks, define intents and entities, and build the conversational dialog.


### Questions to Ask during the Design Process

Try to answer the following questions (some if not all):



* **Who is the _target audience_?** Technical help VAs targeted for a tech-savvy customer need a different design when compared to VAs for a layperson, such as an airline’s customer. Hence assessing the target audience is always important.
* **What VA _persona_ will resonate the most with this group?** This will help define how the VA talks and acts in every situation.
* **What is the _purpose of the VA_?** The goal i.e. the customer query that the VA needs to address defines the endpoint of any conversation.
* **What _pain points_ will the VA solve?** The purpose and scope of VAs are set to identify what the VA addresses and when the human agent needs to take over.
* **What _benefits_ will the VA provide for us or our customers?** The main benefit of using a VA is time-saving. Users need not waste their time waiting for a human agent to be available for answering their query. You, as the business owner, don’t worry about not being there to cater to all customer needs.
* **What _tasks_ do I want my VA to perform?** Simulation of user conversation helps identify the tasks that need to be catered to by the VA.
* **What _channels_ will the VA communicate through?** This will to some extent drive the way the VA is presented, the various options available for the VA are limited by the channel/medium it is used in.
* **What _languages_ should the VA speak?** When catering to a multilingual community the language support is imperative and building the dictionary simultaneously is useful.


## Build / Develop the VA

Once the VA’s capabilities and ideal use case are well-defined, the developer begins the process of configuring tasks, defining intents, entities, and building the conversational dialog.

The general development process in the Kore.ai XO Platform involves the following steps:



* Choose the type of VA to build;
* Add your first VA;
* Define the VAs tasks;
* Train the VA;
* Enable communication channels;
* Test your VA configuration;
* Publish your VA;
* Analyze and improve;


![alt_text](images/bva(2).png "image_tooltip")



### Select the Virtual Assistant Type

Based on the requirements, select the type of Virtual Assistant you want to create The Kore.ai XO Platform allows you to create the following types of VAs:



* **Standard VA** – Standard VAs are the most common type of virtual assistant. Using these, you can create dialogs, alerts, actions, information tasks, and knowledge graphs, as well as flows that map one task to another. For more information, refer to[ Defining a Standard Bot](https://developer.kore.ai/docs/bots/bot-builder-tool/bot-creation/defining-a-standard-bot/).
* **Universal VA** – Universal VAs facilitate a scalable, modular approach to VA building by helping you link several Standard VAs into one. The universal VA executes the tasks and functions of the linked VAs by routing relevant utterances to them. Once you publish a universal virtual assistant, changes made in the linked VAs automatically reflect in the universal VA. As a creator or developer of a virtual assistant, you can add any VAs (published and configured) to a universal VA and access their underlying tasks and functions. When you publish a universal virtual assistant, the end users can only access the tasks that are published in the linked VAs. For more information, refer to[ Defining Universal Virtual Assistants](https://developer.kore.ai/docs/bots/advanced-topics/universal-bot/defining-universal-bots/).
* **Template VA** – You can install one or more fully functional, end-to-end Kore.ai template VAs from the Template Store, then customize and publish to understand how to configure virtual assistants. For more information, refer to[ Bot Store](https://developer.kore.ai/docs/bots/bot-store/store/).

Within this document we will use a Standard VA as a working example.


### Create a Standard Virtual Assistant

Below are the steps to follow to create your first Standard VA within the Kore.ai XO Platform:

On the landing page, click **New Bot**.



![alt_text](images/bva(3).png "image_tooltip")


In the **Create New Bot** window, start by configuring the basic details of your new VA:



1. Select **Start from Scratch**.
2. Enter a **Name**. 
3. Select an **icon** or click the **+** icon to upload your own. Images should be in PNG format and should not exceed 40×40 pixels. The file size is limited to 80kb. 
4. Select the **Purpose** of your VA. See[ VA Purposes](https://developer.kore.ai/docs/bots/chatbot-overview/getting-started-bots/#VA_Purposes) for a complete list.
5. Choose **Standard Bot** as the **Bot Type**.
6. Select the **Default Language**.
7. Click **Proceed** when ready. 


    ![alt_text](images/bva(4).png "image_tooltip")


Next, decide how to create your VA – with or without generated use cases.


#### Create a VA with Generated Use Cases

Generating Use Cases while creating your VA simplifies the development process by automatically creating up to 30 customizable[ Dialog Tasks](https://developer.kore.ai/docs/bots/bot-builder-tool/dialog-task/dialog-tasks/). After proceeding to the next steps of the VA creation process, follow these steps:



1. Add a meaningful description that clearly states the VA’s purpose and mentions some intent examples.  
2. Click **Get Use Cases** to generate intents that will be automatically added to the VA. (You can update the Bot Name and Purpose and remove use cases.)
3. Click **Create** to create your VA with generated use cases. 


    ![alt_text](images/bva(7).png "image_tooltip")

4. Wait a few moments for your VA to be configured. Once done, you can continue developing it. 


#### Create a VA without Generating Use Cases

By creating a VA without generating use cases, you will not have any Dialog Tasks except for the default ones in the XO Platform: the _Welcome_ and _Fallback_ tasks.

After configuring the basics of your VA, you can adjust the _Bot Name_, _Purpose_, and _Description_ if required. Click **Create without Use Cases** to create your VA without any generated use cases.

![alt_text](images/bva(7).png "image_tooltip")


Wait a few moments for your VA to be configured. Once done, you can continue developing it.


### VA Purposes

You can choose any of the following purposes when creating a Virtual Assistant:



1. **Retail Banking** – Help customers with retail banking needs, such as checking bank balances, transferring funds, ATM cards, credit cards, or loans.
2. **Retail Shopping** – Help customers check product availability, find product details, place orders, get order status, track delivery, return/exchange items, and more.
3. **Travel Management** – An assistant to book flights, check flight status, book hotels, check hotel availability, book car rentals, check car rental availability, get visa requirements, currency exchange rates, and more.
4. **Restaurant Inquiry and Food Ordering** – Help customers find restaurant locations, search menus, order/track food, get discounts, etc.
5. **Financial Planning and Advice** – This assistant provides financial planning and advice, enabling users to get advice, calculate savings, invest, find tax solutions, manage credit, compare investments, and more.
6. **Insurance Management** – An assistant that helps manage insurance policies and quotes, buy insurance, file and check claims, add/remove coverage, and more.
7. **Healthcare** – Assist customers to get personalized medical advice, finding specialists, scheduling appointments, refilling prescriptions, and more.
8. **Education** – An assistant to get personalized guidance to explore course options, degree requirements, financial aid, etc.
9. **Customer Service and Support** – A VA that provides 24/7 customer service and support for product info, orders, returns, refunds, complaints, and more.
10. **Website Engagement** – Help visitors quickly and easily find product information, compare features, request a demo or quote, purchase a product, connect with the sales team, and get support.
11. **HR Support** – Support employees with fast, reliable answers to employee queries on leave, overtime, expenses, salary, pension, tax, jobs, policies, and more.
12. **ITSM Support** – Get ticket status, raise a new ticket, check ticket history, reopen closed tickets, request software installation, and more.
13. **Inventory and Supply Chain Management** – Automating inventory and supply chain management with the intent to check inventory levels, place orders, track order status, manage customer accounts, and more.
14. **Marketing & Sales** – Automate lead acquisition and optimize lead management for marketing and sales.
15. **Procurement Management** – Automating procurement tasks such as viewing RFQs, creating requisitions, reviewing purchase orders, and checking supplier status.
16. **Others** – Use this option when none of the predefined purposes match your bot’s purpose.

 


### Define Virtual Assistant Tasks

After creating the Standard VA, you are ready to define how your VA works, by starting with tasks.

VA capabilities and dialogs should flow naturally from the specifications you defined in the previous step. It is always valuable to take time to review the list of tasks you want the VA to perform. Ensure that it delivers on the benefits you want the VA to provide and the pain points you want it to solve, before starting actual development. This will certainly save you time in the long run.

Define one or more tasks or flows for your VA using one of the following methods:



* On the _Bot Summary_ page, click **+ New Task** on the _Tasks_ widget. This would allow you to add a _Dialog_ or an _Alert_ task.

    ![alt_text](images/bva(5).png "image_tooltip")




* In addition to the above-mentioned tasks, from the **Conversational Skills** menu on the left navigation, you can select a task to be added by clicking the **Create** button on the corresponding task page. The example screenshot below shows you how to create a new Dialog Task.

    ![alt_text](images/bva(6).png "image_tooltip")


Skills are VA capabilities that help achieve the end-user’s needs. These include dialog and alert tasks such as booking a flight, getting weather alerts, responding to user queries (Knowledge Graph) or even engaging the user in Small Talk.

The Kore.ai XO Platform allows you to define the following skills:



* **[Storyboard](https://developer.kore.ai/docs/bots/bot-builder-tool/bot-creation/storyboard/)** – Design engaging conversations and simplify the communication between business users, conversation designers, language experts, and developers.
* **[Dialog Tasks](https://developer.kore.ai/docs/bots/bot-builder-tool/dialog-task/dialog-tasks/)** – Consist in multiple intents, sub-intents, and component nodes to conduct a complex conversational flow between a user and the VA.
* **[Alert Tasks](https://developer.kore.ai/docs/bots/bot-builder-tool/alert/notification-tasks/)** – Monitors a web service for events and sends a notification message to the user when the event occurs. You can use this task type for scheduled polling or near real-time notification using webhooks.
* **[Knowledge Graph](https://developer.kore.ai/docs/bots/bot-builder-tool/knowledge-task/creating-a-knowledge-graph/)** – Turns static FAQ pages into an intelligent, personalized conversational experience. Build a hierarchy of crucial terms, add questions to the right nodes in the hierarchy, and leave the task of _responding to users_ to the VA, thus enabling your support staff to engage with more complex tasks.
* **[Small Talk](https://developer.kore.ai/docs/bots/bot-builder-tool/small-talk/)** – Engage the end-users in casual conversations that help socialize your VA and improve the recall rates.
* **[Digital Skills](https://developer.kore.ai/docs/bots/bot-builder-tool/digital-forms/)** – Leverage forms and views and enhance the user’s experience while interacting with your VA.


### Train your VA for NLP

The best Virtual Assistants are well trained using an iterative process. After developing the tasks and conversation flow, you can train your VA. Doing so allows your VA to better understand user utterances and the engine to better prioritize one VA task or intent over another, based on the user input.

Both developers and business analysts work together to provide sample utterances and patterns that are used to complete the initial training. It can be further augmented by internal testing and field data once you deploy the VA.

We recommend that you train the VA using Machine Learning to improve utterance recognition.



* You can fine-tune the FM Engine and the VAt’s configuration by adding additional utterances, synonyms, and patterns for a task or intent.
* Additionally, you can enhance your VA Intelligence by defining interruption handling, multi-intent detection, and more.

For more information, refer to[ Optimizing Virtual Assistants for Natural Language Processing](https://developer.kore.ai/docs/bots/nlp/optimizing-bots/).


### Enable Channels

This step refers to adding channels to your VA that end users can use to access and interact with it after it is published. End users can only interact with your VA, and by extension VA tasks, after the VAs are published and deployed to enabled channels.

Channels refer to various communication platforms where a VA can live such as SMS, email, mobile apps, websites, messaging apps, and more. With the XO Platform, you can design VA tasks once and deploy across 20+ channels simply by selecting a checkbox.

For more information, refer to[ Adding Channels to your](https://developer.kore.ai/docs/bots/channel-enablement/adding-channels-to-your-bot/) Virtual Assistants.


### Test your Virtual Assistant

After you have built and trained your VA, the most important question that arises is how good is your VA’s NLP model? This is what testing is all about. You must consider testing your VA across all planned messaging channels for a better end-user experience.

Testing helps determine whether or not more training is needed before deploying your VA. After every round of training or retraining, you must review the model to determine whether the changes made are appropriate and whether they have enhanced or deteriorated the NLP model.

The Talk to Bot option, Utterance Testing, and Batch Testing helps test and improve your VAs performance.

For more information, please refer to[ Test your Virtual Assistant.](https://developer.kore.ai/docs/bots/test-your-bot/talk-to-bot/)


### Publish

Once your VA is built and sufficiently tested, it is time to deploy it in the environment of your choice; and to the communication channels where users engage.

It is recommended that you work with the key business stakeholders to review and approve all VAs and their functionality before moving forward with the deployment.

You can then publish your VA tasks to your account, a Kore.ai space, or your company account. When publishing tasks, a request is initiated to the VAsAdmin who can review and approve/disapprove their deployment. Once your VA is approved by all relevant parties, you can deploy to end-users through previously enabled channels.

For more information, please see[ Publishing Tasks](https://developer.kore.ai/docs/bots/publish/publishing-bot/).


### Analyze and Improve

Once your VA is deployed, it is important that you continually monitor how users use it and take an active role in managing and refining it, using an iterative process. Your VA’s should be monitored from an engagement, performance, and functional standpoint and the results analyzed, including monitoring conversations and other variables like messages per session, retention, location, user demographics, sentiment, etc..

Furthermore, developers and analysts should work together to identify drop-off points, uncover task or language failures, determine why conversations are abandoned, and monitor service and script performance to improve the NLP and functional performance of your VAs.

The data collected must be used to improve the NLP and functional performance of your VAs. For example, take a look at all the utterances that your VA was not able to map to an intent or FAQ and retrain the VA to identify them in the future. For task failures, you can troubleshoot where the process went wrong and come up with solutions.

Building great virtual assistants is not easy, but the right platform, a little bit of structure, and a willingness to test and iterate some more goes a long way in achieving success.

For more information, please refer to[ Analyze your](https://developer.kore.ai/docs/bots/analyzing-your-bot/analyzing-your-bot/) Virtual Assistant.

		
