# Generate Output using Advanced Mode

While using the prompt playground, you have to upload a dataset in advanced mode as input. You can add and pre-view the existing or newly uploaded datasets. You can also replace one dataset with another based on the requirement for a particular prompt and generate multiple outputs simultaneously. 

The advanced mode option helps you improve the prompt creation and testing process more easily and efficiently. You can define a prompt to send to the models, add a few examples for the model to understand the output you are expecting, and upload a data set with inputs. In this mode, you can tweak and refine your prompts, generate the outputs for the selected models, and review the generated responses.   

On the Prompt page, you can find a Prompt sample auto-populated based on the template you have selected. This is additional information/instruction given to the LLM while it processes the prompt. You can modify this prompt if required.

Steps to generate an output using advanced mode:


1. On the **Prompt** page, click the **Advance Mode** toggle button to shift to the advanced mode from the simple mode of output generation.

    <img src="../images/generate-output-in-advanced-mode.png" alt="Generate Output in Advanced Mode" title="Generate Output in Advanced Mode" style="border: 1px solid gray; zoom:80%;">

    The Prompt playground view is enhanced for you with other options to explore.

    <img src="../images/advanced-mode-options.png" alt="Advanced Mode Options" title="Advanced Mode Options" style="border: 1px solid gray; zoom:80%;">

2. Click the **+Add Dataset** link under the **Dataset** section on the **Prompt** page to upload your CSV file with data.

    <img src="../images/add-dataset-advanced-mode.png" alt="Add Dataset Advanced Mode" title="Add Dataset Advanced Mode" style="border: 1px solid gray; zoom:80%;">

    The **Dataset** dialog is displayed.

3. Click **Upload file** to upload a CSV file from your local computer and click **Upload**. You can see a preview of all the data in your CSV file. Click **Proceed** to accept the file.

4. Click the arrow under the **Examples** section on the **Prompt** section to add a sample user input and sample AI response output.

    <img src="../images/add-examples-advanced-mode.png" alt="Add Examples Advanced Mode" title="Add Examples Advanced Mode" style="border: 1px solid gray; zoom:60%;">

    
5. Click **Save** to save the sample examples.

6. Click the down arrow corresponding to the **Input** field. A pop-up with a list of numbers such as 5, 10, 15, and 20 are visible. This displays the number of rows you want to see in your generated output from the CSV file that you have selected. Select the Randomize check box if you want to select randomly otherwise the list is sequential.

7. The value for the variables in the {{}} braces is populated from the uploaded CSV file. You can add variables to the prompt by opening the brackets. For example, {{ xyz }} is a variable in the prompt box. 

    The value of the variable is populated from the dataset or file you have uploaded. To make sure the value is mapped correctly between the variable and the file, for the data to flow, you need to make the column name a variable within those curly braces.

    <img src="../images/generated-output-variable-mapping.png" alt="Generated Output Variable Mapping" title="Generated Output Variable Mapping" style="border: 1px solid gray; zoom:80%;">
    
    For example, {{Name}} is a variable, from the file you uploaded where Name is a column in that CSV file. A maximum of 20 names or rows that you select can flow from the file to the prompt input column of the advanced mode.

8. Click the + icon corresponding to the **Add Model** section to add the models you want to select and compare the generated outputs.

    !!! note

        Currently, you can add only a maximum of 3 models in the playground. For more information about how to add a model to the prompt, see [Add an external model](../models/external-models/add-an-external-model-using-easy-integration.md).

9. Click **Generate Output** after you have added the required number of models to compare. The Generated output for comparison is displayed in the Model section of the Prompt playground space for your reference.

    !!! note

        You can view the matrix in the generated output section which helps in deciding which prompt and model are better for your requirement.

    <img src="../images/generated-output-matrix.png" alt="Generated Output Matrix" title="Generated Output Matrix" style="border: 1px solid gray; zoom:80%;">


It displays the total tokens metric which implies how many tokens are sent to the model and how many are sent back in the response, the time taken by the model to respond with the answer, and the response and request in the JSON format. You can click the **View in JSON format** icon at the bottom of the generated output section to view the request and response generated in JSON format in a separate dialog box as shown in the following image.

<img src="../images/json-format-prompt.png" alt="Json Format Prompt" title="Json Format Prompt" style="border: 1px solid gray; zoom:80%;">


If you want to view all the details of the outputs across all the models you can turn ON the toggle button by clicking the info icon on the **Models** section of the Playground space as shown in the following image. If you turn OFF the toggle button, then the metrics is not displayed.

<img src="../images/view-all-details-of-models.png" alt="View All Details of Models" title="View All Details of Models" style="border: 1px solid gray; zoom:80%;">

You can collect feedback on the model's responses to refine its performance. Feedback is collected through simple Thumbs Up or Down on responses in the playground. Giving feedback is optional and does not hinder generating more responses. Thumbs up is for good responses. Thumbs down is for incorrect, hypothetical, or disliked responses. When you click Thumbs down icon a pop-up is displayed and you can add additional feedback if required.

!!! note

    This feedback option is only applicable for fine-tuned and open-source models.


<img src="../images/rlhf-feedback-icons.png" alt="RLHF Feedback Icons" title="RLHF Feedback Icons" style="border: 1px solid gray; zoom:80%;">