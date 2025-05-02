# Attachment Support in User Interactions

Agentic Applications support real-time document sharing during interactions. This feature allows users to upload attachments directly into the conversation flow, enabling agents to dynamically analyze and use document content in their response generation.

Users can upload documents using the attachment option within the chat interface. The uploaded documents are encoded in base64 and sent to the LLM for processing. The agents use the extracted insights from the document to provide personalised and contextual responses.

Points to Note:

* The attachment option is enabled in the chat widget after the initial message, i.e., after a session has been started.
* Currently, only files in PDF format are supported.
* Users can upload a maximum of two files, with each file size limited to 5 MB. 

This feature reduces the manual efforts of the users and does not require them to summarize or type out content from documents. It saves time and improves response accuracy. For example, when interacting with an HR Assistant agent to submit a job application, the user typically needs to provide various personal and professional details. With document sharing, the user can simply upload their resume, and the assistant can automatically extract the necessary information from it.
