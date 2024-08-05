# Configure an Agent

You can modify your agent's general details, such as its name and description, asynchronous configuration, and environment variables. You can also undeploy, and delete the agent if it's not in use.

## Sync/Async Mode Setup

You can set the sync/async mode configuration for the agent endpoint. If you change the mode, you must redeploy the agent.
The key difference is that synchronous mode blocks the client until the response is received, while asynchronous mode allows the client to continue working while the integration processes the request.

Steps to enable and configure the asynchronous mode:

1. On the **Agents** tab, click the the **Agents** for which you want to modify the configuration. The Agent Flow page is displayed.

2. Click **Configurations** in the left navigation and then click **Setup sync/async**.  
<img src="../images/setup-sync-async.png" alt="Setup sync/async" title="Setup sync/async" style="border: 1px solid gray; zoom:60%;">

3. The Sync/Async mode setup pop-up displays with async mode disabled by default. Enter the Synchronous mode timeout duration: The allowed range is 60 to 300 seconds (5 minutes). The default is 180 Seconds (3 minutes).  
<img src="../images/sync-mode-timeout.png" alt="Sync Mode Timeout" title="Sync Mode Timeout" style="border: 1px solid gray; zoom:70%;">

4. Turn on the **Enable async** toggle to configure the asynchronous mode if required and click **Save**.

    * If you enable the asynchronous mode, provide a URL, an access token, and the asynchronous mode timeout duration. The allowed timeout range is 60 seconds to 24 hours (86,400 seconds). The default is 180 Seconds (3 minutes).  
    <img src="../images/async-mode-configuration.png" alt="Async Mode Configuration" title="Async Mode Configuration" style="border: 1px solid gray; zoom:80%;">

5. If you have changed the mode, you must redeploy the agent - go to **Agent endpoint** in the left navigation and click the **Deploy** button on the top-right corner of the page.

## Manage Environment Variables

You can define reusable values and configurations for the agent using Environment variables. Those values
can be used by different nodes in the agent flow.

### Add an Environment Variable

Steps to add an environment variable:

1. On the **Agents** tab, click the the **Agents** for which you want to modify the details. The Agent Flow page is displayed.

2. Click **Configurations** in the left navigation and then click **Manage environment variables**.  
<img src="../images/manage-environment-variables.png" alt="Manage Environment Variables" title="Manage Environment Variables" style="border: 1px solid gray; zoom:50%;">

3. The **Create environment variable** dialog box is displayed. Click **Add** or **Add variable**.

4. Specify the following information on the **Add variable** dialog box:  
<img src="../images/add-varaible.png" alt="Add a Varaible" title="Add a Varaible" style="border: 1px solid gray; zoom:50%;">

    * **Variable name**: Provide a descriptive name for the variable.
    * **Secure variable**: Use the toggle to enable security for the variable. (If you are enabling the security, read the onscreen information carefully to understand the impact.)
    * **Value**: Enter the desired value for the variable.
    * **Notes** (optional): Enter any notes about how the variable should be used or its purpose.

5. Click **Save**. The created variable is listed on the **Create environment variable** dialog box.

### Edit or Delete an Environment Variable

Steps to edit or delete a variable:

* Click the three dots icon corresponding to the Name of the variable to edit the details of the variable or Delete to delete a variable.

    <img src="../images/manage-a-varaible.png" alt="Manage a Variable" title="Manage a Variable" style="border: 1px solid gray; zoom:60%;">

## Undeploy the Agent

You can undeploy the agent if it's no longer in use. Undeploying the agent will result in an immediate disconnection from all active instances. Click **Proceed to undeploy** on the Configurations page and follow the on-screen instructions.

## Delete the Agent

You can delete an undeployed agent. Deleting the agent will remove all the associated data. Click **Proceed to delete** on the Configurations page and follow the on-screen instructions.