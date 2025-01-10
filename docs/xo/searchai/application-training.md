# Application Training 

The Search AI application training process involves applying design time configurations and generating chunks from ingested content using the configs. These chunks are essential for generating answers. Training is required each time content or configuration changes within the application. 


## Automatic Training

The application automatically trains itself whenever there is any new content ingested into the application in the form of file uploads, web crawls, or content from the connectors. When auto training is initiated, it is indicated by a banner at the top of the application interface. 

* **Initial Ingestion**: If the content source is configured for the first time, such as setting up a web crawler for a web domain, the training is initiated automatically and all the ingested content is used for training of the application. 
* **Incremental Updates**:  Whenever an update to the existing content source is identified, such as through recrawling of a configured web source or resync with an existing connector, auto training is initiated for only the updates in the content (i.e., addition, deletion, or modification).


## Manual Training

Manual training can be used to force the application to retrain in specific scenarios. To perform a manual sync, use the **Train** button on the **Extract** or **Vector Configuration** page. Upon initiating a manual train operation, the application identifies the config changes and the impacted content and initiates retraining of the impacted content only.  For instance, if a new extraction strategy is introduced for a certain document, the application is trained only for that document without affecting the chunks related to other content.  If, however, the embedding model is updated or embedding fields are modified, a complete training is initiated as the embedding generation config affects all the content. 

Manual Training is required in the following scenarios. 

1. **Config Updates**: When design time config changes are made to the application, like changes in the extraction strategies or changes in vector configuration, a manual Train is required.
2. **Content Deletion**: When content is manually deleted, such as removing a file or a content source, manual training ensures the changes are reflected.

By leveraging both automatic and manual training mechanisms, the SearchAI application can be used to generate answers from the most up-to-date content.

*Note*:

* Training generates chunks from the ingested content. Hence, any manual edits made to the chunks will be overwritten during the application's training process if the application is retrained for the corresponding content. For instance, if manual edits are made to both chunks from document X and document Y and document X gets updated, training will overwrite the chunks only for document X. Hence, the edits in chunks from document Y will not be impacted.
* Currently, there is a known issue where manual resynchronization of a connector may not automatically initiate training, requiring manual triggering.