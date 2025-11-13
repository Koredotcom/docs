# (In)Business Productivity Setup Guide

This setup guide helps administrators quickly configure the (In)Business Productivity for their users. Learn how to sign up, set up, configure, and invite users to (In)Business Productivity.

(In)Business Productivity setup consists of the following steps:

- Step 1: Sign Up for a New (In)Business Productivity Account
- Step 2: Configure User Enrollments, SSO, and Service Accounts
- Step 3: Configure LLM and Embedding Models
- Step 4: Configure Rate Limit for User Queries
- Step 5: Configure Enterprise Knowledge
- Step 6: Publish Pre-built Agents to be Available for your Users
- Step 7: Configure Agents and Applications As Per your Requirement
- Step 8: Invite your Users to (In)Business Productivity

### Step 1: Sign Up for a New (In)Business Productivity Account

To sign up for a new account, contact your organization's administrator.

### Step 2: Configure User Enrollments, SSO, and Service Accounts

- Configure user enrollments to manage account access and invitations.
    [Learn more](../user-management/user-enrollments.md).

- Set up SSO for easy access using your identity provider.
    [Learn more](../security/sso-overview.md).

- Add service accounts (Google, Microsoft, LDAP) to get user profiles and distribution lists for inviting users.
    [Learn more](../security/service-accounts.md).

### Step 3: Configure LLM and Embedding Models

To use Generative AI features in (In)Business Productivity, configure integration with either a pre-built or custom Large Language Model (LLM). Pre-built integrations with platforms like Azure OpenAI, OpenAI, and Anthropic offer seamless setup, while the bring-your-own (BYO) framework supports external or self-hosted models for custom configurations. [Learn more](../llm-configuration/general-purpose.md).

### Step 4: Configure Rate Limit for User Queries

Rate limits restrict user queries based on complexity and user category. Simple queries like small talk use 1 point each, while advanced queries involving knowledge integration or context use 3 points. There are two user categories: Moderate Users with default rate limits and Power Users with custom limits set by account administrators. [Learn more](../assistant-configuration/rate-limit.md).

### Step 5: Configure Enterprise Knowledge

The Enterprise Knowledge is a pre-configured Search AI app available to all (In)Business Productivity accounts. It acts as a fallback, generating responses when no specific agents match the user's intent. It's also automatically available to users when no custom or specific agents are assigned to handle a user query. [Learn more](../custom-agents/enterprise-knowledge.md).

### Step 6: Publish Pre-built Agents to be Available for your Users

(In)Business Productivity provides a set of pre-built agents that perform specific tasks with minimal setup or customization. These agents are designed to automate processes such as summarizing content, drafting emails, translating text, etc. Administrators can configure and publish pre-built agents for user access through the Agent Store. [Learn more](../pre-built-agents/overview.md).

### Step 7: Configure Agents and Applications As Per your Requirement

Agents and applications can be quickly set up to integrate with your workflows and systems. They can collect user input, retrieve data, connect to APIs, and execute complex tasks. [Learn more](../custom-agents/overview.md).

### Step 8: Invite your Users to (In)Business Productivity

Now that you've set up (In)Business Productivity, [invite or let your team know about (In)Business Productivity](../user-management/user-enrollments.md). The (In)Business Productivity Assistant provides employees with a single access point to knowledge across systems and can automate routine tasks using published AI agents. [Learn how to use (In)Business Productivity Assistant](../getting-started/how-to-use.md).
