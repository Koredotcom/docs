# Automation AI Updates

This document provides information on the feature updates and enhancements introduced in **Automation AI** of XO v11.x releases.

## v11.2 June 01, 2024

<u>Minor Release</u>

Key features and enhancements included in this release are summarized below.

### Digital Forms

#### Preprocessor Script Support for Digital Forms

The Digital Forms module now provides the ability to dynamically configure the form definition and behavior. The newly introduced Preprocessor configuration allows updating the form definition dynamically using JavaScript. The platform executes this preprocessor during the runtime and delivers the form definition to the channel. The preprocessor can use the environment, content, and context variables. 

The following are some of the key use cases:

1. Dynamically changing the form field titles, descriptions, etc. 

2. Dynamically populating the values of fields, for e.g., options in a  drop-down component

3. Changing the language of the messages to support multilingual conversations 
  
The koreUtil library has been extended with the "getFormDefinition" function to retrieve and modify the form definition.

This feature also helps address the current limitation of system messages available only in English. The "formMsgMeta" section of the form data contains the full list of system messages and errors, which can be modified using the Preprocessor.

### SDK Configuration

#### Customize Virtual Assistant’s Theme & Design

The platform now supports customizing the Virtual Assistant's look and feel with the new Theme and Design feature. This includes changes to welcome text, buttons, colors, chat windows, and sound themes to match their needs. A real-time preview pane shows changes instantly and makes it easy to make any adjustments before deploying the updated design. [Learn more :octicons-arrow-right-24:](./../../channels/add-web-mobile-client.md#virtual-assistant-theme--design)

#### Enhanced Panels & Widgets

The platform now supports the Panels and Widgets feature according to the selected Theme and Design of the Web SDK. [Learn more :octicons-arrow-right-24:](./../../automation/use-cases/digital-skills/digital-views.md)

<hr>

## v11.1.1 May 11, 2024

<u>Patch Release</u>

This update includes bug fixes.

<hr>

## v11.1.0 April 27, 2024

<u>Minor Release</u>

Key features and enhancements included in this release are summarized below.

### Dialog Builder

#### Enhancement to the Comments Functionality

The Comments feature now includes comment and thread actions, user mentions and notifications, timestamps, and filtering options. These enhancements make Comments a powerful tool for collaboration. [Learn more :octicons-arrow-right-24:](../../../automation/use-cases/dialogs/using-the-dialog-builder-tool/#notes-comments-and-bookmarks)

### Digital Forms

* Enable the "Off-the-Record Information" Flag for Digital Forms: On a digital form, when the field’s “Off the record” flag is enabled, the field data is cleared at the end of the user session and not stored in databases or logs. [Learn more :octicons-arrow-right-24:](../../automation/use-cases/digital-skills/configure-digital-forms.md#form-editor) 
* Digital Forms Date Picker Supports Japanese: The digital form’s Date Picker now supports the Japanese language if the bot language is Japanese.

### Export/Import

#### Enable App Import Functionality using Zip File Upload

Platform users can now import apps by uploading a ZIP file containing the app's data. This eliminates the need to extract and manually import JSON files. The ZIP file import works for both new and existing apps. [Learn more :octicons-arrow-right-24:](../../manage-assistant/bot-management.md#steps-in-importing-to-an-existing-assistant)

The corresponding APIs have also been updated to support this change: Import New VA and Import Existing VA.

