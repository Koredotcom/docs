# Testing and Debugging Answers

Search AI provides you with a simulator to test the performance and accuracy of the generated Answers and fine-tune your configuration as per your business needs. This helps identify and rectify inaccuracies and performance bottlenecks or inefficiencies before the application is deployed and goes live for the users.

To test answers, go to the **Answer Configuration** page and click the **Test Answers** button. 

![Testing Answers](../images/testing/test-answer-button.png "Testing Answers")


This presents a simulator. 

![simulator](../images/testing/test-answers.png "Simulator")


Enter a query to see the corresponding generated answer.

![Generated Answer](../images/testing/answer.png "Generated Answer")

The simulator also provides a **debugger**. The debug option is enabled after the answer is generated for your search. Click the debug icon to get insights into the answer generation process.

![Debugger](../images/testing/debug-option.png "Debugger")

The **Debugger** is displayed on the left of the preview widget. The debug information is available under the following tabs:

**Qualified Chunks:** This tab provides information about the chunks used in the answer generation.  

* **Qualified Chunks**: Lists all the relevant chunks along with the similarity score for the chunk, the source of the chunk, and the name of the source of the chunk.
* **Sent to LLM**: Lists only the chunks that are sent to the LLM for answer generation. 
* **Used for Answering**: Lists the chunk used for generating the answer. 

For each chunk in each of the lists, the similarity score for the chunk, the source of the chunk, and the name of the source are also displayed. The similarity score indicates the relevance of the chunk to the search query. The higher the score, the more relevant the chunk for the answer. Of all the qualified chunks, the top chunks, based on this score, are sent to the LLM model for answer generation. It is also marked if the chunk is sent to the LLM model for answer generation.

**Prompts**: Under the Prompt tab, you can find the details of the prompt or the textual inputs sent to the LLM model. The top section shows the internal parameters that are used by the Search AI application to fine-tune the output from the LLM model, along with their values.

The prompt sent to the LLM model for answer generation is displayed in the bottom pane. A prompt consists of a set of instructions along with a few shot examples sent to the LLM model and enables it to generate desired results accurately.  You can use this section to verify if the prompt is defining the objective, tone of response, and format of the response properly. 

![Prompts](../images/testing/prompts-tab.png "Prompts tab")


**Response**: This tab shows the results sent by the LLM back to the Search AI application in JSON format. It also provides performance statistics like the time taken in vector search for the query and the time taken in answer synthesis. 

![Response](../images/testing/response-tab.png "Response tab")


To view all the information in JSON format, click the **JSON view** link.

![JSON View](../images/testing/json-view.png "JSON View")

