# **Permission Entity APIs**


## Get Permission Entities

This API lists all the permission entities associated with a connector. 

<table>
  <tr>
   <td>Method
   </td>
   <td>GET
   </td>
  </tr>
  <tr>
   <td>Endpoint
   </td>
   <td>&lt;host_url>/public/bot/:botId/connector/:connectorId/permission-entities
   </td>
  </tr>
  <tr>
   <td>Content-Type
   </td>
   <td>application/json
   </td>
  </tr>
  <tr>
   <td>Authorization
   </td>
   <td>auth: &lt;JWT Token>
   </td>
  </tr>
  <tr>
   <td>API Scope
   </td>
   <td>Permission Entity Management
   </td>
  </tr>
</table>



### **Query Parameters**

<table>
  <tr>
   <td>Parameters
   </td>
   <td>Description
   </td>
   <td>Mandatory
   </td>
  </tr>
  <tr>
   <td>Bot ID
   </td>
   <td>Provide your application ID here. 
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td>Connector ID
   </td>
   <td>Unique ID of the connector for which permission entities are requested.
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td>Skip
   </td>
   <td>No of records to skip from the beginning of the response
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>Limit
   </td>
   <td>Maximum number of records to return in the response
   </td>
   <td>No
   </td>
  </tr>
</table>

## Get Permission Entity by ID

This API returns the details of the request permission entity. It lists the users associated with the permission entity. 


<table>
  <tr>
   <td>Method
   </td>
   <td>GET
   </td>
  </tr>
  <tr>
   <td>Endpoint
   </td>
   <td>&lt;host_url>/public/bot/:botId/connector/:connectorId/permission-entities/:entityId
   </td>
  </tr>
  <tr>
   <td>Content-Type
   </td>
   <td>application/json
   </td>
  </tr>
  <tr>
   <td>Authorization
   </td>
   <td>auth: &lt;JWT Token>
   </td>
  </tr>
  <tr>
   <td>API Scope
   </td>
   <td>Permission Entity Management
   </td>
  </tr>
</table>



### **Query Parameters**


<table>
  <tr>
   <td>Parameters
   </td>
   <td>Description
   </td>
   <td>Mandatory
   </td>
  </tr>
  <tr>
   <td>Bot ID
   </td>
   <td>Provide your application ID here. 
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td>Connector ID
   </td>
   <td>Unique ID of the connector for which permission entities are requested.
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td>Entity Id
   </td>
   <td>Unique Id of the Permission Entity 
   </td>
   <td>Yes
   </td>
  </tr>
</table>

## Update Permission Entity by ID

This API is used to associate users to a Permission Entity. You can add new users to the entity using this API.


<table>
  <tr>
   <td>Method
   </td>
   <td>PUT
   </td>
  </tr>
  <tr>
   <td>Endpoint
   </td>
   <td>&lt;host_url>/public/bot/:botId/connector/:connectorId/permission-entities/:entityId
   </td>
  </tr>
  <tr>
   <td>Content-Type
   </td>
   <td>application/json
   </td>
  </tr>
  <tr>
   <td>Authorization
   </td>
   <td>auth: &lt;JWT Token>
   </td>
  </tr>
  <tr>
   <td>API Scope
   </td>
   <td>Permission Entity Management
   </td>
  </tr>
</table>



### **Query Parameters**


<table>
  <tr>
   <td>Parameters
   </td>
   <td>Description
   </td>
   <td>Mandatory
   </td>
  </tr>
  <tr>
   <td>Stream ID
   </td>
   <td>Provide your application ID here. 
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td>Connector ID
   </td>
   <td>Unique ID of the connector for which permission entities is to be updated.
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td>Entity Id
   </td>
   <td>Unique Id of the Permission Entity
   </td>
   <td>Yes
   </td>
  </tr>
</table>



### **Sample Request Body**

To associate a user with a permission entity, use the following as the request body. 

```
{
"userList":["john@kore.com"]
}
```

## Delete Users from Permission Entity by ID

This API removes a user already associated with the permission entity. 


<table>
  <tr>
   <td>Method
   </td>
   <td>DELETE
   </td>
  </tr>
  <tr>
   <td>Endpoint
   </td>
   <td>&lt;host_url>/public/bot/:botId/connector/:connectorId/permission-entities/:entityId
   </td>
  </tr>
  <tr>
   <td>Content-Type
   </td>
   <td>application/json
   </td>
  </tr>
  <tr>
   <td>Authorization
   </td>
   <td>auth: &lt;JWT Token>
   </td>
  </tr>
  <tr>
   <td>API Scope
   </td>
   <td>Permission Entity Management
   </td>
  </tr>
</table>

### **Query Parameters**


<table>
  <tr>
   <td>Parameters
   </td>
   <td>Description
   </td>
   <td>Mandatory
   </td>
  </tr>
  <tr>
   <td>Stream ID
   </td>
   <td>Provide your application ID here. 
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td>Connector ID
   </td>
   <td>Unique ID of the connector for which permission entities is to be updated.
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td>Entity Id
   </td>
   <td>Unique ID of the Permission Entity 
   </td>
   <td>Yes
   </td>
  </tr>
</table>

### **Sample Request Body**

To delete a user from a permission entity, use the following as the request body. 

```
{
    "userList":["john@kore.com"]
}
```

