# Building a Virtual Assistant
This document describes the process of implementing a Virtual Assistant using the Kore.ai XO Platform.

If you are new to the Kore.ai XO Platform and want to familiarize yourself with the terms and concepts we use, please refer to[ Concepts and Terminology](./glossary/concepts-and-terminology.md).

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


![alt_text](../getting-started/images/bva(2).png "image_tooltip")



### Build a Virtual Assistant Using the Setup Guide

1. Sign in to the [XO Platform Homepage](https://platform.kore.ai/){:target="_blank"}.
2. On the Homepage, click the **New App** button and then choose **New App**. The Get Started options are displayed.
3. Under Automation AI, click **Create New** and then select your onboarding experience - **Guided Onboarding**.
4. Click **Next** at the bottom-right corner, and follow the onscreen instructions to complete the onboarding journey.
5. At the end of the journey, your Virtual Assistant will be ready. You can go back to any step in the journey and change the provided information. 
