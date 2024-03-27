# Travel VA: Build a Knowledge Graph

This article shows you how to build and understand the working of a Knowledge Graph for your Virtual Assistant. It shows how to convert an FAQ into ontology, add tags, use terms, add alternate questions, synonyms, tags, and traits.

For details on the implementation process, please click <a href="https://docsinternal-kore.github.io/docs/xo/answers/knowledge-ai/knowledge-graph-overview/#the-ontology-knowledge-graph" target="_blank">here</a>.

Throughout this use case article, we will be building a Knowledge Graph for a Travel Planning Assistant. This article discusses both the basic setup of a Knowledge Graph, but also the solutions at hand for cases of ambiguity.

## Static FAQ

To add a static FAQ, follow the steps below:

1. Open the **Travel Planning** Assistant.
2. Navigate to **Build** > **Conversational Skills** > **Knowledge Graph**.
3. Click **Create** to create a Knowledge Graph.
4. A Knowledge Graph with the name set to your VAt’s Name is created.
5. Click **Add Intent** to start entering your FAQs.
6. Select **Intent** type as FAQ.
7. **Add Question** and **Bot Response**. Then, click **Save**.
<img src="../images/add-static-faq.png" alt="add static faq" title="add static faq" style="border: 1px solid gray; zoom:75%;"> 

8. Click **Add Intent** on the top-right to add more FAQs.
9. After you enter all the FAQs, click **Train** to train the Knowledge Graph.
<img src="../images/train-faq.png" alt="train faq" title="train faq" style="border: 1px solid gray; zoom:75%;"> 

10. Click **Talk to Bot** at the bottom-right to check the response for the added FAQs.

## Tags

Tags help filter the FAQs based on the presence of some key phrases in the user utterance. This helps identify the intent more efficiently and prevents the assistant from providing users with irrelevant responses. We recommend adding tags to every question, unless you have a large list of FAQs. 

In this case, you need to create an Ontology (see below for details). To add tags to an FAQ:

1. Hover over the Question then click the **Edit** icon.
2. In the **Add tag** text box, suggestions from the XO Platform are displayed based on the phrases present in the question. Pick one suggestion from the list or type your own custom tag.
3. **Train** the assistant.
4. Click **Talk to the Bot** and use an utterance that points to the FAQ you added tags to. Formulate the request in different ways, to find potential tags to add.
<img src="../images/add-tags.gif" alt="add tags" title="add tags" style="border: 1px solid gray; zoom:75%;"> 

## Ontology

For a better response, you must add tags for every question. But this solution is not feasible in case we have a big list of FAQs or questions with common tags. Ontologies help in this situation because they rely on key words and frequently occurring words/phrases to organize FAQs in groups and subgroups. 

Each group can be a node in the ontology. You can have multiple levels of the nodes forming a hierarchical structure. Moving the relevant FAQs (intents) to the nodes will associate that FAQ with the corresponding node name set as a tag.

Here is an example Ontology: 

**Reservation**

* **Make**: *How do I pay for my booking?*
* **Update**: *How do I update my booking?*
* **Cancel**: *Can I cancel my reservation?*

To create an ontology, follow the steps below:

1. Hover over the Knowledge Graph name on the left pane and click the <b>+</b> icon to <b>Add Child Node</b>. For example, we can add a node for questions related to international travel, and one for reservation related questions.

<img src="../images/add-child-node.png" alt="add child node" title="add child node" style="border: 1px solid gray; zoom:75%;">

<ol start="2"><li>To add subgroups, hover over the node and click the corresponding <b>+</b> icon to add child nodes.</li>

<img src="../images/add-subgroup.png" alt="add subgroup" title="add subgroup" style="border: 1px solid gray; zoom:75%;">

<li>Repeat the process for related questions.</li>
<li>To add questions to your newly created ontology, select them from your list of FAQs, then drag and drop them onto the relevant node. You will notice the path gets updated accordingly.</li>

<img src="../images/add-faq-to-node.gif" alt="add faq to node" title="add faq to node" style="border: 1px solid gray; zoom:75%;">

<li>Edit a question and see that the node name is added as a tag. This ensures that this question is qualified for a user utterance containing the term/node name.</li></ol>

<img src="../images/edit-ontology-question.png" alt="edit ontology question" title="edit ontology question" style="border: 1px solid gray; zoom:75%;">

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>The tags you added earlier are retained and you can delete them, whereas the node names cannot be deleted from the tags list.</p></div>

<ol start="6"><li>You can further add nodes to your Ontology. The image below shows you the Ontology that we will be working with moving forward.</li>
<img src="../images/ontology-example.png" alt="ontology example" title="ontology example" style="border: 1px solid gray; zoom:75%;">
<li>Train the Knowledge Graph and use <b>Talk to Bot</b>. There should not be any changes in the responses.</li></ol>

## Term Usage

By default, the node names or terms are used in evaluating the path and coming up with a set of qualifying questions. You can tighten or relax this rule by either making the term mandatory in the utterance or marking the term/node as organizer respectively.

 **Use Case 1**: You want to ensure that the intentions regarding **_Cancel Reservation_** must be considered only when the user asked a direct question regarding the topic.

To address this case, we mark the term **_Cancel_** as **Mandatory**. This helps improve the assistant’s performance.

**Steps to Execute the Use Case**

1. Hover over the node, in this case, **cancel**, and click the **settings icon**.
2. From the **Settings** section, select the **Mandatory** option from the dropdown next to the term name.
3. **Save** and **Train** the Knowledge Collection.
4. Now the questions under this node are considered only if the user utterance has the node name, _cancel_ in this case.
<img src="../images/term-usage-use-case-1.png" alt="term usage use case 1" title="term usage use case 1" style="border: 1px solid gray; zoom:75%;"> 

 **Use Case 2**: Consider the following FAQs that need to be added to the Knowledge Graph.

* Contact
    * Who do I contact in case of an issue?
    * What is your helpline number?
* Complaints
    * Where can I register my query/complaints?
* Issues
    * How do I report a problem?

Though they do not have any phrases or terms in common, they are related to _Customer Care_. For ease of understanding, we can put them under a node by the same name and mark it as **Organizer** node, ensuring that the intents get qualified without the need to have the term phrase in the user utterance.

**Steps to Execute the Use Case**

1. Create a node called **_Customer Care_**.
2. Create the above three nodes as child nodes to this new node.
3. Hover over the node, in this case, **Customer Care**, and click the **Settings** icon.
4. From the **Settings** page, select the **Organizer** option.
5. **Save** and **Train** the Knowledge Collection.
6. Now the questions under this node are considered even if the user utterance does not include the node name.
<img src="../images/term-usage-use-case-2.png" alt="term usage use case 2" title="term usage use case 2" style="border: 1px solid gray; zoom:75%;"> 

## Synonyms

**Use Case**: If you test the VA for _How do I make a booking_. While your Knowledge Graph contains _How do I make a reservation?_ you might get a suggestive match that is not definitive. The reason is that the assistant does not understand _booking_ as being the same as _reservation_.

To add Synonyms, follow the steps below:

1. Hover over the **reservation** node and click the **Settings** icon.
2. In the **Path Level Synonyms**, add **booking**. Path level synonyms are useful in such cases because they apply to all nodes.
3. Click **Save** and **Train** the VA.
4. Click **Talk to Bot** and use the same query _How do I make a booking?_.
5. Similarly, we can define **Knowledge Graph Synonym** if it is applicable to the entire knowledge graph.

## Alternate Questions

Some questions have multiple ways the user can approach them.

* Is there a way to see my reservation details from my laptop?
* Is there a mobile app that I can use to access my reservation?

Both of these questions pertain to one intent: _How do I access my reservation online?_. But instead of adding all these Q&As as intents and repeat the response and the settings, if any, you can add these questions as alternate questions.

To add alternate questions, follow the steps below:

1. Hover over the question, in this case, _How do I access my booking online?_ and click the **Edit** icon.
2. In the **Add alternate question** text field, enter the question.
3. Add the queries mentioned above.
<img src="../images/alternate-questions.png" alt="alternative question" title="alternative question" style="border: 1px solid gray; zoom:75%;"> 

4. Click **Save**, **Train**, and **Talk to the Bot**.
5. Entering any of the above three questions will yield the same response as the question _How do I access my reservation online?_

## Task Execution

Consider the query _How do I check my flight status?_. If the VA has a task that can give the balance, we can direct the user to it, instead of asking the user to use the utterance to trigger the task.

To trigger a task, follow the steps below:

1. Before proceeding, ensure that you have a Dialog Task defined for **_Check Flight Status_**. Let us consider a dummy dialog that displays a message. Learn more on adding tasks by reading <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/dialogs/using-the-dialog-builder-tool/" target="_blank">Using the Dialog Builder</a>.
2. Click **Add Intent** _How do I check my flight status?_
3. Set **Intent** to _Task_.
<img src="../images/set-task-intent.png" alt="set task intent" title="set task intent" style="border: 1px solid gray; zoom:75%;"> 

4. From the drop-down list select the _Check Flight Status_ Dialog Task.
5. Click **Save** and **Train** the Knowledge Graph.
6. Select **Talk to bot** with the utterance _How do I check my flight status?_ will trigger the _Check flight_ status task.

## Ontology Tags 

**Use Case**: When asking the VA _Does your airline support mobile check in?_ the response might be: Did you mean _How do I check in online?_.

The reason for this might be that: _Does your airline support mobile check in?_ is a very close match to _How do I check online?_. You can avoid such situations by adding a tag _(i.e.: mobile)_ and marking it as mandatory to the alternate question _Does your airline support mobile checkin?_

To add Tags, follow the steps below:

1. Edit the question _How do I check in online?_
2. For the alternate question: _Does your airline support mobile check in?_ follow the steps below:

    * Add the tag **_mobile_**.
    <img src="../images/add-mobile-tag.png" alt="add mobile tag" title="add mobile tag" style="border: 1px solid gray; zoom:75%;"> 

    * Click the tag to open **Tag Settings**, then set **Tag Usage** to **_Mandatory_**.
        <img src="../images/mandatory-tag-settings.png" alt="mandatory tag settings" title="mandatory tag settings" style="border: 1px solid gray; zoom:75%;"> 

    * Click **Done**.
3. Click **Save** and **Train** the VA.
4. Click **Talk to the Bot** and see the response.

## Traits

**Use Case**: _I lost my boarding pass, how do I get another boarding pass?_

You will get the response for _How do I get a boarding pass?_

While this is a valid response it is not the right one. Ideally, since the user said _I lost my boarding pass, the assistant_ must direct the user to information that helps them regenerate their boarding pass.

**Traits** are used to get additional information from the user utterance and direct the user to a better solution.

To add traits, follow the below steps:

<ol><li>From the <b>more</b> option next to the <b>Train</b> button, select the <b>Manage Traits</b> option.
<img src="../images/select-manage-trait.png" alt="manage trait" title="manage trait" style="border: 1px solid gray; zoom:75%;"> </li>
<li>Click <b>New Trait</b> to create a new trait.
<li>Select the <b>Trait Type</b> and add <b>Traits</b> to it. Here, let us consider <b><i>Issues</i></b> as Trait Type and <b><i>lostpass</i></b> as Trait.
<li>Add “<i>lost my boarding pass</i>" as the utterance that triggers this trait. (Do not forget to hit enter after you add the utterance).</li>
<li>Click <b>Save</b> and <b>Train the trait</b>.
<img src="../images/save-and-train-trait.png" alt="save and train trait" title="save and train trait" style="border: 1px solid gray; zoom:75%;"></li>
<li>Apply Trait with  the steps below:</li></ol>
<ul><li>From the ontology, go to the <b>Issues</b> node <b>Settings</b> page.</li>
<li>Add <b><i>lostpass</i></b> as the trait (pick from the drop-down list).</li>
<li>Click <b>Save</b> and <b>Train</b> the Knowledge Graph.</li>
<li>Click <b>Talk to the Bot</b> and try the same question. Now you will get the expected response.
<img src="../images/add-trait-to-node.png" alt="add trait to node" title="add trait to node" style="border: 1px solid gray; zoom:75%;"></li></ul>

In this document you have seen various settings for building and managing a Knowledge Graph. For details regarding the implementation and functionality of Knowledge Graph, click <a href="https://docsinternal-kore.github.io/docs/xo/answers/knowledge-ai/knowledge-graph-overview/#the-ontology-knowledge-graph" target="_blank">here</a>.
