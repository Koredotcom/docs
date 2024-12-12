
# Business Rules

AI for Work enables users to define business rules by setting rules for entity selection and responses based on keywords. Business Rules are guidelines or policies that ensure that the generated answers meet the specific criteria and align with the organization's goals.

Users can find the Business Rules section in the Admin Console, where all the business rules of published custom integrations in the account will be listed. Users have two options for creating business rules:

1. **Entity Rule**
2. **Answering Rule**

## Answering Rule

Answering rules allow you to specify the response to display when a query relates to a particular topic. These rules rely on keywords; when specific keywords are detected in a user's input, users can customize the answer displayed accordingly. This section contains two fields:

* **Connection**: The toggle option allows users to specify whether a rule is connection-specific or independent: when toggled on, the rule requires a custom connection selection and triggers only if both the bot connection and keyword match; when toggled off, it remains keyword-specific and independent of any connection.
* **Rule:** Users can type a rule that includes a question and specify how it should be answered.

### Build Flow

* **Topic**: Extracted from the question and cannot be modified.
* **Answer**: Generated from the rule. Users can modify the answer if required.

<img src="../images/business-rule-answer.png" alt="business-rule-answer" title="business-rule-answer" style="border: 1px solid gray; zoom:80%;">

## Entity Rule

Entity rules rely on connections and keywords to define which entities are filled in a query when specific keywords are detected in the user's input. When connection intents match and contain these keywords, certain entities are prefilled based on user-defined rules. This section includes two fields that allow users to specify criteria for entity selection.

* **Connection**: Users can select any available custom connection.
* **Rule**: Write the rule in detail, then click the **Build Flow** to proceed.

### Build Flow

1. Click **Build Flow** to convert the rule into a flow, which includes:  
    * **Condition**: Specific keywords that trigger the rule.
    * **Entity (Field Name) > Operator > Value**: Specifies which entity should be filled in the query when keywords match.
        * **Entity**: Click this to see all the available fields in the connection.
        * **Operator**: Based on field type, applicable operators will be displayed.
        * **Value**: The value will be either a text field or a dropdown based on the field type.

        Users can add multiple entities by clicking the “**And**” or “**Or**” buttons.

2. Click **Test Rule** to see a sample utterance filled in the compose bar, ready for execution.
3. Click Activate to activate the rule.

<img src="../images/business-rule-entity.png" alt="business-rule-entity" title="business-rule-entity" style="border: 1px solid gray; zoom:80%;">

## Split Query Rule

These rules rely on connections and questions.

* **Connection**: Users can select any available custom connection.
* **Rule**: Users can type the rule for how they want to break down or split the question.

### Build Flow

* **Condition**: The trigger leading to the breakdown.
* **Action**: Describes how a compound action is broken down into sequential actions. (Action 1, Action 2, etc.).

Click the **Add Action** button to add multiple actions.
