# Search AI Node Beta

The Search AI Node allows users to create meta filters with specific rules, enhancing the precision, relevance, and overall effectiveness of the Answers/Search functionality. This leads to improved user satisfaction and better performance of our conversational AI platform.

**Key Features of the Search AI Node:**

* Users can effortlessly configure search parameters and filters and set up workflows that redirect to search.
* Users can establish meta-filters with defined rules to narrow the search scope to particular topics or contexts, ensuring more focused and relevant search results.
* The ability to scope searches for specific intents helps minimize intent collusion and enhances the accuracy of AI responses.
* Users gain greater control over the balance between search and automation, allowing for a more customized and efficient automation strategy.

## Add the Node

1. Go to **Automation** > **Dialogs** and select the task to which you want to add the **Search AI Node**.
2. Click **Gen AI** and then click **Search AI Node**. Alternatively, you can drag and drop the **Search AI Node** to the required location on the canvas. For more information on adding nodes, see [different ways to add a node](../../using-the-dialog-builder-tool/#add-nodes).
3. The **Search AI Node** window is displayed with the **Component Properties** tab selected by default.

![alt_text](images/image1.png "image_tooltip")


## Configure the Node

### Component Properties


!!! Note

    The configurations you set up or edit in these sections reflect in all other dialog tasks that use this node.

To configure the component properties, follow the below steps:

1. On the **Component Properties** tab, enter a **Name** and a **Display Name** for Search AI  node. Node names cannot have spaces.
2. Under **Search Configuration **section, users have the option to determine how their search query is formulated. They can choose one of the following:
    1. **Last User Input**: This option is set to the user's most recent response and is used as the search query by default.
    2. **Custom**: Users can provide either static or dynamic values, allowing them to set custom data or variables as the search query.

![alt_text](images/image2.png "image_tooltip")

3. Under **Filters** section, users can define meta filters within the node to refine the search scope based on specific criteria such as topics, document categories, or custom-defined tags. Click **+ Add Filter **to add a new filter.

![alt_text](images/image3.png "image_tooltip")
 
Filters consist of the following components:
    3. **Field Name**: A text box where users can specify the field name.
    4. **Condition**: A dropdown menu with supported operators, including "contains," "doesNotContain," "equals," "doesNotEqual," "exists," and "doesNotExist."
    5. **Field Value**: Supports both static and dynamic values for filtering.
    6. **“AND” or “OR”**: Users can add multiple filters with logical conditions, which will be sent as an array.

![alt_text](images/image4.png "image_tooltip")

4. Under** Results Configuration **section, user can configure how the results should be rendered:
    7. **Generate Answer**:
        1. ** Present Response to User : **This option is selected by default. It displays the response directly to the user. Users can manage the response by clicking **Manage Responses** . When selected, the user is shown the standard response template used for search responses.
        2. **Store Response in Context Object**: If selected, the user can access the entire payload in the context object  “context.nodename” and modify it later in subsequent nodes.
    8. **Return Qualified Chunks**: This option allows user to receive only the segments of data that meet the specified criteria. 

![alt_text](images/image5.png "image_tooltip")

5. In the **Variable Namespaces** section, associate the variable namespaces to execute this node and its transitions. This option is visible only when the variable namespace is enabled for the app. You can go with the task level settings or customize it for this node. For more information, refer to [Managing Namespaces](../../../../app-settings/managing-namespace.md)

![alt_text](images/image6.png "image_tooltip")

### Instance Properties

!!! Note

    The settings in the Instance Properties tab are specific to the current dialog task and do not reflect in other dialog tasks that use this node.

Use the Instance Properties to define any user tags that you want to set.

1. On the Search AI node properties panel, click the **Instance Properties** tab.
2. Under **Advanced Controls**, select the maximum wait time for the **Timeout** for service calls and decide how the  app can respond or choose an alternate path when timeout occurs. You can configure the following settings:
    1. **Timeout(Seconds)**: Select the maximum wait time from the dropdown list. The timeout range can be any value between **1 Second** to **60 Seconds.** The default value is 20 Seconds.
    2. **Timeout error handling**: Choose how the app should respond when the timeout occurs.
        * **Close the Task and trigger Task Execution Failure Event**, or
        * **Continue with the task and transition to this node**; select the node to which the service call can transition in the flow.
3. Under the **Custom Tags** section, add tags to build custom profiles of your VA’s conversations. [Click here for more](../../../../../analytics/automation/custom-dashboard/custom-meta-tags).

![alt_text](images/image7.png "image_tooltip")

### Connections Properties

!!! Note

    * The conditions configured here are applicable only for this instance and will not affect this node when being used in any other dialog.
    * The connection properties would be present only if this is the bottommost node of a sequence.

To set up node connection conditions, please follow the steps outlined in [Adding IF-Else Conditions to Node Connections.](../../node-connections/nodes-conditions)

![alt_text](images/image8.png "image_tooltip")