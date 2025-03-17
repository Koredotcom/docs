
# Streaming Responses 


## Introduction

Streaming responses in large language models (LLMs) enable real-time, incremental output generation. Instead of waiting for the entire response to be computed, the model starts transmitting pieces of the output as they become available. This approach not only reduces latency and enhances user interaction but also fosters a sense of immediate connection, mirroring real-time communication. Streaming is particularly beneficial in applications requiring dynamic updates, such as conversational AI, speech-to-text systems, and real-time content-generation tools. 


## Current Capabilities

We support the voice-based channel [Kore Voice Gateway](../channels/kore.ai-voice-gateway/configure-kore-voice-gateway.md) for GenAI features, including Agent Node, with PlayHT as the supported TTS engine. Additionally, we provide seamless integration with models from OpenAI and Azure OpenAI. Our Custom Prompt capability enables integration with other LLMs, allowing businesses to use non-system models by defining their own prompts, provided the LLM supports streaming.


### Benefits of Streaming



* Real-Time Output: Generates and displays text instantly, reducing wait times.
* Lower Latency: Speeds up response time, enhancing user experience.
* Improved Interaction Flow: Partial outputs support iterative writing and brainstorming.
* Optimized for Live Applications: Enhances real-time chat, speech-to-text, and code autocompletion.


### Use Case

Streaming responses unlocks significant benefits across various industries, enhancing real-time interactions and delivering incremental updates that improve user experience and operational efficiency.


<table>
  <tr>
   <td>Domain
   </td>
   <td>Use Cases
   </td>
  </tr>
  <tr>
   <td rowspan="2" >Healthcare
   </td>
   <td>Streaming comprehensive summaries of patient history or medical guidelines.
   </td>
  </tr>
  <tr>
   <td>Delivering in-depth analysis of clinical studies or medical research in real time.
   </td>
  </tr>
  <tr>
   <td rowspan="2" >Finance
   </td>
   <td>Streaming detailed breakdowns of investment portfolios or market analysis.
   </td>
  </tr>
  <tr>
   <td>Providing incremental summaries of compliance documents and regulations.
   </td>
  </tr>
  <tr>
   <td>E-commerce
   </td>
   <td>Streaming extensive side-by-side comparisons of products for informed decision-making.
   </td>
  </tr>
  <tr>
   <td>Education
   </td>
   <td>Delivering detailed outlines or summaries of academic courses or study materials.
   </td>
  </tr>
  <tr>
   <td>Legal
   </td>
   <td>Streaming detailed explanations of legal precedents and their relevance to current cases. Providing incremental analysis and feedback on lengthy legal contracts.
   </td>
  </tr>
  <tr>
   <td>Customer Support
   </td>
   <td>Streaming detailed troubleshooting steps for intricate customer issues or technical problems.
   </td>
  </tr>
  <tr>
   <td>Human Resources
   </td>
   <td>Streaming detailed explanations of HR policies or benefit packages for employees.
   </td>
  </tr>
  <tr>
   <td>Marketing
   </td>
   <td>Streaming in-depth analysis of marketing campaigns and their ROI.
   </td>
  </tr>
</table>



## Enable Streaming for Agent Node


### Select Default Streaming Prompt

The XO Platform provides Default-Streaming prompts in addition to default(non-streaming) prompts for Agent Node for the OpenAI and Azure OpenAI models.

Go to **Generative AI Tools** > **GenAI Features** > **Dynamic Conversations** and select the default-streaming prompt for Agent Node. You can also create custom streaming prompts for this model.  
<img src="../images/default-streaming.png" alt="default-streaming" title="Default Streaming Prompt" style="border: 1px solid gray; zoom:70%;">



### Create Custom Streaming Prompts

To create a custom streaming prompt, see [How to add Prompts and Requests](prompts-library.md) and enable the streaming response toggle.

Ensure that the streamed response follows the platform's required format:

* conv_status: Indicates whether the conversation has **ended** or is **ongoing**.
* bot response: The generated response sent to the end user.
* collected entities: A stringified JSON object containing extracted entities.

!!! note

    * When enabled, add the required stream parameter to the custom prompt for the model to recognize streaming. For example, "stream": true for OpenAI and Azure OpenAI.
    * The saved prompt will appear with a stream tag in the prompts library. 
    * Enabling streaming disables the “Exit Scenario”, “Virtual Assistant Response”, “Collected Entities”, and “Tool Call Request” (for Agent Node) fields.


## Configure Kore Voice Gateway

Streaming is currently supported only by the Kore Voice Gateway channel. To configure it, see Configure [Kore Voice Gateway](../channels/kore.ai-voice-gateway/configure-kore-voice-gateway.md).

After configuring the settings, enable LLM streaming in the Contact Center. Navigate to **Contact Center AI** > **Contact Center** > **Configurations** > **Advanced Settings** > **LLM Streaming**, then turn on the toggle for **real-time LLM response streaming**.  
<img src="../images/enable-streaming.png" alt="Enable Streaming" title="Enable Streaming" style="border: 1px solid gray; zoom:70%;">


## Benchmarking


<table>
  <tr>
   <td><strong>Task</strong>
   </td>
   <td><strong>Mode</strong>
   </td>
   <td><strong>Input Tokens</strong>
   </td>
   <td><strong>Output Tokens</strong>
   </td>
   <td><strong>Time Taken (s)</strong>
   </td>
   <td><strong>Reduction (%)</strong>
   </td>
  </tr>
  <tr>
   <td>Agent Node
   </td>
   <td>Non-streaming
   </td>
   <td>777
   </td>
   <td>90
   </td>
   <td>2.59
   </td>
   <td>Output: -30%, Time: -83%
   </td>
  </tr>
  <tr>
   <td>
   </td>
   <td>Streaming
   </td>
   <td>676
   </td>
   <td>62
   </td>
   <td>0.44
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>50-word Joke
   </td>
   <td>Non-streaming
   </td>
   <td>95
   </td>
   <td>54
   </td>
   <td>2.4
   </td>
   <td>Output: +10%, Time: -80%
   </td>
  </tr>
  <tr>
   <td>
   </td>
   <td>Streaming
   </td>
   <td>68
   </td>
   <td>60
   </td>
   <td>0.47
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>500-word Joke
   </td>
   <td>Non-streaming
   </td>
   <td>95
   </td>
   <td>595
   </td>
   <td>22.39
   </td>
   <td>Output: +10%, Time: -98%
   </td>
  </tr>
  <tr>
   <td>
   </td>
   <td>Streaming
   </td>
   <td>68
   </td>
   <td>649
   </td>
   <td>0.41
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>500-word Joke
   </td>
   <td>Non-streaming
   </td>
   <td>68
   </td>
   <td>642
   </td>
   <td>30.11
   </td>
   <td>Output: -0.05%, Time: -97%
   </td>
  </tr>
  <tr>
   <td>
   </td>
   <td>Streaming
   </td>
   <td>68
   </td>
   <td>641
   </td>
   <td>0.88
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>500-word Story
   </td>
   <td>Non-streaming
   </td>
   <td>68
   </td>
   <td>616
   </td>
   <td>16.86
   </td>
   <td>Output: +2.27%, Time: -97.5%
   </td>
  </tr>
  <tr>
   <td>
   </td>
   <td>Streaming
   </td>
   <td>68
   </td>
   <td>630
   </td>
   <td>0.44
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>500-word Essay
   </td>
   <td>Non-streaming
   </td>
   <td>70
   </td>
   <td>687
   </td>
   <td>22.23
   </td>
   <td>Output: +1.46%, Time: -97.15%
   </td>
  </tr>
  <tr>
   <td>
   </td>
   <td>Streaming
   </td>
   <td>70
   </td>
   <td>697
   </td>
   <td>0.63
   </td>
   <td>
   </td>
  </tr>
</table>


Efficiency in Streaming Mode:



* Output &lt; 100 Tokens: Time reduction of 80%-85%.
* Output 100-600 Tokens: Time reduction of 97%-98%.
* Output > 600 Tokens: Time reduction of 98%-99%.

Key Insights:



* Streaming mode demonstrates exponential efficiency gains as output size increases.
* Minimal impact on output quality (≤2.5% variance) ensures task reliability.
* Significant time savings make streaming ideal for long-form content generation and real-time use cases.

!!! note

    The following benchmarking results were conducted on our system under specific scenarios. Performance may vary depending on your unique environment and use cases. We recommend conducting your own due diligence before enabling streaming. These benchmarks are provided solely for reference purposes and do not guarantee similar outcomes in all situations.


## Analytics

As part of the XO platform's Analytics module updates, enhancements have been introduced to better track and differentiate streaming and non-streaming responses. In the LLM Usage Logs main screen, a new column called "TTFT" (Time to First Token) has been added, applicable only to streaming responses. Additionally, the Detailed Log page now includes a Response Type field to indicate whether a response is streaming or non-streaming, offering more precise insights into response behavior.



* **TTFT (Time to First Token)**: Reflects the time taken for the first token to appear in the response. For the final chunk of a response volley, TTFT is blank, as no further messages are sent to the user. 

* **Response Duration**: Indicates the time taken by the LLM from generating the first chunk to the final chunk.

This detailed analytics data can be found under **Usage Logs** in the platform.

<img src="../images/streaming-logs.png" alt="Usage Logs" title="Default Streaming Usage Logs" style="border: 1px solid gray; zoom:70%;">


<img src="../images/streaming-details.png" alt="Usage Logs" title="Usage Summary" style="border: 1px solid gray; zoom:70%;">



## Considerations for Streaming

While streaming enhances real-time interactions and user experience, certain limitations should be considered. 



* Post-processing operations are not possible, as they require the complete response, which conflicts with the nature of streaming. 
* Guardrails are not supported in streaming mode, as content moderation typically requires full-context evaluation, which is incompatible with token-by-token streaming.
* The effectiveness of voice-based streaming also depends on the TTS engine’s support for bi-directional streaming, limiting compatibility to specific engines like PlayHT, Deepgram. 
* When BotKit is enabled, interception of streamed response messages is unsupported due to the real-time delivery process.

!!! note

    The quality of streaming responses is highly dependent on the prompts written, and since LLMs are subject to hallucination, it is essential to perform your own due diligence. Ensure that the prompts are accurate and aligned with the desired output for reliable performance.
