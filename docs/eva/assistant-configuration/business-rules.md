
# Business Rules

AI for Work enables users to define business rules by setting rules for entity selection and responses based on keywords. Business Rules are guidelines or policies that ensure that the generated answers meet the specific criteria and align with the organization's goals.

Users can find the Business Rules section in the Admin Console, where all the business rules of published custom integrations in the account will be listed. Users have two options for creating business rules:

1. **Answering Rule**

2. **Entity Rule**

## Answering Rule

Answering rules allow you to specify the response to display when a query relates to a particular topic. These rules rely on keywords; when specific keywords are detected in a user's input, users can customize the answer displayed accordingly. This section contains two fields:

* **Connection**: The toggle option allows users to specify whether a rule is connection-specific or independent: when toggled on, the rule requires a custom connection selection and triggers only if both the bot connection and keyword match; when toggled off, it remains keyword-specific and independent of any connection.

* **Rule:** Users can type a rule that includes a question and specify how it should be answered.

## Entity Rule

Entity rules rely on connections and keywords to define which entities are filled in a query when specific keywords are detected in the user's input. When connection intents match and contain these keywords, certain entities are prefilled based on user-defined rules. This section includes two fields that allow users to specify criteria for entity selection.

* **Connection**: Users can select any available custom connection.

* **Rule**: Write the rule in detail, then click the **Build Flow** to proceed.
