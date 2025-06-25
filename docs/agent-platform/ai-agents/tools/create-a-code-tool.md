# Creating a Code Tool

To create a code tool, click **+Create Tool** in the **Tools** page while creating the agent and select **Code Tool**. Provide the following details for the tool.

![Add a Code Tool](images/codetools/add-code-tool.png "Add a code tool")


**Name**

Enter a **unique and descriptive name** for the tool to help identify its purpose. 

**Example**: SQL Query Processor

Do not add special characters or spaces. Only alphabets, numbers, and underscores are allowed in the name. 

---

**Description**

Provide a **clear and detailed description** of the tool’s functionality. This helps the agent understand:

* What the tool does.
* When to use it.
* How to use it.

**Example for SQL Query Processor**:

"This tool will execute an SQL query and return the result."

This field is used by the LLMs to determine when to invoke the tool. 


---

**Parameters**

Define the **input parameters** required by the tool to perform its task. For each parameter, specify:



* **Name:** A unique identifier for the parameter.
* **Description:** Explains the parameter’s purpose to help the agent extract relevant data from user input.
* **Type:** The expected data type. The following types are currently supported: **string, number, boolean, and object**. Adhere to the schema shown under **Sample Schema** for Object type of parameters. 
* **isMandatory**: Indicates whether this input parameter is mandatory or not. 

**Example for SQL Query Processor**:



* **Parameter Name**: query
* **Type**: String
* **Description**: The SQL query to be executed.


---

**Definition**

This is the core **logic of the tool**. This is the custom code that gets executed when the tool is invoked. This can be written in either JavaScript or Python.

For the SQL Query processor, below is a sample JavaScript code. 


```javascript
const fetch = require('node-fetch');

async function executeSQL(query) {
    const url = 'https://bldrhpiodbmcvhywchhd.supabase.co/rest/v1/rpc/execute_dynamic_query';
    const headers = {
        'Content-Type': 'application/json',
        'apikey': 'your-api-key-here'
    };
    const body = JSON.stringify({ query });

    try {
        const response = await fetch(url, {
            method: 'POST',
            headers: headers,
            body: body
        });

        const responseData = await response.json();
        return JSON.stringify(responseData);
    } catch (error) {
        console.error('Error:', error.message);
        return JSON.stringify({ error: 'Error in using API' });
    }
}

// Execute with input parameter
const query = $query;
return executeSQL(query);
```

---

**Sample Response**

Before finalizing the tool, you can test its functionality to ensure it works as expected. Click **Run Sample Execution** and provide the required input parameters. View the generated sample response to verify the correct execution of the tool.

The response also contains **logs** along with the script **result**. The logs can be used for debugging purposes. 

Once the tool is defined and successfully tested, click **Create Tool** to add it as an agent tool. The tool is then available to the agent and will be invoked automatically when a matching intent is identified. 
