# Configure an Agent

You can modify and manage the general details of your agent if required and add or manage environment variables. Environment variables allow you to capture commonly used values that different nodes can use. They can be secured and managed from the Agent Configurations page.

### Add an Environment Variable

**To add an environment variable, follow these steps**:

1. Click **Agents** on the top navigation bar of the application. The **Agents** page is displayed with the list of agents.
2. Click the required Agent you want to modify the details, click **Configurations** and then click **Manage environment variables**.

    <img src="../images/manage-environment-variables.png" alt="Manage Environment Variables" title="Manage Environment Variables" style="border: 1px solid gray; zoom:80%;">


2. The **Create environment variable** dialog box is displayed. Click **Add** or **Add variable**.
3. Specify the following information on the **Add variable** dialog box:

    <img src="../images/add-varaible.png" alt="Add a Varaible" title="Add a Varaible" style="border: 1px solid gray; zoom:80%;">

    * **Variable name**: Provide a descriptive name for the variable.
    * **Secure variable**: Use the toggle to enable security for the variable. (If you are enabling the security, read the onscreen information carefully to understand the impact.)
    * **Value**: Enter the desired value for the variable.
    * **Notes** (optional): Enter any notes about how the variable should be used or its purpose.
4. Click **Save**. The created variable is listed on the **Create environment variable** dialog box.


### Edit or Delete an Environment Variable 

**To manage a variable, follow these steps**:

* Click the three dots icon corresponding to the Name of the variable to edit the details of the variable or Delete to delete a variable.

    <img src="../images/manage-a-varaible.png" alt="Manage a Variable" title="Manage a Variable" style="border: 1px solid gray; zoom:80%;">

!!! note

    To delete an agent, you must first un-deploy it and then delete it.