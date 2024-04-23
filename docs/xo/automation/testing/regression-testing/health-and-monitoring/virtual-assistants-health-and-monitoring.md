# Virtual Assistant Health and Monitoring

The **Health and Monitoring** dashboard offers a goal-driven approach to improving the accuracy of the virtual assistant’s Natural Language Processing (NLP) model. The training data is analyzed along with the test coverage and test results of the test suites to provide insights into the NLP Model’s performance.

This dashboard lets you achieve the following:

* Run the test suites against the in-development version of the bot to see the Virtual Assistant’s health.
* Review the test execution summary for every intent type.
* Drill down and view the coverage and key metrics of the virtual assistant determined by the Batch Test and Conversation Test executions.
* Identify incorrect intent patterns, short training utterances, incorrect entity annotations, and training recommendations and take corrective action.
* View the expected and matched results, and the detailed NLP analysis.
* Tag specific test case results that need follow-up actions and collaborate with your team to improve the performance.

!!! note

    The Health & Monitoring Dashboard is available only post 9.3 release, i.e. post-July 24, 2022.
    This feature only considers the latest In-development test executions.



## Navigating to Health and Monitoring

To navigate to the **Health and Monitoring** dashboard, follow these steps:

1. Click **Health & Monitoring** tab under **Testing** > **Regression Testing** in the left navigation menu.  
<img src="../images/hm-1.png" alt="Health and Monitoring dashboard" title="Health and Monitoring dashboard" style="border: 1px solid gray; zoom:50%;"/>

## Dashboard Sections and Components

The **Health and Monitoring** Dashboard is divided into two sections that include the following:

1. **NLP**: This panel extracts all test suite results from Batch Testing and presents insights into your test cases with performance analytics. The key components of this panel include the execution summary, the **key performance metrics**, and the **total test coverage** of the selected test suites for the Dialog intents, FAQs, Small Talks, and Traits. The key [recommendation scores](#health-and-monitoring-metrics) presented here depict if your virtual assistant is trained sufficiently or not.
2. **Flow**: This panel summarizes the coverage of all the conversation flows by the Virtual Assistant you’ve defined including its performance, intents’ coverage and transitions. [Learn more](../flow-health-dashboard/){:target="_blank"}. The key components of the **Flow** panel include transition coverage and intent summary panels for the test suites. [Learn more](../flow-health-dashboard/#flow-dashboard-components){:target="_blank"}.



## Health and Monitoring Metrics

### NLP Intent Coverage Metrics

The following metrics extracted from Batch Testing results are displayed in two ways:

1. As aggregate values in the **Bot Health** summary section.  
<img src="../images/hm-2.png" alt="aggregate values" title="aggregate values" style="border: 1px solid gray; zoom:50%;"/>  
  

2. As individual scores in the **Dialog Intents**, **FAQs**, **Small Talk**, and **Traits** summary panels.  
<img src="../images/hm-3.png" alt="individual scores" title="individual scores" style="border: 1px solid gray; zoom:50%;"/>

* **Accuracy**: Determines if the intent identified by your ML model is correct or not.
* **F1 Score**: Classifies the distribution and balances precision and recall scores. It is calculated as the weighted average of Precision and Recall.
* **Precision Score**: Defines how precise/accurate your model is and is calculated as the ratio of true positives over total predicted positives (sum of true and false positives).
* **Recall Score**: Defines the fraction of the relevant utterances that are successfully identified and is calculated as the ratio of true positives over actual positives (sum of true positives and false negatives).
* **Total Test Coverage %**: The average of the Total Test Coverage scores for **Dialog Intents**, **FAQs**, **Small Talk**, **Traits**, and **Entities**.

These metrics help gain actionable insights into your test cases to perform [ML Model Validation](../../../../natural-language/training/model-validation/){:target="_blank"}.


### Flow Health Metrics

The Flow Health metrics display all the test suite results from the conversation testing and present insights into your test cases with performance analytics. [Learn more](../flow-health-dashboard/#flow-metrics){:target="_blank"}.


## Test Cases Detailed Analysis

To get the detailed NLP data of all the test cases executed for all the test suites that are considered in the VA, click the **View Test Cases** link in the **NLP** section.

<img src="../images/hm-4.png" alt="detailed NLP data" title="detailed NLP data" style="border: 1px solid  gray; zoom:50%;"/>


The **Test Cases- Detailed Analysis** window displays test results for Intents, Entities, and Traits as described below. The summary data helps identify the errors or areas of improvement for each category and fix them.


### Navigating to the Test Case Details Section

To view the **Details** section, in the **Test Cases – Detailed Analysis** window, click the **Intents**, **Entities**, or **Traits** tab. A summary table with the following details is displayed:

**Intents**

* **Test Cases**: The test case name.
* **Intent Type**: Displays if the intent is a Dialog intent, FAQ, or Small Talk.
* **Expected Intent**: Intent expected in the user utterance.
* **Matched Intent**: Intent actually matched in the utterance.
* **Result Type**: Displays if the match detected is _True Positive_, _False Positive_, or _False Negative_.
* **Tags**: The tag labeled for the conversation by the analyst.

<img src="../images/hm-5.png" alt="Intents" title="Intents" style="border: 1px solid  gray; zoom:50%;"/>
  
  
**Entities**

A summary table with the following details is displayed:

* **Utterances**: The user utterance captured in the test case.
* **Entity Name**: The entity name mapped to the test case for the utterance.
* **Expected Value**: The Entity expected in the user utterance.
* **Matched Value**: The Entity actually matched in the utterance.
* **Entity Result**: Displays if an entity is matched (_True_), or not (_False_).
* **Tags**: The tag labeled for the conversation by the analyst.  
<img src="../images/hm-6.png" alt="Entities" title="Entities" style="border: 1px solid  gray; zoom:50%;"/>


**Traits**

A summary table with the following details is displayed:

* **Test Cases:** The test case of the trait.
* **Intent Type:** Displays Trait.
* **Trait Name:** The name of the trait analyzed in the test case.
* **Expected Trait:** The trait expected in the user utterance.
* **Matched Trait:** Displays the actual trait matched in the utterance.
* **Trait Result:** Displays if the match detected is True Positive, False Positive, or False Negative.
* **Tags:** The tag labeled for the conversation by the analyst.

<img src="../images/hm-7.png" alt="Traits" title="Traits" style="border: 1px solid  gray; zoom:50%;"/>


**Tags**

After analyzing the reason for failure, you can collaborate with your team members using tags for test case executions. **Tags** are labels mapped to the test case results of intents, entities, and traits, indicating follow-up actions or suggestions.

The following tags are available for intents, entities, and traits:

* **Add Negative Pattern**: Indicates that the user has to add a negative pattern to the intent/entity/trait test execution.
* **NeedNLPHelp**: Indicates that the test execution requires explicit NLP help.
* **Needs Negative Pattern**: Indicates that the intent/entity/trait test execution needs a negative pattern to execute as expected.
* **Needs Training**: Indicates that the virtual assistant needs training for the identified intent/entity/trait after the test execution.
* **New Intent**: Indicates a new intent during test execution.

Hover over the desired entry, and click the **detailed view** icon.  
<img src="../images/hm-8.png" alt="Test cases detailed analysis" title="Test cases detailed analysis" style="border: 1px solid  gray; zoom:50%;"/>

A sliding window with the test results for the selected test case and intent type appears.

**Intent and Entity Details**  
<img src="../images/hm-9.png" alt="Intent and Entity Details" title="Intent and Entity Details" style="border: 1px solid  gray; zoom:50%;"/>



**Trait Details** are displayed in the test case details window if you select the **trait** intent type.  
<img src="../images/hm-10.png" alt="Trait Details" title="Trait Details" style="border: 1px solid  gray; zoom:50%;"/>



Click the **expansion arrow** icon under **Entity** to view the entity order expected by the ML engine and the actual entity order.  
<img src="../images/hm-11.png" alt="Entity" title="Entity" style="border: 1px solid  gray; zoom:50%;"/>



#### NLP Analysis

The **NLP Analysis** section displays the detailed view of the historic analysis generated at the time of the test case execution for failed and successful test cases. For the selected intent type, this section gives an overview of the intents that are qualified (the definitive and probable matches) and disqualified to serve as crucial information for users trying to decode the reason for failed test cases. The following details are displayed as a graphical representation in this section:

* [Traits](../../../../natural-language/training/traits){:target="_blank"} (if applicable)
* [Machine Learning (ML) engine](../../../testing-your-bot-with-nlp/#ml-model){:target="_blank"}
* [Fundamental Meaning (FM) engine](../../../testing-your-bot-with-nlp/#fm-model){:target="_blank"}
* [Knowledge Graph (KG) engine](../../../testing-your-bot-with-nlp/#knowledge-graph){:target="_blank"}
* [Trait Rule](../../../../natural-language/training/traits/#trait-association-rules){:target="_blank"} (if applicable)
* [Ranking and Resolver](../../../testing-your-bot-with-nlp/#ranking-and-resolver)

This is different from analyzing the test results under **Utterance Testing** where the current analysis information is displayed based on the changes to the trained data. [Learn more](../../../testing-your-bot-with-nlp/#analyzing-the-test-results){:target="_blank"}.

To view the **NLP Analysis** section, follow these steps:

1. Please follow **steps 1 to 3** mentioned in the [Navigating to the Test Case Details](#navigating-to-the-test-case-details-section) section.
2. Click the **NLP Analysis** tab as shown below:  
    <img src="../images/hm-12.png" alt="NLP Analysis" title="NLP Analysis" style="border: 1px solid  gray; zoom:50%;"/>



## Test Suite Summary

For **Flow Health**, clicking the **View Test Suites** link displays the following details:

* Test Suite
* Result
* Duration
* Test Cases
* Pass
* Fail
* Not Executed
* Pass percentage

Please click [here](../flow-health-dashboard/#flow-metrics){:target="_blank"} to learn more about Test Suite Performance and Test Coverage Analysis.



#### Utterance Testing

Based on the test case failures, you can retrain your virtual assistant using the **Utterance testing** option for all possible user utterances and inputs. Training is how you enhance the performance of the NLP engine to prioritize one task or user intent over another based on the user input. To learn more, please refer to this [link](../../../testing-your-bot-with-nlp/){:target="_blank"}.

To navigate to the **Utterance Testing** window, click the **go to utterance testing** (magic wand) icon on the **Test Cases – Detailed Analysis** page.  
<img src="../images/hm-13.png" alt="go to utterance testing" title="go to utterance testing" style="border: 1px solid  gray; zoom:50%;"/>


In the **Utterance Testing** window shown below, you can do the following:

* Test & [Train](../../../testing-your-bot-with-nlp/#training-the-assistant){:target="_blank"} your virtual assistant based on these [recommendations ](../../../../natural-language/training/machine-learning-engine/#training-recommendations){:target="_blank"} to understand different user utterances and match them with intents and entities.
* View the **NLP analysis** flow and **Fields/Entities** analysis data including the confidence score based on the NER training.
* Use the **Mark as an incorrect match** link to match the user input with the right intent when it is mapped to an incorrect task.  
  <img src="../images/hm-14.png" alt="Utterance Testing window" title="Utterance Testing window" style="border: 1px solid  gray; zoom:50%;"/>


## Dialog Intent Summary

This section provides the performance metrics, test coverage and analytics for only the **Dialog Intents** test cases.  
<img src="../images/hm-15.png" alt="Dialog Intent Summary" title="Dialog Intent Summary" style="border: 1px solid  gray; zoom:50%;"/>

The sub-sections available include:

### Test Coverage

This section displays the count and percentage of the intents covered and not covered. You can find the list of intents not covered using the **View details** option and start adding test cases for them. An Intent is considered as covered when the intent has at least one test case in the selected test suite(s).


### NLP Performance Metrics

This section gives the breakdown of the test case results for the given intent type. The result type could have one of the following values:

* **True Positive (TP)**: Percentage of utterances that have correctly matched expected intent.
In the case of Small Talk, it would be when the list of expected and actual intents are the same.
In the case of Traits, this would include the traits matched over and above the expected matches.
* **False Positive (FP)**: Percentage of utterances that have matched an unexpected intent. In the case of Small Talk, it would be when the list of expected and actual intents are different.
* **False Negative (FN)**: Percentage of utterances that have not matched expected intent. In the case of Small Talk, it would be when the list of expected Small Talk intent is blank but the actual Small Talk is mapped to an intent.

**Recommendation Notification**: Shows any training recommendations available for the dialog intents.

The test execution results for the selected test suite(s) and intent type can be analyzed in the details window which provides a drill-down view of the following performance metrics for intents, entities, and traits

<style>
table, th, td {
  border: 1px solid black;
}
</style>
<table>
  <tr>
   <td><strong>METRIC NAME</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
   <td><strong>INTENT</strong>
   </td>
   <td><strong>ENTITY</strong>
   </td>
   <td><strong>TRAIT</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Expected Intent/Value</strong>
   </td>
   <td>Please refer to Intents in <a href="#navigating-to-the-test-case-details-section">this</a> section.
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td><strong>Matched Intent/Value</strong>
   </td>
   <td>Please refer to Intents in <a href="#navigating-to-the-test-case-details-section">this</a> section.
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td><strong>Parent Intent</strong>
   </td>
   <td><a href="../../../../intelligence/sub-intents-and-follow-up-intents" target="_blank">Learn more</a>.
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td><strong>Task State</strong>
   </td>
   <td>The status of the intent or task against which the intent is identified. Possible values include <strong>Configured</strong> or <strong>Published</strong>.
<br>
.
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td><strong>Result Type</strong>
   </td>
   <td>Please refer to Intents in <a href="#navigating-to-the-test-case-details-section">this</a> section.
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td><strong>Matched Intent Score and Expected Intent Score</strong>
   </td>
   <td>Displays the individual scores for the following
<ul>

<li><a href="../../../testing-your-bot-with-nlp/#ml-model" target="_blank">Machine Learning (ML) score</a>

<li><a href="../../../testing-your-bot-with-nlp/#fm-model" target="_blank">Fundamental Meaning (FM) score</a>

<li><a href="../../../testing-your-bot-with-nlp/#ranking-and-resolver" target="_blank">Ranking and Resolver (RR) score</a>
</li>
</ul>
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td><strong>Entity Name</strong>
   </td>
   <td>Please refer to Entities in <a href="#navigating-to-the-test-case-details-section">this</a> section..
   </td>
   <td>No
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td><strong>Result</strong>
   </td>
   <td>Returns <strong><em>True</em></strong> if an entity is identified and <strong><em>False</em></strong> if not.
   </td>
   <td>No
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td><strong>Identified by</strong>
   </td>
   <td>The NLU engine that identified the entity.
   </td>
   <td>No
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td><strong>Identified using</strong>
   </td>
   <td>The reference entity type that was used to identify the entity during test execution.
   </td>
   <td>No
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td><strong>Confidence Score</strong>
   </td>
   <td>A score to determine if the test execution resulted in a favorable outcome (high score) or not (low score) when an utterance is trained for the entity.
   </td>
   <td>No
   </td>
   <td>Yes
   </td>
   <td>No
   </td>
  </tr>
</table>



## Dialog Intent Flow Health

Please refer to this [link](../flow-health-dashboard/#dialog-intent-summary){:target="_blank"} for more information.

The following sections can be accessed from the **Dialog Intent Summary** panel:


### Conversation Test Results Analysis

Please refer to this [link](../flow-health-dashboard/#conversation-test-results-analysis){:target="_blank"} for more information.


### Transitions Coverage

Please refer to this [link](../flow-health-dashboard/#transitions-coverage){:target="_blank"} for more information.


### View Intents Summary

Please refer to this [link ](../flow-health-dashboard/#view-intent-summary){:target="_blank"} for more information.

View Recommendations

You can view relevant training recommendations for dialog intents, FAQs, or Small Talks when errors and warnings are triggered during the test execution. To view the recommendations summary, click **View Recommendations** on the top right of the details page.

To view the details of the utterance validations, errors, warnings, and recommendations and correct them, click the **Recommendations** column.  
<img src="../images/hm-16.png" alt="Recommendations" title="Recommendations" style="border: 1px solid  gray; zoom:50%;"/>



## Viewing Specific Test Results

To know how to get the drill-down view of a specific NLP test case execution, please refer to the [Test Cases – Detailed Analysis](#test-cases-detailed-analysis) section.


### NLP- FAQs Summary

The **FAQ Summary** section displays the [recommendation scores](#health-and-monitoring-metrics) generated for FAQs from the latest batch test executions.  
<img src="../images/hm-17.png" alt="FAQ Summary" title="FAQ Summary" style="border: 1px solid  gray; zoom:50%;"/>  



**Viewing Additional FAQ Recommendations**: For **FAQ Details**, clicking **View Recommendations** will display the report that was already run during the previous run time. To know how to view and manage additional recommendations, please refer to this [link](../../../../natural-language/training/training-validations/#how-to-use-the-nlu-validate-model){:target="_blank"}.  
<img src="../images/hm-18.png" alt="Viewing Additional FAQ Recommendations" title="Viewing Additional FAQ Recommendations" style="border: 1px solid  gray; zoom:50%;"/>

<img src="../images/hm-19.png" alt="Report" title="Report" style="border: 1px solid  gray; zoom:50%;"/>  

**Knowledge Graph**: Clicking this button will take you to the **Knowledge Graph** section where you can perform [KG Analysis](../../../../../answers/knowledge-ai/knowledge-graph-analysis){:target="_blank"}.  
<img src="../images/hm-20.png" alt="Knowledge Graph button" title="Knowledge Graph button" style="border: 1px solid  gray; zoom:50%;"/>


<img src="../images/hm-21.png" alt="Knowledge Graph window" title="Knowledge Graph window" style="border: 1px solid  gray; zoom:50%;"/>


### Flow- FAQs Summary

Please refer to this [link](../flow-health-dashboard/#faqs-summary){:target="_blank"} for more information.


### NLP- Small Talk Summary

The **Small Talk Summary** panel displays the [recommendation scores](#health-and-monitoring-metrics) generated for Small Talk interactions from the latest batch test executions.  
<img src=../images/hm-22.png alt="Small Talk Summary" title="Small Talk Summary" style="border: 1px solid  gray; zoom:50%;"/>  


**Small Talk button**: Click this button to view the group name and the relevant user utterances, and Bot utterances.  
<img src="../images/hm-23.png" alt="Small Talk button" title="Small Talk button" style="border: 1px solid  gray; zoom:50%;"/>


### Flow- Small Talk Summary

Please refer to this [link](../flow-health-dashboard/#small-talk){:target="_blank"} for more information.


## Trait and Entity Summary Information

The **Trait Summary** and **Entity Summary** sections display the [recommendation scores](#health-and-monitoring-metrics) generated for traits and entities respectively from the latest batch test executions.

**Trait Summary**  
<img src="../images/hm-24.png" alt="Trait Summary" title="Trait Summary" style="border: 1px solid  gray; zoom:50%;"/>  


**Entity Summary**  
<img src="../images/hm-25.png" alt="Entity Summary" title="Entity Summary" style="border: 1px solid  gray; zoom:50%;"/>  


**Test Coverage and Test Results Analysis**

Please refer to [Test Coverage](#test-coverage) and [Test Results Analysis](#nlp-test-results-analysis) for information on the sub-sections of these summary panels.


## NLP Batch Test Results Summary for Universal Bots

The XO Platform now displays batch test results for Universal bots for each test run in the summary view for [FAQs](#nlp-faqs-summary), [Dialog Intents](#dialog-intent-summary), and [Small Talk](#nlp-small-talk-summary) during Batch Testing. The actionable insights help understand the test coverage and NLP performance for each intent type in the Universal Bot.

The only difference between Standard and Universal Bots is that the insights derived are based on the intents of all the linked bots. For instance, the intent coverage is based on the comparison of the intents covered in the test suite and the total number of intents present in all the linked bots. 


### Test Suite Summary

The **Test Suite Summary** for the Universal Bot is the same for Dialog Intents, FAQs, and Small Talk. However, for the Universal Bot, the system takes the total number of respective intents in all the linked bots as the denominator to calculate the coverage metrics.



### Intent Summary

The **NLP Intent Summary** sections are the same for Universal Bots, except the **Recommendations** information is not displayed for **Dialogs** and **FAQs**, as shown below:  
<img src="../images/hm-26.png" alt="NLP Intent Summary" title="NLP Intent Summary" style="border: 1px solid  gray; zoom:50%;"/>



### Dialog Intents

The **Dialog Intent Details** page for Universal Bot summarizes the following information:

* Intent Name
* Bot Name
* Training Utterance
* Test Cases
* [NLP performance metrics](#nlp-performance-metrics): TP, FP, FN, and F1.
* [Coverage metrics](#nlp-intent-coverage-metrics): Precision, Recall, and Accuracy.
* Covered In (The Test Suites that cover the intent).  
<img src="../images/hm-27.png" alt="Dialog Intent Details" title="Dialog Intent Details" style="border: 1px solid  gray; zoom:50%;"/>  


Please refer to [Intent Details Window](#intent-details-window) for more information on the above values.

**Note**: The **Recommendations** option is not available for Universal Bot on this page.

To view the intents not covered on the **Dialog Intent Details** page, click the **Three-dotted/Ellipses** icon and select **_View Intents Not Covered_**.  
<img src="../images/hm-28.png" alt="Dialog Intent-Intents Not Covered" title="Dialog Intent-Intents Not Covered" style="border: 1px solid  gray; zoom:50%;"/>  


In the **Not Covered Intents** List, you can view the respective Bot Name, as shown below. This helps analyze which Bots don’t identify the tested intents and improve test execution accordingly.  
<img src="../images/hm-29.png" alt="Dialog Intent-Not Covered Intent" title="Dialog Intent-Not Covered Intent" style="border: 1px solid  gray; zoom:50%;"/>


The **Search** and **Filter** options help select specific intents not covered by a Bot.


### FAQ

The **FAQ Details** page for Universal Bot summarizes the following information:

* Intent Name
* Bot
* Path
* Alt Question
* Test Cases
* [NLP performance metrics](#nlp-performance-metrics): TP, FP, FN, and F1.
* [Coverage metrics](#nlp-intent-coverage-metrics): Precision, Recall, and Accuracy.
* Covered In (The Test Suites that cover the intent).  
<img src="../images/hm-30.png" alt="FAQ Details" title="FAQ Details" style="border: 1px solid  gray; zoom:50%;"/>  
  

Please refer to [Intent Details Window](#intent-details-window) for more information on the above values.

!!! note

    The 'Knowledge Graph' and 'Recommendations' options are not available for Universal Bot on this page.

To view the intents not covered on the **FAQ Details** page, click the **Three-dotted/Ellipses** icon and select **_View Intents Not Covered_**.  
<img src="../images/hm-31.png" alt="FAQ-Intents Not Covered" title="FAQ-Intents Not Covered" style="border: 1px solid  gray; zoom:50%;"/>    


In the **Not Covered Intents** List, you can view the respective Bot Name, as shown below.  
<img src="../images/hm-32.png" alt="FAQ-Not Covered Intents" title="FAQ-Not Covered Intents" style="border: 1px solid  gray; zoom:50%;"/>  
  

### Small Talk

The **Small Talk Details** page for Universal Bot summarizes the following information:

* Intent
* Group
* Bot
* Test Cases
* [NLP performance metrics](#nlp-performance-metrics): TP, FP, FN, and F1.
* [Coverage metrics](#nlp-intent-coverage-metrics): Precision, Recall, and Accuracy.
* Covered In (The Test Suites that cover the intent).  
<img src="../images/hm-33.png" alt="Small Talk Details" title="Small Talk Details" style="border: 1px solid  gray; zoom:50%;"/> 

Please refer to [Intent Details Window](#intent-details-window) for more information on the above values.

!!! note

    The 'Small Talk' option is not available for Universal Bot on this page.

To view the intents not covered on the **Small Talk Details** page, click the **Three-dotted/Ellipses** icon and select **_View Intents Not Covered_**.  
<img src="../images/hm-34.png" alt="Small Talk-Intents Not Covered" title="Small Talk-Intents Not Covered" style="border: 1px solid  gray; zoom:50%;"/> 


In the **Small Talk-Intents Not Covered** List, you can view the respective Bot Name, as shown below.  
<img src="../images/hm-35.png" alt="Small Talk-Small Talk-Intents Not Covered" title="Small Talk-Small Talk-Intents Not Covered" style="border: 1px solid  gray; zoom:50%;"/> 


## Intent Details Window

The **View Details** link in the Dialog intent, FAQ, and Small Talk summary sections provides access to a drill-down view of the key performance metrics and recommendations of the covered intents.

The given data helps identify the intent-related issues proactively in the training phase itself to work on fixing them accordingly.  
<img src="../images/hm-36.png" alt="Intent Details" title="Intent Details" style="border: 1px solid  gray; zoom:50%;"/> 

Here’s what you can do:

**View the Training Data Summary**

You can view the training data summary with the relevant recommendation metrics for Dialog Intents, FAQs, and Small Talks in the details panel.  
<img src="../images/hm-37.png" alt="Training Data Summary" title="Training Data Summary" style="border: 1px solid  gray; zoom:50%;"/>  


The summary of all the metrics displayed is given below:


<table border="1">
  <tr>
   <td><strong>RECOMMENDATION METRIC</strong>
   </td>
   <td><strong>DIALOG INTENT</strong>
   </td>
   <td><strong>FAQ</strong>
   </td>
   <td><strong>SMALL TALK</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Intent</strong>
   </td>
   <td>The name of the dialog intent.
   </td>
   <td>The name of the FAQ intent.
   </td>
   <td>The name of the Small Talk intent.
   </td>
  </tr>
  <tr>
   <td><strong>Utterances</strong>
   </td>
   <td>The count of the training utterances for that intent.
   </td>
   <td>N/A
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td><strong>Test Cases</strong>
   </td>
   <td>The count of the test cases that are present in the selected test suites for that intent.
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td><strong>True Positive (TP)</strong>
   </td>
   <td>The count of the intent test cases that resulted in TP.
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td><strong>False Negative (FN)</strong>
   </td>
   <td>The count of the intent test cases that resulted in FN.
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td><strong>False Positive (FP)</strong>
   </td>
   <td>The count of the intent test cases that resulted in FP.
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td><strong>Covered In</strong>
   </td>
   <td>Name of the test suites in which the intent test cases are present.
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td><strong>F1, Accuracy, Precision, and Recall scores</strong>
   </td>
   <td>These <a href="#health-and-monitoring-metrics">recommendation scores</a> are displayed based on the outcomes.
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td><strong>Recommendations</strong>
   </td>
   <td>Displays the count of training recommendations for that intent. Clicking on it will display the summary of the training recommendations and their probable corrective actions.
   </td>
   <td>N/A
   </td>
   <td>N/A
   </td>
  </tr>
  <tr>
   <td><strong>Group</strong>
   </td>
   <td>N/A
   </td>
   <td>N/A
   </td>
   <td>The group to which the Small Talk interaction is mapped.
   </td>
  </tr>
  <tr>
   <td><strong>Path</strong>
   </td>
   <td>N/A
   </td>
   <td>The node path in the Knowledge Graph.
   </td>
   <td>N/A
   </td>
  </tr>
  <tr>
   <td><strong>Alt Question</strong>
   </td>
   <td>N/A
   </td>
   <td>The number of alternative questions mapped to an FAQ.
   </td>
   <td>N/A
   </td>
  </tr>
</table>

**View Intents Not Covered**

This feature helps identify the intents not covered so as to include them in the test data for better and holistic [testing of the virtual assistant](../../../testing-your-bot-with-nlp/#testing-the-assistant){:target="_blank"}. Click the **three-dot menu** on the right side of the panel to view the list of **intents not covered** in batch testing.  
<img src="../images/hm-38.png" alt="Training data-intents not covered" title="Training data-intents not covered" style="border: 1px solid  gray; zoom:50%;"/> 


You can include the intents from this list to retrain your virtual assistant and improve performance.  
<img src="../images/hm-39.png" alt="Training data-Not covered intents" title="Training data-Not covered intents" style="border: 1px solid  gray; zoom:50%;"/> 