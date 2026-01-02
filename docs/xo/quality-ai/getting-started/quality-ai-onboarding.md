# Quality AI Onboarding 

Quality AI is an advanced analytics platform that evaluates post-interaction customer conversations to enhance agent performance and improve the overall customer experience.

The Quality AI onboarding guides you through the process, from account access to application setup. It helps quality teams and analysts configure data sources, define evaluation criteria, and apply consistent scoring. This approach reduces manual setup and accelerates access to compliance metrics, quality insights, and performance reports.

After signing up, you select deployment options, configure ingestion sources, and complete the required settings to start scoring and analyzing interactions.

## Before You Start

Make sure you have the following prerequisites:

* Administrator access to your AI for Service (XO Platform) account.

* Admin-level credentials for the workspace.

* Enable Quality AI at the workspace level using the public API.

* A selected deployment mode.

## Conversation Sources

Quality AI supports three conversation sources:

1. **Standalone (Quality AI Express)**

    * Integrates with any CCaaS platform via file transfer-based ingestion (for example, AWS S3).

1. **Integrated with Agent AI**

    * Integrates with third-party desktops through Agent AI.

1. **Bundled with CCAI**
    * Integrates with existing systems for real-time, unified analytics.

        !!! note

            You can access Quality AI as a standalone product via the app switcher and switch or upgrade licenses/conversation sources at any time.

## Onboarding Journey

### Quality AI Application Creation

Steps to create a Quality AI application via the XO platform:

1. Access to the [AI for Service](../../getting-started/accessing-the-platform.md){:target="_blank"}.

1. Log in through **Email** or **SSO** (Google or Office 365). 

1. Sign up for a new account if you don’t have one. [Learn more](../../getting-started/accessing-the-platform.md){:target="_blank"}.  
<img src="../Onboarding/images/xo-landing-page.png" alt="Landing Page" title="Landing Page" style="border: 1px solid gray; zoom:80%;">

1. On the XO landing page, choose one of the following options:

    * Select the **+ New App** from the top dropdown.   
    <img src="../Onboarding/images/navigate-to new-app.png" alt="New App" title="New App" style="border: 1px solid gray; zoom:80%;">

    * Select **Create New** to start a new app project. You can add additional AI-powered products at any time.     
    <img src="../Onboarding/images/create-new-app-project.png" alt="Create New App" title="Create New App" style="border: 1px solid gray; zoom:80%;">

1. Select **Quality AI**.   
<img src="../Onboarding/images/Quality-ai-new-user.png" alt="Try Now" title="Try Now" style="border: 1px solid gray; zoom:80%;">

    !!! note

        * For new users, the **Get Started** screen displays Try now. Select **Try now** to start self-service onboarding for Quality AI. The system creates the application automatically and guides you through the onboarding steps.

        * For existing users, the **Get Started** screen displays Contact Us. Select **Contact Us** to proceed with sales-assisted onboarding. The system skips Guided Onboarding and opens the Basic Configuration Settings section after license activation.

    <img src="../Onboarding/images/onboarding-new-users.png" alt="Contact Us" title="Contact Us" style="border: 1px solid gray; zoom:80%;">
        
1. Enter the **App's Name** and a brief **Description**.    
<img src="../Onboarding/images/create-new-app.png" alt="Try Now" title="Try Now" style="border: 1px solid gray; zoom:80%;">

1. The system automatically generates a new application.  
<img src="../Onboarding/images/creating-app.png" alt="Try Now" title="Try Now" style="border: 1px solid gray; zoom:80%;">

1. After creation, follow the guided setup steps.

### Configure Basic Settings

#### Multilingual Support

This includes multilingual support, with English as the default language.

1. Select agent languages for customer assistance and AI-generated output (Topics, Justifications, QA outcomes).

1. Select a preferred language for reports.   
<img src="../Onboarding/images/choose-language.png" alt="Preferred Language" title="Preferred Language" style="border: 1px solid gray; zoom:80%;">

    !!! note

        * The system uses English by default and does not let you edit or remove the default language.

        * To enable Quality AI features for non-English languages, configure an LLM in the GenAI section.

1. Use **+ Add** to move languages into the **Selected Languages** list.  
<img src="../Onboarding/images/add-new-lang.png" alt="Select Language" title="Select Language" style="border: 1px solid gray; zoom:80%;">

1. Toggle on any language to **Mark as the Default**.   
<img src="../Onboarding/images/set-default-lang.png" alt="Mark Default Language" title="Mark Default Language" style="border: 1px solid gray; zoom:80%;">
    
1. Turn Off the toggle to remove a selected language from the default language list.   

    !!! warning "Default Language Removal"

        When you remove the default language, the system stops scoring interactions in that language but continues to display AI-generated insights in the default language.

1. Select **Confirm** to save your language selections.

### Set up and Manage Conversation Sources

Configure sources based on your deployment type: 

**For Standalone or Integrated**

* Enable **CCAI** or **Agent AI** connections.

* Configure Queue IDs and Agent Email ID mappings for **Agent AI**.

**For Standalone or Express**

* Enable **Quality AI Express**.

* Configure file uploads using connectors.

### Queue Configuration

Queue configuration appears only for **Agent AI** or **Quality AI Express** deployments.

* Add queue names and Queue IDs.  

    !!! note

        Include unique agent email IDs and Queue IDs from the source system. Duplicate values can cause routing or processing issues.

#### Add Queue

To map agents to a new queue,

1. Enable **Agent AI** or **Quality AI Express** source toggle.

1. Select **Add Queue**, and enter the following details:   
<img src="../Onboarding/images/add-queue.png" alt="Add Queue" title="Add Queue" style="border: 1px solid gray; zoom:80%;">

    * **Name**: Enter a descriptive queue name.

    * **Queue ID**: Provide a unique identifier for the queue.

    * **System Generated Queue ID**: Generates a unique System Generated Queue ID for internal tracking.

    * **Agents**: Assign agents to the queue using the searchable list.

1. Select **Save** to start or update conversation ingestion.     
<img src="../Onboarding/images/add-queue-agent.png" alt="Agent Queue Details" title="Agent Queue Details" style="border: 1px solid gray; zoom:80%;">

#### Chat Script Timestamp Format

The Chat Script Timestamp Format defines how Quality AI Express parses timestamps in chat files during ingestion. Chat scripts can include multiple timestamps per message. Correct configuration preserves message order, duration calculations, and time-based analytics.

##### Supported Timestamp Formats

**Unix Timestamp (Default)**

When you select Unix Timestamp, this ingestion supports start and end time validation, which limits flexibility for third-party desktops. Quality AI Express provides an app-level setting to select the chat script timestamp format.

**Format**: Integer or decimal (seconds).

**Examples**: 

* `1735574400` (represents December 30, 2024, 12:00:00 PM UTC)

* `1735574400.523` (includes milliseconds)

**Offset Timestamp**

When you select Offset Timestamp, this supports message-level offsets without start or end date validation. 

**Format**: Integer or decimal number representing seconds from conversation start or end.

**Examples**: 

* `0` (conversation start)

* `45` (45 seconds into the conversation)

* `120.5` (2 minutes and 0.5 seconds into the conversation)

#### Conversation Sources Warnings

* **CCAI**: Disabling stops processing CCAI interactions from third-party desktops.

* **Agent AI**: Disabling stops processing Agent AI interactions.

* **Quality AI Express**: Disabling blocks file-based ingestion.

### Set Application Usage Permissions

This defines agent access, audit behavior, and usage policies.

#### Agent Access

* View AI-generated emotions and sentiment.

* View GenAI Auto QA justifications. 

* Hide auditor details from agents.

#### Audit Settings

* Enable Speech-based audit 

* Enable Agent AI Playbook audit        
<img src="../Onboarding/images/app-usage-settings.png" alt="App Usage Setting" title="App Usage Setting" style="border: 1px solid gray; zoom:80%;"> 

    !!! note

        * The system disables access to both **Agent Access** and **Audit Settings** by default. 
        
        * It shows queue configuration only when you select **Agent AI or Quality AI Express**, not **CCAI** alone.

### Go Live with Quality AI

Complete all configuration steps.

1. After setup, **Quality AI** automatically processes conversations.

1. Use the **Product Switcher** to access **Quality AI**. This screen appears only for first-time login users.        
<img src="../Onboarding/images/product-switcher.png" alt="Product Switcher" title="Product Switcher" style="border: 1px solid gray; zoom:80%;">   

1. Navigate to **Conversation Sources** > **Configure** and enable the required sources for tracking and routing. The Product Switcher icon lets you switch effortlessly between products.       
<img src="../Onboarding/images/conversation-sources.png" alt="Conversation Sources" title="Conversation Sources" style="border: 1px solid gray; zoom:80%;"> 

    !!! note

        * Use the workspace switcher to manage multiple environments. 
        
        * Feature flags control the Quality AI Switcher.

### Quality AI Left Navigation

After launch, the left navigation displays:

* **Quality AI** (dashboard and analytics).

* **GenAI** (LLM configuration).

* **Deploy** (deployment and publishing workflows).

* **User Management** (roles and permissions).     
<img src="../Onboarding/images/conversation-sources-left-navigation.png" alt="App Usage Setting" title="App Usage Setting" style="border: 1px solid gray; zoom:80%;"> 


