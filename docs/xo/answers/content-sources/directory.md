# Directory

Business information is available in a variety of formats and at various locations. A lot of this information is also available as documents and files on internal servers. XO Answers provides a capability to upload and index files or directories hosted on local machines or remote servers. This functionality streamlines the process of locating information, eliminating the need to manually locate specific documents and sift through their contents, thus reducing manual efforts and enabling efficient retrieval of information. saving users both time and energy.

The **Answers** module allows you to **upload one or more files, directories from the local device or from a given URL**. The uploaded files are organized into directories in the application. A default directory is always present to store files. Once a file is successfully uploaded to the application, it is automatically indexed and the file data is readily available as answers to the user’s queries.  XO applications supports files in various formats - PDF, DOCX, PPT, XLSX, JPEG, PNG and TXT. However, currently scanned PDFs and password-protected files are not supported.  

## Viewing Files and Directories

Go to **Sources** under the Answers Module and click on **Directory** tab. This lists all the directories configured as content sources.

![Directory Home](../images/directory/directory-home.png "directory home")

For each directory, it lists the number of files that it contains, the user who created this, timestamp of the last update made to this directory and the status of file uploads to the directory.  By default, the **Default Directory** always exists. You can upload files to this default directory or create new directories and upload files to those directories. 

Click on any of the directories in the list to view the details. The **Directory Details** page shows the properties of the directory and the **Files** tab lists the files in the directory along with their type and number of pages in the file.

![Directory Details](../images/directory/directory-details.png "Directory Details")

Click on any of the files to see more details about the file like file type, total number of pages in the file and a preview of the file.

![File Summary](../images/directory/file-summary.png "File Summary")

Click on the **JSON view** button to see the file details as extracted from the file in JSON format. 

![JSON View](../images/directory/file-json-view.png "JSON View")

## Uploading Files and Directories

To upload one or more files or directories, click the **Upload** button on the top right corner of the page.

![Upload](../images/directory/upload-file.png "upload")

There are **three upload options** to upload files.
![Upload options](../images/directory/new-upload.png "upload options")

1. **File**: Use this option to upload one or more files to any of the existing directories from the local device. Select the directory where the files are to be uploaded, drag and drop file from local device and click Proceed.
2. **URL**: Use this option to upload a file hosted remotely via its URL. Enter a title for the file to be uploaded from the URL, select the directory to which it is to be uploaded, enter description for the file, the URL where it is available and click Proceed.
![Upload from URL](../images/directory/upload-from-URL.png "Upload from URL")

3. **Directory**: Use this option to upload a complete directory from the local device to the application. All the files under the directory are uploaded to the application under a new folder created using the source title.
![Upload Directory](../images/directory/upload-directory.png "Upload Directory")
  
## Deleting Files and Directories

To delete a complete directory from the application, click on the **Actions** and select **Delete**. This will delete the directory and all the files in the directory.

![Delete Directory](../images/directory/delete-directory.png "Delete Directory")

To delete a specific file from a directory, go to the Directory Details and select the **Delete** action corresponding to the file to be deleted.
![Delete File](../images/directory/file-delete.png "Delete File")

Alternatively, you can go to the details page of the file and click the **Delete** button.
![Delete File](../images/directory/file-delete-detailspage.png "Delete File")

## Searching for Directories and Files

Use the search bar at the top of the Directory page to look for a specific directory.

![Search Directory](../images/directory/search-directory.png "Search Directory")

Similarly to look for a specific file in a particular directory, go to the Directory details and use the search bar at the top.
![Search File](../images/directory/search-file.png "Search File")
