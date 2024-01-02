# WebHook Node

You can use the WebHook node to subscribe to a message and to WebHook events that capture real-time data from real-time events and show them to the user. You can use the WebHook node for server-side validation, execute business logic, or make backend server API calls. Also, you can use the Kore.ai SDK Tool BotKit to add event handlers, control the messages and WebHook events as required by connecting the WebHook node to a script node to process the response.


## Create and Register an App

To get access to WebHook events and use WebHook nodes in your dialog task, you need to subscribe and configure an app in the **Deploy > Integrations** tab of your Virtual Assistant. For more information, refer to [SDK Configuration](https://developer.kore.ai/docs/bots/sdks/sdk-configuration/){:target="_blank"}. Let us use the example of an Agent Transfer app.

1. Select the **Deploy** tab from the top menu
2. On the left menu, click **Integrations > Agent Transfer**.
3. On the Agent Transfer page, click **Add** next to the **App Name** drop-down list.
4. On the **Create Client App** window, enter the app name in the **Name** field. For example, SDK App.
5. Click **Next**.
6. The **Client ID** and **Client Secret** are generated along with the _App Created Successfully_ message.
7. Click **Done**.
8. In the **Callback URL** field, enter the URL for your application that you want Kore.ai to push data to. For example, https://koremessenger.com/postURL.

    !!! Note
    
        The registration app you create is based on the **Callback URL** applicable to all tasks for the bot. While each task can have unique SDK configurations, the **Callback URL** is the same. Create separate bots for separate application **Callback URLs** for live agent transfers.

9. Under the **PII Data** section, define how **sensitive information** should be handled. If there is a need to share unmasked data when an agent session is in progress, even when [PII redaction is enabled](../../../../../app-settings/advanced-settings/pii-data-masking){:target="_blank"}, select the **Do not mask and send original data to Agent BotKit**. Else, go with the default setting of **Mask and send sensitive data to Agent BotKit**.
10. Under the **Access Using a Connector** section, indicate if your URL is behind a firewall and a **Connector** has to be used.
11. Click **Save**. The _Successfully subscribed_ message is displayed.

    <p id="gdcalert1" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image1.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert2">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

    ![alt_text](images/image1.png "image_tooltip")


## Add the Node

Webhook Nodes can only be added as part of a Bot Action node. Therefore, before you can add a Webhook Node, you need to add a Bot Action node.

!!! Note

    Post v9.0 of the Platform, the Webhook node is categorized under the Bot Action node. For details on the [Bot Action node](../bot-action-node){:target="_blank"}.

Keeping this in mind, the setup a Webhook node in a dialog task involves the following steps:

1. Open the dialog task to add the Webhook node.
2. Create and/or expand a Bot Action node.
3. Add a Webhook node in the designated place. For steps related to adding nodes, [refer here](../../using-the-dialog-builder-tool/#add-nodes){:target="_blank"}.
4. The Webhook window is displayed with the **Component Properties** tab selected by default.
5. To connect a Webhook node to a node outside of its containing Bot Action node, please read our article about the [Bot Action Node](../bot-action-node/){:target="_blank"}.

    <p id="gdcalert2" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image2.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert3">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

    ![alt_text](images/image2.png "image_tooltip")


## Configure the Node

### Component Properties

!!! Notes

    All changes made to the Component Properties tab will affect all instances of the Webhook Node, across Dialog Tasks.  
    If you have not yet configured the SDK, the Component Properties section will notify you that the SDK is not currently configured/Subscribed. Please go to API Extensions to configure the SDK.

To configure the Component Properties tab, please follow the steps below:

1. On the **Component Properties** tab, under the **General Settings** section, enter the **Name** and **Display Name** of your Webhook node. 
2. In the **Variable Namespaces** section, associate the variable namespaces to execute this node and its transitions. This option is visible only when the Variable Namespace is enabled for the VA. You can go with the task level settings or customize it for this node. For more information, refer to [Managing Namespace](../../../../../app-settings/managing-namespace){:target="_blank"}.

<p id="gdcalert3" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image3.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert4">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

![alt_text](images/image3.png "image_tooltip")


### Instance Properties

Use the Instance Properties to define any user tags that you want to set for the Webhook node.

!!! Note

    The settings in the Instance Properties tab are specific to the current dialog task and do not reflect in other dialog tasks that use this node.

1. On the Webhook node properties panel, click the **Instance Properties** tab.
2. Under the **Custom Tags** section, add tags to build custom profiles of your VA’s conversations. [Click here for more](../../../../../analytics/automation/custom-dashboard/custom-meta-tags){:target="_blank"}.

    <p id="gdcalert4" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image4.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert5">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

    ![alt_text](images/image4.png "image_tooltip")


### Connections Properties

Since they are contained within Bot Action nodes, Webhook nodes cannot be connected on their own to any other nodes outside the Bot Action node to which they belong. Connections can only be made with nodes contained within the same Bot Action node. 

From the node’s **Connection Properties** tab, you can configure the following:

* **Webhook Node Connections**: The node within the Bot Action to execute next, after the Webhook node runs. 
* **Bot Action Connections**, where you can update the node to trigger after the Bot Action group is executed. Updates made here will apply to all nodes within the same Bot Action. 

For both connection types you can write conditional statements based on the values of any Entity or Context Objects in the dialog task, or you can use Intents for transitions. 

!!! Note

    The conditions configured here are applicable only for this instance and will not affect this node when being used in any other dialog.

To set up node connection conditions, please follow the steps outlined in [Adding IF-Else Conditions to Node Connections](../../node-connections/nodes-conditions){:target="_blank"}

<p id="gdcalert5" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image5.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert6">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

![alt_text](images/image5.png "image_tooltip")