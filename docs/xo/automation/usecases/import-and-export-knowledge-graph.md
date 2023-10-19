# **Importing and Exporting a Knowledge Graph**

You can build a Knowledge Graph in a CSV or JSON file and upload it to a VA. Similarly, you can export the existing Knowledge Graph to CSV or JSON. Exporting a Knowledge Graph helps you edit it in a spreadsheet or import it to another VA.

The allowed limit is a maximum of 50k FAQs spread across a maximum of 20k nodes.

The XO Platform allows you to import any VA with a file size up to 50MB. If you try to import a bot with more than 50MB size, the import process fails.

## Import


> **<p style="color:red">WARNING</p>** Importing a Knowledge Graph replaces the existing one. Please proceed with caution and follow the steps below carefully.


To import a Knowledge Graph, follow the steps below:

1. Open the VA to import the KG and select the **Build** tab.
2. On the left pane, click **Conversational Skills** > **Knowledge Graph**.
3. You can find the **Import** option on the respective Knowledge Graph.
![Import Knowledge Graph](../usecases/images/import-knowledge-graph.png "Import Knowledge Graph")

4. Click **Import**.
5. In the **Import** dialog, do one of the following based on the scenario:
    * For a new Knowledge Graph, click **Proceed**.
    * For an existing Knowledge Graph, take a backup CSV or JSON file, and then click **Proceed**.
    ![backup knowledge graph](../usecases/images/backup-knowledge-graph.png "backup knowledge graph")

6. Drag and drop the file to the **Import** window or click **Browse** to locate the file.
7. Click **Next** to begin the import.
![click to begin import](../usecases/images/click-begin-import.png "click to begin import")

After the import is complete, the success message appears in a dialog box. 
8. Click **Done**.

The hierarchy is displayed in the Knowledge Graph which you can edit and use to train your VA.

## Export

To export a Knowledge Graph, follow the below steps:

1. On the left pane, click **Conversational Skills** > **Knowledge Graph**.
2. You can find the **Export** option on the respective Knowledge Graph.
![Export Knowledge Graph](../usecases/images/export-knowledge-graph.png "image_tooltip")

3. Based on the preferred format: click **Export JSON** or **Export CSV**.

> **<p style="color:#1338BE">NOTE</p>** Please read the warning message shown below before clicking **Confirm**. To learn more about caching challenges and strategies, click [here](https://aws.amazon.com/builders-library/caching-challenges-and-strategies/#:~:text=Caches%20are%20also%20susceptible%20to%20poisoning%20attacks%2C%20in%20which%20a,will%20see%20the%20malicious%20value).

![export caching message](../usecases/images/export-caching-notice-message.png "export caching message")

When these steps are completed, the Knowledge Graph file is downloaded to your machine.
