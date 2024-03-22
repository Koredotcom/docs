# Travel VA: Using Traits

In this post, we explore a scenario for a Travel Planning Assistant where traits are used to steer the conversation flow in a more natural and predictable direction. For details on what Traits are and how they are implemented in the XO Platform, click [here](/docs/xo/automation/natural-language/training/traits/){:target="_blank"}. 

## Problem Statement

Consider the cases where the user is trying to report an issue or ask a question pertaining to _“Make a Booking”._ The VA might trigger the _“Make a Booking”_ intent as opposed to _“Issue Resolution”_. The problem that may arise in this scenario is that the user is presented with a response that is not relevant to their utterance.

In this document, we will show how Traits can be used to identify such situations and take appropriate action.

## Prerequisites

To go through these configurations, you need to know at least the basics of <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-travel-planning-assistant/create-a-travel-virtual-assistant/" target="_blank">building a Virtual Assistant</a>. This is because your assistant needs to have been already built when you begin working on your forms.

In addition, your VA requires the following configurations:

* **Book a Flight Dialog Task** – This task allows the user to make a flight booking via the assistant.
<img src="../images/bookflight-dialog.png" alt="book flight dialog" title="book flight dialog" style="border: 1px solid gray; zoom:75%;">  

* **Issue Resolution Dialog Task**– This task assists in any issues faced by the user. It displays a regret message and transfers the conversation to a Live Agent.
<img src="../images/issue-resolution-dialog.png" alt="issue resolution dialog" title="issue resolution dialog" style="border: 1px solid gray; zoom:75%;">  

* **Knowledge Graph Booking FAQ**– A Booking node with an FAQ for How do I make a Booking?
<img src="../images/kg-booking-faq.png" alt="kg booking faq" title="kg booking faq" style="border: 1px solid gray; zoom:75%;">  

## Implementation

### Intent Detection using Traits

We will be using Trait to steer the conversation to “Issue Resolution” when the word “issue” is present in the User Utterance.

**Steps to add a New Trait**

1. From **Natural Language** -> **Training** select the **Traits** tab.
2. Click **Add New Trait** We will be using a trait to identify the existence of the word ‘issue’ in the user utterance.
    * Add a **Trait Type** as _Problem Statement_ and **Traits** as _issue_. A given Trait Type can have multiple Traits grouped together logically.
    * Optionally you can add utterances for Issues as _‘problem’, ‘unable to’_, and _‘not working’_. These are the alternate words that users might use to indicate an issue.
    <img src="../images/optional-add-utterance.png" alt="optionally add utterance" title="optionally add utterance" style="border: 1px solid gray; zoom:75%;">  

    * **Save & Add Rule**
3. We will be defining the intent that needs to be triggered in the presence of this Issue trait.
    * **Select Intent** – _Issue Resolution_ to be triggered in the presence of this trait.
    * Add the **Trait Rules** – _issue_ as the trait that should trigger the above selected intent.
    <img src="../images/add-trait-rule.png" alt="add trait rule" title="add trait rule" style="border: 1px solid gray; zoom:75%;">  

    * **Save** the Trait Mapping.

4. **Train** the Traits.
5. Open the Issue Resolution Intent to see the Trait **Rules** under the **NLP** properties panel updated with the _issue_ trait.
<img src="../images/issue-resolution-intent.png" alt="issue resolution intent" title="issue resolution intent" style="border: 1px solid gray; zoom:75%;">  

6. **Talk to the Bot** and see the conversation flow. As you can see in the illustration below, rather than detect the _Make a Booking_ intent, the VA uses the Issue Resolution task to transfer the conversation to an agent. This is despite the fact that the user utterance contains the full _Make a Booking_ sentence. The VA picks up on the presence of an utterance which we have set up under the _Issue_ trait – the word _problem_ – and thus triggers the intent that we selected as the rule, rather than the other one.
<img src="../images/traits-talk-to-bot.png" alt="talk to bot" title="talk to bot" style="border: 1px solid gray; zoom:75%;">  

### Knowledge Intent using Traits

Here we will see how to drive the query from the user to the appropriate FAQ instead of the dialog task.

**Steps to Create Knowledge Intent using Traits**

1. From **Natural Language > Training** open the **Traits** dialog.
2. Click **Add New Trait.** We will be using a trait to identify the existence of questions in the user utterance.
    * Add a **Trait Type** as _Inquiry_, and **Traits** as _ask_. A given Trait Type can have multiple Traits grouped together logically.
    * Optionally you can add utterances for Issues as _‘wondering’_ and _‘want to know’_. These are the alternate words that the user might use to indicate an inquiry.
    <img src="../images/add-trait-details.png" alt="add trait details" title="add trait details" style="border: 1px solid gray; zoom:75%;">

    * **Save & Exit** the Trait.
    * **Train** the Trait.
3. Associate the Trait to the FAQ
    * Open the **Knowledge Graph** and hover over the node with the question pertaining to _Booking_.
    * Click the **Settings** icon.
    * Under **Traits** type and select _ask_ trait.
    <img src="../images/associate-to-faq.png" alt="associate to faq" title="associate to faq" style="border: 1px solid gray; zoom:75%;">  

    * **Train** the Knowledge Graph.
4. Click **Talk to the bot** and say _I want to make a booking_. You will see that the assistant is still detecting the _Make a Booking_ intent.
5. To understand the reason behind this:

    * Open **Testing > Utterance Testing.**
    * Type the utterance, you will see that the **Trait** has been identified.
    * Select the **Ranking and Resolver**. You will see that both the intent and FAQ were identified but the intent got a higher score.
    <img src="../images/select-ranking-and-resolver.png" alt="select ranking and resolver" title="select ranking and resolver" style="border: 1px solid gray; zoom:75%;">  

6. To ensure that the intent is not selected, we will add a **Negative Pattern** to the _Book Flight_ intent.
    * Go to **Build > Conversation Skills > Dialog Tasks** and select the _Book Flight_ task.
    * Select the **primary intent node** and go to its **NLP Properties**. 
    * Under **Patterns** click **Add Pattern**.
    * Select the **Negative Patterns** tab. Add the words _know_, _ask,_ any any other question identifiers.This will ensure that the ‘Book Flight’ intent is not identified when either of the negative patterns is present in the user utterance.
    <img src="../images/add-negative-pattern.png" alt="add negative pattern" title="add negative pattern" style="border: 1px solid gray; zoom:75%;">   

Check the Utterance Training and ensure that the Book Flight intent is rejected because of the negative pattern. Finally, **Talk to the Bot** and test the changes.
