# Enterprise Directory

## Overview

Enterprise Directory enables centralized employee contact management across your organization. This feature streamlines workflows by providing users with quick access to colleague information through intelligent search, customizable filters, and rich contact profiles, while giving administrators flexible configuration options for data sources, field mapping, and display settings.

## Accessing the Enterprise Directory

Follow these steps to access and use the Enterprise Directory:

1. **Access the Directory**
    * Navigate to the application.
    * Select **Enterprise Directory** to view the contact list.
    * Alternatively, access your personal contact card through the **Profile** section.
2. **Browse Contacts**
    * Upon opening the directory, you will see a list of contacts ranked by designation.
    * The interface displays contacts in an organized, hierarchical view based on organizational structure.

## Searching and Filtering Contacts

Locate colleagues efficiently using the directory's search and filter capabilities.

* **Search Bar**: Enter keywords in the search bar with real-time suggestions as you type. The system provides instant results matching names, designations, departments, or other searchable fields.
* **Apply Filters**: Use default filters to narrow your search:
    * **Department**: Filter by organizational department.
    * **Designation**: Filter by job role or designation.
    * **First Name**: Filter by first name.
    * **Location**: Filter by office location or region.
    * Additional custom filters configured by your admin.

### Contact Cards

Search results display compact contact cards showing:

* Name
* Designation
* Team
* Phone number
* Email address
* Other fields configured by your admin

**Viewing Detailed Information**:

* Click any contact card to open a side panel view.
* The side panel includes an option to expand to full-page view for comprehensive details.

**Detailed Contact View displays**:

* Profile Picture
* Default fields: Name, Designation, Team, Email, Phone, Location, Time Zone, Employee ID, Manager, Reportees, and Team Members.
* Any additional custom fields configured by the admin

## Admin Setup and Configuration

Follow these steps to configure the Enterprise Directory:

1. **Access the Admin Console**
    * Navigate to **Admin Hub** in the left pane.
    * Select **Connections** to access integration options.
    * Choose **Enterprise Directory**.
2. **Initiate Directory Setup**
    * Click **Add Directory Source** to begin configuration.
    * The Enterprise Directory Configuration Wizard guides you through the setup process.

### Step 1: Source Configuration

Configure the directory using the Push Data to Directory through API method.

**Push Data to the Directory through the API**

Enable your system to push employee data directly to the API.

1. Select **Push Data to Directory through API** as your data source method.
2. Click **Get API Details to Push Data** to view integration instructions, including:
    * API endpoint URL
    * Authentication credentials
    * Required data format and schema
    * Sample API request payload
    <img src="../images/ed-1.png" alt="user-details" title="user-details" style="border: 1px solid gray; zoom:80%;"> 

3. Implement the API integration in your system to push employee data to the directory.

### Step 2: Field Configuration

Customize fields to capture relevant employee information for your organization.

**Field Management for Push API**

Simplified field management without a mapping interface.

* **Add fields** as needed to capture organization-specific information.
* **Remove custom fields** that are not required.
* **Default fields are protected** and cannot be deleted (Name, Designation, Phone, Email).
* Configure at least the four mandatory fields: Name, Designation, Phone, Email.

**Custom Fields**:

* Add any additional fields relevant to your organization.
* Custom fields can be added or removed at any time.

### Step 3: Data Synchronization

Monitor data synchronization status and activity using the API.

**API Integration for Data Sync**

The directory updates automatically when your system pushes data through the API.

**API Token Management**:

* Access your API authentication token from the **Get API Details to Push Data** section.
* Store the token securely in your system.
* Include the token in the `auth` header of all API requests.
* Regenerate tokens periodically for security compliance.

**Display Information**:

* **Last updated timestamp**: Shows when data was last pushed to the directory.
* **Summary of records**: Displays the number of records added, updated, or deleted in the last push.

**Manual Updates**:

Trigger data updates from your system by calling the Push API endpoint with updated employee information.

!!!Note

    For detailed API documentation, including request schemas, response formats, and error codes, refer to the API integration guide accessible through the **Get API Details to Push Data** button.

### Step 4: Display Settings

Configure how contacts appear to end users after completing data setup.

**Hide Conditions**

Control contact visibility using hide conditions:

* **Full string match**: Hide contacts where the field exactly matches the specified value.
* **Starts with**: Hide contacts where the field begins with the specified prefix.
* Use hide conditions to exclude test accounts, inactive employees, or specific user groups from the end-user view.

**Example:** To hide all test accounts, create a hide condition where Email "starts with" "test@" or where Name "full string match" equals "Test User".

**Detail Card Layout**

Customize the contact detail card appearance and field order.

* The system displays a preview of the Detail Contact card with an **Edit Layout** option.
* Click **Edit Layout** to customize:
    * **Reorder field display** (except Name, Designation, Phone, Email – these are fixed at the top).
    * **Hide non-essential fields** (four mandatory fields cannot be hidden: Name, Designation, Phone, Email).

**Reordering Fields**:

1. Drag and drop fields to the desired position in the layout.
2. Preview changes in real-time.
3. Ensure critical information appears prominently for end users.

**Filter Settings**

Configure which fields are available as search filters for end users.

* Select single-select fields to expose as filters.
* Common filter options include Department, Designation, First Name, and Location.
* Enable filters for the most commonly searched attributes to improve user experience.
* Only fields with discrete values (not free text) can be configured as filters.

**Step 5: Publishing the Directory**

Publish your directory and define access permissions.

1. **Complete Configuration**
    * Ensure data has been pushed through the API and the display configuration is complete.
    * The system prompts you to publish the directory.
2. **Choose Publishing Scope:**
    * **Publish to all users**: Make the directory immediately available to everyone in the account.
    * **Keep unpublished**: Save configuration for later activation.

**Publishing Requirements:**

* At least one contact record must be available in the directory before publishing is enabled.
* Ensure you have pushed employee data through the API before attempting to publish.

**Admin View After Publishing**:

* **Publish status** indicator (Published/Unpublished).
* **Data settings summary:**
    * Last updated date showing when data was last pushed through API.
    * Record count summary (total contacts, recently added, updated, or deleted).
* **Display settings** overview.
* **Live preview** of how the directory appears to end users.

**Managing Individual Contacts**:

Administrators can hide individual contacts from the live preview:

* Navigate to the preview section in the admin console.
* Hover over any contact card to reveal the hide option.
* Click the hide icon to exclude that specific contact from the end-user view.
* Hidden contacts remain in the directory data but are not visible to end users.

**Finalize Deployment**:

* Click **Publish** to make the directory available to end users.
* The directory appears in the application menu for users based on the selected publishing scope.