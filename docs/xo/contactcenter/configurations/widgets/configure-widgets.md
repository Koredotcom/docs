# Widgets

Contact Center AI allows you to integrate external systems and pages into the Agent Console. Agents can use widgets from within custom [Agent Console Layouts](../../../console/manage-layout.md).

!!! Note

    For widgets to load properly within the agent console, you may need to set up permissions to allow “platform.kore.ai’ to access the application or page you want to integrate. 

## Add a Widget

Steps to add an external widget:

1. Go to **Contact Center AI** > **CONFIGURATIONS** > **Widgets**.
2. Click **External Widget**.  
<img src="../images/widgets-page.png" alt="Widgets Page" title="Widgets Page" style="border: 1px solid gray; zoom:80%;">

3. The _External Widgets_ window opens. Click **+ New External Widget**.
<img src="../images/new-external-widget.png" alt="New External Widget" title="New External Widget" style="border: 1px solid gray; zoom:80%;">

4. The _Add Widget_ window opens, and you can configure the following:
    1. The **Widget Name** by which to identify it later.
    2. Select the checkbox to load the custom widget independently without a conversation.
    3. The **Widget Icon**. Click the section to upload a file, or use drag-and-drop.  
    <img src="../images/widget-name.png" alt="Widget Name and Icon" title="Widget Name and Icon" style="border: 1px solid gray; zoom:80%;">

5. If you want to remove an icon, click the **Delete (bin)** button on the right side. You can re-upload an icon afterward as needed.  
<img src="../images/delete-icon-button.png" alt="Delete Icon Button" title="Delete Icon Button" style="border: 1px solid gray; zoom:80%;">

6. The **URL** is the address of the system or webpage that you want to integrate as a widget. You can create a dynamic URL and select variables from a static list or based on custom variables that reside inside the meta-info of the conversation. Select parameters from the **{} Variable** drop-down. The available variables are _Agent Id, Customer Email Id, Conversation Id, Agent First Name, Customer First Name, Customer Last Name, Customer phone Number, and Agent Last Name._ You can also insert a custom variable.

    The Insert Custom variable feature enables you to use metadata or custom keys configured in Agent Utilities as dynamic variables. This capability allows you to customize widget URLs based on customer-specific metadata. Agents can embed metadata values directly into URLs by using variable expressions in the following format:

    `{{context.metaInfo.<yourCustomVarName>}}`

    When the widget loads, the system replaces the variable with the corresponding metadata value stored in the context.metaInfo object.

    Example

    In the URL field of a widget configuration, you can define a dynamic Kore website link as shown below:

    https://www.kore.com/?id={{context.metaInfo.<yourCustomVarName>}}

    When rendered, <yourCustomVarName> dynamically resolves to the actual metadata value associated with the current session.

    For example, if context.metaInfo.customerId = 12345, the URL resolves to:

    https://www.kore.com/?id=12345

7. The **Failure URL** displays in case the intended page does not load. You can set the same variables as for the main URL above.  
<img src="../images/url-and-failure-url.png" alt="URL and Failure URL" title="URL and Failure URL" style="border: 1px solid gray; zoom:80%;">

8. Click **Save**.  
<img src="../images/save-widget.png" alt="Save Widget" title="Save Widget" style="border: 1px solid gray; zoom:80%;">

9. Once saving the widget, a success message displays, and the widget is listed within the External Widgets window.
<img src="../images/widget-created.png" alt="Widget Created" title="Widget Created" style="border: 1px solid gray; zoom:80%;">

## Edit a Widget

To edit an existing widget, find it in the list of External Widgets, then click on it. The configuration window opens, and you can edit the name, icon, URLs, or all.  
<img src="../images/edit-widget.png" alt="Edit Widget" title="Edit Widget" style="border: 1px solid gray; zoom:80%;">

## Delete a Widget

To delete an existing widget, find it in the list of _External Widgets_, then click on it. Click the **Delete (bin)** button on the left of the bottom toolbar, then **confirm** your choice.  
<img src="../images/delete-widget.png" alt=" Delete Widget Button" title="Delete Widget Button" style="border: 1px solid gray; zoom:80%;">

!!! Note

    When deleting a widget, all configurations are lost, and the widget is removed from the Agent Console. You cannot restore deleted widgets. Please proceed with caution.

## Add a Widget to an Agent Console Layout

Once you save an external widget, you can add it to the Agent Console using the [Manage Layout](../../../console/manage-layout.md) feature.

To add a widget to an _Agent Console Layout_, follow these steps:

1. From within the Agent Console, click **Manage Layout** on the top toolbar.
2. From the list of available layouts, select the one to which you want to add the widget and click the **Edit (✐)** icon next to it.
3. On the _Edit Layout_ screen, find the widget in the left-hand-side panel. Drag and drop it to the right-hand-side panel.  
    <img src="../images/edit-layout.png" alt="Edit Layout" title="Edit Layout" style="border: 1px solid gray; zoom:80%;">

4. Click Save. Once the widget is added, the integrated system or page will display within the widget as part of the selected Agent Console Layout. See what it looks like in the demo below.
    <img src="../images/layout-demo.gif" alt="Layout Demo" title="Layout Demo" style="border: 1px solid gray; zoom:80%;">

## Delete a Widget from an Agent Console Layout

To delete a widget from an _Agent Console Layout_, follow these steps:

1. From within the Agent Console screen, click **Manage Layout** on the top toolbar.
2. From the list of available layouts, select the one to which you want to add the widget and click the **Edit (✐)** icon next to it.  
    <img src="../images/edit-layout.png" alt="Edit Layout" title="Edit Layout" style="border: 1px solid gray; zoom:80%;">

3. On the _Edit Layout_ screen, click **More Options** at the top of the widget, then select **Delete**.
    <img src="../images/delete-widget-layout.png" alt="Delete Widget From Layout" title="Delete Widget From Layout" style="border: 1px solid gray; zoom:80%;">

    !!! Note

        Deleting a widget from the _Agent Console Layout_ only removes it from the agents’ view. The external widget configuration remains in place, and you can choose to integrate it again later.

## Load Widgets Without Conversations

If the checkbox to load the widget independently is selected when adding a widget, the widgets appear on the agent desktop even when a conversation is not initiated. [Learn more](../widgets/configure-widgets.md#add-a-widget).  
<img src="../images/layout.png" alt="Load Widgets Without Conversations" title="Load Widgets Without Conversations" style="border: 1px solid gray; zoom:80%;">  

!!! Note

    Users can pre-load widgets without conversational context by enabling the option from the widget settings. Widgets that depend on conversational context will continue to function without any changes.