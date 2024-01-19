
# Prompts and Requests Library

	

		

			

If you have integrated a Custom LLM, continue to add prompts. If not, skip this article and see[ Co-Pilot](https://developer.kore.ai/docs/bots/nlp/co-pilot-features/) and[ Dynamic Conversations](https://developer.kore.ai/docs/bots/nlp/dynamic-conversations-features/) features.

Effective prompts play a crucial role in enhancing response accuracy when interacting with LLMs. The new Prompts Library module empowers bot designers by allowing them to create and test suitable prompts for their specific use cases. It also displays all the newly added and default request/prompt templates for the integrated models with their status as active or inactive. The default prompts are related to the pre-built models and cannot be modified. However, you can import any default prompt, customize it, and use it for a custom LLM model.

The post processor for prompts allows designers to align LLM responses perfectly with Platform expectations. Designers can modify the LLM response to guarantee the correct behavior and high-quality interactions during runtime.

!!! note

    Currently, the custom LLM integration and prompt creation are available only in English and for the following Co-Pilot features: Automatic Dialog Generation, Conversation Test Cases Suggestions, NLP Batch Test Cases Suggestions, and Training Utterance Suggestions.


## Pre-requisites

Ensure that you have Integrated a Custom LLM successfully before proceeding further. For more information, see[ Custom LLM Integration](https://developer.kore.ai/docs/bots/nlp/llm-integration/#Custom_LLM_Integration_Framework).


## How to add Prompts and Requests

To add a new prompt, follow the steps:



1. Go to **Build** > **Natural Language** > **Generative AI & LLM**. 


    ![alt_text](images/prl(10).png "image_tooltip")

2. On the top right corner of the **Prompts and Requests Library** section, click **+Add New**.
3. Enter the **prompt name**. Select the **feature** and the respective **model**. 

    ![alt_text](images/prl(13).png "image_tooltip")

4. The Configuration section consists of End-point URLs, Authentication, and Header values required to connect to a large language model. These are auto-populated based on the input provided while model integration and are not editable. 


    ![alt_text](images/prl(3).png "image_tooltip")

5. In the Request section, you can either create a request from scratch or import the existing prompt from the Library to modify as needed. 
    ![alt_text](images/prl(9).png "image_tooltip")
    1. To import an existing prompt, do the following:
        1. Click **Import from Prompts and Requests Library**. All the available default prompts are displayed. 
            ![alt_text](images/prl(7).png "image_tooltip")
        2. Double-click the prompt to get it imported into the JSON body.
    2. To create a prompt from scratch, click **Start from scratch** and enter the **JSON** request the LLM. 
    ![alt_text](images/prl(8).png "image_tooltip")

6. Once you type the JSON, the **Sample Context Values** fields are displayed. Fill in the values and click **Test**.
7. If the request values are correct, the response from the LLM is displayed. If not, an error message is displayed. 


    ![alt_text](images/prl(6).png "image_tooltip")

8. In the Actual Response section, double-click the **Key** that should be used to generate the response path. For example, double-click the **text** key and click **Save**. 

    ![alt_text](images/prl(5).png "image_tooltip")

9. The **Response Path** is displayed. Click **Lookup Path**.
10. The **Actual Response** and **Expected Response** are displayed. 
    1. If the response structure matches, the responses will be in green. Click **Save**. Skip to Step 11.

        **Note**: Both Actual Response and Expected Response are not editable.
        ![alt_text](images/prl(2).png "image_tooltip")
    
    2. If the response structure does not match, the responses will be in red. Click **Configure** to modify the Actual Response. The Post Processor Script is displayed. 
    ![alt_text](images/prl(12).png "image_tooltip")
        
        1. Enter the **Post Processor Script**. Click **Save & Test**. 
            ![alt_text](images/prl(11).png "image_tooltip")
        2. The response is displayed. 
                ![alt_text](images/prl(4).png "image_tooltip")
        3. Click **Save**. The actual response and expected response turn green.

11. Click **Save**. The request is added and displayed in the **Prompts and Requests Library** section. 
    ![alt_text](images/prl(1).png "image_tooltip")
12. Now proceed to enable[ Co-Pilot Features](https://developer.kore.ai/docs/bots/nlp/co-pilot-features/).

		
