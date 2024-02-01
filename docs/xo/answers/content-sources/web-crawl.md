# Overview

Websites usually provide detailed information about the products and services of an organization but have numerous pages and links. Finding a certain piece of information on the website can be a time-consuming task. Kore XO platform simplifies this process by indexing the content of the websites enabling the data and information on the webpages to be readily available as answers to the user's queries. 

## Features

* You can ingest web content through web crawling at regular intervals allowing you to access the most recent data for efficient searches.
* Web crawler only needs an initial web URL. It automatically discovers the pages on the site using its navigation plan and hyperlinks found on the page.
* You can define crawl rules to enable or disable specific pages to be crawled.
* There is authentication support to allow a crawler to access restricted content.

To manage the data on web pages, go to the **Web Crawl** under **Sources** in the **Answers** Module.

![Web Crawl](../images/webcrawlhome.png "Web Crawl")

## Adding a new web crawler for a web source

To add a new web source click +_Web Crawl_.

![Adding Web Source](../images/add-new-web-source.png "Add Web Source")

Alternatively, if some web domains are already configured for crawling, you will see the list on this page. Click +_Web Crawl _on the top right to add a new web domain for crawling.

![Add new web source](../images/add-web-source.png "add a new web source")

Enter the following details of the web domain to be crawled under the configuration tab and click **Save & Crawl**.

![Web Crawl Configuration](../images/add-web-config-page.png "Web Crawl Configuration")

**Source Title** – Provide a unique name for the web source.

**Description**– Enter a description of the source. This field can contain any information about the source like the data that it offers, the reason for adding it as a source, etc.

**Crawl Sources** – There are three ways to initiate crawling for a web domain. 

1. **URL**– Provide the base URL of the web domain to be crawled. When a URL is provided, the crawler automatically goes through the web pages that are discoverable through this URL in the domain based on the **crawl configuration** discussed below.
![Crawl Source - URL](../images/web-crawl-url.png "URL as the Crawl Source")

2. **Upload Sitemap** – Provide a list of sitemaps in the form of a CSV file and a Base URL. The base URL is used to validate the URLs in the sitemaps.  It crawls through all the web pages, listed in each sitemap in the CSV file, for which the URL matches the Base URL. If, however, a URL in the sitemap does not match the base URL, the crawler skips that URL and does not crawl it. The crawl options are used to further refine the URLs to crawl. You can use the sample sitemap CSV to learn the format of the CSV file to be used.
![Upload Sitemap](../images/crawl-source-sitemap.png "Upload Sitemap as crawl source")

3. **Upload URL**– Provide a list of URLs to crawl in the form of a CSV file and a base URL. The base URL is used to validate the URLs in the CSV file.  In this case, the crawler goes through all the pages listed in the CSV file that match the Base URL. The URLs that match the base URL are crawled and those that do not match are skipped. The crawl options are used to further refine the URLs to crawl. In this case, crawl depth and max URL crawl options are not required.  Use the _Sample URL CSV_to learn about the format of the CSV file. ![Upload CSV](..images/crawl-source-upload-url.png "Upload CSV file containing list of URLs.")

**Crawling Configuration** – Crawl configuration for the source. This is used to further refine the pages to be crawl.

**Crawl Options**– This field can be used to further refine the web pages to crawl from the list of URLs defined using the crawl source. You can choose to crawl and index all the URLs in the crawl source or you can allow or block specific URLs to be crawled. This configuration can be used to avoid crawling unnecessary web pages from the source, thereby, optimizing indexing for efficient searches. The field can take one of the following values:

* **Crawl everything** – Use this option when all the URLs in the domain, specified by the Crawl Source are to be crawled. By default, when a new domain is added, this option is used and all the URLs in the domain are used.
* **Crawl everything except specific URLs** – Use this option when all the URLs except the blocked URLs are to be crawled. You can add rules to identify the blocked URLs like _block if URL_ _contains or doesn’t contain _a specific term or if the_ URL is equal to_ a specific URL, as shown below. Select the condition from the drop-down list and specify its values in the text box on the right.
![Crawl Everything except specific URL](../images/URL-exclude-conditions.png "Crawl specific URLs")

* **Crawl only specific URLs** – Use this option when only selected URLs that satisfy a given condition are to be crawled. For example, if only the blog section is to be crawled, you can set the rule as _Allow if URL contains “blog”_.
![Crawl Only Specific URLs](../images/URL-include-conditions.png "crawl only specific URLs")

You can add any number of rules to selectively choose the URLs from the given web source.
![Number of rules](../images/multiple-include-conditions.png "number of rules")

**Use Cookies** – Check the field if you want to crawl web pages that require cookie acceptance. If the field is unchecked, the web pages which require cookie acceptance will be ignored.

**JavaScript Rendered** – Check this field if the content rendered through Javascript code is to be crawled. This field can be useful if the web pages are javascript heavy and may have useful information for the user. 

**Crawl Beyond Sitemap** – Sitemap is a file that provides information about the important pages and files on the website. Check this field if you want to crawl URLs beyond those listed in the sitemap. If this is unchecked, only the URLs defined in the sitemap are crawled.  

**Respect robots.txt directives** – Robots.txt file contains information about the URLs that the crawler can access on the website. This field, when checked, forces the crawler to honor any directives in the robots.txt file for the web domain.  

**Crawl depth** – Each website contains multiple levels of the hierarchy of pages and subpages. The source URL is considered to be at the top of the hierarchy and other pages linked to the source URL create nested layers. Crawl depth refers to the maximum number of nested levels that the crawler should go to. Set to 0 to indicate no limit. If no value is provided for the field, the default crawl depth is set to 5. 

**Max URL Limit_ –_** This field refers to the maximum number of URLs to crawl. Set to 0 to indicate no limit. If no value is provided, this field uses the default value of 10.

## Updating an existing web crawler

You can edit the configuration for any crawl source at any time. This can be useful in case the authentication methods have changed, the crawl rules need to be updated, the crawling schedule is to be modified, etc.

!!!note
    You can update all the properties of the web crawler except the URL.

Any changes made to the configuration come into effect either when you manually recrawl the domain after making the changes or after the next scheduled recrawl.  

To make any changes in the source configuration, click the source title from the list of configured sources under the Web Crawl page and make appropriate changes under the **Configuration** tab. ![Update a web source](../images/update-websource.png "Updating a web source")

## View execution status and crawled pages

Crawling a web domain takes time depending on the crawl options set for the source. For example, if all the URLs are to be crawled and the crawl depth and max URLs are set to maximum, it may take longer than a configuration where the crawl depth is set to 2 and the max URLs are set to 10. When a new web source is added, you can choose to execute the crawling process in the background. Also, the scheduled recrawls which run at specific times are automatically run in the background. To view the pages crawled in a web source, go to its **Pages**tab.
![Crawled pages](../images/crawled-pages.png "crawled pages")

It lists the pages crawled in the last update, the user who initiated the crawl, and the URL of the crawled page. You can also recrawl a given page or delete it using the actions for the page.
![Page actions](../images/page-actions.png "page actions")

You can also go to the detailed view of a given page and take these actions as shown below.
![Page Details](../images/page-details.png "page details")

Additionally, to view how the page is stored in the application, click on the **View JSON** button. 
![JSON View](../images/json-view.png "json view")

To view the execution status and logs, go to the **Executions** tab for the source.
![Execution status](../images/execution-status.png "execution status")

It shows the current status of the web crawl, the timestamp of the most recent crawl, and the corresponding logs.

## Recrawling a web source

Recrawling is required to keep up with the changes in the source. You can either schedule recrawling of the website at regular intervals using the scheduler or you can manually perform a recrawl operation as and when required. To manually recrawl a web source, click the **recrawl **action against the name of the source.
![Recrawl Web Source](../images/recrawl-websource.png "recrawl web source")

You can also use the Re-Crawl on the configuration page of the web source. ![Recrawl](..images/recrawl-websource-via-config-page.png "recrawl")


You can also recrawl selected pages of the source when you know the specific pages that have been updated. This can avoid the unnecessary crawling of the whole source. Go to the **Pages**tab of the source and click the **Recrawl** link under **Actions** for the page to be crawled.![Recrawl a page](../images/page-actions.png "recrawl a page")

## Deleting an existing web crawler

When a resource is no longer required and you do not want the information to appear in the user search results, delete the source from the application. To do so, go to the **Web Crawl page** that lists all the existing sources and click the delete link for the source you want to delete.
![Delete Web Source](../images/delete-websource.png "delete web source")

You can also delete one or more of the crawled pages individually from the source without deleting the source. To do so, go to the **Pages** tab for the selected source and click the **Delete** link under **Actions** for the page to be removed.
![Delete a page](../images/delete-pages.png "delete page")

!!!note
    Note that if a specific page is deleted manually as explained above and the web source is recrawled, the page reappears in the crawled pages list unless the crawl options are modified to disable the crawling of this page( like adding it in the exclude list, etc.). 

## Troubleshooting

There can be various scenarios when the application either fails to crawl a web page or successfully crawls the page but does not index the web page’s content and, hence, does not return the expected results. Listed below are some of the most common of these scenarios. For any specific queries or issues, please contact us.

1.**Web Crawl Failure:**

    * Ensure you have permission to log in to the web pages you are trying to crawl and have provided the correct credentials in the web crawl configuration.
    * Verify that the URL is accurate and complete, directing to the intended pages for crawling.
    * Confirm that the domain is whitelisted for the XO platform.

2.**Successful Web Crawl but Unsuccessful Indexing:**

    * Verify that your web pages are not Javascript rendered. By default, the application does not crawl JS-rendered pages. Hence, if your pages are completely or partially JS rendered, the web crawl will not index all the content. To enable the crawling of such pages, enable the “Javascript Rendered” option in the crawl configuration. 
    * Verify that the inclusion and exclusion rules are set appropriately. 
    * Verify that the crawl depth and max URLs are set appropriately.  These configuration parameters impact the number and sequence of pages crawled. 
    * Ensure that the page is discoverable. Web crawler uses sitemaps and links between pages to find a page. If a page is not linked from other pages and is also not listed in the sitemap, the web crawler will not discover it.

3.**Web Crawl Takes Too Long:**

    * Verify if the web pages are JavaScript-rendered, and enable the option if necessary. This situation may arise when many pages on the website being crawled return no content due to being JavaScript-rendered. The crawler continues to crawl the next pages till it crawls the specified number of pages (defined by ‘max URLs’).
