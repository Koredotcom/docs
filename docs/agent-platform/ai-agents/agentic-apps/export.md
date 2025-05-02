# Exporting Agentic Apps

The **Agent Apps Export** functionality allows users to easily download and export the configuration details of one or more agent applications. This feature provides a convenient way to back up, share, or migrate agent app setups across environments. By exporting agent apps, users can preserve important app configurations, agent definitions, and tool configurations in a standardized file format for future use. This simplifies the backup and recovery process, minimizing errors and speeding up the process.

## Export Types

You can choose to:

* Export the **entire app** - including all agents, tools, and configurations.
* Export **one or more individual agents** - along with their associated configurations.

## Steps to Export

To export an Agentic app:

* Open the Agentic App.
* Go to the Export/Import page.
* Click on the Export button on the top right.

    <img src="../images/export-agent.png" alt="Export Agent" title="Export Agent" style="border: 0px solid gray; zoom:65%;">

* Next, select the type of export you want. You can export the entire app, including agents and tools, or selectively export one or more agents. 

    <img src="../images/export-agent-app.png" alt="Export Agent App" title="Export Agent App" style="border: 0px solid gray; zoom:65%;">

* For app export, select the versions of the apps and the agents you want to export and click Export App.
* For exporting one or more agents, select the agents and the corresponding versions to be exported and click on Export Agent button at the bottom.

    <img src="../images/export-two-agents.png" alt="Export two Agents" title="Export two Agents" style="border: 0px solid gray; zoom:65%;">

## Exported File Details

Exporting an app or agent exports all the configurations to a JSON file and is downloaded to the local machine. The exported JSON file can be imported into another environment or restored in the same environment to recreate the app setup. File Naming Conventions for the downloaded file:

* App export file: app-&lt;app-name>-&lt;date-time>.json
* Agent export file: agents-&lt;app-name>-&lt;date-time>.json