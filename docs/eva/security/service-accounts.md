# Service accounts

This guide provides instructions for connecting, managing, and setting default service accounts in the system.

The system supports integration with multiple service accounts, including **Google**, **Microsoft**, and **LDAP**.  

To connect:

1. Select a service account type, which will open a form specific to the chosen account.
2. Complete and submit the form to create the service account.

After creation, service accounts are listed and managed through options available in a three-dot menu:

* **Edit**: Modify the service account details.
* **Delete**: Remove the service account from the list.
* **Set as Default**: Mark the service account as the system default.

The default service account is used for relevant configurations across the system.  

<img src="../images/service-account.png" alt="service-account" title="service-account" style="border: 1px solid gray; zoom:80%;">

!!!Note
    
    Attempting to delete a service account linked to user enrollment will trigger a pop-up, informing the admin that deletion is restricted due to the account’s association with user enrollment.