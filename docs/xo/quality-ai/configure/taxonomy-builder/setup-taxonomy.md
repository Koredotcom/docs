# Taxonomy Builder Setup

This feature defines a process to create, organize, and manage topic hierarchies that categorize and analyze customer conversations in alignment with business structures and analytical needs.

## Prerequisites and Access Requirements

Before beginning taxonomy setup, make sure you have:

* **Full Conversation Intelligence Permissions**: Only users with complete Conversation Intelligence access can configure taxonomies.

* **Advanced Topic Discovery Enabled**: Taxonomy Builder requires the GenAI-powered topic discovery feature to be active in your application.

* **Business Structure Mapping**: A clear understanding of your organizational hierarchy and customer interaction types.

## Interface Architecture

Navigate the taxonomy builder interface by using the hierarchical tree view and organizational tools. Understanding the layout improves efficiency when creating and managing taxonomies.

**Navigation Path: **Quality AI > Configure > Taxonomy Builder**

### Visual Hierarchy Design

The interface uses color-coding to distinguish hierarchy levels:

* **L1 topics**: Primary color emphasis
* **L2 topics**: Secondary color differentiation and increased indentation
* **L3 topics**: Tertiary visual styling and maximum indentation

**Interactive Elements**: Hover over the information icon next to hierarchy levels. View tooltips that explain move and arrange functionality, parent-child relationships, and available actions.

### Topics 

Create and organize your conversation topics using a structured three-level hierarchy system. The topic interface provides visual tools to create, edit, and manage complex taxonomical relationships efficiently.

#### Understanding Topic Hierarchy Levels

The system supports three distinct hierarchical levels for topic organization:

* **L1 (Top Level)**: Parent categories representing broad topic areas.

* **L2 (Second Level)**: Child categories under L1 parents.

* **L3 (Third Level)**: Sub-child categories under L2 parents.

**Key Feature**: You can configure L2 nodes independently without requiring an L1 parent, providing flexibility in your taxonomy structure.   
<img src="../images/topic-hierarchy-level.png" alt="Topic Hierarchy Levels" title="Topic Hierarchy Levels" style="border: 1px solid gray; zoom:100%;">  

#### Adding New Topic Level

1. Select the **Add New Topic Level** button in the taxonomy interface.   
<img src="../images/add-new-topics.png" alt="Add New Topic" title="Add New Topic" style="border: 1px solid gray; zoom:100%;">  

2. Select the appropriate hierarchy level (L1 or L2).   
<img src="../images/add-new-topic-level.png" alt="Add New Topic Level" title="Add New Topic Level" style="border: 1px solid gray; zoom:60%;">  

3. Complete the required fields:

    * **Name**: Required, max 50 characters.

    * **Description**: Required, max 250 characters.

4. Select **Create** to add the new level to your taxonomy.

#### Adding Second Level

1. Select the + **Add Level 2** under the desired L1.  
<img src="../images/add-level-2-item.png" alt="Add Level 2" title="Add Level 2" style="border: 1px solid gray; zoom:100%;">  

2. Complete the required fields:

    * **Name** (required, max 50 characters)

    * **Description** (required, max 250 characters)

3. Parent Category:

    * Set as Standalone Category (Level 2)

    * Assign to New Parent Category (Level 1)

4. Select **Create** to add the topic to your taxonomy.

#### Add Third Level

1. Select the + **Add Level 3** under the desired L2.    
<img src="../images/add-level-3-item.png" alt="Add Level 3" title="Add Level 3" style="border: 1px solid gray; zoom:100%;">  

2. Complete the required fields:

    * **Name** (required, max 50 characters)

    * **Description** (required, max 250 characters)

3. Check the resolution detection option if you want to track successful/unsuccessful outcomes (enabled by default). 

4. Select **Create** to add the topic to your taxonomy.

#### Editing Existing Level

1. Locate the level you want to modify in the taxonomy tree.

2. Select **Edit**.    
<img src="../images/edit-existing-level.png" alt="Edit Existing Level" title="Edit Existing Level" style="border: 1px solid gray; zoom:100%;">  

3. Update the following fields in the modal window:
    
    * Name
    
    * Description

4. Select **Save** to confirm your changes.

### Resolution Configuration

Define success criteria and outcome measurements for your conversation topics and customer interactions. Configure resolution tracking to monitor the effectiveness of customer service interactions and identify opportunities for improvement.   
<img src="../images/resolution.png" alt="Resolution Configuration" title="Resolution Configuration" style="border: 1px solid gray; zoom:100%;">  

#### Setting Up Resolution Detection

Navigate to the **Resolution Configuration** tab to define success criteria for your intents.

Available Resolution Types:

* **Successful**: Positive outcomes for the identified topic.

* **Unsuccessful**: Negative or incomplete outcomes.

Customizing Resolution Definitions:

1. Select the resolution type (Successful/Unsuccessful).

2. Edit the default description to match your business requirements.

3. Include the following in descriptions:
    
    * Conversation type (sales/support)
    
    * Specific topics identified
    
    * Your organization's success criteria

        !!! Note

            Default descriptions are provided based on conversation type and identified topics to streamline initial setup.

### Version Management

Implement systematic version control to track taxonomy changes and maintain historical data integrity. Version management ensures seamless updates while preserving analytical continuity across different taxonomy iterations.

Saving and Managing Versions:

1. After making changes to your taxonomy, save the version to impact runtime analytics.

2. Access version history from the Topic Discovery dashboard.

3. View the current version plus the three most recent previous versions.

4. Previous versions display data only up to their respective update dates.

### Organizing Your Taxonomy

**Move and Arrange Functionality**

* Drag intents to new positions within the hierarchy.

* Highlight drop zones when valid.

* Invalid operations are clearly indicated.

* Preview the new structure before confirming changes.

**Level Changes**: You can move intents between different levels (for example, L2 to L1, L2 to L3) while maintaining their child relationships.

**Important Considerations**:

* Moving a parent topic automatically moves all its children.

* The system detects duplicate names in the destination location.

* Require confirmation before completing any move operation.

## Use Case Example - Banking Sector

Implement a taxonomy structure for financial services using real-world banking scenarios and customer interaction patterns. This example demonstrates the practical application of hierarchical topic organization in a complex, regulated industry environment.

### Phase 1: Business Structure Analysis and Planning

**Organizational Mapping Exercise**: Document your current business structure. For a regional bank, this strategic framework includes:

**L1 Strategic Categories**:

* Retail Banking (individual customer services)

* Commercial Banking (business customer services)

* Mortgage Services (specialized lending division)

* Investment Services (wealth management and advisory)

**L2 Tactical Breakdown Under Retail Banking**:

* Checking Accounts (daily banking transactions and account management)

* Savings Products (savings accounts, CDs, money market accounts)

* Personal Loans (unsecured lending products)

* Credit Cards (revolving credit products and services)

**L3 Operational Details Under Credit Cards**:

* New Applications (application process, approval status, documentation)

* Payment Issues (payment processing, due dates, payment methods)

* Balance Transfers (transfer requests, promotions, processing)

* Account Cancellations (closure requests, retention efforts, final processing)

* Reward Inquiries (points balance, redemption, program questions)

### Phase 2: Topic Creation and Configuration

**Creating L1 Topics**:

1. Select **Add Topic** and select L1 level.

2. Enter a clear, business-aligned name (for example, "Retail Banking").

3. Write a description: "All customer interactions related to individual banking services, including personal accounts, loans, and credit products. Covers day-to-day banking needs for retail customers rather than business or commercial services."

**Expanding to L2 Topics**:

1. Select the parent L1 topic when creating L2 entries.

2. Use product-specific naming (for example, "Credit Cards" rather than generic "Card Services").

3. Include specific scope in descriptions: "Credit card-related inquiries, including new applications, existing account management, payment processing, rewards programs, and account modifications. Excludes debit card issues, which fall under checking accounts."

**Detailed L3 Configuration**:

1. Select an appropriate L2 parent.

2. Use action-oriented naming that reflects customer topic (for example, "Payment Issues" vs. "Payments").

3. Describe when a customer encounters problems making credit card payments, including failed online payments, payment processing delays, payment method changes, or autopay setup issues. Include phrases such as 'payment won't go through,' 'card got declined for payment,' or 'need to change payment method.

4. Configure resolution tracking based on interaction type.

### Phase 3: Resolution Configuration Strategy

**Enable Response-Driven Interactions**:

* **Service Requests**: Account changes, product applications, cancellations.

* **Problem Resolution**: Technical issues, billing disputes, service restoration.

* **Transaction Support**: Payment assistance, transfer issues, and account access problems.

**Skip for Informational Interactions**:

* **Balance Inquiries**: Simple information requests with no follow-up needed.

* **Rate Information**: Interest rate questions, fee schedules, and general product info.

* **Confirmation Calls**: Appointment confirmations, payment confirmations, routine notifications.

**Custom Resolution Definitions Example**: For "Payment Issues" L3 topic:

* **Successful**: "Customer completes payment, or the system resolves the payment issue during the call. Fix the payment processing error, set up an alternative payment method, or correct a technical issue preventing payment."

* **Unsuccessful**: "Customer fails to complete payment, or the system cannot resolve the payment issue. Technical problems persist, you can't update the payment method, or you must escalate the issue or schedule a follow-up call."

### Phase 4: Version Management and Deployment

**Creating New Versions**: All taxonomy modifications exist as drafts until you explicitly create a new version. This prevents accidental impacts to ongoing conversation analysis and gives you complete control over when changes take effect.

**Version Deployment Process**:

1. Complete all desired taxonomy modifications.

2. Review changes in the preview mode.

3. Create a new version with a descriptive name and a change summary.

4. The system automatically applies the new taxonomy to future conversation analysis.

5. Historical data remains classified under previous taxonomy versions.

This technical implementation approach ensures your Taxonomy Builder deployment aligns with business objectives while maintaining the flexibility to evolve with organizational needs and customer interaction patterns.
