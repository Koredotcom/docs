# Select a Template for a Prompt

You can use the pre-defined templates available in GALE while providing prompts to make your experience easy and save time. There are different categories of templates that you can use to get the desired output. The different categories include analyzing documents, writing and conversation, learning, and coding. In each of the categories, there are a few templates that can be used for a specific task. 

For example, if you select the “Writing a blog post” template from the Writing and Conversations category then the sample prompt is ready in the Prompt box which looks like this: “_Generate a blog post on the topic {{topic}} in a {{ tone }} tone_”. Similarly, you can use the “Teach me about GANs” template from the Learning category, and the prompt will look like this: “_Teach me about the topic {{ topic name }} like I am a 5-year-old_”. You can provide the variables and generate the output for your reference. Variables are the values you provide in the curly braces when selecting a prompt template.

!!! note

    In the simple mode, you input the required variable without the curly braces. In advanced mode, data is taken from the selected dataset file. For more information about uploading a dataset, see [Upload a dataset file](../data/upload-a-dataset.md).


Steps to select a template:


1. On the **Prompts** experiment page, click **Templates** corresponding to the **Prompt** box.

    <img src="../images/select-templates.png" alt="Select Templates" title="Select Templates" style="border: 1px solid gray; zoom:80%;">

    
    The list of templates is displayed.

2. Click the required template from the category you require. For example, you can take a template “_Text to bullet points_” and then the prompt is displayed in the **Prompt** box.

    <img src="../images/text-to-bullet-template.png" alt="Text to Bullet Template" title="Text to Bullet Template" style="border: 1px solid gray; zoom:80%;">

    
3. Enter a value for the variables by removing the {{ }} to get the desired output as shown in the following image.

    !!! note

        In the simple mode you must remove the {{}} and add the value in the prompt.


    <img src="../images/enter-a-prompt.png" alt="Enter a Prompt" title="Enter a Prompt" style="border: 1px solid gray; zoom:80%;">

    Once you generate an output, you will be able to view the output as shown in the following image.

    <img src="../images/output-result-from-template.png" alt="Output Result From Template" title="Output Result From Template" style="border: 1px solid gray; zoom:80%;">
