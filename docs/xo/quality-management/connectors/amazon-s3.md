# Amazon S3 Connector

The Amazon S3 Connector allows seamless integration between Amazon S3 and Search AI, enabling the ingestion of files stored in Amazon S3 buckets into the Search AI platform. By connecting to an Amazon S3 account, users can retrieve and make their content available for intelligent search and analysis.

**Specifications**

<table>
  <tr>
   <td><strong>Type of Repository</strong>
   </td>
   <td><strong>Cloud</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Content Supported</strong>
   </td>
   <td>Files in buckets of the format: .pdf, .txt, .ppt, .docx.
   </td>
  </tr>
  <tr>
   <td><strong>RACL Support</strong>
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td><strong>Content Filtering</strong>
   </td>
   <td>No
</table>

To integrate Search AI with the Amazon S3 account and ingest data from it, follow the steps listed below. 

1. Generate an Access Key for the Amazon S3 account from which content will be ingested.

2. Configure the Amazon S3 connector in Search AI.


## Generate Access Key

* Sign in as a root user in the [AWS Management Console](https://console.aws.amazon.com/).

* Navigate to the user’s details page.

* Click the **Security credentials** tab.

* Under the **Access keys** section, click **Create access key**.

* Follow the prompts to generate a new key.

* Save the Access Key. Download the .csv file with the Access Key ID and Secret Access Key. Note that the secret key is shown only at the time of creation.

Refer to [this](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_root-user_manage_add-key.html) for detailed instructions.

## Configure Amazon S3 Connector in Search AI

Go to the **Authorization** page of the Connector, provide the following configuration fields, and click **Connect**.

* Name*: Unique name for the connector.

* Access Key*: Key generated in the above step.

* Secret*: Secret generated in the above step.

* Host URL*: Amazon S3 domain name like [https://aws.amazon.com/s3/]

* Region*: The region of your account.

## Ingesting Content

After successfully connecting the Search AI connector to the Amazon S3 account, go to the **Configuration** tab and set up content synchronization. For immediate sync, use the **Sync Now** option and the **Schedule Sync** option to set up a scheduler to sync the content in the future.

Upon sync, Search AI ingests all the files (in supported formats) from the buckets accessible to the user used to log into the connector. 
This content is then accessible to all the users of Search AI.