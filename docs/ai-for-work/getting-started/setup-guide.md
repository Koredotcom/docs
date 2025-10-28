# AI for Work Setup Guide

This setup guide helps administrators quickly configure the AI for Work for their users. Learn how to sign up, set up, configure, and invite users to AI for Work.

AI for Work setup consists of the following steps:

- Step 1: Sign Up for a New AI for Work Account
- Step 2: Configure User Enrollments, SSO, and Service Accounts
- Step 3: Configure LLM and Embedding Models
- Step 4: Configure Rate Limit for User Queries
- Step 5: Configure Enterprise Knowledge
- Step 6: Publish Pre-built Agents to be Available for your Users
- Step 7: Configure Agents and Applications As Per your Requirement
- Step 8: Invite your Users to AI for Work

### Step 1: Sign Up for a New AI for Work Account

To sign up for a new account, contact the [Sales team](https://kore.ai/contact-us/).

### Step 2: Configure User Enrollments, SSO, and Service Accounts

- Configure user enrollments to manage account access and invitations.
    [Learn more](../user-management/user-enrollments.md).

- Set up SSO for easy access using your identity provider.
    [Learn more](../security/sso.md).

- Add service accounts (Google, Microsoft, LDAP) to get user profiles and distribution lists for inviting users.
    [Learn more](../security/service-accounts.md).

### Step 3: Configure LLM and Embedding Models

To use Generative AI features in AI for Work, configure integration with either a pre-built or custom Large Language Model (LLM). Pre-built integrations with platforms like Azure OpenAI, OpenAI, and Anthropic offer seamless setup, while the bring-your-own (BYO) framework supports external or self-hosted models for custom configurations. [Learn more](../llm-configuration/general-purpose.md).

### Step 4: Configure Rate Limit for User Queries

Rate limits restrict user queries based on complexity and user category. Simple queries like small talk use 1 point each, while advanced queries involving knowledge integration or context use 3 points. There are two user categories: Moderate Users with default rate limits and Power Users with custom limits set by account administrators. [Learn more](../assistant-configuration/rate-limit.md).

### Step 5: Configure Enterprise Knowledge

The Enterprise Knowledge is a pre-configured Search AI app available to all AI for Work accounts. It acts as a fallback, generating responses when no specific agents match the user's intent. It's also automatically available to users when no custom or specific agents are assigned to handle a user query. [Learn more](../custom-agents/enterprise-knowledge.md).

### Step 6: Publish Pre-built Agents to be Available for your Users

AI for Work provides a set of pre-built agents that perform specific tasks with minimal setup or customization. These agents are designed to automate processes such as summarizing content, drafting emails, translating text, etc. Administrators can configure and publish pre-built agents for user access through the Agent Store. [Learn more](../pre-built-agents/overview.md).

### Step 7: Configure Agents and Applications As Per your Requirement

Agents and applications can be quickly set up to integrate with your workflows and systems. They can collect user input, retrieve data, connect to APIs, and execute complex tasks. [Learn more](../custom-agents/overview.md).

### Step 8: Invite your Users to AI for Work

Now that you've set up AI for Work, [invite or let your team know about AI for Work](../user-management/user-enrollments.md). The AI for Work Assistant provides employees with a single access point to knowledge across systems and can automate routine tasks using published AI agents. [Learn how to use AI for Work Assistant](../getting-started/how-to-use.md).
