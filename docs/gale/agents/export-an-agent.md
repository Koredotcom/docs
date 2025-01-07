# Export an Agent

GALE offers the ability to export specific agent versions from your account as self-contained packages for data preservation and sharing. This feature also allows users to transfer agent configurations without compromising the integrity and security of the agent setup.

When you export an agent, GALE automatically creates a *.zip* file named after the agent. For example, if the agent is named "*Banking Assistant*," the exported file will be "*Banking Assistant.zip*". You can save this folder in the desired location on your local machine. 

The exported package can be reimported to create a new agent or add it as a version to an existing one, ensuring seamless restoration.

The [exported package](../agents/export-an-agent.md/#exported-information){:target="_blank"} preserves the following agent configurations within JSON files:

* Name and description
* API, Condition, GenAI, and Script node configurations
* Input/output variables and scanners
* Environment variables
* Sync/Async setup

To maintain security, sensitive information such as **API keys**, **sharing permissions**, **agent endpoint**, and **audit logs** are excluded from the exported package.

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>Users with only <b>Viewer</b> permissions cannot export an agent.</p></div>

## Steps to Export an Agent

To export an agent’s version, follow the steps below:

1. [Sign in](../getting-started/sign-up-sign-in.md/#sign-in-to-gale){:target="_blank"} to your GALE account. To enable and sign in via SSO, click [here](../settings/security-and-control/single-sign-on.md){:target="_blank"}.
2. Click **Agents** on the top menu.
3. Select the relevant tab to view the agent.
4. Click the required agent’s name to proceed further.
<img src="../images/agents-export-access.png" alt="access agent" title="access agents" style="border: 1px solid gray; zoom:75%;">

5. Click **Configurations** on the left navigation menu.
6. Scroll down to the **Export agent** section. By default, the currently deployed version is selected in the dropdown.
<img src="../images/export-agent.png" alt="export agent" title="export agent" style="border: 1px solid gray; zoom:75%;">

7. To change, click and choose another version from the list.
<img src="../images/choose-another-version.png" alt="change version" title="change version" style="border: 1px solid gray; zoom:75%;">

8. Click the **Export** button.

The export process begins, and a success message is displayed after the agent validation is completed and the export process finishes.

<img src="../images/exporting-in-progress.png" alt="export in progress" title="export in progress" style="border: 1px solid gray; zoom:75%;">

<img src="../images/agent-export-success.png" alt="export success" title="export success" style="border: 1px solid gray; zoom:75%;">

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>Once export begins, the selected version cannot be changed.
</p></div>

## Exported Information

The exported package includes the following JSON files encapsulating the agent’s configuration data:

* ***flow_definition.json***: It includes the agent's canvas definitions (node definitions) and GenAI node configurations, including prompts, hyperparameters, and timeout information.
* ***app_definition.json:*** It includes general information about the agent version and guardrails.
* ***env_variables.json***: It includes the environment variables set for the agent. [Learn more](https://docs.kore.ai/gale/agents/configure-an-agent/#manage-environment-variables){:target="_blank"}.

<img src="../images/exported-files.png" alt="exported files" title="exported files" style="border: 1px solid gray; zoom:75%;">

To view the files, right-click and select **View file**.

<img src="../images/view-exported-file.png" alt="view exported file" title="view exported file" style="border: 1px solid gray; zoom:75%;">

The file information is displayed as follows:

<img src="../images/app-definition-file-example.png" alt="file example" title="file example" style="border: 1px solid gray; zoom:75%;">

<hr>

## Related Links

* [Import an Agent](../agents/import-an-agent.md){:target="_blank"} - Create an agent by importing configurations or add it as a version to an existing agent.
* [Deploy an Agent](../agents/deploy-an-agent.md){:target="_blank"} - Explore synchronous and asynchronous deployment methods for agent integration.
* [Configure an Agent](../agents/configure-an-agent.md){:target="_blank"} - Modify the agent's details, configure settings, or undeploy and delete it if unused.