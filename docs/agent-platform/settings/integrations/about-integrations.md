# Integration with Third-party Services

## Overview

The **Integrations** feature allows you to connect the Agent Platform to third-party services and use their features seamlessly within your account. This extends the platform’s capabilities to leverage these services and build high-quality AI applications. Once you add a connection for an integration, you can link it to the **Integration node** in the Tool Flow canvas. This allows you to seamlessly use third-party services while building your tool automation. [Learn more](../../tools/tool-flows/types-of-nodes/integration-node.md){:target="_blank"} about the **Integration** node.

The Agent Platform supports over 120 integrations across various categories. Each integration is secured by an authorization mechanism supported by the third-party service, which validates the user’s identity before accessing account resources, such as apps or files. The three primary auth methods supported for integrations include:

* **API**: A simple token is passed in the request (usually in headers or query parameters) to authenticate the user or app trying to access an API.
* **OAuth2**: Uses the OAuth2 industry-standard authorization framework to grant limited access to resources on a service without sharing passwords. The auth method uses the following concepts:
    * **Access Token**: A temporary token that the app uses to access the user’s resources.
    * **Scopes**: Permissions tied to the token (e.g., "read email", "write files").
    * **Expires**: Tokens often have a time limit for security.
    * **Refresh Token**: A token used to get a new access token when the old one expires.
    * **Bearer**: **API authentication** where the client sends a **token** (called a *bearer token*) in the request header to access protected resources after a successful login or authorization (usually via OAuth 2.0). The server checks the token to verify if the request is allowed.

    <div class="admonition note">
    <p class="admonition-title">Note</p>
    <p><ul><li>Other authentication methods supported for specific integrations include <b>Basic</b>, <b>Basic with JWT</b>, <b>OAuth1</b>, and <b>custom authentication</b> defined by the service provider.</li>
    <li>Some providers may support <b>multiple authentication methods</b>, allowing flexibility based on your integration needs</li></ul></p>
    </div>

## Access Integrations

To access the feature, [navigate](https://docs.kore.ai/agent-platform/settings/settings-overview/#access-settings-console){:target="_blank"} to the **Settings** console and click **Integrations** on the left navigation menu.
<img src="../images/access-integrations.png" alt="access integrations" title="access integrations" style="border: 1px solid gray; zoom:75%;">

## Key Features

The features supported on the Integrations page include:

* **All Integrations and Connected Tabs**

    Click the **All Integrations** tab to view the list of available integrations based on the category you choose, and add a connection using the supported auth method. Some of the AI-based integrations include [AWS S3 Bucket](https://docs.kore.ai/agent-platform/settings/integrations/integrate-with-s3-bucket/){:target="_blank"}, [Weight & Biases](https://docs.kore.ai/agent-platform/settings/integrations/integrate-with-wandb/){:target="_blank"}, and [Hugging Face](https://docs.kore.ai/agent-platform/settings/integrations/enable-hugging-face/){:target="_blank"}.

    Once a service connection is configured and established, the integration appears in the **Connected** section and is removed from the **All Integrations** list. If you delete the connection, the integration will be listed again under **All Integrations**.
    <img src="../images/all-integrations-tab.png" alt="all integrations" title="all integrations" style="border: 1px solid gray; zoom:75%;">

* **Search Integration**: Enter the integration name in the **Search** field to find it in the list. Results will appear for both full and partial matches.
<img src="../images/search-integration.png" alt="search integration" title="search integration" style="border: 1px solid gray; zoom:75%;">

* **Category Dropdown List**: The Agent Platform supports multiple categories based on the purpose of the integration, such as AI and Machine Learning, Marketing and Social Media, E-commerce, and more. Select the relevant category or categories in the list and click **Apply** to view the corresponding integrations.
<img src="../images/select-category-of-integration.png" alt="change category" title="change category" style="border: 1px solid gray; zoom:75%;">


* **Authorization Dropdown List**: The available types for authentication methods are API, OAuth2, and Bearer. Refer to the introduction section of this page for more details. Select the required option(s) and click **Apply** to view the relevant integrations.
<img src="../images/select-category-integration.png" alt="select auth" title="select auth" style="border: 1px solid gray; zoom:75%;">

* **List View**: Click this icon to view the available integration options as a list with the following information:
    * **Connection Name**: The service provider’s name.
    * **Description**: A brief description of the purpose or type of integration.
    * **Type**: The authorization method.<img src="../images/list-view.png" alt="list view" title="list view" style="border: 1px solid gray; zoom:75%;">

* **Tile View**: This is the default view. Click this icon to view all the integrations as individual cards.
<img src="../images/tile-view.png" alt="tile view" title="tile view" style="border: 1px solid gray; zoom:75%;">


## Add Connection to Set Up Integration

To add a connection or configure an integration, follow the steps below:

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>You can also add a connection directly from the <b>Integration node</b> on the Tool Flow canvas. <a href="https://docs.kore.ai/agent-platform/tools/tool-flows/types-of-nodes/integration-node/" target="_blank">Learn more</a>.</p>
</div>

1. [Access](../integrations/about-integrations.md/#access-integrations){:target="_blank"} the **Integrations** page.
2. **Case 1**: To select a service provider connection for the first time, follow these steps:
    * (Optional) In the **All Integrations** tab, select the **Category** and **Authorization** from the respective lists to filter the integration options.
    * Click the required integration tile/listing.

     **Case 2**: To select an existing/connected provider, click the **Connected** tab, and click the required provider.

3. Click **Add Connection** on the next page or the integrations listing page.
<img src="../images/add-new-conn.png" alt="add connection" title="add connection" style="border: 1px solid gray; zoom:75%;">
<img src="../images/connected-integration-add.png" alt="connected integration" title="connected integration" style="border: 1px solid gray; zoom:75%;">

4. The Configuration window is displayed, where you must enter the following information:
    * **Connection Name**: A unique name to identify the integration.
    * **Authorization Details** 
        * Configure the required authorization details in this section to securely connect to the tool and access external services. A provider may support more than one auth type. In this case, you must select the authentication type you want to set up for the integration, such as *OAuth2*, *Bearer Token*, or *API*.

        <div class="admonition note">
        <p class="admonition-title">Note</p>
        <p>You are allowed to select only one auth type for a connection.</p>
        </div>

        * The **Pre-authorize the integration** option is auto-selected, indicating that you must provide authentication credentials to interact with the tool or service. You can select the preferred authentication method, such as *OAuth2* or *Bearer* from the available options to configure the credentials. 

        * Based on the selected authorization method, the relevant configuration fields automatically appear under each corresponding authorization type.

        **OAuth2**

        * Provide the connection name and select the configured **Auth Profile** from the list in the **Custom** window to associate it with the integration for authentication. [Learn more](https://docs.kore.ai/agent-platform/settings/security-and-control/authorization-profile/#add-authorization-profile){:target="_blank"} about setting up auth profiles in your account. If no auth profiles are configured, you can add one by selecting **+ Create new** and following the steps mentioned [here](https://docs.kore.ai/agent-platform/settings/security-and-control/authorization-profile/#add-authorization-profile){:target="_blank"}.
        * **Custom auth** allows you to use your custom-configured authentication flow by selecting an **Auth Profile** on the Agent Platform, instead of using third-party authentication.
        * Once an Auth Profile is selected, all its credentials are fetched and automatically populate the corresponding fields such as **Redirect URL**, **Scopes**, **Base URL**, and more.
        * You don’t need to re-authenticate as long as the **authorization profile** remains in your account (i.e., it hasn’t been deleted).
        * If you attempt to connect to a provider using a deleted auth profile, an error will occur.
        * When configuring a connection after an auth profile has been deleted, it will no longer appear in the **Custom** window.
        * Click **Authorize** to test the integration for the selected Auth profile.
        <img src="../images/click-authorize.png" alt="click authorize" title="click authorize" style="border: 1px solid gray; zoom:75%;">

        **Bearer Token**

        * When you select this auth type, you must enter the bearer token along with related information such as the *Base URL*, *API Key*, *Bot Token*, or other relevant credentials.
        * The required fields depend on the bearer authentication framework supported by the selected service provider.
        * You can retrieve (copy and paste) these values from the Admin console > Settings section of your account on the provider’s site. 
        * Click **Test** to validate the connection. A success message is displayed once the connection is set up.
        <img src="../images/click-test-oauth.png" alt="test oauth" title="test oauth" style="border: 1px solid gray; zoom:75%;">

        **API**

        * When you select this type, you must enter the **API Key** or **Access Token** for the service provider. 
        * Additional field inputs may be required based on the specific parameters needed to configure the provider.
        * You can retrieve (copy and paste) these values from the admin console > Settings section of your account on the provider’s site.
        * Click **Test** to validate the connection.  A success message is displayed once the connection is set up.
        <img src="../images/test-validation.png" alt="test validation" title="test validation" style="border: 1px solid gray; zoom:75%;">

      <div class="admonition note">
      <p class="admonition-title">Note</p>
      <p>For other Authentication types, such as OAuth1, retrieve the required values from the admin console of your account on the provider’s site to configure the integration.</p>
      </div>

<ol start="5"><li>Click <b>Save</b>.</li>
<div class="admonition note">
<p class="admonition-title">Note</p>
<p>The <b>Save</b> button will not appear until all required inputs have been provided.</p>
</div></ol>

Once the connection is set up, a success message is displayed.

You will be redirected to the following page, where all the connections for the provider are listed.
<img src="../images/integration-summary.png" alt="integration summary" title="integration summary" style="border: 1px solid gray; zoom:75%;">

### Manage Connection Errors

* During or after setting up a connection, errors may occur while testing. These errors are often caused by invalid credentials provided during the configuration ([add a connection](../../settings/integrations/about-integrations.md/#add-connection-to-set-up-integration){:target="_blank"} step). 

* **View the error**
    * Navigate to the **Connected** section.
    * Select the connection.
    * Click the **Play** icon to test the connection.
    * Hover over the **warning sign**, which will display the reason for the issue.
    <img src="../images/hover-over-error-connection.png" alt="hover over error icon" title="hover over error icon"  style="border: 1px solid gray; zoom:75%;">

    You can also click **Edit**, go to the configuration window, and click **Test** to view the error.
      
    <img src="../images/view-connection-error.png" alt="view error" title="view error" style="border: 1px solid gray; zoom:75%;">

* **Resolve the error**
    * Use the **Edit** functionality to provide the correct credentials in the configuration window.
    * Click **Test** to validate the connection.
    * Click **Save**.

## Manage Connected Integrations

You can view, edit, delete, and perform additional actions with connected integrations to your account in the **Connected** section.
<img src="../images/click-connected-tab.png" alt="click connected tab" title="click connected tab" style="border: 1px solid gray; zoom:75%;">
### View Summary

Once you click the integration in the **Connected** section, the list of configured connections is displayed with the following information:

* **Connection Name**: The unique name provided during the connection setup.
* **Added By**: The name of the admin/account user who added the connection.
* **Authorization Details**: *Pre-authorize* is displayed.
* **Integration Type**: API, OAuth2, Bearer, etc., based on the type used.
* **Added on**: The date when the connection was added.
* **Action**: Allows you to test the connection or enable/disable it.

  <img src="../images/view-summary.png" alt="view summary" title="view summary" style="border: 1px solid gray; zoom:75%;">

### Edit Integration

To edit the configuration for a connection, follow the steps below:

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>You cannot modify the connection name.</p>
</div>

1. [Access](../integrations/about-integrations.md/#access-integrations){:target="_blank"} the **Integrations** page.
2. Click the **Connected** tab and select a connection.
3. Click the **Ellipses** icon for the required connection.
<img src="../images/select-edit-int.png" alt="select edit integration" title="select edit integration" style="border: 1px solid gray; zoom:75%;">

4. Select **Edit**.
5. In the configuration window, modify the required fields in the **Authorization Details** section.
6. (Optional) Click **Test** to validate the connection.
7. Click **Save**.

   <img src="../images/save-edited-integration.png" alt="save edited integration" title="save edited integration" style="border: 1px solid gray; zoom:75%;">

A success message is displayed once the connection is updated.
<img src="../images/edit-success-msg.png" alt="edit success message" title="edit success message" style="border: 1px solid gray; zoom:75%;">

### Delete Integration

To delete an integration, follow the steps below:

1. [Access](../integrations/about-integrations.md/#access-integrations){:target="_blank"} the **Integrations** page.
2. Click the **Connected** tab and select a connection.
3. Click the **Ellipses** icon for the required connection.
4. Select **Delete**.
<img src="../images/select-delete-integration.png" alt="select delete" title="select delete" style="border: 1px solid gray; zoom:75%;">

5. Click **Delete** in the confirmation dialog.

  <div class="admonition warning">
  <p class="admonition-title">Caution</p>
  <p>This action is irreversible and will remove all associations of the connection from the Agent Platform.</p></div>
  <img src="../images/delete-connection.png" alt="delete connection" title="delete connection" style="border: 1px solid gray; zoom:75%;">

  A success message appears, and the connection is removed from the system.

### Test Connection

To test a configured connection, follow the steps below:

1. [Access](../integrations/about-integrations.md/#access-integrations){:target="_blank"} the **Integrations** page.
2. Click the **Connected** tab and select a connection.
3. Click the **Play** icon for the required connection.
<img src="../images/action-play-icon.png" alt="test action" title="test action" style="border: 1px solid gray; zoom:75%;">

The connection is validated in the background, and any errors are highlighted with a **warning** icon. [Learn more](../integrations/about-integrations.md/#manage-connection-errors){:target="_blank"} about managing errors.

<img src="../images/manage-integration-error.png" alt="manage error" title="manage error" style="border: 1px solid gray; zoom:75%;">

If there are no errors, a success message is displayed when the connection is established.

### Enable or Disable Connection

Enabling a connection makes it available for **user authentication** with the service provider. It also becomes accessible for use in the **Integration node** on the Tool Flow canvas. 

Use the **toggle switch** to enable (default setting) or disable the connection as needed.
<img src="../images/enable-integration.png" alt="enable integration" title="enable integration" style="border: 1px solid gray; zoom:75%;">