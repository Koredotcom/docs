# Field Mapping

The Field Mapping stage can be used to perform operations on the fields in a chunk and map them to a target field. Fields refer to the Index fields(or Chunk Fields) that store the source content in the Answer Index. Index fields are like the schema of a database. This stage allows you to modify these fields as per your business needs ( like, using them for defining business rules). You can perform conditional mapping on the fields if required. Field Mapping Stage allows you to perform the following operations on the fields:

* Set the value of a field
* Rename a field
* Copy the value of one field to another
* Remove a field

![Field Mapping Stage](../images/field-mapping.png "Field Mapping")

The Field Mapping stage can be defined using the following three properties:

1. **STAGE DEFINITION**
    1. Stage Type: This property is automatically set to ‘Field Mapping’.
    2. Stage Name: Provide a unique name for identification of the stage. 
2. **CONDITION** states the rules or criteria to select the data on which field mapping is to be performed. You can add one or more rules to select the dataset. There are two ways of defining the condition for the mapping: **Basic** and **Script**. When using the Script, you can provide a custom script to add your condition for field mapping. When using the Basic method, you can define a condition using the following two properties. 
    1. Field Name: Fields of a chunk on which the rule will be applied.
    2. Operator: Condition to be applied on the selected field. 
3. **OUTCOME** states the operation to be performed when the above conditions are satisfied. 
    1. Action: Action to be taken if the above condition is true. This can take the following values:
        * Set - Sets the given value as the value of the target field. 
        * Delete - Deletes the target field for the chunk. 
        * Copy - Copies the value of one field into another. 
        * Rename - Renames the selected field. 

 Example: If you want to assign a chunk source as its title in case the title is missing, you can define the stage as shown below.
 ![Example](../images/field-mapping-example.png "Example")
