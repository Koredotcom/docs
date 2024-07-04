# Managing Your Users

**User Management** involves managing users and user groups

* From **[Users section](#users)**, you can view and manage your Kore.ai user roles, status, and monitor user message activity.
* From **[User Settings section](#user-settings)**, you can define the user profile fields displayed to the user in their profile, for example, address information, and if the user can edit those fields.


## Users

You can manage users in your enterprise network from the Bot Administration page from **User Management -> Users** section.

<img src="../images/bac-users.png" alt="User Management Module" title="User Management Module" style="border: 1px solid gray;zoom:50%;"/>


The following list describes the columns displayed for each Kore.ai user.


<table border="1">
  <tr>
   <td><strong>COLUMN</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
  </tr>
  <tr>
   <td>Name
   </td>
   <td>Displays the Kore.ai username, admin indicator, and selection box.
   </td>
  </tr>
  <tr>
   <td>Email Id
   </td>
   <td>Registered email id of the user.
   </td>
  </tr>
  <tr>
   <td>Bot Builder Access
   </td>
   <td>The type of access user has to Bot Builder. Can be
<ul>

<li><strong>none</strong> i.e no access to Bot Builder;

<li>only <strong>Bot Builder Access</strong>, or

<li>Bot Builder access along with permission for a <strong>New Bot Creation</strong>
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>Status
   </td>
   <td>Displays the Kore.ai user status. One of:
<ul>

<li><strong>Active</strong> – The user is active and can interact with other Kore.ai users.

<li><strong>Not Active</strong> – Users invited by the Admin, but who are yet to join or accept the invitation.

<li><strong>Suspended</strong> – The user is suspended by an administrator. The user cannot log on to Kore.ai, however, messages can still be sent to the suspended user. The status of a <strong>Suspended </strong>user can be <strong>Activated</strong>.

<li><strong>Locked</strong> – The user exceeded the maximum number of logon attempts. The status of a locked user can be changed to <strong>Unlock</strong>, <strong>Suspend</strong>, or <strong>Deactivate</strong>.
</li>
</ul>
   </td>
  </tr>
</table>


Clicking on a specific User row from the Users page opens the **User Details** page from where you can modify the



* **[User Profile](#profile)**,
* **[Sessions/Devices](#sessionsdevices)**, and
* **[Manage Bots access](#manage-bots)**.


### Profile

You can modify the user profile information of a specific user in your account, for example, to update their address or title.

<img src="../images/bac-users-profile.png" alt="User Profile" title="User Profile" style="border: 1px solid gray;zoom:50%;"/>


The following fields are accessible from this page:

* **Status** can be:
    * _Active_: hovering over the information icon displays the last logged in date and time.
    * _Not Active_: hovering over the information icon displays when the invite to join the account was sent.
    * _Suspended_: hovering over the information icon displays the last logged in date and time. You can Activate User either using the **more** icon on this dialog or using the **ACTIVATE** button displayed when you hover over the user row in the Users page.

* **Groups** to which the user is assigned. Using the **Edit** link you can select or deselect the groups for the given User. [Refer here for more on Managing Groups](../managing-your-groups){:target="_blank"}
* **Admin Role** status, can be added or removed using the **Edit** link.
* **Bot Builder Access** status can be modified using the **Edit** link. [Refer here for more on Role Management](../role-management){:target="_blank"}.
* User Details like First Name, Last Name, email id, etc. can be viewed and modified.  
Note that the email id is read-only field and cannot be modified.


### Sessions/Devices

This tab displays the User activity – the session ID, device type the user used, and their last activity timestamp on that session.

As an admin, you may need to end one or more user sessions. You can use the **Kill Session** button to to end a mobile or desktop session for the user.

!!! warning

    No confirmation message is displayed and the session is immediately and abruptly ended for the user.


<img src="../images/bac-users-sessions.png" alt="Sessions - User Activity" title="Sessions - User Activity" style="border: 1px solid gray;zoom:50%;"/>


### Manage Bots

This tab displays the Bots to which the User has access and their role – Owner, Developer or Tester.

As an admin, you may Edit or Delete the role of the User for a given Bot. Note that you cannot delete or modify the role of a Bot Owner, it is assigned at the time of Bot creation.

You can also select a Bot and assign a Bot role to the user. [See here for more on Bot roles](../role-management/#bot-roles){:target="_blank"}.

<img src="../images/bac-manage-bots.png" alt="Manage Bots" title="Manage Bots" style="border: 1px solid gray;"/>


### Other Options

<img src="../images/bac-users-more.png" alt="Other Options" title="Other Options" style="border: 1px solid gray;"/>



#### Reset a User Password

As a Bots Admin, you can send a password reset email to any user, including yourself, from the Bots Admin Console if Single Sign-On (SSO) is not enabled. You can reset the password using the **more** icon from the User Profile page.

The _password reset email_ sent message is displayed and an email is sent to the user with instructions about how to reset the password.

**Note**: When SSO is enabled, password policies are not in effect for Bots Admins or Kore.ai users, the SSO service provider handles the password policies.

!!! tip

    If SSO is enabled, Bots Admins can still log on to the Bots Admin Console directly using their password credentials and bypass SSO. For more information, see [Logging On Using Your Admin Password Instead of SSO](../../security-and-control/using-single-sign-on/#logging-on-using-your-admin-password-instead-of-sso){:target="_blank"}.


#### Delete User

Using the **more** icon from the User Settings page you can **Delete User.**

You can also **Delete User** from the Users page by using the **delete icon** on the hover of the User row or select users and using the **Delete Selected** link.

!!! Note

    You cannot delete the Users if they are owners of the virtual assistant. You need to change the respective bot ownership to someone else in order to delete the user.


## User Settings

On the **User Settings** section in the **User Management** module, you can manage the fields to display to Kore.ai users on their **User Profile** page, for example, **Company**, **Department**, and so forth.

<img src="../images/bac-user-settings.png" alt="User Settings" title="User Settings" style="border: 1px solid gray;zoom:50%;"/>


<table border="1">
  <tr>
   <td><strong>CONTROLS</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
  </tr>
  <tr>
   <td>Default Fields Section
   </td>
   <td>The following user profile fields are displayed by default and cannot be disabled from the User Profile page for the user.
<ul>

<li><strong>First Name</strong>

<li><strong>Last Name</strong>

<li><strong>Profile Picture</strong>

<br>
You can also select or clear <strong>Allow Edits</strong> to enable/disable the user to overwrite the data. Modifications to the user profile take effect when the user logs in next.
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>Controlled Fields Sections
   </td>
   <td>The following user profile fields are disabled by default and can be enabled by the Enterprise Admin or admin user:
<ul>

<li><strong>Company</strong>

<li><strong>Department</strong>

<li><strong>Title</strong>

<li><strong>Mobile Number</strong>

<li><strong>Work Number</strong>

<li><strong>Address (Number & Street)</strong>

<li><strong>Address (Street/Suite #)</strong>

<li><strong>City</strong>

<li><strong>State</strong>

<li><strong>Zip</strong>

<li><strong>Country</strong>

<br>
You can also select or clear <strong>Allow Edits</strong> to enable/disable the user to overwrite the data. Modifications to the user profile take effect when the user logs in next.
</li>
</ul>
   </td>
  </tr>
</table>