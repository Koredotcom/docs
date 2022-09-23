---

title: Access Management

permalink: en/itassist/access_management

---

# Access Management

Employees today use a plethora of applications, and managing accounts and passwords for these applications is a real problem for the employees. Even when single sign-on solutions are used, the security policies mandate the users to update passwords regularly. One of the common challenges in access management for both employees and administrators is password and account management. Sometimes identifying the issues whether the account has been locked or the password needs to be reset causes unnecessary delays. This can lead to diminished employee productivity if they spend time trying to reset passwords or manage constantly changing passwords. 

IT Assist allows the employees to reset passwords and manage their accounts using simple conversations and commands to the assistant as opposed to the traditional approach of contacting service desks and waiting for resolutions. This not only expedites resolution time for employees but also reduces the support query volume for the service desk.

The Access Management features can be configured to work with the Single-Sign-On solutions of your choice like Okta, Azure AD, etc., and can be adapted as per the organization’s security policies to validate identities such as using a registered phone number or email address, etc.

## Reset Password

IT Assist is very versatile and is trained to generate a new password in various ways depending upon the security policies defined in the Identity Provider using the preferred channel of communication of the employee. For example, directly providing a temporary password, resetting the password with a link, providing instructions to reset a password, or directing employees to the service desk in specific cases.

| ![img](images/en/itassist/reset-pass-temp.png) | ![img](images/en/itassist/reset-pass-instructions.png) |
| :----------------------------------------------: | :------------------------------------------------------: |

​	*Reset password - temporary password generation 				Reset password - password reset instructions* 

## Unlock Account

Employees are often locked out of their accounts due to various reasons. IT Assist makes it easy for the employees to unlock the account with simple intents. Depending on the reason for account lock up and the policies defined by the Identity Provider or the SSO application, IT Assist either unlocks the account or gives appropriate instructions to the employees on why the account is locked and how to unlock it. For example, if an employee requests to unlock his account, IT Assist checks with the SSO (say, Okta) whether the account has been forced locked. If not, it unlocks the account for the employee or gives appropriate instructions for the same. 

| ![img](images/en/itassist/unlock-instructions.png) | ![img](images/en/itassist/nlock-account) |
| ---------------------------------------------------- | ------------------------------------------- |

​		*Providing instructions to unlock the account                        		Unlocking the account directly*

## Password Health Checks and Reminders

Some Identity providers mandate the passwords to be updated at regular intervals. In such cases, IT Assist can be configured to proactively send password reset reminders as per the security policies. If the Identity Provider allows, IT Assist can perform regular password health checks and display appropriate reminders to the employees, as required.

 ![img](images/en/itassist/password-reset-reminder.png)
 

​																	*Password Reset Reminder*

## Configuration

IT Assist allows easy configuration and customization of the access management feature with appropriate administrator rights. If you are a Workbench admin, you can enable or disable access management features, integrate with a custom application for access management or change the conversational flow for this intent. To learn all about the configuration details, refer to the [Workbench Guide](https://docs.google.com/document/d/1O_NP0HgupKwLae216EHm5madwR-Xk2dO/edit#heading=h.282jqzshhbih).
