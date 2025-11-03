# AI for Process Release Notes

This document provides information on the feature updates and enhancements introduced in the recent AI for Process releases.

## v1.0.1 October 14, 2025

<u> Minor Release </u>

This update includes new features, enhancements, and bug fixes summarized below.

<font size="4">Workflows</font>

**Inactivity Alerts for Deployed Workflow Triggers**

AI for Process introduces configurable triggers in the Start node to execute event and schedule specific actions in a workflow. This enables seamless integration with third-party applications, supporting diverse use cases and improving automation outcomes.

Users are notified with a warning when a trigger in a deployed workflow becomes inactive. This helps quickly identify and resolve issues that interrupt workflow execution.

To restore an inactive trigger:

* [Re-deploy the workflow](../workflows/deploy-a-workflow.md#redeploy-a-workflow-for-the-changes-in-the-flow), or
* [Re-test the associated Auth profile](../settings/security-and-control/authorization-profile.md#test-the-auth-profile)

Note: Alerts appear only for deployed workflows with inactive automation.

**Attachment URL Access in Workflows**

Workflows now support consuming file attachment contents via secure URLs, enabling richer automation and broader use cases. This allows users to work with various attachment types, such as images, documents, and videos, to enhance workflow outputs and manage more complex scenarios.

Key enhancements

* Support for multiple attachment formats.
* Secure, authorized URL access.
* Original file names preserved for easy identification.

Note: Currently supports processing one attachment at a time.

**Enhanced Human-in-the-Loop (HITL) Path Handling**

Workflows now accurately route HITL outcomes through their designated paths — On Approval, On Decline, On Timeout, and On Failure. Users can configure each path to ensure proper handling of approvals, rejections, timeouts, and errors, providing better control and visibility in HITL automation.

**Workflow Import/Export Enhancements**

Import and export now preserve complete configurations for Human, Start, and Integration nodes, with automatic connection mapping for smoother environment migrations.

* Human Node: Retains configuration settings, including reviewer and message details.
* Start Node: Preserves trigger definitions and linked integrations.
* Integration Node: Maintains action configurations and connection mappings.
