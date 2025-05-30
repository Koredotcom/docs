
# Batch Testing - DialogGPT


## Overview

Batch Testing is a comprehensive testing framework designed to evaluate and validate the accuracy of intent detection of a virtual assistant.  It enables users to systematically test their virtual assistant’s ability to understand user requests across multiple conversation types including dialogs, FAQs, Knowledge (Search AI), and conversation intents. It also supports different model configurations and provides comprehensive performance metrics for both development and production environments.

Unlike traditional testing approaches, Batch Testing replicates the complete DialogGPT runtime pipeline, providing authentic performance insights that mirror real user interactions.

Key features


* End-to-End Pipeline Testing: Processes each utterance through the full retrieval and LLM workflow, mirroring real-world behavior to uncover issues static testing might miss.
* Model Configuration Flexibility: Supports testing across different combinations of embedding models and LLMs to identify the most effective configuration for your app.
* Granular Performance Insights: Measure accuracy, precision, recall, and F1 score across all conversation types, including Dialogs, FAQs, Knowledge, and Conversation Intents.
* Lifecycle Support: Enables batch testing for both in-development and published apps, supporting validation at any stage of the deployment lifecycle.


Supported Conversation Types



* Single Intent
* Multi Intent
* Small Talk
* Conversation Intent
* No Intent
* Ambiguous Intent
* Answer Generation


## How Batch Testing Works

Batch Testing replicates the actual runtime behavior by chaining retrieval and LLM calls, ensuring each test case goes through the complete conversation pipeline:



1. **Query Rephrasing** (if enabled)
2. **Chunk Qualification** from Dialogs, FAQs, and Search Index
3. **Semantic Similarity Matching** based on configured thresholds
4. **LLM Processing** for intent identification and fulfillment type determination

This approach provides dynamic testing that mirrors real user interactions, enabling accurate performance evaluation across different model configurations.

To access Batch Testing, navigate to **Automation AI** > **Virtual Assistant** > **Testing** > **Regression Testing** > **Batch Testing**. This can be accomplished in the following three steps.


## Step 1. Test Suite Creation

To conduct a batch test, you must create your own test suites. You can create test suites in two ways: either by uploading a CSV or JSON file or manually creating them. Each test suite comprises multiple test cases, which include key fields such as user utterance, expected intent, and fulfillment type.


### Uploading a File

This method enables you to add multiple test cases simultaneously. You can download the sample CSV or JSON file formats while creating the test suite.

Follow these steps:



1. Navigate to **Automation AI** > **Virtual Assistant** > **Testing** > **Regression Testing** > **Batch Testing**.
2. Click **+New test suite**.
3. Enter the test **Name** and **Description**.
4. Click **Upload File**. Select the file to upload and click **Add to Suite**.
5. Click **Create Suite**. The created test is displayed.


### Quick Entry

Add one test case at a time using a form. The form includes mandatory fields like User Utterance, Fulfillment Type, and Expected Intent. You can review and edit the test case before adding it to the test suite. If the fulfillment type is answer generation, the expected intent is automatically selected as answer generation.

Follow these steps:



1. Navigate to **Automation AI** > **Virtual Assistant** > **Testing** > **Regression Testing** > **Batch Testing**.
2. Click **+New test suite**.
3. Enter the test **Name** and **Description**.
4. Click **Quick Entry**.
5. Enter the **User Utterance**, select the **Fulfillment Category** and **Expected Intent**.
6. Click **Save and add another** to the next test cases or click **Add to suit**.
7. Click **Create Suite**. The created test is displayed.


## Step 2. Run Test Suite

After creating a new test suite, the execution stage runs the test suite through the complete retrieval and LLM pipeline, simulating live interactions using a set of model configurations to obtain the test results. You can run execution for both In-development and published versions. Additionally, you can add notes or reasons to record the purpose of the test run.

Follow these steps:



1. Navigate to **Automation AI** > **Virtual Assistant** > **Testing** > **Regression Testing** > **Batch Testing**.
2. Click **Run Test Suite** for the required suite.
3. Select the **App Version**, **Orchestration Model**, **Prompt**, and add **Notes** if required.

    !!! Note

        The embedding model cannot be changed. For testing purposes, the DialogGPT embedding model is used.
4. Click **Run Test** to start batch test execution. 
5. Once a batch test is completed, the results are displayed.


## Step 3. Results and Analysis

The Results and Analysis stage evaluates performance using standardized intent detection metrics. It presents all the batch test results conducted so far. It enables users to compare different combinations of **embedding** and **language models** and make data-driven decisions using key metrics such as **Accuracy**, **Precision**, **Recall**, **F1 Score,** and many others more.

Follow these steps:



1. Navigate to **Automation AI** > **Virtual Assistant** > **Testing** > **Regression Testing** > **Batch Testing** and click the Test Suit to view the tests.
2. Click the **summary icon** to view the result. You can also download the report as a CSV file or delete the results.  
<img src="../images/batch-test-dialoggpt6.png" alt="Batch Testing - DialogGPT" title="Batch Testing - DialogGPT" style="border: 1px solid gray; zoom:50%;"/>

3. The test result is displayed.  
<img src="../images/batch-test-dialoggpt1.png" alt="Batch Testing - DialogGPT" title="Batch Testing - DialogGPT" style="border: 1px solid gray; zoom:50%;"/>

4. Click **Configure View** to add or remove the displayed metrics. Select the metric and click **Apply**.  
<img src="../images/batch-test-dialoggpt5.png" alt="Batch Testing - DialogGPT" title="Batch Testing - DialogGPT" style="border: 1px solid gray; zoom:50%;"/>

5. Click any **Intent** to view Intent details.  
<img src="../images/batch-test-dialoggpt4.png" alt="Batch Testing - DialogGPT" title="Batch Testing - DialogGPT" style="border: 1px solid gray; zoom:50%;"/>

6. Click any **Test Case** to view test case details.  
<img src="../images/batch-test-dialoggpt2.png" alt="Batch Testing - DialogGPT" title="Batch Testing - DialogGPT" style="border: 1px solid gray; zoom:50%;"/>

7. Click **Conversation Orchestration** to request and response payload.  
<img src="../images/batch-test-dialoggpt3.png" alt="Batch Testing - DialogGPT" title="Batch Testing - DialogGPT" style="border: 1px solid gray; zoom:50%;"/>
