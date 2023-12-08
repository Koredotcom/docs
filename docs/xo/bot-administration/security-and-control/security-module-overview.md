# Security & Control Module Overview

In the **Security & Control** module of the Kore.ai Bots Admin Console,

* configure Single Sign-On (SSO) authentication for your domain users ([see here](../using-single-sign-on/){:target="_blank"}),
* configure and install the Kore.ai Connector agent for Bot communications between Kore.ai and your on-premises applications using custom Kore.ai Bots ([see here](../../kore-ai-connector/){:target="_blank"}),
* obtain and reset enterprise key for encryption ([see below](#enterprise-key)),
* create app and define API scopes ([see below](#api-scopes))
* other security settings ([see here](../security-settings/){:target="_blank"})


## Enterprise Key

On the **Enterprise Key** page in the **Security & Control** module of the Bots Admin Console, you can view, or regenerate your enterprise data encryption key.

By default, enterprise data, including user data, is automatically encrypted using this key when stored on Kore.ai servers. The encryption key is reissued every 60 days, or whenever manually refreshed by an admin.

<img src="../images/bac-enterprise-key.png" alt="Enterprise key" title="Enterprise key" style="border: 1px solid gray;zoom:70%;"/>

To generate a new enterprise data encryption key, click **Refresh**.


## API Scopes

Using this option you can define apps and associate API scopes for accessing various platform features.

1. Use the **New** button to create a new app.
2. Select **+Create App** option from App drop-down.
3. Once you enter a name, a **Client ID** and **Client Secret** would be generated which can be used to access the platform
4. For each app created the following API Scopes can be assigned as per requirement
    1. **IntentIdentification** includes the scopes for Intent and Entity Detection;
    2. **Bot Definition** includes the scopes for Bot Import, Export and Creation;
    3. **Bot Publish** for Publish access;
    4. **Test & Train** to include permissions to Train ML  and FAQ, Utterances Import & Export;
    5. **Logs** to include retrieval capablity of Bot Audit and Admin Console Audit Logs;
    6. **Profile Management** to get access to Role Management APIs and to Delete User Data;
    7. **Bot Analytics** to be able to retrieve Chat History and Bot conversation Sessions
    8. **User Management** scope to manage users;
    9. **Custom Reports** scope to retrieve the data associated with custom widgets and reports;
    10. **ManageKnowledgeGraph** scope to export and manage the complete definition of the Knowledge Graph;
    11. **Channel Management** to create and update channels;
    12. **BotKit** to configure the botkit and agent transfer;
    13. **Master Admin** – assign this scope to get the list of sample bot.

5. Once created these apps can be used from within the Bot Builder Platform or externally to access various features by invoking the corresponding public API ([see here for list](../../../apis/api-list){:target="_blank"}).