# Using Prompt Studio 

Selecting any of the three prompt creation journeys initiates your prompt experimentation process. A prompt experiment involves testing and comparing the performance of different AI models using a specific input, known as a prompt. This input can be a phrase, a question, or a paragraph of data, which the AI model uses to generate an output. Prompt experiments are useful for testing and comparing AI models for specific use cases and applications.

On the prompt canvas, you can easily input prompts and select from configured models to automatically generate outputs. You can also add variables, import your dataset, and use in-built prompt templates to get optimized results.

You also have access to various enhanced options on the prompt canvas. For more information, see &lt;*Options on the prompt canvas*>.

Here are the steps to create prompts on the prompt canvas:



1. **Add Prompts** - Enter your prompts into the designated area.
2. **Apply variables** - Introduce any necessary variables to customize your prompts. You can add variables manually or import variables from a dataset. 
3. **Add Models** - Select and add the appropriate models you want to use to generate output.
4. **Generate Output**- Initiate the output generation process based on your configured prompts and models.


## Add Prompts

1. In the **System prompt** field, enter a system prompt.
This field is optional. You can use the toggle to enable or disable it as needed.
System prompts help narrow down the LLM’s response by assigning a specific role to it.
2. In the **Prompt** field, you can enter your main prompt.
For assistance, you can click "Generate prompt" to receive AI-generated suggestions to optimize your prompt any time.

You can also click the "Prompt library" button (highlighted in yellow in the image above) to explore a selection of templates that contain carefully crafted prompts designed for various use cases. For more information, see &lt;*Prompt Library*>.

## Apply Variables

You can incorporate variables into your prompt. A variable acts as a placeholder representing multiple prompt injections. For large datasets, you can use the columns of an uploaded CSV file as variables in the prompt. For smaller datasets with one or two data points, you can manually type in a value for a variable and test the output. 

Variables enable you to run different prompts simultaneously, generating answers for all of them at once. By attaching variables to your prompts and defining their behavior (assigning values to the prompts), you can execute multiple prompts concurrently.

You can create variables anywhere in the prompt window or system prompt window. To add variables to your prompt, you must use the syntax {{variable}} and then assign a value to the variable. The variables are substituted with their assigned values during prompt execution, and the generated output reflects these values accordingly.

**Steps to add variables:**

1. In the **Prompt** field, add the variables in double curly braces. For example, {{**xyz**}}.
When you add variables in the Prompt field, the **Variables** column appears, displaying the added variables.

2. In the **Variables** window, assign the variables a value (name/text). 

    You can click **Add an empty row** to add multiple rows in the Variables window. 

3. In the **Prompt** window, check how your entered prompt appears. 
The variables are substituted with their assigned values.


## Import Test Data

The Import test data option lets you upload large datasets with variables from a .csv file. The values for variables in {{}} braces are populated from this file. For a selected column, the variable values are automatically populated from that column for up to 10 rows (if available in the dataset). You can manually edit these entries as needed.

To correctly map the values, ensure the column names in the .csv file match the variables, such as {{Name}} for a column named "Name." Also make sure the data starts from the first row and first column of the .csv file so that your variables are pulled in correctly.

**Note**: You can generate a maximum of 10 rows of data simultaneously when importing data as variables.

**Steps to import data:**



1. To import your CSV file with data, on the prompt canvas page, click **Test data > Import test data**.
 
2. In the **Import test data** dialog, upload the CSV file from your local computer or select from existing datasets.

3. Once you upload the file, you can see a preview of all the data in your CSV file. Click **Proceed** to accept the file. 

The Prompt canvas will directly fetch the row data from the .csv file into the Variables window. The variables are substituted with their assigned values during prompt execution, and the generated output reflects these values accordingly. You can now easily utilize the data in your prompts, managing and executing multiple variables at once. 


## Select Models

After entering your prompts and applying variables, you can test the prompts with different AI models and choose one that best meets your needs. You can add multiple models to compare and decide which model provides the most suitable output for your prompt.

**Note**: You can add a maximum of 5 models for comparison.

**Steps to add a model:**



1. In the prompt canvas, click the **Select Model** field.  
A list of models is displayed in the drop-down list.
2. Select your preferred model for your prompts.
3. To add multiple models, select different models in the columns on the right. 

For more information on other model-related options such as model settings, bookmarking a model, or removing a model, see &lt;*Options on the prompt canvas*>.


## Generate output

After attaching your variables and selecting your models, you can generate the output for your prompt. Ensure you have added the desired number of models for comparison before generating the results.  
Note: You can generate a maximum of 10 rows of data simultaneously.

On the prompt canvas, click **Run** to generate the output.


As the models generate the output, a “Generating output” message is displayed. Once the generation is complete, the output is displayed in the model column of the prompt canvas. You can review the matrix in the generated output area to determine which prompt and model best meet your needs.

The following data is displayed:



* The response/output from the models.
* The total number of tokens sent to the model and returned in the response.
* The time taken by the model to respond with the answer. 


For more information on the other options on the prompts canvas page, see &lt;Options on the prompt canvas>.
