# AI for Work Quick Start Guide

This setup guide helps administrators quickly configure the AI for Work for
their users. Learn how to sign up, set up, configure, and invite users to AI for
Work.

AI for Work setup consists of the following steps:

- [AI for Work Quick Start Guide](#ai-for-work-quick-start-guide)
  - [Step 1: Sign Up for a New AI for Work Account](#step-1-sign-up-for-a-new-ai-for-work-account)
  - [Step 2: Configure User Enrollments, SSO, and Service Accounts](#step-2-configure-user-enrollments-sso-and-service-accounts)
  - [Step 3: Configure LLM and Embedding Models](#step-3-configure-llm-and-embedding-models)
  - [Step 4: Configure Rate Limit for User Queries](#step-4-configure-rate-limit-for-user-queries)
  - [Step 5: Configure Enterprise Knowledge](#step-5-configure-enterprise-knowledge)
  - [Step 6: Publish Pre-built Agents to be Available for your Users](#step-6-publish-pre-built-agents-to-be-available-for-your-users)
  - [Step 7: Configure Custom Agents As Per your Requirements](#step-7-configure-custom-agents-as-per-your-requirements)
  - [Step 8: Invite your Users to AI for Work](#step-8-invite-your-users-to-ai-for-work)

## Step 1: Sign Up for a New AI for Work Account

To sign up for a new account, contact the [Sales
team](https://kore.ai/contact-us/).

## Step 2: Configure User Enrollments, SSO, and Service Accounts

- Configure user enrollments to manage account access and invitations.
    [Learn more](https://docs.kore.ai/ai-for-work/user-management/user-enrollments/).

- Set up SSO for easy access using your identity provider.
    [Learn more](https://docs.kore.ai/ai-for-work/security/sso/).

- Add service accounts (Google, Microsoft, LDAP) to get user profiles and
    distribution lists for inviting users.
    [Learn more](https://docs.kore.ai/ai-for-work/security/service-accounts/).

## Step 3: Configure LLM and Embedding Models

To use Generative AI features in AI for Work, configure integration with either
a pre-built or custom Large Language Model (LLM). Pre-built integrations with
platforms like Azure OpenAI, OpenAI, and Anthropic offer seamless setup, while
the bring-your-own (BYO) framework supports external or self-hosted models for
custom configurations. [Learn more](/docs/ai-for-work/assistant-configuration/llm-configuration/).

## Step 4: Configure Rate Limit for User Queries

Rate limits restrict user queries based on complexity and user category. Simple
queries like small talk use 1 point each, while advanced queries involving
knowledge integration or context use 3 points. There are two user categories:
Moderate Users with default rate limits and Power Users with custom limits set
by account administrators. [Learn more](/docs/ai-for-work/assistant-configuration/rate-limit/).

## Step 5: Configure Enterprise Knowledge

The Enterprise Knowledge is a pre-configured Search AI app available to all AI for Work
accounts. It acts as a fallback, generating responses when no specific agents
match the user's intent. It's also automatically available to users when no
custom or specific agents are assigned to handle a user query.[Learn how to configure the Enterprise Knowledge](https://docs.kore.ai/ai-for-work/custom-agents/enterprise-knowledge/#enterprise-knowledge-configuration).

## Step 6: Publish Pre-built Agents to be Available for your Users

AI for Work provides a set of pre-built agents that perform specific tasks with
minimal setup or customization. These agents are designed to automate processes
such as summarizing content, drafting emails, translating text, etc.
Administrators can configure and publish pre-built agents for user access
through the Agent Store. [Learn more](/docs/ai-for-work/pre-built-agents/overview/).

## Step 7: Configure Custom Agents As Per your Requirements

Custom AI agents can be quickly set up to integrate with your workflows and
systems. They can collect user input, retrieve data, connect to APIs, and
execute complex tasks. [Learn
more](/docs/ai-for-work/custom-agents/overview/).

## Step 8: Invite your Users to AI for Work

Now that you've set up AI for Work, [invite or let your team know about AI for Work](https://docs.kore.ai/ai-for-work/user-management/user-enrollments/). The
AI for Work Assistant provides employees with a single access point to knowledge
across systems and can automate routine tasks using published AI agents. [Learn how to use AI for Work Assistant](https://docs.kore.ai/ai-for-work/getting-started/how-to-use/).
