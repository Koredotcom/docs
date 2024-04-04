# Custom Script

Custom Script gives you the flexibility to implement custom changes to the Workbench, allowing you to process the data according to your specific business needs. For example, if you wish to prepend the chunk title of all the chunks extracted from a particular file, you can write a **Painless script** to do the same. 


## **Custom Script Configuration**

Use the following properties to configure this stage. 

* **Stage Type:** Set this field to Exclude Document type
* **Stage Name**: Set a unique name for the stage.
* **Condition**: Define a condition for selecting the documents to be excluded from processing. Use the basic or script mode to define the condition. You can define any number of conditions with the AND operator between the conditions to find the exact set of data to be excluded. For example, if you want to process only file content, use the following script as the condition.

```javascript
if(ctx.sys_content_type.equals("file"))
{ 
  return true;
}
else 
{
  return false;
}
```

**Outcome**: Define the outcome of the stage using the Painless script. For example, if you want the count of the total number of pages in a given file, you can write a script as shown below.


```javascript
int temp_total_pages = 0;
if(ctx.file_content_obj != null){
  for (def item: ctx.file_content_obj) {
    if (item!="") {
       temp_total_pages = temp_total_pages+1;
      }
  }
}
ctx.total_pages = temp_total_pages;
```
