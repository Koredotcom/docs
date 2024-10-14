# Manage FAQs

FAQs allow you to add question-answer sets to your Knowledge Graph and map them to related ontology terms. This feature improves intent recognition and increases the performance of your VA.

!!! Warning "Important"

    There is a limit of 50k FAQs over 20k nodes to avoid performance issues.

All features explained here are supported by the Few-Shot Knowledge Graph, except for the following:

* Adding the Root Term/Node without an ontology structure. However, you can create one to improve intent detection.
* Default terms. The only exception is when you switch from an Ontology Graph, in which case existing Default terms are stored as such until updated. Afterward, Default terms become Organizer terms and can be set as Mandatory.
* Lemmatization using Parts of Speech Search in Answer and Contextual Paths Qualification. Please see the Knowledge Graph Types Comparison Table for a detailed list of supported features.
* Path Level and Knowledge Graph Synonyms are only supported for Mandatory Terms and for Tags.

## Add FAQs
To add an FAQ, follow the below steps:

1. Go to **Virtual Assistant** > **Knowledge AI** > **FAQs** > **Manage KG**. 
2. Click **Add Intent** on the top-right.
<img src="../images/add-faq-intent.png" alt="add faq intent" title="add faq intent" style="border: 1px solid gray; zoom:75%;">

3. On the **Intent** window, select **FAQ**.
4. In the **Add Question** field, enter the question that describes the user’s query.
5. (Optional) If there are alternatives to the same question, add them in the **+ Alternate Question** field. Repeat the step for all the alternative questions you want to add.
6. (Optional) Use patterns to define the FAQs. This can be done by preceding the pattern with || (two vertical bars) in the alternate question field. The Platform marks these as patterns and evaluates them accordingly. [Learn more](../../how-tos/build-a-banking-assistant/train-the-assistant/use-patterns-for-intents-and-entities.md){:target="_blank"}.
7. (Optional) Add terms that enable the Knowledge Graph Engine to identify questions more effectively.
8. (Optional) Enter a **Display Name** to represent the FAQ to the end-users.
9. In the **Bot Response** field, add the bot's default responses when the user asks the FAQ.
10. (Optional) If there are alternate responses, add them in the **+ Alternate Response** field. Repeat the step for all the alternative responses you want to add.
11. If you want to add condition-based responses for the FAQ, enable the **Conditional Response** toggle and provide the details. Learn more about [conditional responses](../knowledge-ai/manage-faqs.md#faq-conditional-responses). 
12. (Optional) Add a **Reference Id**. This field is used to reference any external content used as a source for this FAQ.
13. (Optional) Enable or disable the **Intent Status** for the FAQ intents. The Knowledge Graph does not use the FAQs intents that are disabled. These intents do not participate in the intent recognition process during testing and end-user interaction.

<img src="../images/add-faq-form.gif" alt="add faq form" title="add faq form" style="border: 1px solid gray; zoom:75%;">

As you enter these questions, pay attention to terms that you can further add to your FAQ hierarchy. [Learn more](knowledge-graph-terminology.md).

## Manage Default Responses

For the FAQ Response, you can compose a simple or complex channel-specific reply. The editor is like any other prompt editor on the Platform, for example, messages for dialog nodes. [Learn more](../use-cases/dialogs/prompt-editor.md#prompt-editor){:target="_blank"}.

You can add channel-specific responses to questions in your Knowledge Graph. By creating varying responses with different language and formatting options, you can leverage the dynamic responses on the selected channels. 

To add a channel-specific response, select the channel from the channels list before typing the response.

!!! Note

    We recommend adding one response for All Channels so that it is triggered in the absence of a channel-specific response.

**Handling Lengthy Reponses and Improving Readability**

Sometimes the FAQ responses are quite lengthy or may include nice-to-have information along with the primary response. To improve the readability of such responses, you can do one of the following:

* Split information into easy-to-read chunks that go as separate messages in a sequence by clicking **Add Extended Response** on the top-right of the **Bot Response** window.

* Select **Add Alternate Response** if your question can have more than one answer. Repeat the step for all the alternative responses you want to add. At runtime, the platform picks one response at random.

## Add FAQs from an Existing Source

When the Knowledge Graph you are trying to build is large and complex, it's important to have all the FAQs in one place and Import or Extract them as required. 

Adding FAQs from an existing source is the most effective method to implement in this case. The different ways to accomplish this include the following:

* Use the Knowledge Graph Generator to generate Knowledge Graph from a FAQ list and import it to your VA. [Learn more](generate-a-knowledge-graph.md){:target="_blank"}.
* Select the **Import** option to import a Knowledge Graph exported from another VA. [Learn more](import-and-export-knowledge-graph.md#import){:target="_blank"}.
* Leverage an existing list of Q&As from **Knowledge Extraction** to populate the Questions and Responses. [Learn more](knowledge-extraction.md){:target="_blank"}.

## Move FAQs Between Nodes

You can move one or more Questions and Response sets between nodes in your Knowledge Graph, with the steps below:

1. On the Knowledge Graph, click the name of the node from which you want to move the FAQ. The intents associated to the node display on the right pane.
2. Identify the FAQ that you want to move, and select the checkbox next to it. You can select multiple items.
3. Drag the FAQ and drop it on the relevant node. The node is highlighted and the FAQ displays on the right pane of the node.

The demo below shows you how this works.
<img src="../images/move-faq-to-new-node.gif" alt="move faq between nodes demo" title="move faq between nodes demo" style="border: 1px solid gray; zoom:75%;">

## Edit FAQs and Responses

1. From the nodes hierarchy, select the relevant term.
2. FAQs associated with the term appear on the right pane.
3. Hover over the Question or Response to edit it and click the **edit** icon.
4. Make changes to the Question or Response and click **Save**.
5. You can delete the Question using the **bin** icon.
<img src="../images/edit-delete-faq-responses.png" alt="edit or delete faq responses" title="edit or delete faq responses" style="border: 1px solid gray; zoom:75%;">
Selecting multiple intents lets you delete them in bulk.
<img src="../images/delete-multiple-intents.png" alt="delete selected intents" title="delete selected intents" style="border: 1px solid gray; zoom:75%;">

## FAQ Conditional Responses

The FAQ Conditional Responses feature allows you to provide dynamic responses to FAQs so that you can provide personalized, context-aware responses to your users.

### How Do Conditional Responses Work?

When the conditional responses are present, it works as follows:

1. The platform identifies the appropriate FAQ using the regular process based on the selected model, training, and alternate questions.
2. Once the FAQ is identified, the conditions are evaluated in the order they're defined.
3. If a condition is met, its corresponding response is selected.
4. If no conditions are met, the default response is used.
5. The platform prioritizes channel-specific responses for both conditional and default responses.
     * Channel-Specific Priority
        * If a condition is met and has a response for the user's channel, that response is used. For example, if the user interacts via MS Teams and the first condition is passed Which has two responses, one for “MS Teams” and one for "All Channels", the MS Teams response will be delivered.
     * "All Channels" Fallback
        * If conditional responses are available for Slack and All Channels, the "All Channels" response will be delivered on MS Teams.
     * Condition Skipping
        * If the conditional responses are for Slack and Twitter only, the platform skips the conditional response and checks the next condition. If no conditions match, the default response is delivered.
     * Default Response Selection
        * For default responses, the platform first attempts to select a channel-specific response. If none is available, the default "All Channels" response will be presented.


!!! example "Example Scenarios"

      Let's consider an FAQ about shipping options for an e-commerce platform. The condition will be based on the customer's location, a simple variable that can be easily compared using the "Equals To" operator.

      **Conditions and Responses**

      Condition: Customer Location Equals To "United States"

      * Web: "We offer free standard shipping on orders over $50 within the United States. Express shipping is available for $15."
      *   Mobile: "Free shipping on $50+ orders in the US. Express: $15. Tap for details."

      Condition: Customer Location Equals To "Canada"

      * Web: "We offer flat-rate shipping to Canada for $10. Free shipping is available on orders over $100."
      * Mobile: "Canada shipping: $10 flat rate. Free on $100+ orders. Tap for info."

      Condition: Customer Location Equals To "United Kingdom"

      * Web: "Shipping to the UK is £5 for standard delivery. Free shipping on orders over £75."
      * Mobile: "UK shipping: £5 standard. Free on £75+ orders. Tap for options."

      Default (No condition met):

      * Web: "International shipping rates vary. Please check our shipping page for detailed information on rates and delivery times."
      * Mobile: "Int'l shipping rates vary. Tap here for your location's rates and times."
      * All Channels: "Shipping options depend on your location. Please contact our customer service for specific shipping information."

      **Scenarios**

      Let's see how the answers/responses are selected in different scenarios:

      Scenario 1: Customer from the United States accessing via Web

      * Condition "Customer Location Equals To United States" is satisfied for the Web.
      * Selected Response: "We offer free standard shipping on orders over $50 within the United States. Express shipping is available for $15."

      Scenario 2: Customer from Canada accessing via Mobile

      * Condition "Customer Location Equals To Canada" is satisfied for Mobile.
      * Selected Response: "Canada shipping: $10 flat rate. Free on $100+ orders. Tap for info."

      Scenario 3: Customer from the United Kingdom accessing via Web

      * Condition "Customer Location Equals To United Kingdom" is satisfied for the Web.
      * Selected Response: "Shipping to the UK is £5 for standard delivery. Free shipping on orders over £75."

      Scenario 4: Customer from France accessing via Mobile

      * Channel-specific as well as "All Channels" conditions are not satisfied.
      * Selected Response (default): "Int'l shipping rates vary. Tap here for your location's rates and times."


### Best Practices 

When creating your conditional responses:

* Identify the most important factors for your FAQ (e.g., location, time, user metadata like customer type, products/services, etc).
* Create specific conditions for these factors.
* Order your conditions from most to least specific 
* Use AND logic for more specific scenarios OR logic for wider coverage.
* Always provide a default response for cases where no conditions are met. 
* When using variables from the context object to define the conditional responses, it is recommended to have these variables as part of the ‘BotUserSession’ (context.session.BotUserSession) as they will be available across the session between the user and the bot.  

### Limitations 

* A maximum of 10 conditions are allowed per FAQ. 
* A maximum of up to 10 nested rules are allowed per condition.
* It is not recommended to create too many conditions or nested rules, as this can make the graph overly complex and difficult to manage.

### Setting Up Conditional Responses 

1. Navigate to the FAQ management section in your dashboard. 
2. Select the FAQ you want to enhance with conditional responses. 
3. Toggle to enable the **Conditional Response** switch.  
<img src="../images/conditional-response.png" alt="conditional-response" title="conditional-response" style="border: 1px solid gray; zoom:75%;">

4. Define conditions based on content, context, and environmental variables. The condition must be defined properly without any discontinuation.
For example: `context.session.Usercontext.emailID Equals To xxx@xmail.com`
5. Select an appropriate operator from the dropdown list: Exists, Does Not Exist, Equals To, or Not Equals To. 
6. Enter the value to compare against. 
7. To add multiple rules to a condition, choose AND/OR logic.
8. Under each condition, enter your response text in the **Then Response** section.
9. Optionally, specify channel-specific variations of the response by selecting the channel from the dropdown menu of **All Channels.**

!!! note "Important Points"

    1. When a new app is created, it will only use the Fewshot model. However, if an old app or a bot converted to an app is imported, the model may be set to Ontology. To verify this, navigate to **Natural Language** > **NLU config** > **Knowledge Graph** > **KG type** and check for the Fewshot model.
    2. Ensure to save and train the FAQ after each creation or edit. Without training, the changes will not be reflected in the RTM. The updates will only be visible in the end channel after publishing.
    3. Enabling **Conditional Response** removes any existing extended responses.
    4. Disabling the **Conditional Response** will permanently erase all data entered in the conditional responses, and this action is irreversible.
    5. Ensure the context, environment, or content variables are created before implementing the **Conditional Response**.
    6. **Conditional Responses** are included only when the Knowledge Graph is exported in JSON format. Conditional responses are not supported in the CSV format. 