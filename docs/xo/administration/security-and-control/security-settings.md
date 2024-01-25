# Security Settings

Apart from the sign-on, and other security settings ([see here for details](../security-module-overview/){:target="_blank"}), you can modify the following default security & control settings for your account:

* Data retention period
* Context persistence
* IP address restriction


## Data Retention

The end-user interaction data from **Standard** accounts/workspaces is removed as per Kore.ai’s retention policy. It is usually 7 years and can be revised at periodic intervals.

The end-user interaction data for **Enterprise** accounts is retained for 7 years. Enterprises can customize the retention period to suit their policies using the Data Retention Period option.

**Steps**:

1. Go to **Security & Control -> Settings**.
2. Under **Data Retention Period**, you have two options:
    1. _Use the default retention period – 7 years._
    2. _Use the custom data retention period and set the duration between 1 month to 7 years._

    <img src="../images/bac-security-settings-img1.png" alt="Security Settings - Data Retention" title="Security Settings - Data Retention" style="border: 1px solid gray;zoom:70%;"/>


The following data would no longer be available post the data retention period:

* Conversation History / Messages
* Usage Information
* Task Execution and Performance Metrics
* Session and Message Tags
* Alert Instances
* Debug Logs

!!! Note

    The custom data retention period cannot be set if your account has a large volume of messages. In such a case, you are requested to reach out to Kore.ai Support for setting Custom Retention Period.


## Context Persistence

By default, the XO Platform stores the context of the end-users’ conversations with the assistant. This context information can be used for debugging and analysis purposes.

However, you might not want the Platform to store this information due to the presence of sensitive data about customers or other security-related reasons. You can opt not to store the same using the **Context Persistence** option.

**Steps**:

1. Go to **Security & Control -> Settings**.
2. Under **Context Persistence**, you have two options:
    1. _Store end users’ conversation context information and allow authorized developers to view this information_ – this is the default setting.
    2. _Do not store end users’ conversation context information_ – this will ensure that:
        1. the Platform does not store the context information
        2. Option to view context information in the XO Platform, like Metrics and any other places, is disabled.

    <img src="../images/bac-security-settings-img1.png" alt="Security Settings - Context Persistence" title="Security Settings - Context Persistence" style="border: 1px solid gray;zoom:70%;"/>


## IP Address Restriction

By default, users can access the XO Platform, and the Admin Console from any IP address as long as they have valid credentials.

You can, additionally, restrict the access from a specified range of IP addresses. This restriction applies to developers from your account alone, i.e if a developer belongs to another account also their access to the Platform using that account will not be restricted.

**Steps**:

1. Go to **Security & Control -> Settings**.
2. Under **IP Address Restriction**, you have two options:
    1. _No restriction_ – this is the default setting and access is not restricted to any IP address.
    2. _Restrict_ – Here you can specify a range of IP Addresses to which the access is restricted. All other addresses would be blocked from accessing the XO Platform and the Admin Console Platform.

    !!! Note

        The IP Address of your (current) system should be part of the allowed IP Addresses list.


    <img src="../images/bac-security-settings-img3.png" alt="Security Settings - IP Address Restriction" title="Security Settings - IP Address Restriction" style="border: 1px solid gray;zoom:70%;"/>