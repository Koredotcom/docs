# Export a Tool

Agent Platform offers the ability to export specific tool versions from your account as self-contained packages for data preservation and sharing. This feature also allows users to transfer tool configurations without compromising the integrity and security of the tool setup.

When you export a tool, Agent Platform automatically creates a *.zip* file named after the tool. For example, if the tool is named "*Banking Assistant*," the exported file will be "*Banking Assistant.zip*". You can save this folder in the desired location on your local machine. 

The exported package can be reimported to create a new tool or add it as a version to an existing one, ensuring seamless restoration.

The [exported package](https://docs.kore.ai/agent-platform/tools/export-a-tool/#exported-information){:target="_blank"} preserves the following tool configurations within JSON files:

* Name and description
* API, Condition, AI, and Script node configurations
* Input/output variables and scanners
* Environment variables
* Sync/Async setup

To maintain security, sensitive information such as **API keys**, **sharing permissions**, **tool endpoint**, and **audit logs** are excluded from the exported package.

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>Users with only <b>Viewer</b> permissions cannot export an tool.</p></div>

## Steps to Export a Tool

To export an tool’s version, follow the steps below:

1. [Sign in](https://docs.kore.ai/agent-platform/getting-started/sign-up-sign-in/){:target="_blank"} to your Agent Platform account. To enable and sign in via SSO, click [here](https://docs.kore.ai/agent-platform/settings/security-and-control/single-sign-on/){:target="_blank"}.
2. Click **Tools** on the top menu.
3. Select the relevant tab to view the tool.
4. Click the required tool’s name to proceed further.
5. Click **Configurations** on the left navigation menu.
6. Scroll down to the **Export tool** section. By default, the currently deployed version is selected in the dropdown.
<img src="../images/export-agent.png" alt="export agent" title="export agent" style="border: 1px solid gray; zoom:75%;">

7. To change, click and choose another version from the list.
<img src="../images/choose-another-version.png" alt="change version" title="change version" style="border: 1px solid gray; zoom:75%;">

8. Click the **Export** button.

The export process begins, and a success message is displayed after the tool validation is completed and the export process finishes.

<img src="../images/agent-export-success.png" alt="export success" title="export success" style="border: 1px solid gray; zoom:75%;">

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>Once export begins, the selected version cannot be changed.
</p></div>

## Exported Information

The exported package includes the following JSON files encapsulating the tool’s configuration data:

* ***flow_definition.json***: It includes the tool's canvas definitions (node definitions) and AI node configurations, including prompts, hyperparameters, and timeout information.
* ***app_definition.json:*** It includes general information about the tool version and guardrails.
* ***env_variables.json***: It includes the environment variables set for the tool. [Learn more](../tools/configure-a-tool.md){:target="_blank"}.

<img src="../images/exported-files.png" alt="exported files" title="exported files" style="border: 1px solid gray; zoom:75%;">

To view the files, right-click and select **View file**.

<img src="../images/view-exported-file.png" alt="view exported file" title="view exported file" style="border: 1px solid gray; zoom:75%;">

The file information is displayed as follows:

<img src="../images/app-definition-file-example.png" alt="file example" title="file example" style="border: 1px solid gray; zoom:75%;">

<hr>

## Related Links

* [Import a tool](./import-a-tool.md){:target="_blank"} - Create a tool by importing configurations or add it as a version to an existing tool.
* [Deploy a tool](./deploy-a-tool.md){:target="_blank"} - Explore synchronous and asynchronous deployment methods for tool integration.
* [Configure a tool](./configure-a-tool.md){:target="_blank"} - Modify the tool's details, configure settings, or undeploy and delete it if unused.