# Automation AI Updates

This document provides information on the feature updates and enhancements introduced in **Automation AI** of XO v11.1.x releases.

## v11.1.1 May 11, 2024

<u>Patch Release</u>

This update includes feature bug fixes.


## v11.1.0 April 27, 2024

<u>Minor Release</u>

Key features and enhancements included in this release are summarized below.

### Dialog Builder

#### Enhancement to the Comments Functionality

The Comments feature now includes comment and thread actions, user mentions and notifications, timestamps, and filtering options. These enhancements make Comments a powerful tool for collaboration.

[Learn more :octicons-arrow-right-24:](../../../automation/use-cases/dialogs/using-the-dialog-builder-tool/#notes-comments-and-bookmarks)

### Digital Forms

* Enable the "Off-the-Record Information" Flag for Digital Forms: On a digital form, when the field’s “Off the record” flag is enabled, the field data is cleared at the end of the user session and not stored in databases or logs.  
[Learn more :octicons-arrow-right-24:](../../automation/use-cases/digital-skills/configure-digital-forms.md#form-editor) 
* Digital Forms Date Picker Supports Japanese: The digital form’s Date Picker now supports the Japanese language if the bot language is Japanese.

### Export/Import

#### Enable App Import Functionality using Zip File Upload

Platform users can now import apps by uploading a ZIP file containing the app's data. This eliminates the need to extract and manually import JSON files. The ZIP file import works for both new and existing apps.  
[Learn more :octicons-arrow-right-24:](../../manage-assistant/bot-management.md#steps-in-importing-to-an-existing-assistant)

The corresponding APIs have also been updated to support this change: Import New VA and Import Existing VA.

