# Using Traits

In this page, we explore how traits can be used to steer the conversation flow in a more natural and predictable direction for a Banking Bot. For details on what a Trait is and how it is implemented in the XO platform, click <a href="https://docsinternal-kore.github.io/docs/xo/automation/natural-language/training/traits/" target="_blank"> here</a>.

## Problem Statement

Consider the cases where the user is trying to report an issue or ask a question pertaining to _“Transfer Funds”._ The Bot will trigger the _“Transfer Amount”_ intent as opposed to _“Issue Resolution”_ or _“FAQ regarding Funds Transfer.”_

**Without Traits Knowledge**:

<img src="../images/without-traits-knowledge-problem-statement.png" alt="without traits knowledge" title="without traits knowledge" style="border: 1px solid gray; zoom:75%;">

**Using Traits**:

<img src="../images/using-traits-problem-statement.png" alt="using traits" title="using traits" style="border: 1px solid gray; zoom:75%;">

**Without Traits Knowledge**:

<img src="../images/without-traits-knowledge.png" alt="without traits knowledge" title="without traits knowledge" style="border: 1px solid gray; zoom:75%;">

**Using Traits**:

<img src="../images/using-traits.png" alt="using traits" title="using traits" style="border: 1px solid gray; zoom:75%;">

In this document, we demonstrate how Traits can be used to identify such situations and take appropriate action.

## Prerequisites

* Bot building knowledge.
* A <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/design-conversation-skills/create-a-sample-banking-assistant/" target="_blank">Banking Bot</a> with the dialogs as mentioned below:
    * <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/design-conversation-skills/create-transfer-funds-task/" target="_blank">Transfer Funds</a> – Dialog task prompting the user for Payer and Payee account numbers and the amount to be transferred and transferring the specified amount from the payer account to the payee account.
    
    <img src="../images/dialog-transfer-funds.png" alt="dialog transfer funds" title="dialog transfer funds" style="border: 1px solid gray; zoom:75%;"> 

    * **Issue Resolution**– Dialog task to assist in any issues faced by the user. It would display a regret message and transfer to a Live Agent.

    <img src="../images/issue-resolution-dialog-traits.png" alt="issue resolution" title="issue resolution" style="border: 1px solid gray; zoom:75%;">

    * **Knowledge Collection** – A node “transfer funds” with an FAQ “_How do I transfer funds?_”
    <img src="../images/knowledge-collection.png" alt="knowledge collection" title="knowledge collection" style="border: 1px solid gray; zoom:75%;">

## Implementation

### Intent Detection using Traits

We will be using Trait to steer the conversation to “Issue Resolution” when the word “issue” is present in the User Utterance.

**Steps**:

1. Select **Build** tab from the top menu.
2. From **Natural Language -> Training** select the **Traits** tab.
3. Click **Add New Trait**. We will be using a trait to identify the existence of the word ‘issue’ in the user utterance. Follow the steps below to complete adding the trait:
    * Add a **Trait Type** as _Problem Statement_ and **Traits** as _issue_. A given Trait Type can have multiple Traits grouped together logically.
    * Optionally you can add utterances for Issues as _‘problem’, ‘unable to’_, and _‘not working’_. These are the alternate words that users might use to indicate an issue.
    <img src="../images/add-utterance-for-issue.png" alt="add utterance" title="add utterance" style="border: 1px solid gray; zoom:75%;"> 

    * **Save & Add Rule.**
4. We will be defining the intent that needs to be triggered in the presence of this Issue trait.
    * **Select Intent** – _Issue Resolution_ to be triggered in presence of the trait.
    * Add the **Trait Rules** – _issue_ as the trait that should trigger the above selected intent.
    <img src="../images/add-trait-rule-issue.png" alt="add trait rule" title="add trait rule" style="border: 1px solid gray; zoom:75%;"> 

    * **Save** the Trait Mapping.
5. **Train** the Traits.
6. Open the Issue Resolution Intent to see the Trait **Rules** under the **NLP** properties panel updated with the _issue_ trait.
<img src="../images/issue-resolution-trait-rules.png" alt="issue resolution trait rules" title="issue resolution trait rules" style="border: 1px solid gray; zoom:75%;">

7. Run the Bot and see the changed flow.

### Knowledge Intent using Traits

Here we will see how to drive the query from the user to the appropriate FAQ instead of the dialog task.

**Steps**

1. From **Natural Language -> Training** open **Traits** dialog.
2. Click **Add New Trait**. We will be using a trait to identify the existence of questions in the user utterance.
    * Add a **Trait Type** as _Enquiry_ and **Traits** as _ask_. A given Trait Type can have multiple Traits grouped together logically..
    * Optionally you can add utterances for Issues as _‘wondering’_ and _‘want to know’_. These are the alternate words that user might use to indicate an enquiry.
    <img src="../images/utterance-for-issues.png" alt="utterance for issues" title="utterance for issues" style="border: 1px solid gray; zoom:75%;">

    * **Save & Exit** the Trait.
    * **Train** the Traits.
3. Associate the Trait to the FAQ
    * Open the **Knowledge Collection** and hover over the node with the question pertaining to Transfer Funds.
    * Click the **Settings** icon.
    * Under **Traits** type and select _ask_ trait.<img src="../images/ask-trait.png" alt="ask trait" title="ask trait" style="border: 1px solid gray; zoom:75%;"> 

    * **Train** the Knowledge Collection.
4. Run the Bot. You will see that the Bot is still going to the _“Transfer Funds”_ intent.
5. To understand the reason behind this:
    * Open **Testing **->** Utterance Testing.**
    * Type the utterance, you will see that the **Trait** has been identified.
    * Select the **Ranking and Resolver**. You will see that both the intent and FAQ were identified but the intent got a higher score.
    <img src="../images/select-ranking-and-resolver-traits.png" alt="select ranking and resolver" title="select ranking and resolver" style="border: 1px solid gray; zoom:75%;"> 

6. To ensure that the intent is not selected, we will add a **Negative Pattern** to the _“Transfer Funds”_ intent.
    * Select **Natural Language -> Advanced Settings**.
    * Enable **Negative Patterns**. This will enable the addition of _Negative Patterns_ for intents.
    * Under **Natural Language -> Training** select the intent to which negative patterns need to be added, in this case, _Transfer Funds_.
    * Select **Negative** **Patterns** tab.
    * Add _“know”_ as the negative pattern. This will ensure that the ‘Transfer Funds’ intent is not identified when ‘_know_‘ is present in the user utterance.
    <img src="../images/add-no-as-negative-pattern.png" alt="add no as negative pattern" title="add no as negative pattern" style="border: 1px solid gray; zoom:75%;">

    * Check the Utterance Training and see that the Transfer Funds intent is rejected because of the negative pattern.
    <img src="../images/check-utterance-training.png" alt="check utterance training" title="check utterance training" style="border: 1px solid gray; zoom:75%;">

7. Run the Bot and see the change.