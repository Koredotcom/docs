---
title: Ticket Management

permalink: en/itassist/ticket_management

---

# Ticket Management

IT Assist can be used to manage both incident tickets and the request tickets end to end. Employees can take various actions on the tickets like view tickets, close tickets, escalate tickets, etc. If there are any updates to the tickets, IT Assist shows the updates as notifications in the chat widget.

## View Tickets

IT Assist can list all the incidents and request tickets related to the employee. Employees can choose to view the list of tickets or request the details of a particular ticket. 

![img](images/en/itassist/incident-list-and-incident-detail.png)

​																*Incident list and incident detail*

## Ticket Follow-up Actions

An employee can take up different follow-up actions like adding comments, marking a ticket as resolved, or escalating issues, on the tickets depending on the features supported by the backend ticket management system and the permissions given to the employee. For example, if the backend application allows employees to escalate or mark tickets as resolved on their own, IT Assist provides the same options to the employee from the detailed view of the tickets.

Alternatively, you can also provide the ticket number and the action to be taken.

| ![img](images/en/itassist/actions-using-buttons.png) | ![img](images/en/itassist/actions-using-conversational-message.png) |
| ------------------------------------------------------ | ------------------------------------------------------------ |

​								*Actions using buttons                             			Actions using conversational message* 

![img](G:\My Drive\ITAssist\actions-with-additional-input-fields.png)

​																*Actions with additional input fields*

If there is a workflow associated with a particular action in the backend application, the workflow is triggered by IT Assist when the employee clicks the corresponding action button in the widget. For example, if escalate action is enabled and the employee wants to escalate a ticket, IT Assist will ask for the escalation reason and initiate the workflow in the backend.

| ![img](images/en/itassist/escalate-ticket.png) | ![img](images/en/itassist/initiating-escalate-workflow.png) |
| ------------------------------------------------ | ------------------------------------------------------------ |

​								*Escalate Ticket 															Initiating Escalate workflow*

IT Assist also allows creating custom workflows using *Kore’s process app* to be associated with any of the actions. For more information on Process App, refer to [this documentation](https://developer.kore.ai/docs/process-apps/how-to-articles/create-and-publish-the-process-app/).

## Ticket Updates 

Any changes made to the tickets by the service team or other employees are also shown to the employee as a **notification** in IT Assist. You can learn more about Notifications [here](https://docs.google.com/document/d/1O_NP0HgupKwLae216EHm5madwR-Xk2dO/edit#heading=h.y0om16hs1skr). 

![img](https://lh5.googleusercontent.com/qr0uWqaHn8SBb30FWh7RV-rzULPRw6rZ5B2dXXyPxJr_JIzcbrYSpczl-ZoMjbzuR0Od_tt8HjYK_h-3ehPp58frnIo7bpd783TeCOGC86T-kaxt8oqTT1jF7Xs8PlE3rn9T2jMgZVHGR-pTCet7FbGdOes71metBkNL5MiUO23thdqEhM4u1GTuLOFY)

​																	*Ticket update notification*
