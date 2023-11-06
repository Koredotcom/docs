# **Create a Test Suite**

A Test Suite contains a collection of test cases grouped to simulate a specific conversation between the user and the bot and used anytime for test execution. You can know the execution status and determine and analyze the results in a test suite.

In Conversation testing, you can create the test suites in the following two different ways:

* [Record Conversation to Create a Test Suite](https://docsinternal-kore.github.io/docs/xo/automation/testing/regression-testing/conversation-testing/create-a-test-suite/#record-conversation-to-create-a-test-suite)
* [Upload File to Create a Test Suite](https://docsinternal-kore.github.io/docs/xo/automation/testing/regression-testing/conversation-testing/create-a-test-suite/#upload-file-to-create-a-test-suite)


## Record Conversation to Create a Test Suite

The option to record the test suite captures the metadata in the background which helps to test the flow sequence, transitions, and track the test coverage. The following step-by-step process explains how to record a conversation as a test suite, and validate and create the test cases.


### Record Test Suite

1. On the Conversation Testing page, click **New Test Suite**.
2. Click the **Record** option to start recording the new test.  
<img src="../images/ct-create-test-suite-record1.png" alt="Start recording New Test" title="Start recording New Test" style="border: 1px solid gray;"/>

3. In the displayed pop-up, click **Proceed** to record the test with the On-Connect event or click the **Skip On-Connect** button.  
<img src="../images/ct-create-test-suite-record2.png" alt="Recording Options" title="Recording Options" style="border: 1px solid gray;"/>  
    !!! note  
  
        "On-Connect" is the message you receive as soon as you open the chat window, even before you enter any message. The option is displayed for VAs with an On-Connect message. If you skip it, the On-connect message does not get added as a test case. If you click Proceed, then the On-connect message is created as a separate test case.      
        
4. The Chat window is displayed. The chat transcript is recorded and the recording status is displayed at the top. You can click **Stop** to stop the recording.  
<img src="../images/ct-create-test-suite-record-chat.png" alt="Chat Recording Status" title="Chat Recording Status" style="border: 1px solid gray;"/>  
  
!!! note

        If there is an error while recording due to any limitation set on the platform, it is displayed on the page.


#### Generated User Response Suggestions

If you have enabled [LLM and Generative AI](https://developer.kore.ai/docs/bots/nlp/llm-and-generative-ai/) for your Virtual Assistant, you will see User Response suggestions while recording a Conversation Test Case. 

This feature provides a regression tool that creates a conversation test suite for each intent (new and old) to evaluate the impact of a change on the conversation execution. It helps check if the task or intent is robust enough to handle random user utterances. 

It also helps you predict and simulate the end user’s behavior and check if the VA can execute all the defined flows by generating user responses and presenting any digressions from the specified intent.

Click any suggestion to send it to your VA and test the response.  
<img src="../images/ct-create-test-suite-suggestions.png" alt="Suggestions" title="Suggestions" style="border: 1px solid gray;"/>

You can refresh the suggestions list or minimize the suggestions panel. You can also talk to your VA by typing in your responses.  
<img src="../images/ct-create-test-suite-refresh-collapse.png" alt="Refresh suggestions" title="Refresh suggestions" style="border: 1px solid gray;"/>


### Validate Test Suite

The conversation is recorded and all the metadata at each test case is captured. Once the recording is completed, the Platform provides you an option to validate the test suite as follows:

1. Upon successful completion of recording, click **Validate Test Suite**.  
<img src="../images/ct-create-test-suite-record3.png" alt="Click Validate Test Suite" title="Click Validate Test Suite" style="border: 1px solid gray;"/>


<p id="gdcalert6" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image6.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert7">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image6.png "image_tooltip")
 \

2. The ongoing validation is displayed. You may click **Cancel** if you want to cancel the step or click **Continue in Background** to continue the validation as a background task. \


<p id="gdcalert7" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image7.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert8">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image7.png "image_tooltip")
 \

3. If you click **Continue in Background**, you can see the status in the top right corner of the landing page by clicking the **Draft** icon. \


<p id="gdcalert8" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image8.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert9">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image8.png "image_tooltip")


    ```
Note: "On-Connect" is the message you receive as soon as you open the chat window, even before you enter any message. The option is displayed for VAs with an On-Connect message. If you skip it, the On-connect message does not get added as a test case. If you click Proceed, then the On-connect message is created as a separate test case.
```


4. The Chat window is displayed. The chat transcript is recorded and the recording status is displayed at the top. You can click **Stop** to stop the recording. \


<p id="gdcalert9" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image9.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert10">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image9.png "image_tooltip")
 \


    ```
Note: If there is an error while recording due to any limitation set on the platform, it is displayed on the page.
```



 


#### Capture Test Suite Metadata

Using Conversation Testing, you can test the sequence of nodes executed by the VA for user input(s) and capture the following metadata at the time of test suite creation to verify if the VA is executing the conversation flows as expected:



* Intent ID, Intent Name
* Node ID, Node Name
* Transition flow

The metadata are captured in both [Record](https://docsinternal-kore.github.io/docs/xo/automation/testing/regression-testing/conversation-testing/create-a-test-suite/#record-conversation-to-create-a-test-suite) and [Upload](https://docsinternal-kore.github.io/docs/xo/automation/testing/regression-testing/conversation-testing/create-a-test-suite/#upload-file-to-create-a-test-suite) scenarios for all the VA responses of all the test suites. The details to be captured vary based on the intent type of the VA response. For more information on the details captured here, see [Test Editor](https://docsinternal-kore.github.io/docs/xo/automation/testing/regression-testing/conversation-testing/test-editor).


### Create Test Suite



1. Upon approval, a **Create Test Suite** pop-up is displayed in which you can enter the following details:
    * Test Suite Name
    * Description
    * Tags

     \
 \


<p id="gdcalert10" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image10.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert11">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image10.png "image_tooltip")
 \


2. You can either click **Create** to create the test suite or discard this step.
3. On clicking **Create**, the new test suite is created. You can click the **Run Test Suite** button to execute the test suite. \


<p id="gdcalert11" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image11.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert12">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image11.png "image_tooltip")
 \

4. The dialog **Before you execute the test Suite** is displayed. Select the version of your VA to be executed. If any authorization profiles are available, they are displayed here. \


<p id="gdcalert12" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image12.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert13">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image12.png "image_tooltip")
 \

5. Click **Continue** to continue the execution. The test cases execution progress is displayed on the top right corner of the page. \


<p id="gdcalert13" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image13.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert14">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image13.png "image_tooltip")


    If the test cases are passed, the **Result** is displayed as **Passed**, as shown in the screenshot below. \


<p id="gdcalert14" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image14.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert15">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image14.png "image_tooltip")




## Upload File to Create a Test Suite

Using this option, you can create test suites by uploading chat transcripts in a pre-defined JSON file. This alternative way of creating test suites is quick and scalable, as compared to recording the flow every time. The following step-by-step process explains how to upload a JSON file, validate and create the test suites.


### Upload a JSON File



    1. Click **New Test Suite**.
    2. Click the **Upload** option to upload a chat transcript in JSON format. \


<p id="gdcalert15" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image15.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert16">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image15.png "image_tooltip")
 \

    3. You can drag and drop a predefined JSON file in the **Upload** pop-up or select the file in the local directory using the **browse** option. \


<p id="gdcalert16" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image16.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert17">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image16.png "image_tooltip")
 \


    ```
Note: Only JSON files can be uploaded. The maximum file size allowed for upload is 2MB. You can also download a sample JSON file by clicking the Download JSON Sample button.
```



     \
If there is an error during upload due to any limitation set on the platform, an error is displayed as follows. \


<p id="gdcalert17" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image17.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert18">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image17.png "image_tooltip")



     \
If an uploaded JSON file exceeds the configured size limit of 2 MB, an error is displayed as shown below. \


<p id="gdcalert18" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image18.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert19">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image18.png "image_tooltip")
 \



###  Validate Test Suite


    The platform processes the uploaded file to simulate the conversation flow and capture all the metadata at each test case. When validating the test suite, there is an option to go back to Conversation testing while the test suite is being validated in the background. \
The steps to validate test suites are the same as in Record Test suite Flow. See [Validate Test Suite](https://docsinternal-kore.github.io/docs/xo/automation/testing/regression-testing/conversation-testing/create-a-test-suite/#validate-test-suite) for more information. To understand more about testing the sequence of nodes and capturing metadata, see Capture Test Suite Metadata under [Validate Test Suite](https://docsinternal-kore.github.io/docs/xo/automation/testing/regression-testing/conversation-testing/create-a-test-suite/#validate-test-suite).


### Create Test Suite


    The steps to create a test suite are the same as in Record Test suite Flow. See [Create Test Suite](https://docsinternal-kore.github.io/docs/xo/automation/testing/regression-testing/conversation-testing/create-a-test-suite/#create-test-suite) to know more.
