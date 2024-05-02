# VA Authorization Overview

Kore.ai XO Platform’s Enterprise Integration Framework supports multiple authentication models that can be configured at a task level for each assistant, to use both authenticated and unauthenticated tasks in the same configuration.

Developers can build custom authentication profiles for[ virtual assistants](https://blog.kore.ai/a-complete-guide-to-chatbots) by defining subdomains through tenancy URLs, adding new fields through IDP form fields, and more. They can also test and validate the authorization definition before moving on to the next steps in the development process. The Platform passes user identity information and authentication tokens to the context as the web and mobile SDK initializes, so your VA can leverage existing authentication and authorization settings for end users.


## Supported Authentication Models

The Platform lets you quickly enable one authentication profile across all VAs and tasks, or create custom profiles for each assistant and task: You can configure authentication for your assistant to access third-party web services, with support for the following authorization types. 


### Basic Auth

A standard protocol to collect username and password information. Kore.ai uses SSL encryption and basic authentication to help secure end-user information. For more information, see[ Setting Up Authorization using Basic Auth](../../app-settings/dev-tools/bot-authorization/setting-up-authorization-using-basic-auth/setting-up-authorization-using-basic-auth/).


### OAuth v2 password grant type

Define a custom authorization type for non-standard web service authorization types. For more information, see[ Setting Up Authorization using OAuth v2 password grant](../../app-settings/dev-tools/bot-authorization/setting-up-authorization-using-basic-auth/setting-up-authorization-using-oauth-v2-password-grant/).


### OAuth v2 client credentials

This option allows you to configure authorization using client credentials.[ Learn more.](../../app-settings/dev-tools/bot-authorization/setting-up-authorization-using-basic-auth/bot-oauthv2-clientcredentials/){:target="_blank"}


### OAuth v2

The newest version of the OAuth protocol focuses on specific authorization flows for web applications and web services. For more information, see[ Setting Up Authorization using OAuth v2](../../app-settings/dev-tools/bot-authorization/setting-up-authorization-using-basic-auth/setting-up-authorization-using-oauth-v2/){:target="_blank"}.


### OAuth v1

Enables web applications or web services to access protected resources using an API without end-users having to disclose their login credentials to Kore.ai. For more information, see[ Setting Up Authorization using OAuth v1](../../app-settings/dev-tools/bot-authorization/setting-up-authorization-using-basic-auth/setting-up-authorization-using-oauth-v1/){:target="_blank"}.


### API Key

Identification and authorization tokens generated or provided by a web application or web service are used to identify the incoming application request, and in some cases, also provide authentication for secure access. For more information, see[ Setting Up Authorization using an API Key](../../app-settings/dev-tools/bot-authorization/setting-up-authorization-using-basic-auth/setting-up-authorization-using-an-api-key/){:target="_blank"}.


### Kerberos SPNEGO

Enables enterprises to use Kerberos SPNEGO authentication flow to connect securely with their internal applications using this security protocol. For more information, see the [Setting Up Kerberos SPNEGO authorization profile](../../app-settings/dev-tools/bot-authorization/setting-up-authorization-using-basic-auth/setting-up-the-kerberos-spnego-authorization-profile/){:target="_blank"} article.


## Authorization Options

Each authorization you add to your assistant comes with several options which can be accessed by selecting an authorization profile under **Automation AI > Settings > Dev Tools > Authorization Profiles.**

These options are:

* **Test** – Click the Test button corresponding to an authorization to use this feature. This option lets you test the authorization profile to ensure that the assistant establishes a connection to the app you linked it with via the authorization. Test steps differ, depending on the authorization model. Please see the documentation relevant to each model for details related to testing. 
* **Edit** – Click the **3-dot menu** icon corresponding to an authorization, then select **Edit** to reach the editing dialog. Here is where you can edit an existing authorization and change any of the details related to it. 
* **Delete** – Click the **3-dot menu** icon corresponding to an authorization, then select **Delete**. Confirm your choice if you are sure that you want to delete the authorization profile.

    !!! WARNING
    
        Deleted authorization profiles cannot be restored. Please proceed with caution.

<img src="../images/auth-options.png" alt="Authorization profiles - Options" title="Authorization profiles - Options" style="border:1px solid gray; zoom:60%;">