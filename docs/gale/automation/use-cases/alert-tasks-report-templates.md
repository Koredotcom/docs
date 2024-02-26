# Alert Task – Report Templates

For some Alert tasks, as seen <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/alert-tasks/" target="_blank">here</a>, you may want to display the bot response to the end-user as a link that can display the payload response using a template, such as a table, contact card, or formatted for a specific message type such as a weather report.

!!!note

    This section is not used for webhook alert tasks, action tasks, or RSS alert tasks.

## Configuring Report Templates 

To add a link to a task to provide more information or a report, you can define **a link** and information to display for the report as a table, weather report, or contact card in the end-user application.

To get started with defining the **Report Template Definition** for a task, on the **Bot Response** tab, click the **Expand** icon in the **(Optional) Report Template Definition** section as shown in the following illustration.

<img src="../images/report-template-definition.png" alt="report template definition" title="report template definition" style="border: 1px solid gray; zoom:75%;">

To enable a report link for the task, select **Yes** to display the **Report Template Definition** section shown in the previous illustration.

When you add a link to a task response message, the end-user has the ability to select the link and get more details, such as a table of values.Define the following parameters to create a link in a task response message for the end-user to request a report for additional information from the initial task response message:

* **Link Title** – The link text displayed to the end-user in the task post, for example, _View Booking_.
* **Header** – The title displayed when the report is displayed to the end-user, for example, _This is your booking selection_.
* **Details** – End-user help information displayed directly below the Header in the report that describes the content of the report, for example, _Review your Booking_, and then click **Continue** when you are ready to place your order.
* **Template** – Select one of the following format templates to display the data from the task response. For each type, define the **Column Name**, **Key Mapping**, **Data Type**, and template-specific options.
    * **Table** – Data is presented in a table format with defined columns. Each mapping for the **Table** template can be set to **Is Sortable**, **Display as an image**, and **Display it as a link**. For more information, see <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/dialogs/defining-reports/defining-a-table-report/" target="_blank">Defining a Table Report</a>.
    * **Fixed Column Table** – Data is presented in a table format with one or more fixed columns. Each mapping for the **Fixed Column Table** template can be set to **Is Sortable**, **Column in fixed**, **Display as an image** and **Display it as a link**. For more information, see <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/dialogs/defining-reports/defining-a-fixed-column-table-report/" target="_blank">Defining a Fixed-Column Table Report</a>.
    * **Card Layout** – Data is presented in a contact card format. Each mapping for the **Card Layout** template can be set to **Is Sortable**, **Display as an image**, and **Display it as a link**. For more information, see <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/dialogs/defining-reports/defining-a-card-layout-report/" target="_blank">Defining a Card Layout Report</a>.
    * **Weather Info** – Date for a weather service response payload can be defined. Each mapping for the **Weather Info** template can be set to **Is Sortable**, **Display as an image**, and **Display it as a link**. For more information, see <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/dialogs/defining-reports/defining-a-weather-info-report/" target="_blank">Defining a Weather Info Report</a>.
    * **Card Layout with Actions** – Displays a list of items with a mapped task link for each item. For more information, see <a href="https://developer.kore.ai/docs/bots/bot-builder-tool/action-info-task/define-a-card-layout-with-actions-report/" target="_blank">Define a Card Layout with Actions Report</a>.
    * **Card Layout with Group By** – Displays a list of items grouped by a specific field. For more information, see <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/dialogs/defining-reports/define-a-card-layout-with-group-by-report/" target="_blank">Define a Card Layout with Group By Report</a>.
    * **Shopping Cart Layout with Actions** – Displays a list of items with a mapped task link for each item. For more information, see <a href="https://developer.kore.ai/docs/bots/bot-builder-tool/action-info-task/define-a-shopping-cart-layout-with-actions-report/" target="_blank">Define a Shopping Cart Layout with Actions Report</a>.