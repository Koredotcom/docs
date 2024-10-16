# Airtable Connector

Airtable combines the functionality of a spreadsheet and a database, making it a powerful tool for organizing and managing structured data. Using the Airtable connector, you can easily ingest data from Airtable into your SearchAI application. 


<table>
  <tr>
   <td>Type of Repository 
   </td>
   <td>Cloud
   </td>
  </tr>
  <tr>
   <td>Extractive Model for Answer Generation
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td>Generative Model for Answer Generation
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td>Supported Content Type
   </td>
   <td>
   </td>
  </tr>
</table>


## Authorization Support

SearchAI supports authentication using **personal access tokens** and **OAuth access tokens** for integration with Airtable. 


## Airtable Configuration 

To enable communication between Airtable and SearchAI, generate the access tokens required for authentication. 

**Personal Access Token**

If you are using personal access tokens, log in to the [Developer Hub](https://airtable.com/login?continue=%2Fcreate%2Ftokens%3F_gl%3D1*1a4c3xl*_gcl_au*MTczODA4OTc2Ny4xNzI1MDAwMDk3*_ga*MjAxMzA2MDg2My4xNzI1MDAwMDk3*_ga_VJY8J9RFZM*MTcyNzE1MzQ3MS4zLjEuMTcyNzE1NDM5Mi4zOC4wLjA.) of your Airtable setup and 

[create a new PAT](https://support.airtable.com/docs/creating-personal-access-tokens). Add the following scopes to the PAT. 

* `data.records:read`
* `data.recordComments:read`
* `schema.bases:read`

**OAuth 2.0**

If you are using OAuth 2.0 for authentication, [register a new integration](https://airtable.com/create/oauth) for SearchAI.  Refer to[ this](https://airtable.com/developers/web/guides/oauth-integrations) for step-by-step instructions on how to register. This registration will generate a client id and client secret. 

## Airtable Connector Configuration in Search AI

Provide the following fields while configuring the Airtable connector in Search AI. 

**Name**: Unique name for the connector

**Authorization Type**: Select Personal Access Token or OAuth 2.0 as required. Refer to the above section to learn more about how to generate the authentication information for both of these types. 

* If PAT is selected as the auth type, provide the **personal access token.** 
* If OAuth 2.0 is selected as the auth type, provide the **client ID and the client secret**. 

There are some other optional fields that are used to map the Airtable content to the ingested content. Currently, Search AI supports only the standard fields. Hence, it is not mandatory to provide the other fields. 
