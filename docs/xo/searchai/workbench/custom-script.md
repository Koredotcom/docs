# Custom Script

The Custom Script stage allows you to apply custom logic within the Workbench, using JavaScript, to transform or enrich data based on specific business requirements. This provides flexibility beyond standard processing stages.

For example, you can use a custom script to prepend a chunk title to all chunks extracted from a specific file or to derive additional metadata during processing.


## Custom Script Configuration

Use the following properties to configure this stage. 

* Stage Type: Set this field to Custom Script
* Stage Name: Set a unique name for the stage.
* Condition: Define a condition for selecting the documents. Use the basic or script mode to define the condition. You can define any number of conditions with the `AND` operator between the conditions to find the exact set of data to be excluded. For example, if you want to process only file content, use the following script as the condition.

```javascript
if(context.sys_content_type.equals("file"))
{ 
  return true;
}
else 
{
  return false;
}
```

* Outcome: Define the outcome of the stage using the Painless script. For example, if you want the count of the total number of pages in a given file, you can write a script as shown below.


```javascript
int temp_total_pages = 0;
if(context.file_content_obj != null){
  for (def item: context.file_content_obj) {
    if (item!="") {
       temp_total_pages = temp_total_pages+1;
      }
  }
}
context.total_pages = temp_total_pages;
```
