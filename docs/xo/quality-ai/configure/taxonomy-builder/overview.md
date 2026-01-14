# Taxonomy Builder Overview

**Taxonomy Builder** enables organizations to design and manage their own topic hierarchy, ensuring that conversation analysis reflects their unique business priorities rather than relying only on machine-generated topic levels.

This helps contact center managers, analysts, and quality teams define a structured taxonomy of business-relevant topics. The system applies this taxonomy consistently across conversations to improve classification accuracy, generate clearer insights, and produce operational metrics.    
<img src="../images/taxonomy-builder-overview.png" alt="Taxonomy Builder" title="Taxonomy Builder" style="border: 1px solid gray; zoom:100%;">  

## Why Taxonomy Builder?

Traditional conversation analytics face real challenges that impact day-to-day operations:

**Inconsistent Labeling**: The same customer issue gets multiple labels. A credit card cancellation may appear as "card termination," "account closure," or "service cancellation," making it impossible to get accurate counts or trends.

**Generic Topics**: AI-generated labels like "payment issue" or "service inquiry" are too broad to be actionable. You need to know if it's a billing dispute, a payment method update, or a late fee inquiry.

**Flat Structure**: Real business operations are hierarchical from business lines to product categories to specific issues. Flat topic lists make it hard to analyze at different strategic levels.

## How does Taxonomy Builder help?

Taxonomy Builder enables you to:

* Define custom topic hierarchies that mirror your business structure.

* Make sure consistent labeling across all conversations.

* Analyze topics at strategic (L1), tactical (L2), and operational (L3) levels.

* Track resolution rates and sentiment for specific customer contact reasons.

## Understanding the Three-Level Hierarchy

**Level 1 (L1)**: This represents your highest-level business categorization, typically corresponding to major divisions, lines of business, or service areas that align with executive-level thinking and strategic planning.

**Level 2 (L2)**: Under each L1 business area, L2 topics represent specific product categories, service types, or operational areas that middle management and product teams focus on.

**Level 3 (L3)**: These represent the specific reasons customers actually contact your organization, the detailed issues that drive day-to-day operational decisions, and agent activities. Specific customer contact reasons - the actual reasons customers call.

## Advanced Features 

**Intelligent Topic Detection**

The system uses custom topic names and detailed descriptions to classify conversations accurately by using large language models (LLMs). When you create a topic, you provide descriptions that help the model identify which customer statements, issues, or requests belong to that topic.

**Configurable Resolution Tracking (L3 Focus)**

For Level 3 topics, you can enable sophisticated resolution tracking. This feature automatically determines whether each customer issue was successfully resolved during the conversation. The system provides binary classification, Successful or Unsuccessful, with the ability to customize what these outcomes mean for each specific topic type.

### Contact-Level Resolution Methods

Choose one of the two approaches to determine contact resolution:

**Topic-Based Resolution (Strict)**: The system marks a contact as resolved only when you resolve all L3 topics in the conversation. This approach tracks every issue but may mark contacts as unresolved if minor issues remain, even after addressing primary concerns.

Use This Method When:

* You must resolve all issues. 

* Require comprehensive resolution of every mentioned issue.

* Quality standards mandate complete issue closure.

* Compliance or regulatory requirements demand full resolution tracking.

**Example**: When a customer calls about a credit card payment issue and mentions a rewards program question. With strict resolution, the system marks the contact as unresolved if you fix the payment but the rewards question remains unanswered.

**Holistic Resolution Assessment**: The LLM evaluates contact resolution independently of individual topics. This method marks a contact as resolved if you address the customer’s primary concerns, even when minor issues remain unresolved. Use this method for a nuanced view of customer satisfaction and agent effectiveness.

Use This Method When:

* You want to prioritize primary over secondary contact reasons.

* Measure agent performance based on resolving main customer concerns.

* Exclude minor issues or casual mentions from resolution metrics.

**Example**: A customer calls primarily about a payment issue (resolved) but casually mentions a rewards question (unresolved). The system marks the contact as resolved after you handle the primary concern.

Configure your preferred resolution detection method in **Conversation Intelligence** settings. Align the method with your quality standards and business objectives.

**Hierarchical Sentiment Analysis**

The system captures customer sentiment at the most granular level (L3) and automatically aggregates it across the hierarchy.

**Flexible Organizational Structure**

The system recognizes that not all organizations require the full three-level hierarchy. You can create standalone L2 topics with L3 subtopics if your business structure doesn't need the highest strategic level, ensuring the taxonomy matches your actual operational reality.

## System Architecture and Integration

**Version Management**

All taxonomy changes operate through a version control system. Modifications don't impact ongoing analysis until you explicitly create and deploy a new version, preventing accidental disruptions to current operations while giving you complete control over when changes take effect.

**Enterprise-Grade Security and Permissions**

Role-based access controls manage permissions so that:

* Users with full Conversation Intelligence permissions can configure and modify taxonomies.

* View-only users can see configured taxonomies but can't make changes.

* Users without permissions can't access the Taxonomy Builder interface.

* The system tracks all changes through comprehensive audit logs and changelogs.

## Strategic Business Impact

When your topic structure aligns with your organizational reality, every customer conversation becomes a precise data point that directly informs business decisions. Quality assurance teams can develop targeted coaching programs based on specific interaction types rather than generic categories. Operations managers can identify emerging issues at the exact level of detail needed for rapid response. Customer experience leaders can track sentiment trends for the specific touchpoints that matter most to their improvement initiatives.

This precision enables conversation intelligence to evolve from an interesting dashboard into an essential operational tool that drives measurable business outcomes and strategic decision-making.

To set up and create a taxonomy, refer to [Setup Taxonomy](../taxonomy-builder/setup-taxonomy.md).
