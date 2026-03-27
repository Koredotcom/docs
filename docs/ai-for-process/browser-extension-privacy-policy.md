# Privacy Policy for AI for Process Browser Automation Extension

*Last updated: March 26, 2026*

## Overview

The Kore.ai AI for Process browser extension ("Extension") is a browser automation tool that records and replays user interactions on websites. This privacy policy explains what data the Extension collects, how it is used, and how it is stored.

## Data Collection

The Extension collects the following data **only when the user explicitly initiates recording or workflow execution on websites they choose to automate**:

* **Page interactions** - Clicks, typing, scrolling, hovering, keyboard actions, tab actions, and navigation steps performed during recording or replay.

* **Typed and form values** - Text entered into supported fields during active recording may be captured as part of a workflow step. This can include usernames, email addresses, search terms, URLs, and other values entered by the user on pages they choose to automate.  

* **Page URLs and navigation context** - URLs of pages visited during recording or execution, used to create navigate steps and replay workflows reliably.  

* **DOM element attributes and limited page content** - Element IDs, class names, ARIA labels, placeholder text, visible text content, and data attributes used to generate stable selectors for replay.

## Data NOT Collected

No data is collected when the Extension is idle (not recording or executing). No cookies, analytics, or telemetry are collected by default.

No data is collected from pages the user doesn't explicitly choose to automate.

No passive browsing history is collected outside of pages visited during active recording or execution.

No credentials or form values are collected outside of active recording sessions. No user data is sold to third parties.

## Data Storage

* **Browser-local storage** - Recorded workflows, selector metadata, recording state, and related extension data are stored locally in the browser using chrome.storage.local.

* **Session storage** - Temporary execution progress and in-flight runtime state may be stored using chrome.storage.session to support replay, navigation resumption, and side panel status updates during the current browser session.

* **Platform sync or publish** - When users explicitly choose to publish or sync workflows with the Kore.ai AI for Process platform, workflow data may be transmitted to Kore.ai servers over encrypted HTTPS connections. This is governed by the [Kore.ai Privacy Policy](https://kore.ai/privacy-policy/).

## Data Sharing

The Extension doesn't sell user data. Workflow data is only transmitted to Kore.ai servers when the user explicitly initiates a publish, sync, or platform-backed execution action. The Extension doesn't use or transfer user data for advertising, creditworthiness, or unrelated purposes.

## User Control

Users can view, edit, and delete all stored workflows at any time through the Extension's side panel.  
Users can export workflows as .json files for backup or transfer.

Uninstalling the Extension removes browser-local extension data, subject to Chrome's normal extension data removal behavior.

## Permissions

The Extension requests browser permissions including storage, tabs, activeTab, scripting, webNavigation, unlimitedStorage, and sidePanel, along with host permissions for `http://*/*` and `https://*/*`, solely to provide its core recording, replay, navigation, and side panel functionality on pages the user explicitly chooses to automate. A detailed explanation of each permission and why it is needed is available in the Extension's Chrome Web Store listing.

## AI Features

The Extension uses AI-powered selector scoring to prioritize stable CSS selectors (for example, data- testid and ARIA labels) over fragile ones (for example, dynamically-generated class names). This scoring runs entirely within the browser—**no user data is sent to any AI or machine learning service** for selector generation.

Server-side AI execution (autonomous mode) is available only when the user explicitly publishes a workflow to the Kore.ai AI for Process platform and initiates a run. Data handling for  
server-side execution is governed by the [Kore.ai Privacy Policy](https://kore.ai/privacy-policy/).

## Changes to This Policy

We may update this privacy policy from time to time. Changes will be reflected in the "Last updated" date above. Continued use of the Extension after changes constitutes acceptance of the updated policy.

## Contact

For questions about this privacy policy or the Extension's data practices, contact us at:

* [Email](mailto:support@kore.ai).
* [Website](https://kore.ai/).
