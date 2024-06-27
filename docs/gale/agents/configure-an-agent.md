# Configure an Agent

You can modify the general details of your agent, such as agent's name and description, asynchronous configuration, and environment variables. You can also undeploy as well as delete the agent, if it's not in use. 

## Manage Asynchronous Configuration

You can set the async mode configuration for the agent endpoint. If you change the mode, you must redeploy the agent.

Steps to enable and configure the asynchronous mode:

1. On the **Agents** tab, click the the **Agents** for which you want to modify the configuration. The Agent Flow page is displayed. 

2. Click **Configurations** in the left navigation and then click **Manage async**.  
<img src="../images/manage-async.png" alt="Manage Async Mode" title="Manage Async Mode" style="border: 1px solid gray; zoom:25%;">

3. In the Configure asynchronous mode dialog, choose the option to enable or disable the mode as required. If you are enabling the asynchronous mode, provide a URL and an access token in the fields and click **Save**.  
<img src="../images/enable-async-mode.png" alt="Enable Async Mode" title="Enable Async Mode" style="border: 1px solid gray; zoom:50%;">

4. If you have changed the mode, you must redeploy the agent - go to **Agent endpoint** in the left navigation and click the **Deploy** button on the top-right corner of the page.  


## Manage Environment Variables

You can define reusable values and configurations for the agent using Environment variables. Those values
can be used by different nodes in the agent flow.


### Add an Environment Variable

Steps to add an environment variable:

1. On the **Agents** tab, click the the **Agents** for which you want to modify the details. The Agent Flow page is displayed. 

2. Click **Configurations** in the left navigation and then click **Manage environment variables**.  
<img src="../images/manage-environment-variables.png" alt="Manage Environment Variables" title="Manage Environment Variables" style="border: 1px solid gray; zoom:25%;">

2. The **Create environment variable** dialog box is displayed. Click **Add** or **Add variable**.

3. Specify the following information on the **Add variable** dialog box:  
<img src="../images/add-varaible.png" alt="Add a Varaible" title="Add a Varaible" style="border: 1px solid gray; zoom:50%;">

    * **Variable name**: Provide a descriptive name for the variable.
    * **Secure variable**: Use the toggle to enable security for the variable. (If you are enabling the security, read the onscreen information carefully to understand the impact.)
    * **Value**: Enter the desired value for the variable.
    * **Notes** (optional): Enter any notes about how the variable should be used or its purpose.

4. Click **Save**. The created variable is listed on the **Create environment variable** dialog box.


### Edit or Delete an Environment Variable 

Steps to edit or delete a variable:

* Click the three dots icon corresponding to the Name of the variable to edit the details of the variable or Delete to delete a variable.

    <img src="../images/manage-a-varaible.png" alt="Manage a Variable" title="Manage a Variable" style="border: 1px solid gray; zoom:60%;">


## Undeploy the Agent

You can undeploy the agent if it's no longer in use. Undeploying the agent will result in an immediate disconnection from all active instances. Click **Proceed to undeploy** on the Configurations page and follow the on-screen instructions.

## Delete the Agent

You can delete an undeployed agent. Deleting the agent will remove all the associated data. Click **Proceed to delete** on the Configurations page and follow the on-screen instructions.
