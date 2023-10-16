# **Manage FAQs**

FAQs allow you to add question-answer sets to your Knowledge Graph and map them to related ontology terms. This feature improves intent recognition and increases the performance of your VA.

> **Important**: There is a limit of 50k FAQs over 20k nodes to avoid performance issues.

All features explained here are supported by the Few-Shot Knowledge Graph, except for the following:

* Adding the Root Term/Node without an ontology structure. However, you can create one to improve intent detection.
* Default terms. The only exception is when you switch from an Ontology Graph, in which case existing Default terms are stored as such until updated. Afterward, Default terms become Organizer terms and can be set as Mandatory.
* Lemmatization using Parts of Speech Search in Answer and Contextual Paths Qualification. Please see the Knowledge Graph Types Comparison Table for a detailed list of supported features.
* Path Level and Knowledge Graph Synonyms are only supported for Mandatory Terms and for Tags.

# Add FAQs
To add an FAQ, follow the below steps:

1. On the left pane of the **Knowledge Graph** window, click the node to which you want to add questions.
2. Click **Add Intent** on the top-right.

![add faq intent](../usecases/images/add-faq-intent.png "add faq intent")

3. On the **Intent** window, under the **Intent** section, select **FAQ**.
4. (Optional) Enter a **Display Name** to represent the FAQ to the end-users.
5. In the **Add Question** field, enter the question that describes the user’s query.
6. (Optional) If there are alternatives to the same question, add them in the **Add Alternate FAQ** field. Repeat the step for all the alternative questions you want to add.
7. (Optional) Use patterns to define the FAQs. This can be done by preceding the pattern with || (two vertical bars) in the alternate question field. The Platform marks these as patterns and evaluates them accordingly ([see here for more on patterns](https://developer.kore.ai/docs/bots/how-tos/how-to-use-patterns-for-intents-entities/)).
8. (Optional) Add terms that enable the Knowledge Graph Engine to identify questions more effectively.
9. (Optional) Enable or disable the **Intent Status** for the FAQ intents. The Knowledge Graph does not use the FAQs intents that are enabled. These intents do not participate in the intent recognition process during testing and end-user interaction.
10. (Optional) Enable or disable the **Term Status**. The Knowledge Graph uses only the enabled terms. The disabled terms and all their FAQ intents do not participate in the intent recognition process during testing and end-user interaction.
11. (Optional) Add a **Reference Id**. This field is used to reference any external content used as a source for this FAQ.
![add faq form](../usecases/images/add-faq-form.png "add faq form")

As you enter these questions, pay attention to terms that you can further add to your FAQ hierarchy. [Learn more](https://developer.kore.ai/docs/bots/bot-builder-tool/knowledge-task/creating-a-knowledge-graph/?preview_id=18007&preview_nonce=70f4e3338c&post_format=standard&_thumbnail_id=-1&preview=true#).


# Manage Bot Responses

For the FAQ Response, you can compose a simple or complex channel-specific reply. The editor is like any other prompt editor on the Platform, for example, messages for dialog nodes. [Learn more](https://developer.kore.ai/docs/bots/bot-builder-tool/dialog-task/prompt-editor/). 

You can add channel-specific responses to questions in your Knowledge Graph. By creating varying responses with different language and formatting options, you can leverage the dynamic responses on the selected channels. 

To add a channel-specific response, select the channel from the channels list before typing the response.

> **Note**: We recommend adding one response for All Channels so that it is triggered in the absence of a channel-specific response.

**Handling Lengthy Reponses and Improving Readability**

Sometimes the FAQ responses are quite lengthy or may include nice-to-have information along with the primary response. To improve the readability of such responses, you can do one of the following:

* Split information into easy-to-read chunks that go as separate messages in a sequence by clicking **Add Extended Response** on the top-right of the **Bot Response** window.

* Select **Add Alternate Response** if your question can have more than one answer. Repeat the step for all the alternative responses you want to add. At runtime, the platform picks one response at random.

# Add FAQs from an Existing Source

When the Knowledge Graph you are trying to build is large and complex, it's important to have all the FAQs in one place and Import or Extract them as required. 

Adding FAQs from an existing source is the most effective method to implement in this case. The different ways to accomplish this include the following:

* Use the Knowledge Graph Generator to generate Knowledge Graph from a FAQ list and import it to your VA. [See here for the steps](https://developer.kore.ai/docs/bots/bot-builder-tool/knowledge-task/generation-of-ontology/).
* Select the **Import** option to import a Knowledge Graph exported from another VA. [See here for more](https://developer.kore.ai/docs/bots/bot-builder-tool/knowledge-task/importing-the-bot-ontology-from-csv-or-json/).
* Leverage an existing list of Q&As from **Knowledge Extraction** to populate the Questions and Responses. [See here for more](https://developer.kore.ai/docs/bots/bot-builder-tool/knowledge-task/knowledge-extraction-service/).


# Move FAQs Between Nodes

You can move one or more Questions and Response sets between nodes in your Knowledge Graph, with the steps below:

1. On the Knowledge Graph, click the name of the node from which you want to move the FAQ. The intents associated to the node display on the right pane.
2. Identify the FAQ that you want to move, and select the checkbox next to it. You can select multiple items.
3. Drag the FAQ and drop it on the relevant node. The node is highlighted and the FAQ displays on the right pane of the node.

The demo below shows you how this works.
![move faq between nodes demo](../usecases/images/move-faq-to-new-node.gif "move faq between nodes demo")

# Edit FAQs and Responses

1. From the nodes hierarchy, select the relevant term.
2. FAQs associated with the term appear on the right pane.
3. Hover over the Question or Response to edit it and click the **edit** icon.
4. Make changes to the Question or Response and click **Save**.
5. You can delete the Question using the **bin** icon.
![edit or delete faq responses](../usecases/images/edit-delete-faq-responses.png "edit or delete faq responses")

Selecting multiple intents lets you delete them in bulk.
![delete selected intents](../usecases/images/delete-multiple-intents.png "delete selected intents")

