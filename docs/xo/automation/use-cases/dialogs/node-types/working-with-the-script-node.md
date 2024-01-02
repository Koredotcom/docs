# Script Node

The **Script Node** allows you to write JavaScript code in a dialog task.You can use the script node to perform the following actions:

* Manipulate user input parameters before executing an API call.
* Manipulate the parameters from an API response payload before continuing with the dialog.
* Display custom error messages to the user.
* Make decisions based on complex business rules.

When you test a dialog in the Bot Builder, script node errors are displayed in the **Error in Script Node** dialog with the line number and column number, along with the associated Context object. You can update and test the script directly in the **Error in Script Node** dialog as shown in the following illustration.


## Add the Node

Script nodes can only be added as part of a Bot Action node. Therefore, before you can add a Script node, you need to add a Bot Action node. [Read more about Bot Action Nodes](../bot-action-node/){:target="_blank"}.

Keeping this in mind, the setup a Script node in a dialog task involves the following steps:

1. **Select the Virtual Assistant** you want to work with.
2. **Open the dialog task** to add the Script node to.
3. **Add the script node** in the designated place. For steps in adding nodes, [refer here](../../using-the-dialog-builder-tool/#add-nodes){:target="_blank"}.
4. The Script window is displayed with the **Component Properties** tab selected by default.
5. You can configure the **Connection Properties,** [refer here for details](#connections-properties).

    <p id="gdcalert1" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image1.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert2">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

    ![alt_text](images/image1.png "image_tooltip")


## Configure the Node

### Component Properties

!!! Note

    The configurations you set up or edit in these sections reflect in all other dialog tasks that use this node.

To configure the Component Properties section, please follow the steps below:

1. On the **Component Properties** tab, under the **General Settings** section, enter a **Name** and **Display Name** for the script node. Node names cannot have spaces.
2. Under the **Script Definition** section, click **Define Script** to add JavaScript.
3. On the **Add Script** dialog box, enter your JavaScript; then click **Save**. [See below for JavaScript code examples](#javascript-examples).
4. In the **Variable Namespaces** section, associate the variable namespaces to execute this node and its transitions. This option is visible only when the variable namespace is enabled for the bot. You can go with the task level settings or customize it for this node. For more information, refer to [Managing Namespace](../../../../../app-settings/managing-namespace){:target="_blank"}.

    <p id="gdcalert2" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image2.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert3">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

    ![alt_text](images/image2.png "image_tooltip")


### Instance Properties

Use the Instance Properties to define any user tags that you want to set for the Script node.

!!! Note

    The settings in the Instance Properties tab are specific to the current dialog task and do not reflect in other dialog tasks that use this node.

1. On the Script node properties panel, click the **Instance Properties** tab.
2. Under the **Custom Tags** section, add tags to build custom profiles of your VA’s conversations. [Click here for more](../../../../../analytics/automation/custom-dashboard/custom-meta-tags){:target="_blank"}.

    <p id="gdcalert3" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image3.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert4">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

    ![alt_text](images/image3.png "image_tooltip")


### Connections Properties

Since they are contained within Bot Action nodes, Script nodes cannot be connected on their own to any other nodes outside the Bot Action node to which they belong. Connections can only be made with nodes contained within the same Bot Action node. 

From the node’s **Connection Properties** tab, you can configure the following:

* **Script Node Connections**: The node within the Bot Action to execute next, after the Script node runs. 
* **Bot Action Connections**, where you can update the node to trigger after the Bot Action group is executed. Updates made here will apply to all nodes within the same Bot Action. 

For both connection types you can write conditional statements based on the values of any Entity or Context Objects in the dialog task, or you can use Intents for transitions. 

!!! Note

    The conditions configured here are applicable only for this instance and will not affect this node when being used in any other dialog.


To set up node connection conditions, please follow the steps outlined in [Adding IF-Else Conditions to Node Connections. ](../../node-connections/nodes-conditions){:target="_blank"}

<p id="gdcalert4" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image4.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert5">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

![alt_text](images/image4.png "image_tooltip")


## JavaScript Examples

Using JavaScript, you can customize your dialog task by processing data before or after an API call. For example, directing the dialog task flow. You can use the `Context` object type-ahead feature to identify and select dynamic variables as shown in the following illustration. For more information, refer to [Context Object](../../../context-object/){:target="_blank"}.

<p id="gdcalert5" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image5.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert6">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

![alt_text](images/image5.png "image_tooltip")


### Manipulating Data

In JavaScript, you can fetch data from the session data using session variables. For example, you can GET the user ID using `context.session.UserContext.identities`, and then PUT the data into `context` as shown in the following example.

```
var x = context.session.UserContext.identities;
var isEmailFound = false;
for (var i = 0; i < x.length; i++) {
    if (x[i].type === "mapped") {
        var identity = x[i].val;
        var arr = identity.split("/");
        var pattern = /^cs/i;
        var result = arr[0].match(pattern);
        if (result) {
            isEmailFound = true;
            context.UserSession.put("rtmEmail", arr[1], '20000');
        }
    }
}
```

For more information, refer to [Using Session and Context Variables in Tasks](../../../using-session-and-context-variables){:target="_blank"}.


### Handling Conditions

The following code example returns the customer ID using a `Context` object variable from the Service node response body when the ID is not provided in the `data.results`


```
var data = context.getcontactsService.response.body;
if (data & amp; & amp; typeof(data.results) != 'undefined') {
 context.customerID = data.results.customerId;
} else {
 context.customerID = context.Usersession.customerID;
}
```


### Handling Flow

The next Script node code example validates the bank transfer amount that does not exceed limits for the type of account selected using `Context` object variables.

```
var valid = 0;
var i = 0;
while (context.accdata.length - i) {
 if (context.accdata[i].accountType == context.entities.FromAccountName) {
  if ((context.accdata[i].amount - context.entities.Amount) < 0) { valid = 3; } else { if (context.entities.Amount > context.accdata[i].transferLimit) {
    valid = 0;
   } else {
    valid = 2;
   }
  }
 }
 i++;
}
context.canProceed = valid;
```

#### Related Link

* [**koreUtil libraries**](../../../../../apis/koreutil-libraries){:target="_blank"} (Pre-written JavaScript functions to make common or complex tasks easy to implement)