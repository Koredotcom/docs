# Answer from Documents (Beta)

The Answer from Documents feature helps answer end-user queries from unstructured PDF documents without the need to extract individual FAQs and train them. This feature leverages a Large Language Model (LLM) and Generative AI models from OpenAI or Azure OpenAI integration to generate answers by processing uploaded documents and user queries. This is a beta feature and is available in English and Non-English languages supported on the XO Platform.

<div class="admonition caution">
<p class="admonition-title"><b>Important</b></p>
<p>After redacting personally identifiable information, the documents and end-user queries are shared with OpenAI or Azure OpenAI integration to curate the answers. You must agree to enable the feature.</p></div>

## Benefits

1. Automatically identify and answer FAQs using PDF documents as a source of knowledge;
2. Knowledge extraction and VA training are not required.

## Important Considerations

1. Answer generation works based on NLU 3.0 and an active integration with OpenAI or Azure OpenAI integration.
2. Answer from Documents acts as a fallback when none of the three NLP engines identifies any intent (using Dialog Tasks or Knowledge AI FAQs).
3. Answers are delivered using a Standard Response with the answer as a dynamic variable.

## Limitations

1. You can upload 10 PDF documents, each with a maximum size of 5 MB.
2. Some requests may get rejected, or responses may delay based on OpenAI or Azure OpenAI service availability.
3. This is a beta feature, and requests may take longer to process. We do not recommend it for production use cases as it may directly impact your customers’ experience. Our current recommendation is for VA designers to review generated answers and add them to the Knowledge Graph.

## Prerequisites

Before using the Answer from Documents feature, you must first perform the following:

1. **Upgrade to NLU 3.0** if you have not already done so. You can upgrade by going to **Natural Language** > **Advanced Settings** and clicking **Upgrade Now** under the **NLP Version** section.
<img src="../images/upgrade-to-nlu-3.png" alt="upgrade version" title="upgrade version" style="border: 1px solid gray; zoom:75%;">

2. Configure the **OpenAI** or **Azure OpenAI** integration Action. You can find it under **Integrations** > **Actions** > **OpenAI**. [Configuring OpenAI Action](https://developer.kore.ai/integrations/configuring-the-openai-action/) or [Configuring Azure OpenAI Action](https://developer.kore.ai/integrations/configuring-the-azure-openai-action/).


## Enable Answer from Documents

To enable the Answer from Documents feature, follow these steps:

1. Go to **Build** > **Conversation Skills** > **Knowledge AI**.
2. Under **Answer from Documents**, click **Get Started**.
<img src="../images/navigate-to-answer-from-documents.png" alt="navigate to answer from documents" title="navigate to answer from documents" style="border: 1px solid gray; zoom:75%;">

3. To enable the **Answer from Documents** feature, you must agree to share uploaded documents and user utterances with OpenAI. 

    Please read the contents of the notification window, then select the checkbox next to **I agree to share the uploaded documents and user utterances with OpenAI or Azure OpenAI.** Click **Enable Now** to proceed.
    <img src="../images/enable-answer-from-documents.png" alt="enable answer from documents" title="enable answer from documents" style="border: 1px solid gray; zoom:75%;">

4. Once the feature has been enabled, you can begin uploading PDF documents.

## Upload PDF Documents

To upload PDF documents, follow these steps:

1. Click the **Upload** button that displays after enabling the Answer from Documents feature.
<img src="../images/click-upload-for-document.png" alt="upload document" title="upload document" style="border: 1px solid gray; zoom:75%;">

2. **Drag and drop** your document or click **Browse** to find it on your computer. 

!!!note

    Filenames must not be longer than 10 characters.

<ol start="3"><li>Once selecting the document, you can update its name if required. Click <b>Proceed</b> when ready.
<img src="../images/click-proceed-documents-upload.png" alt="click proceed" title="click proceed" style="border: 1px solid gray; zoom:75%;"></li>
<li>Please wait a few moments until your document uploads. This action may take longer than expected, depending on the file size, your connection speed, and other factors.</li>
<li>When the upload completes successfully, close the upload window.
<img src="../images/close-upload-window.png" alt="close upload window" title="close upload window" style="border: 1px solid gray; zoom:75%;"></li>

The uploaded documents are listed under the <b>Answer from Documents</b> section.
<img src="../images/uploaded-documents-listed.png" alt="uploaded documents listed" title="uploaded documents listed" style="border: 1px solid gray; zoom:75%;"></ol>

!!!note

    After uploading your first document, the Upload Document option moves to the right side of the section, as shown below. You can use it to add up to 10 PDF documents.
    
<img src="../images/upload-document-option.png" alt="upload document" title="upload document" style="border: 1px solid gray; zoom:75%;">

## View Uploaded PDF Documents

To view the contents of an uploaded document, hover over it and click the corresponding **View** icon under **Actions**.
<img src="../images/view-uploaded-pdf.png" alt="view uploaded pdf" title="view uploaded pdf" style="border: 1px solid gray; zoom:75%;">

The document will open within a separate window, where you can browse each page, download, print, etc. The viewer is browser-specific. To exit the document view and return to the Knowledge AI section, click the X on the right side corner.
<img src="../images/document-opens.png" alt="document opens" title="document opens" style="border: 1px solid gray; zoom:75%;">
 
## Test Answer Generation

A good testing practice for this feature is to ask the VA a question directly related to the contents of your uploaded documents. You can use the [Talk to Bot ](https://developer.kore.ai/docs/bots/test-your-bot/talk-to-bot/)feature to test the answers generated from your uploaded documents. The Debug Log within the [Talk to Bot feature](https://developer.kore.ai/docs/bots/test-your-bot/talk-to-bot/#Debug_Log) and [NLP Insights](https://developer.kore.ai/docs/bots/analyzing-your-bot/bot-analysis/#Debug_Log) lets you see if a response failure is due to OpenAI or Azure OpenAI timing out.

You can also run [Utterance Testing](https://developer.kore.ai/docs/bots/test-your-bot/testing-your-bot-with-nlp/#Answer_from_Documents) to see results related to use cases where no intent is identified and the query is answered using the _Answer from Documents_ feature.

_[Batch Testing](https://developer.kore.ai/docs/bots/test-your-bot/batch-testing/batch-testing/)_ and _[Conversation Testing](https://developer.kore.ai/docs/bots/test-your-bot/conversation-testing-landing-page/)_ do not use the _Answer from Documents_ feature as a fallback; therefore, no related test results are available. 

## Disable Uploaded PDF Documents

Disabled documents are not considered by the VA when providing answers, even if the Answer From Documents feature is active overall. As such, answers are only provided from uploaded documents that are active.  To disable a document, toggle the **Status** to _Inactive_.
<img src="../images/disable-uploaded-pdf.png" alt="disable uploaded pdf" title="disable uploaded pdf" style="border: 1px solid gray; zoom:75%;">
 
## Delete Uploaded PDF Documents

To delete an uploaded document, hover over it and click the corresponding **Delete** icon under **Actions**.
<img src="../images/delete-uploaded-pdf.png" alt="delete uploaded pdf" title="delete uploaded pdf" style="border: 1px solid gray; zoom:75%;">

You must confirm your choice. Click **OK** to do so, or **Cancel** otherwise.
<img src="../images/delete-bot-vs-va.png" alt="delete bot vs va" title="delete bot vs va" style="border: 1px solid gray; zoom:75%;">

!!!note

You cannot restore deleted documents. You must upload them again if you change your mind later.

## Disable Answer from Documents

If you disable Answer from Documents, queries will no longer be sent to LLMs as a fallback, but documents are stored in the database, and you can enable the feature again later. To disable the feature, turn off the toggle at the far right of the section.
<img src="../images/disable-answer-from-documents.png" alt="disable answer from documents" title="disable answer from documents" style="border: 1px solid gray; zoom:75%;">

You must confirm your choice. Click **Confirm** to do so or **Cancel** otherwise.
<img src="../images/disable-documents.png" alt="disable documents" title="disable documents" style="border: 1px solid gray; zoom:75%;">

Your documents stay stored while the feature is disabled. You can re-enable it any time later by turning on the same toggle.
<img src="../images/documents-stored.png" alt="documents stored" title="documents stored" style="border: 1px solid gray; zoom:75%;">

