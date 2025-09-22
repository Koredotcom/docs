# Conversation Sources

The Conversation Sources enables Quality AI to ingest voice and chat data from CCAI, Agent AI, and Express within a single app. It allows organizations to collect, process, and analyze conversational data from multiple platforms in a unified quality ai framework. This streamlined approach supports key metadata for accurate analysis and simplifies management across diverse systems.

## Access Conversation Sources

Access Conversation Sources by navigating to **Quality AI** > **Configuration** > **Conversation Sources**.   
<img src="../conversation-sources/conversation-sources.png" alt="Conversation Sources" title="Conversation Sources" style="border: 1px solid gray; zoom:80%;">

## Supported Sources

Quality AI supports three conversation sources, each designed for specific deployment scenarios and organizational requirements:

### Contact Center AI (CCAI)

This seamlessly integrates your real-time conversation data ingestion from the CCAI platform.

* **Integration Method**: Direct API connection

* **Data Processing**: Real-time 

* **Configuration Requirements**: None (automatic integration) 

* **Use Case**: Organizations using Kore.ai's native contact center solution.

    !!! note

        If the CCAI source is disabled, the system does not process incoming interactions from CCAI on third-party desktops.

### Agent AI

This source supports human-agent interactions augmented by AI augmentation capabilities.

* **Integration Method**: Structured data feeds 

* **Data Processing**: Real-time with metadata validation 

* **Configuration Requirements (Add Queues)**:

    * Agent Queues

    * Agent QueueID 

* **Use Case**: Organizations with human agents supported by AI assistance.

    !!! note

        * If the Agent AI source is disabled, the system does not process incoming interactions from Agent AI on third-party desktops. 
        
        * Make sure that Agent email IDs and queue IDs are included during integration.

### Quality AI Express

This source lets you import interactions or data (such as service records, chat logs, and emails) from external file storage through [Connectors](https://docs.kore.ai/xo/searchai/content-sources/connectors/amazons3/), bypassing CCAI as the ingestion path into the quality AI system.

File-based conversation ingestion system designed for third-party contact center platforms.

* **Integration Method**: AWS S3 Connectors

* **Data Processing**: Batch file processing

* **Configuration Requirements (Add Queues)**:

    * Agent Queues

    * Agent QueueID

* **Supported Data Types**:

    * Customer service records

    * Chat logs

    * Email interactions

    * Audio recordings

    * Structured metadata files 

* **Use Case**: For organizations using third-party CCaaS platforms with minimal infrastructure changes.

    !!! note

        Connectors act as the primary bridge for importing conversations from external systems into Quality AI through file transfer from AWS S3, bypassing CCAI as the data ingestion path.

## Configuration Requirements

### Prerequisites

Before configuring Conversation Sources, make sure the following requirements are met:

* Appropriate user permissions are assigned.

* Required metadata structures are available.

* Integration endpoints are accessible.

### Quality AI Express Setup

Complete these steps before activating **Quality AI Express**:

* Clear all active **Playbook** metrics from evaluated form queues.

* Clear all active **Dialog Task** metrics from evaluated form queues.

* Failure to complete clearance prevents activation with a warning message.   
<img src="../conversation-sources/enable-quality-ai-express-setup.png" alt="Express Setup" title="Express Setup" style="border: 1px solid gray; zoom:80%;">

**AWS S3 Configuration**:

* Configure S3 bucket access

* Set up file transfer protocols

* Define data format specifications

* Establish processing schedules

### Queue Management

For Agent AI and Quality AI Express sources:

* Configure source system Queue IDs

* Map corresponding queue names

* Ensure unique Queue ID assignments

* Validate unique queue name assignments

## Access Control

### User Permissions

**Auto QA Access Required**:

* Enable/disable Quality AI Express

* Save configuration settings

* Modify source parameters

**Limited Access Users**:

* View-only interface (non-editable)

* Cannot save configurations

**Agent-Level Access**:

* Toggle source enable/disable

* Cannot save settings