# Composite Entities

**Composite Entities** help you capture multiple entity values in a user utterance. These multiple entity values are optional and come in any order in the user utterance.

Let us consider the below example:

A travel agency receives a typical request, which can be of the form:

_I am interested in traveling tomorrow from LA to NYC, first class, and I want a window seat._

In this query, the Virtual Assistant needs to process information such as: travel date, departure city, arrival city, flight class and seat preference, in order to respond to this enquiry.

Each of these multiple values or details comes from different independent entities. Composite Entities enable you to combine these independent entities or sub-entities. The sub-entities are identified based on the type of input given by the user. (For example, a composite entity can have two sub-entities: *phoneNumber* and *emailAddress*. When the user provides the input, the NLP engine understands it and maps it to the right sub-entity.)

## How it Works?

When a composite entity reaches the dialog flow:

* If the input is received as a JSON object, the input JSON object is added to the Context object under the corresponding entity without any analysis.
* If the input is received as a text input:
    * All the possible sub-entities from the defined composite entity patterns are identified.
    * All possible instances of those sub-entities are located in the user utterance and the location recorded.
    * The composite entity patterns are then evaluated to identify the specific pattern that matches the set of sub-entity instances captured.
* The composite entity pattern is not used to identify the sub-entities but to match the entire pattern.

## Composite Entity Patterns

These patterns help you to establish the relationship between the sub-entities. Sub-entities are included in the composite entity using the @ tag, i.e.,@subentity in the composite entity pattern. These sub-entities must be pre-defined and should not be part of the current dialog flow. The sub-entities come from other Dialog Tasks too.

Various patterns like AND, OR, etc. are built similar to the ones used in defining Entity Patterns. <a href="https://docsinternal-kore.github.io/docs/xo/automation/natural-language/training/fundamental-meaning/#add-patterns-for-entities" target="_blank">Learn more.</a>

The Composite Entity values take the form of a JSON object wherein the sub-entities are referenced as properties of that object, i.e. to access a sub-entity value, you can use: 

`{{context.entities.<<composite_entity>>.<<sub_entity>> }}`

You can access each of the sub-entities using the structure they are defined with, as they are accessed when used independently of the composite entity. For example, if the sub-entity is of the type _Airport_, then one can access the airport name as follows:

`{{context.entities.<<composite_entity>>.<<sub_entity>>.AirportName }}`

##  Create a Composite Entity

Building a composite entity involves the following steps:

1. Create sub-entities.
2. Establish a relationship between these sub-entities.

### Create Sub-Entities

Since the Composite Entity is a combination of other entities, you need to build individual entities in the dialog task. To capture the Flight Information from the above example, you must create sub-entities that capture the required details. Here is a sample mapping of sub-entities for a primary entity called _Flight_, for which we create a few sub-entities to capture relevant information:

<table border="1.5">
<tr bgcolor="#ECECEC">
   <td><strong>ENTITY</strong>
   </td>
   <td><strong>ENTITY TYPE</strong>
   </td>
  </tr>
  <tr>
   <td>Travel Date
   </td>
   <td>Date: To capture the travel date from the user utterance. The VA recognizes dates automatically.
   </td>
  </tr>
  <tr>
   <td>Departure City
   </td>
   <td>List of Items: To capture the name of the departure city  from the user utterance. As a developer, you must build this list in the entity.
   </td>
  </tr>
  <tr>
   <td>Arrival City 
   </td>
   <td>List of Items: To capture the name of the arrival city from the user utterance. As a developer, you must build this list in the entity.
   </td>
  </tr>
  <tr>
   <td>Class 
   </td>
   <td>List of items: : To capture the flight class from the user utterance. As a developer, you must build this list in the entity. 
   </td>
  </tr>
  <tr>
   <td>Seat Preference
   </td>
   <td>List of items: To capture the seat preference from the user. As a developer, you need to build the list in the entity. 
   </td>
  </tr>
</table>

!!!note

    Sub-entities can only be combined into a composite entity and are recommended not to use for any other purpose in the dialog task. If you are creating sub-entities in the current dialog task, remove all transitions to these sub-entities, so that they are not a part of the dialog task flow.

### Define a Composite Entity

Add a Composite Entity after a relevant node in the dialog task. To make this entity capture multiple entity values, you need to create Composite Patterns. To create, follow the steps below:

1. On the **Entity** window, click the **NLP Properties** tab.
2. On the **NLP Properties** tab, under the **Composite Patterns for Entity** section, add relevant patterns. The various patterns built are similar to the ones used in defining Entity Patterns. Click <a href="https://docsinternal-kore.github.io/docs/xo/automation/natural-language/training/fundamental-meaning/#navigate-to-the-patterns-tab" target="_blank">here</a> to learn more.

<img src="../images/define-composite-entity.png" alt="define composite entity" title="define composite entity" style="border: 1px solid gray; zoom:75%;">

For the above composite entity patterns, the following are the sample utterances and the output:

<table border="1.5">
<tr bgcolor="#ECECEC">
   <td>
<strong>SAMPLE UTTERANCE</strong>
   </td>
   <td><strong>CORRESPONDING PATTERN</strong>
   </td>
   <td><strong>OUTPUT</strong>
   </td>
  </tr>
  <tr>
   <td>I want to fly from LA to NY tomorrow, first class with a window seat.
   </td>
   <td>@departurecity @arrivalcity @traveldate @class @seatpreference
   </td>
   <td><code>"</code>
<p>
<code>"Flight": {</code>
<p>
<code>"Departure": "LA",</code>
<p>
<code>"Arrival": "NYC", "Date": tomorrow,</code>
<p>
<code>"class": 1,"Seatpreference": Window,</code>
<p>
<code>}</code>
<p>
<code>}</code>
   </td>
  </tr>
</table>


You can also define the _Synonyms_ and _Patterns_ as with any other entity.

### Limitations

* The Sub-entity with Description cannot be part of a composite entity.
* Make sure that the sub-entities are not part of the dialog flow in the task using the composite entity.
* If the sub-entity allows multi-items, the parent composite entity accepts only one value for the sub-entity and not a list.
* Normally, the NLP engine can identify and map user input to the correct sub-entity. However, when PII (Personal Identifiable Information) masking is applied to sensitive data, the NLP engine cannot interpret the masked input, making it impossible to determine which sub-entity (e.g., phone number or email address) the data corresponds to.
* The names of entities used in a composite entity must not start with a number.

## Passing Values

You can pass values to composite entities using the entity pre-assignment from source Dialog tasks, Click <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/dialogs/node-types/working-with-the-dialog-node/?h=dialog+no#instance-properties" target="_blank">here</a> for more information on entity pre-assignment.

In terms of composite entities following scenarios can be addressed:

1. **From composite to standard entity**: Works as long as the target is of the same entity type as the one used in the source composite. For example:

    `context.entities.targetMyCity` = `context.entities.sourceComposite.sourceTravelCity`

2. **From composite to composite**: As long as the target is of the same entity type as the one used in the source composite. For example:

    `context.entities.sourceComposite.destinationCity` = `context.entities.targetCompsite.myCity`

3. **From standard to composite**: As long as the target is of the same entity type as the one used in the source composite. For example,

    `context.entities.targetCompsite.myCity` = `context.entities.sourceCity`

Post v8.0.07, you can use the _Entity Pre-Assignments_ and _Entity Post-Assignments_ from the Dialog Node, Instance Properties as shown in the image below (the numbers in the below image correspond to the number in the above use case):

<img src="../images/test-composite-entity.png" alt="test composite entities" title="test composite entities" style="border: 1px solid gray; zoom:75%;">

## JSON Object for Composite Entity

In v8.0 of the platform, the Composite Entity is enhanced to handle the JSON object as input. This helps in handling the scenarios where the enabled channels send data as a JSON object. For example, MS Teams and Cisco Spark channels. The user input received from these channels is stored as a JSON object in the Context object under the respective composite entity name.

To enable the composite entity to handle JSON object data, do not add any _Patterns_ from the **NLP Properties** tab.
