How does Intent Over Entity work?

[Intent](https://developer.kore.ai/docs/bots/chatbot-overview/about-bots/#I) over [Entity](https://developer.kore.ai/docs/bots/chatbot-overview/about-bots/#E) is a bot-level setting configured on the [Dialog Task](https://developer.kore.ai/docs/bots/chatbot-overview/about-bots/#D) to prioritize a customer’s intent. The bot understands the intention behind the customer's input. By focusing on the intent, the system quickly determines the customer's requirements and the desired outcome, and provides more efficient and effective responses.

There are two options for configuration:



1. **Intent over Entity**: The ongoing intent automatically terminates, initiating a new dialogue. For example: If a customer intends to place an order and during the interaction changes their intent and requests to edit the order, the system terminates the ongoing intent (place order) and initiates a new intent (edit order).


![!\[alt_text\](images/image1.png "image_tooltip")](<../../assets/images/Intent over Entity.png>)


2. **Entity over Intent**: The ongoing dialogue task proceeds normally, considering the customer input as an entity value, and allows the dialogue task to progress to the next node. For example: If a customer intends to place an order and during the interaction changes their intent and requests to edit the order, the system continues with the ongoing intent to place the order.

Configure Intent Over Entity

Steps to configure Intent over Entity:



1. Go to** AUTOMATIONS > Attached bots > Click the bot to be configured**.

![Select Bot](<../../assets/images/Select bot.png>)

2. Click **CONVERSATIONAL SKILLS** on the left panel and then click **Dialog Task** from the dropdown menu.
![Conversational Skills](<../../assets/images/Dialog Task_Menu.png>)

3. The **Dialog Tasks** page appears. Clicking anywhere in the row opens the flow designer for the dialog task.


!![Dialog Task Page](<../../assets/images/Dialog Tasks page.png>)
 


!![Flow Designer Page](<../../assets/images/Flow designer page.png>)

4. Click the **ENTITY** node to be configured and then click the **INSTANCE PROPERTIES** tab.


![Entity Node](<../../assets/images/Entity Node.png>)

5. Click **Advanced Controls** and select **Intent over Entity**. A check box confirms the selection.



![Advanced Controls](images/image7.png "image_tooltip")(<../../assets/images/Advanced Controls.png>)


Manage Interruption Behavior

This feature allows you to manage the interaction's interruption behavior to suit your requirements. There are several pre-configured scenarios available to be configured.

**NOTE**: Interruption Behavior can be configured only when Intent over Entity is selected.

Steps to configure Interruption Behavior:



1. Click the ellipsis (three dots) icon on the top right corner of the flow designer page.

![Flow Designer](<../../assets/images/Ellipsis icon.png>)

2. Click **Manage Interruptions** from the dropdown menu. The **Manage Interruption Behavior** page appears.


![Manage Interruption Dropdown Menu](<../../assets/images/Manage Interruptions dropdown.png>)


![Manage Interruption Behavior Page](<../../assets/images/Manage Interruption Behavior page.png>)

3. Select the required interruption behavior. A confirmation is displayed.

![Interruption Behavior Saved](<../../assets/images/Interruption Settings saved confirmation.png>)
