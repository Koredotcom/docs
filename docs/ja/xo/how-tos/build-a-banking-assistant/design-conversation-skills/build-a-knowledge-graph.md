# Build a Knowledge Graph

This article helps to quickly build and understand the working of a Knowledge Graph for your bot. It shows how to convert an FAQ into ontology, add tags, use terms, add alternate questions, synonyms, tags, and traits.

For the implementation details, click <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/knowledge-ai/knowledge-graph-overview/" target="_blank">here</a>.

In this example, we work on the following FAQs related to a banking bot:


* _How do I apply for a debit card?_
* _How do I apply for a checkbook?_
* _How do I open a joint account?_
* _Can I add a joint account holder?_

## Static FAQ

Let us start by creating a static FAQ without an ontology.

To add a static FAQ, follow the steps below:

1. Open the bot.
2. Select the **Build** tab from the top menu.
3. On the left pane, click **Conversational Skills** > **Knowledge Graph**.
4. Click **Create** to create a Knowledge Graph.
5. A Knowledge Graph with the name set to the Bot Name is created.
6. Click **Add Intent** to start entering your FAQs.
7. Select **Intent** type as FAQ.
8. **Add Question** and **Bot Response**; then click **Save**.
<img src="../images/add-question-and-bot-response.png" alt="add question and bot response" title="add question and bot response" style="border: 1px solid gray; zoom:75%;">

9. Click **Add Intent** on the top-right to add more Q&As.
10. After you enter all the Q&As, click **Train** to train the Knowledge Graph.
<img src="../images/click-training.png" alt="click training" title="click training" style="border: 1px solid gray; zoom:75%;">

11. Click **Talk to Bot** at the bottom-right to check the bot response for the added Q&As.

## Tags

**Issue**: Try the utterance “_how do I apply for a credit card_?” 
We will get did you mean dialog with reference to a question pertaining to Debit Card, which is not appropriate in this scenario. Ideally, we should see an _I don’t know_ response as you get for a totally unrelated query regarding weather.

<img src="../images/kg-tutorial-bot.png" alt="kg tutorial bot" title="kg tutorial bot" style="border: 1px solid gray; zoom:75%;">

**Solution**

To overcome the above situation, we can add **tags** to each question. Tags help filter the FAQs based upon the presence of some key phrases in the user utterance.

### Steps to Add Tags

1. Hover over the Question to find the **Edit** icon. 
<img src="../images/edit-question-tag.png" alt="edit question tag" title="edit question tag" style="border: 1px solid gray; zoom:75%;"> 

2. Click the **Edit** icon to add a tag to the question.
3. In the **Add Tag** text box, you can find some suggestions by the platform based on the phrases present in the question. You can pick one from the list or type your own custom tag.
4. For this use case, we can pick the _debit card_ tag as suggested by the platform and **Save** the changes.
<img src="../images/pick-debit-card.png" alt="pick debit card" title="pick debit card" style="border: 1px solid gray; zoom:75%;"> 

5. Similarly, add a _checkbook_ for the _How to apply for checkbook_ question.
6. **Train** the bot.
<img src="../images/train-bot-for-debit-card.png" alt="train bot for debit card" title="train bot for debit card" style="border: 1px solid gray; zoom:75%;">

7. **Talk to the Bot**, use the same utterance “_how do I apply for a credit card_?”

## Ontology

For a better bot response, you must add tags for every question. But this solution is not feasible in case we have a big list of FAQs. Also, more than one question can have a tag(s) in common.

**Solution**: Ontology. Based on crucial words and frequently occurring words/phrases, FAQs are organized into groups and subgroups.

**Example of Ontology**: Continuing with the Banking bot FAQ example, we can organize the questions thus:

* Apply
    * Debit Card
        * _How do I apply for a debit card?_
    * Checkbook
        * _How do I apply for a credit card?_
* Joint account
    * _How do I open a Joint account?_
    * _Can I add a joint account holder?_

Each group can be a node in the ontology. You can have multiple levels of the nodes forming a hierarchical structure. Moving the relevant FAQs (intents) to the nodes will associate that FAQ with the corresponding node name set as a tag.

To create an ontology, follow the steps below:

1. Hover over the Knowledge Graph name on the left pane and click **+** icon to **Add Child Node**.
2. Add the Nodes as _Apply_ and _Joint Account_.
<img src="../images/add-child-node-banking.png" alt="add child node" title="add child node" style="border: 1px solid gray; zoom:75%;"> 

3. To add subgroups, hover over the node and use the corresponding **+** icon to add child nodes.
4. Select the questions pertaining to Joint Account and drag and drop them to the **Joint Account** node.
5. Repeat the process for questions related to **Apply**, **Debit Card**, and **Checkbook** nodes.
<img src="../images/repeat-steps-ontology.png" alt="repeat steps ontology" title="repeat steps ontology" style="border: 1px solid gray; zoom:75%;">

6. You will notice the path gets updated accordingly.
<img src="../images/kg-path-update.png" alt="kg path update" title="kg path update" style="border: 1px solid gray; zoom:75%;">

7. Edit a question and see that the node name is added as a tag.
8. This ensures that this question is qualified for a user utterance containing the term/node name. Note that the tags you added earlier are retained and you can delete them, whereas the node names cannot be deleted.
<img src="../images/edit-a-question.png" alt="edit a question" title="edit a question" style="border: 1px solid gray; zoom:75%;">

9. **Train** the Knowledge Graph and **Talk to Bot**.
10. There should not be any changes in the bot responses.

## Term Usage

By default, the node names or terms are used in evaluating the path and coming up with a set of qualifying questions. You can tighten or relax this rule by either making the term mandatory in the utterance or marking the term/node as organizer respectively.

Before proceeding, let us add a few more nodes questions to our Knowledge Collection:

* Account
    * _How do I open an account?_
    * _How do I access my account?_
    * _How do I check my account balance?_
    * _How do I access my account online?_
* Contact
    * _Who do I contact in case of an issue?_
    * _What is your helpline number?_
* Complaints
    * _Where can I register my query/complaints?_
* Issues
    * _How do I report a stolen card?_

**Use Case 1**: You want to ensure that the intents regarding _Joint Account_ must be considered only when the user asked a direct question regarding the same. Any ambiguous cases must consider the Account node and not the Joint Account node.

To address this case, we mark the term _Joint Account_ as **Mandatory**. This helps improve the bot’s performance.

**Steps to Set up a Term**

1. Hover over the node, in this case, Joint Account, and click on the **Settings** icon.
2. From the Settings section, select the **Mandatory** option from the dropdown next to the term name.
3. **Save** and **Train** the Knowledge Collection.
4. Now the questions under this node are considered only if the user utterance has the node name, **Joint Account** in this case.
<img src="../images/mandatory-settings.png" alt="mandatory settings" title="mandatory settngs" style="border: 1px solid gray; zoom:75%;">

**Use Case 2**: Consider the following FAQs.

* Contact
    * _Who do I contact in case of an issue?_
    * _What is your helpline number?_
* Complaints
    * _Where can I register my query/complaints?_
* Issues
    * _How do I report a stolen card?_

Though they do not have any phrases or terms in common, they are related to _Customer Care_. For ease of understanding, we can put them under a node by the same name and mark it as **Organizer** node, ensuring that the intents get qualified without the need to have the term phrase in the user utterance.

**Steps to Set up a Term**

1. Create a node called _Customer Care._
2. Drag and drop the above three nodes to this new node.
3. Hover over the node, in this case *Customer Care*, and click on the **Settings** icon.
4. From the **Settings** page, select the **Organizer** option.
5. **Save** and **Train** the Knowledge Collection.
6. Now the questions under this node are considered even if the user utterance does not include the node name.
<img src="../images/save-and-train-faq.png" alt="save and train faq" title="save and train faq" style="border: 1px solid gray; zoom:75%;">

## Synonyms

**Use Case**

**User**: _How do I get a debit card?_

**Bot** provides a suggestive and not a definitive match because the bot does not understand _get_ as being the same as _apply_.

**Solution**: Synonyms

To add synonyms, follow the steps below:

1. Hover over the **Apply** node and click the **Settings** icon.
2. In the **Path Level Synonyms**, add **get**.
<img src="../images/get-path-level-synonyms.png" alt="get path level synonyms" title="get path level synonyms" style="border: 1px solid gray; zoom:75%;"> 

3. **Save** and **Train** the Bot.
4. **Talk to Bot** and use the same query “_How do I get a debit card?”_
5. Try “_How do I get a checkbook”_ and you will see that the synonym works here also. This is because we added the synonym at path level and it is applicable to all nodes and questions under that path/node.

<img src="../images/kg-tutorial-bot-synonyms.png" alt="kg tutorial bot synonyms" title="kg tutorial bot synonyms" style="border: 1px solid gray; zoom:75%;">

6. Similarly, we can define **Knowledge Graph Synonym** if it is applicable to the entire knowledge graph.

## Alternate Questions

Some questions have multiple ways the user can approach them.

* _Is there a way to see my account details from my laptop?_
* _Is there a mobile app that I can use to access my account?_
* _Does your bank support internet banking to view account details?_

All these questions pertain to one intent: _How do I access my account online?_. But instead of adding all these Q&As as intents and repeat the response and the settings, if any, you can add these questions as alternate questions.

To add alternate questions, follow the steps below:

1. Hover over the question, in this case, _How do I access my account online?_ and click the **Edit** icon.
2. In the **Add alternate question** enter the question.
3. Add all the three queries mentioned above.
<img src="../images/add-alternative-question.png" alt="add alternative question" title="add alternative question" style="border: 1px solid gray; zoom:75%;"> 

4. **Save**, **Train**, and **Talk to the Bot**.
5. Entering any of the above three questions will yield the same response as the question _How do I access my account online?_

## Tasks Execution

Consider the query “_How do I check my account balance?_.” If the bot has a task that can give the balance, we can direct the user to the same, instead of asking the user to use the utterance to trigger the task.

To trigger a task, follow the steps below:

1. Before proceeding, ensure that you have a task defined for _Check Balance_. Let us consider a dummy dialog that displays a message.

<img src="../images/tasks-execution-dummy-dialog.png" alt="tasks execution dummy dialog" title="tasks execution dummy dialog" style="border: 1px solid gray; zoom:75%;">

2. Add the **Add Intent** _How do I check my account balance?_
3. Set **Intent** to _Task._
4. From the drop-down list select the Dialog Task name **Check Balance**.
<img src="../images/check-balance.png" alt="check balance" title="check balance" style="border: 1px solid gray; zoom:75%;"> 

5. **Save** and **Train** the Knowledge Graph.
6. **Talk to bot** with the utterance _How do I check my account balance?_ will trigger the _Check Balance_ task.

## Tags in Ontology

**Use Case**

**User**: _Does your bank give a passbook to view account details?_

**Bot**: Did you mean _How do I access my account online?_.

The reason being the alternate question for online account access: _Does your bank support internet banking to view account details?_ is a very close match to the above query. You can avoid such situations by adding a tag _internet banking_ and marking it as mandatory to the alternate question _Does your bank support internet banking to view account details?._

**Solution**: Custom Tags

To add tags, follow the steps below:

1. Edit the question “_How do I access my account online?”_
2. For the alternate question: “_Does your bank support internet banking to view account details?”_
    * Add the tag _internet-banking_.
    <img src="../images/add-tag-internal-banking.png" alt="add tag internal banking" title="add tag internal banking" style="border: 1px solid gray; zoom:75%;">

    * Click the tag to open the **Tag Settings** dialog and set **Tag Usage** to **Mandatory**. 
    <img src="../images/click-tag-to-open.png" alt="click tag to open" title="click tag to open" style="border: 1px solid gray; zoom:75%;">

    * Click **Done**.
3. Repeat for the alternate question _Is there a mobile app that I can use to access my account?_ with the tag _mobile app_.
<img src="../images/repeat-alternative-question.png" alt="repeat alternative question" title="repeat alternative question" style="border: 1px solid gray; zoom:75%;">

4. **Save** and **Train** the bot.
5. Now **Talk to the Bot** and see the response.
<img src="../images/talk-to-bot-ontology.png" alt="talk to bot ontology" title="talk to bot ontology" style="border: 1px solid gray; zoom:75%;">

## Traits

**Use Case**

**User**: _I lost my card, how do I apply for another debit card?_
**Bot**: _How do I apply for a debit card?_.

<img src="../images/kg-trait.png" alt="kg trait" title="kg trait" style="border: 1px solid gray; zoom:75%;">

While this is a valid response it is not the right one. Ideally, since the user said _I lost my card_ bot must direct the user to report a stolen card.

**Solution**: Traits. Traits are used to get additional information from user utterance and direct the user to a better solution.

To add traits, follow the steps below:

1. First, add this question as an alternate question to “_How do I report a stolen card?_”

<img src="../images/add-trait-ontology.png" alt="add trait ontology" title="add trait ontology" style="border: 1px solid gray; zoom:75%;">

<ol start="2"><li><strong>Save</strong> and <strong>Train</strong> the bot.</li>
<li><strong>Talk to bot</strong> and ask the same question. You will get the same response.</li>
<li>Now let us see how to add Trait.</li>
<li>Define Trait with the steps below: 
<ul> 
<li>From the <strong>more</strong> option next to the <strong>Train</strong> button, select the <strong>Manage Traits</strong> option.</li>

<img src="../images/manage-traits-ontology.png" alt="manage traits ontology" title="manage traits ontology" style="border: 1px solid gray; zoom:75%;">

<li>Click <b>New Trait</b> to create a new trait.</li>
<li>Give a <b>Trait Type</b> and add <b>Traits</b> to it. Here, let us consider <i>Issues</i> as Trait Type and <i>lostcard</i> as the trait.</li>
<li>Add <i>lost my card</i> as the <b>utterance</b> that triggers this trait. (Do not forget to hit enter after you add the utterance).</li>

<img src="../images/add-lost-my-card-utterance.png" alt="add lost my card utterance" title="add lost my card utterance" style="border: 1px solid gray; zoom:75%;">

<li><b>Save</b> and <b>Train the trait</b>.</li></ul>
<li>Click <b>Apply Trait</b>.
<ul><li>From the ontology, go to the <b>Issues</b> node <b>Settings</b> page.</li>
<li>Add <i>lostcard</i> as <b>Trait</b> (pick from the drop-down list).</li>

<img src="../images/select-trait-from-dropdown.png" alt="select trait from list" title="select trait from list" style="border: 1px solid gray; zoom:75%;">

<li><b>Save</b> and <b>Train</b> the Knowledge Graph.</li>
<li><b>Talk to the Bot</b> and try the same question. Now you will get the expected response.</li>

<img src="../images/kg-bot-trait.png" alt="kg bot trait" title="kg bot trait" style="border: 1px solid gray; zoom:75%;"></ul></ol> 
