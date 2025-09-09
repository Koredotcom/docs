
# Amazon Q Integration with AI for Work

In addition to Kore’s SearchAI, AI for Work provides the ability to connect with external search indexes such as Amazon Q. This integration allows customers to leverage connectors configured in their Q Index application on top of the ones available in Kore.

Key Benefits

* Data Sovereignty: Maintain data indexing within the AWS cloud using Amazon Q, eliminating the need for partner cloud storage.
* Unified, Context-aware search: Retrieve insights and documents from 90+ enterprise connectors ([Kore Connectors](https://docs.kore.ai/xo/searchai/content-sources/connectors/connector-directory/) + [Amazon Q Connectors](https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/connectors-list.html)), including AWS and non-AWS systems.
* Agentic actions, not just Search: Automate workflows—schedule meetings, update records, generate presentations—all with your search context.
* Flexible routing: AI-driven query routing uses intent recognition to send requests to the right retriever (Kore or Q Index).
* Security and Permissions: E2E data encryption both at rest and transit , cross-account connectivity with granular access control.
* Simplified user authentication : Amazon Q index provides a [Trusted Token Issuer](https://docs.aws.amazon.com/singlesignon/latest/userguide/using-apps-with-trusted-token-issuer.html) (TTI) mechanism to issue their own security tokens. Users just need to login once from Kore.ai to get answers from Q index, without the need for authenticating a second time.

## How is Amazon Q different from Kore SearchAI

Kore’s SearchAI comes with [70+ connectors](https://docs.kore.ai/xo/searchai/content-sources/connectors/connector-directory/) and the flexibility to build custom ones, giving enterprises deep control over how data is ingested, extracted, and configured. This allows users to experiment, fine-tune, and choose the indexing and retrieval methods that best fit their unique business needs.

Amazon Q, on the other hand, provides [40+ connectors](https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/connectors-list.html) with a strong focus on simplicity and accuracy. It delivers a managed, standardized indexing and retrieval experience designed to meet enterprise-grade accuracy benchmarks without requiring extensive customization.

## Integration Architecture

<img src="../images/AmazonQ_1.png" alt="AmazonQ_1" title="AmazonQ_1" style="border: 1px solid gray; zoom:70%;">

Integrate Amazon Q with AI for Work through two configuration approaches, each suited to different needs and data architectures.

When Amazon Q Index is the primary knowledge source, set as the default search destination in Enterprise Knowledge to deliver a consistent search experience across the organization. This involves creating a Q Index application in AWS with the necessary data sources, enabling Kore as the data accessor, and providing these details when configuring an active Amazon Q Source.

Alternatively, leverage Amazon Q as a specialized search tool alongside other knowledge sources by creating a Q Index application in AWS, enabling Kore as the data accessor, and using those details to configure a search agent within the desired workspace.

**Enterprise Knowledge**

Enterprise Knowledge, an AI for Work-provisioned Search AI, Agentic, or Amazon Q Index app, acts as a fallback for user queries not matching specific agents. It enhances accuracy and relevance by retrieving enterprise data from multiple sources and generating contextually relevant responses. When configured as the primary enterprise knowledge source, Amazon Q Index becomes the default fallback. This is recommended if the Q Index is your main AI for Work search index. For more information, refer [Enterprise Knowledge](https://docs.google.com/document/d/1CQ5sn2honhl1BXIDkwSxMtGqa8HiwsEtaYIQv9OZIcA/edit).

**Search Agent**

Search agents blend retrieval and generation, using knowledge bases and LLMs to provide accurate, relevant answers. When you have multiple search indices, Amazon Q can be configured as a contextual search agent that triggers based on query context and intent recognition. For more information, refer [Search Agent](https://docs.google.com/document/d/1qdcSs-402O-eGniPFkgLKmmQ9Pd4BhtU-uu-ZKmYDvk/edit#heading=h.rlpsmgwlcn5t).

## Prerequisites for deployment

**Data Accessor Configuration**

To complete the integration, you must configure a data accessor in your AWS environment using the Tenant ID provided during the Kore.ai configuration process.

Ensure your AWS configuration includes:

* Read access to Amazon Q Business application.
* Retriever access permissions.
* AWS IAM Identity Center integration permissions.
* Cross-account access if applicable.

## Steps for Implementation

### Enterprise Knowledge

Use this configuration when Amazon Q Index should serve as your primary knowledge source. This works best when most of your data resides in the index and many of your enterprise connectors link to it.

1. Navigate to Enterprise Knowledge
    * Access the Admin Console.
    * Select **Enterprise Knowledge** from the left navigation pane.
    <img src="../images/AmazonQ_2.png" alt="AmazonQ_1" title="AmazonQ_1" style="border: 1px solid gray; zoom:70%;">    
2. Create New Configuration
    * Click **Configure**.
    * Select **Create New**.
    * Choose **Amazon Q** as the knowledge source type.
    <img src="../images/AmazonQ_3.png" alt="AmazonQ_1" title="AmazonQ_1" style="border: 1px solid gray; zoom:70%;">
3. Configure Basic Settings
    * **Source Name**: Enter a unique, descriptive identifier for this knowledge source.
    * **Description**: Provide a clear explanation of the source content and purpose.
4. Record Tenant ID
    * Copy the displayed **Tenant ID**.
    * This ID is required during AWS data accessor setup. For more info, refer [Data accessor setup](./amazon-q.md#how-to-configure-koreai-as-a-data-access-for-your-amazon-q-index)
    <img src="../images/AmazonQ_4.5.png" alt="AmazonQ_1" title="AmazonQ_1" style="border: 1px solid gray; zoom:70%;">
5. Configure AWS Connection Details
Enter the following information from your AWS environment:
    * **Application ID**: Unique identifier of your Amazon Q Business application.
    * **Retriever ID: Unique identifier of your Amazon Q Business retriever.**
    * **Access Resource Name (ARN)**: Resource identifier for secure access to Amazon Q resources.
    * **Application Location**: AWS region hosting your Amazon Q Business application.
    * **IDC Location**: AWS region hosting your AWS Identity Center instance.
1. Complete Configuration
    * Click **Save** to store the configuration.
    * Mark the source as Active to enable it as the default source for queries.
  
!!! note

    * Enterprise Knowledge becomes the default knowledge source accessible to all users in that workspace when configured within a specific workspace.
    * You can select alternative workspaces during initial setup depending on who needs data access. Select Enterprise Workspace if you want all users in the organization to access the data.

### Search Agent

Use this configuration when integrating Amazon Q as an additional search capability alongside existing search indices. This approach works best when you want to govern by description, when this index should activate, or when you have limited data available in Q that you want to reference in AI for Work.

1. Access Search Agent Configuration
    * Navigate to the **Search Agents** section.
    * Click **Create**.
    * Select **Amazon Q** as the Index type.
    <img src="../images/AmazonQ_4.png" alt="AmazonQ_1" title="AmazonQ_1" style="border: 1px solid gray; zoom:70%;">
2. Use Tenant ID
    * Refer to the Tenant ID displayed in the configuration screen.
    * Provide this ID during AWS data accessor setup. For more info, refer [Data accessor setup](./amazon-q.md#how-to-configure-koreai-as-a-data-access-for-your-amazon-q-index)
    <img src="../images/AmazonQ_5.png" alt="AmazonQ_1" title="AmazonQ_1" style="border: 1px solid gray; zoom:70%;">
3. Configure AWS Integration Details 
Complete the following fields with information from your AWS setup:
    * **Application ID**: Unique identifier of your Amazon Q Business application.
    * **Retriever ID**: Unique identifier of your Amazon Q Business retriever.
    * **Access Resource Name (ARN)**: Resource identifier for secure access to Amazon Q resources.
    * **Application Location**: AWS region hosting your Amazon Q Business application.
    * **IDC Location**: AWS region hosting your AWS Identity Center instance.

## How to configure Kore.ai as a Data access for your Amazon Q index

The data accessor configuration involves establishing a trust relationship between your organization's identity provider and AWS Identity Center. This allows Kore.ai to securely access your Amazon Q index on behalf of authenticated users while maintaining enterprise-grade security and compliance standards. For more info, refer [AWS reference blog](https://aws.amazon.com/blogs/machine-learning/configuring-amazon-q-business-with-aws-iam-identity-center-trusted-identity-propagation/).

**Configure Trusted Token Issuer in IAM Identity Center**

1. Access IAM Identity Center Console
    * Navigate to the IAM Identity Center console in your AWS account.
    * Go to **Settings** > **Authentication** tab.
2. Create Trusted Token Issuer
    * Under **Trusted token issuers**, click **Create trusted token issuer**.
    * Enter the following configuration details:
        * **Issuer URL**: Must match the `iss` claim in JWT from your external IdP (e.g., Okta, CyberArk, custom OIDC).
        * **Display Name**: Provide a descriptive name for identification.
        * **User Attribute Mapping**: Configure required user attributes mapping.
3. Save Configuration
    * Click **Save** to create the trusted token issuer.
    * Verify the trusted token issuer appears in your configuration list.

**Configure Audience Claims**

1. Validate Token Configuration
    * Ensure the audience claim (`aud` claim) in your IdP-issued token matches your Amazon Q application's audience requirement.
    * Verify the configuration aligns with IAM Identity Center settings.
2. Update IdP Mapping
    * Access your external IdP administrator console.
    * Add or update audience claim mapping to match Amazon Q application requirements.

**Update Amazon Q Application Policies**

1. Configure Application Trust Settings
    * In the IAM Identity Center console, navigate to **Applications**.
    * Select your Amazon Q application.
    * Verify **Authentication with trusted token issuer** is set to **Configured**.
2. Assign Permissions and Scopes
    * Configure appropriate permissions for API access, including:
        * `qbusiness:conversations: access`
        * Additional scopes as required by your organization's access policies.
3. Update IAM Role
    * Modify the application execution IAM role to allow token exchange for authenticated users.
    * Ensure the role has the necessary permissions to access the Amazon Q index APIs.

**Provision User Access**

1. Configure External IdP Users
    * Add new users in your external IdP system.
    * Provision users according to the mapped attributes configured in Step 1.
2. Complete User Assignment
    * Navigate to **IAM Identity Center** > **Applications** > **[Your Q App]**.
    * Click **Assign Users/Groups**.
    * Complete user or group assignments based on your organization's access policies.
3. Validate Authentication Flow
    * Test that users is authenticated by the external IdP.
    * Verify that tokens issued is exchanged through IAM Identity Center for Amazon Q index API access.

## How to add Data in your Amazon Q Index

For detailed setup instructions and connector-specific configuration guidance, refer to [Creating an Amazon Q Business Index](https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/isv-creating-index.html).

When configuring connectors for Kore.ai integration, ensure that:

* The data accessor configuration (outlined in the previous section) is completed.
* Appropriate user permissions are assigned.
* Metadata fields align with your AI for Work search requirements.
