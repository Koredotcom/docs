# Intent Scoping using Group Node

Node groups are primarily used for defining a group of nodes and representing them  on the dialog canvas. Note that it is not a part of the dialog flow.

Node groups can be used to improve the user experience with follow-ups, digressions, and amending entity values. For a use case example, click <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-banking-assistant/deploy-the-assistant/intent-scoping-using-group-node/" target="_blank">here</a>.

## Add a Node Group

To add a node group to the dialog task, follow the below steps:

1. **Open the Dialog Task** where you want to add the Group node.
2. **Group the nodes**. For steps in grouping nodes, click <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/dialogs/using-the-dialog-builder-tool/" target="_blank">here</a>.
3. Once created, you cannot add or remove specific nodes from the group.
    * Any node you add is added outside the group.
    * Any node you delete is deleted from the entire dialog.
    * Deleting a group will not delete the nodes within the group from the dialog.
    * If you want to change the nodes contained within a group, you need to delete the respective group, then to recreate it.

## Configure a Node Group

The Group Node functionality includes the following:

* **Scoping of Intents** – ability to define the sub-intents to be made available when the user is waiting at any of the nodes in the group:

* **Sub-intent Training** – the ability to train the sub-intent;
* **Sub-intent Properties** – ability to define the behavior of the sub-intent.

### Sub-Intent Scoping

Using Node Groups you can scope the sub-intents that are to be allowed to be identified from the user utterance and executed while the user is at one of the nodes within the group.

1. Hover over the group you want to scope the intents for and click the settings (gear) icon.
<img src="../images/sub-intent-scoping.png" alt="sub-intent scoping" title="sub-intent scoping" style="border: 1px solid gray; zoom:75%;">

2. From the Node Group window, select **Add Intent** to add intents that should be part of this group’s scope.
3. From the _Add Intent_ window, select the intent to be scoped as a sub-intent for this Node Group. This would be the intent that a user might ask for when the conversation is at any of the nodes in this group. For example, asking “_How is the weather at XYZ city_” when prompted for the destination entity or asking for _“Flight times”_ when prompted for the travel date.
4. You can choose to add new sub-intents using the **Create Intent** button.
<img src="../images/create-intent-button.png" alt="create intent button" title="create intent button" style="border: 1px solid gray; zoom:75%;">

5. Once added you can train, set behavioral properties and/or delete a scoped intent.

### Sub-Intent Training

Once added, each of the sub-intent can be trained for recognition within this group. This would ensure that the sub-intent is identified in the group’s context.

* From the **Group settings** page, select the sub-intent you want to train.
    * You can train the sub-intent with the following:
        * **Machine Learning** – Add the user utterances that should identify this sub-intent. You can also use the NER approach to annotate entities in the utterances.
        * **Patterns** – Identify patterns in the user utterance related to this sub-intent.
        * **Rules** – Define intent identification rules to trigger this intent.
    * You can also set the **Intent Preconditions** i.e. the sub-intent would get identified only when any of the preconditions defined is available in the context at the time of intent detection. These pre-conditions will be considered as instance levels and would take precedence over the component level pre-conditions.
    <img src="../images/sub-intent-training.png" alt="sub-intent training" title="sub-intent training" style="border: 1px solid gray; zoom:75%;">
 
### Sub-Intent Properties 

The **fulfillment** section can be used to define the actions when this particular sub-intent is identified from the user input. It includes the following properties:

* **Context Variables** – Set the key-value pairs to define the session or context variables to be updated when this sub-intent is identified. If you want to reset the values, you need to use the keyword “null”, spaces would be ignored by the platform.
* **Present a Message** – Optionally, define a message to be presented to the user when this sub-intent is identified. As with other responses, you can define the message as plain text, JavaScript format, specify, and set <a href="https://docsinternal-kore.github.io/docs/xo/channels/call-properties/" target="_blank">Voice Call Properties</a>, where applicable.
* **Context Output** – Define the context tags to be set when this intent is identified. The intent name is always set as output context by the system. If you want to reset the values, you need to use the keyword “null”, spaces would be ignored by the platform.
* **Transition Flow** – Use this option to define how the dialog should resume after executing this sub-intent. There are two behaviors you can define:
    * **Jump To A Node** – The dialog will resume from the node selected here.
    * **Resume The Dialog** – The dialog will resume from the node where this intent was identified.
    
    <img src="../images/transition-flow.png" alt="transition flow" title="transition flow" style="border: 1px solid gray; zoom:75%;">
 
## Implementation Steps

The following are the changes in sub-intent behavior within a group:

1. For every sub-intent identified, the context object will be updated with an array of objects with the identified sub-intent details with the latest at the top. The following information is captured:
    * Name of the sub-intent;
    * Entities that are identified along with the sub-intent;
    * Name of the group to which the sub-intent belongs, where applicable;
    * Name of the node at which the sub-intent is identified.

    ```
    "identifiedSub-Intents": [ 
    { 
    "intent": "Change Destination", 
    "entities": { 
    "destcity": "Delhi" 
    }, 
    "groupName": "Entity Group", 
    "identifiedAt": "to_date" 
    }, 
    { 
    "intent": "Weather Report", 
    "groupName": "Entity Group", 
    "identifiedAt": "destcity" 
    }
    ]
    ```

<ol start="2"><li>The intent would be executed if the sub-intent identified from the user utterance is within the group scope and all the input preconditions are satisfied and the transition flow directs to the concerned node.</li>
<li>The execution of sub-intents would involve:</li>
    <ul><li>Updated  context variables as per the defined mapping.</li>
    <li>Setting the Output Context as per the defined mapping.</li>
    <li>Presenting the message to the user, if applicable.</li></ul>
<li>The current dialog execution should continue as per the transition flow defined.</li>
    <ul><li>Jump to the specified node</li>
    <li>Resume from the point where the sub-intent was identified.</li></ul></ol>