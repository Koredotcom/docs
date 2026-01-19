# Manage Attachment and Chat History URLs

# Overview

The **Manage URLs** section under **Advanced Settings** allows administrators to control the validity, access behavior, and reuse limits of secure, token-based URLs generated for attachments and chat history. These settings help prevent unintended sharing, enhance security, and align URL usage with organizational compliance requirements.

!!! note "Important Points"

    * These settings apply only to newly generated URLs. Existing URLs will continue to follow the platform-defined defaults and will not be affected by changes made in this section.
    * Generated URLs do not require authentication.
    * Anyone with the URL can access the associated content until the URL expires or the access limit is reached.
    * Users can configure  
        * Appropriate expiration durations
        * Access limits in accordance with organizational security, privacy, and compliance policies.

## Configuration steps

1. Navigate to **App Settings** > **Advanced Settings** > **Manage URLs**.
2. Enable the toggle under Manage URLs. This allows you to configure expiry time and access limits for newly generated URLs.
3. In the **Time** section, set how long a URL should remain valid after generation. Once this duration is reached, the URL will automatically expire and become invalid.
4. In the **Maximum Number of Accesses** section, Toggle from **No** to **Yes** to enable access limits.
5. Enter the maximum number of times the URL can be accessed.
6. Click **Save**. The configuration will take effect immediately for **all newly generated URLs**.

<img src="../images/manage-url.png" alt="Manage URL" title="Manage URL" style="border: 1px solid gray;zoom:50%;"/>

