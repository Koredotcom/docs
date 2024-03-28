# Connectors

Using the connectors, you can ingest content into the application from diverse sources, including third-party repositories like ServiceNow, Microsoft SharePoint, Atlassian’s Confluence, IBM Domino, etc., and provide your users with a seamless search experience.

Search AI provides in-built connectors to enable crawling specific third-party content management applications, CRM systems, web database applications,  or cloud-based applications. The application can be configured to connect to multiple systems simultaneously using a connector for each third-party application.


# Understanding Connectors 

Connectors enable the application to establish a connection with the third-party application. After the connection is established and authentication is complete, the data from the third-party application is ingested, indexed, and ready to answer in response to search queries. The access privileges of the content are maintained as per the privileges assigned to the user in the third-party repository. This implies that only the files accessible to the user can appear in the answers. During each synchronization cycle of the connector, Search AI only retrieves newly added or modified data from the application, determined by the timestamp of changes. If data has previously been indexed and remains unchanged, it is not retrieved again. 

Currently, Search AI provides a connector for ServiceNow. The list will continue to grow with future releases and will provide out-of-the-box support for most of the commonly used enterprise applications. For any specific integration requirements, please [contact us](https://kore.ai/contact-us/). 


# Managing Connectors


## Adding a content source using Connector

To configure a new connector, go to the **Connectors**tab under the **Sources **page. For a new connector, click on the +**Connect** button.
![Connector Home](../images/connectors/connector-home.png "connector home")

The following page shows the list of available connectors. Choose the connector corresponding to the third-party application that you want to connect to and configure it. For detailed instructions on configuring connectors, refer to the respective documentation.

## Enabling/Disabling Connectors

After the connector is configured and the source is connected, you can enable or disable the connection temporarily. When a connector is disabled, sync operation is temporarily disabled. This may be useful for testing, particularly when there is more than one connector configured with your Search AIst application. 

!!!Note
    Disabling a connector does not delete the ingested content. It disables any future data synchronization operation with the third-party application. The sync is resumed based on the configuration after the connector is enabled again.

To enable or disable a connector, use the corresponding Action buttons.
![Disable Connector](../images/connectors/disable-connector.png "Disable Connector")

## View and Edit Connector Details

To view or edit the connector configuration, i.e., connection settings, sync schedule, etc.,  click the corresponding _connector from the list_. The details page shows the config details of the connector under different tabs.
![Connector Details](../images/connectors/connector-details.png "Connector Details")

**Content**

The **_Content _**tab lists all the pages crawled from the connector source along with their URL and timestamp of the last update. 

**_Jobs_**

This**_ _**tab lists the synchronization-related tasks initiated by Search AI on the connector. 
![Connector Details](../images/connectors/jobs-tab.png "Connector Details")

## Removing the content source integrated using Connector 

To permanently remove a content source and corresponding connector from Search AI, go to the **_Authorization tab _**and click the**_ Remove Source_** button. This will also **delete any data in Search AI indexed from the content source**.
![Delete Connector](../images/connectors/delete-connector.png "Delete Connector")
