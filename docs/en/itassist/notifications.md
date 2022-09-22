---
title: Notifications

permalink: en/itassist/Notifications

---

# Notifications

Sometimes, due to the lack of timely updates, employees miss important information. This can lead to unnecessary delays in taking appropriate actions. 

IT Assist notification framework allows employees to receive updates and announcements as notifications through their preferred channel of communication. It can also provide quick action buttons, forms, or links as notification content for the ease of use of the employees. 

For example, if a request ticket is created by an employee and it requires approval from the manager, the update is immediately shown to the manager as a notification in the IT Assist chat widget. Whenever the manager takes any action on the request, like approving or denying the request, the update is again displayed to the employee as a notification.

| ![img](G:\My Drive\ITAssist\approval-notification-to-manager.png) | ![img](G:\My Drive\ITAssist\approval-update-to-the-employee.png) |
| ------------------------------------------------------------ | ------------------------------------------------------------ |

​	   			*Approval notification to manager	                       		  Approval update to the employee*

## Features 

- Notifications are displayed to the employees in real time. If the intended employees are logged in, the notifications are displayed as soon as the corresponding event is triggered. 
- Notifications are displayed to the employees in their preferred channel of communication. If a broadcast notification is sent and different employees are using different channels, the notifications will be displayed across all the channels being used. 
- The notification message can have action buttons, links, forms, or simple text as content. 

## Types of Notifications

IT Assist is capable of handling two types of notifications:

- **Broadcast notifications**: These types of notifications are useful when the message is to be sent to a large group of employees, like the company announcements for an upgrade, mandatory training, or new security policy, etc. Broadcast messages can be sent to all the employees of the organization or the employees of a particular department.

![img](G:\My Drive\ITAssist\broadcast-message.png)

​																					*Broadcast message*

- **User-specific notifications**: These notifications are specific to a particular employee and only displayed to the same employee. These notifications can be sent either using the employee id or the email address of the employee. For example, displaying a notification to the employee when there is an update to any of his tickets or when there is a pending action item for the employee.

| ![img](G:\My Drive\ITAssist\user-specific-notification-request-approval.png) | ![img](G:\My Drive\ITAssist\user-specific-notification-ticket-update.png) |
| ------------------------------------------------------------ | ------------------------------------------------------------ |

​	*User-specific notification - request approval            			User-specific notification - ticket update*

IT Assist notification framework is very flexible and highly customizable. There are two ways to send notifications - using the **Notifications interface** in the Solution Workbench and **programmatically by invoking the Notification API** exposed by the Workbench. Find more details on how to send Notifications [here](https://docs.google.com/document/d/1O_NP0HgupKwLae216EHm5madwR-Xk2dO/edit#heading=h.4l8mv5ca53g7). 

The backend applications can be easily integrated with IT Assist to display notifications triggered by events during various workflows using the Notification API exposed by Workbench. 

>  <span style="color:orange">**Note**: </span> If the backend application does not have a notification framework, IT Assist can also be configured to access the corresponding event APIs in the backend applications and send notifications on its own. However, if the backend application does not support workflows or triggers events, you can use Kore’s Process App to create custom workflows and then integrate them with IT Assist to send notifications. For more details, [contact us](https://kore.ai/contact-us/).