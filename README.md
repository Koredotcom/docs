
### [Sample Demo](https://koredotcom.github.io/docs/en/itassist/getting_started)

##  Documentation For the Kore.ai Products

 - IT Assist
 - Search Assist
 - Smart Assist
 - Platform
 
All product documentation supports only markdown syntax for alignment, styling and formatting.

**Note:**  Before going to write this documentation please make sure yourself comfortable with markdown [documentation and syntax](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax).
 
To write any product documentation please follow below steps.

  ### Steps To Write Document
  
   - Navigate to the [docs](https://github.com/Koredotcom/docs/tree/main/docs) folder
   - Select the language that you want to write the doc.
   - Once you open selected language folder you will be able to see the availale [prodcuts](https://github.com/Koredotcom/docs/tree/main/docs/en) documentation folders.
   - Open any of the product folder Eg:[It Assist](https://github.com/Koredotcom/docs/tree/main/docs/en/itassist)
   - Create the file with **.md** extension.
   - Once file created make sure you add the front matters on top of the documentation page which defines the title of the doc and navigation link.
   
   
   Eg: 
     
         ---
          title: Analyse
          permalink: en/itassist/Analyse
         ---
    
    
    
    
    
    






   
   - Next to the frontmatters section , using the markdown syntax we can write documentation.
   
   
 ### Steps To link Documentation with Sidebar
 
 Once we are done with writing with documentation next is update the documentation link in the sidebar.

  - Navigate to the sidebar(_includes/sidebar) [folder](https://github.com/Koredotcom/docs/tree/main/_includes/sidebars).
  - Select the language folder which you want to update the sidebar link for the documentation.
  - Once you open the selected language folder you will be able to see the all available products sidebar **.md**  files.
    You will be able identify the product specific sidebar with the file name.
  - With the help of basic github [markdown links](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax#links) Syntax we able to define the sidebar navigation links.
  - Please make sure given link should match with frontmatter **permalink**.

     Eg:
          
          [Analyse](https://koredotcom.github.io/docs/en/itassist/Analyse).

  - If we want collapsible links section please use below code snippet.
    
    Eg:
    
        <details >
            <summary>Quick Start Guide_en
            </summary>

          - [Accessing the Platform](en/itassist/Accessing%20The%20Platform)
          - [Working with the Builder](https://duckduckgo.com)
          - [Using Workspaces](https://duckduckgo.com)

         </details>
         
         
         
         
### Steps To Upload Product Specific Images
  
While writing the documentation there would be a cases where we have to display the images, to achive this use case please follow below steps.

- Navigate to the images [folder](https://github.com/Koredotcom/docs/tree/main/images).
- Select the product [folder](https://github.com/Koredotcom/docs/tree/main/images/itassist) where you would like to upload the image.
- Please upload image [here](https://github.com/Koredotcom/docs/tree/main/images/itassist)

**Note:** Inside product [folder](https://github.com/Koredotcom/docs/tree/main/images/itassist) you were free to create the subfolder to organize as per your documentation needs.


#### Image loading/linking with documentation
 Just we have to give the correct path in the documentation to load the images.
 Please refer the below markdown syntax to load the images.

 Eg:

     ![Short image description](images/itassist/docIcon.svg "Title of image")
 
   


 
 #### Information Templates Examples

### Tip:
 
 **Syntax**

     <tip> **Tip:**  This is a tip Info </tip>

**Demo**

<img width="529" alt="image" src="https://user-images.githubusercontent.com/103113830/192445705-42f66871-f925-44e3-b450-e5640d2057b3.png">



### Warning:

**Syntax**
     
         <warning> **Warning:**  Deleted Tasks Cannot Be Restored. [here](https://duckduckgo.com). </warning>
         
         
**Demo**

<img width="520" alt="image" src="https://user-images.githubusercontent.com/103113830/192446568-99208cac-ad1a-4811-b15d-1e9fd84d09d4.png">



### Note:

 **Syntax** 
           
        <note> **Note:** This is a note Info </note>

**Demo**

 <img width="516" alt="image" src="https://user-images.githubusercontent.com/103113830/192446706-20b94d42-a016-4935-a1ce-52aef624be91.png">



### Info:

 **Syntax**
  
        <info> **Info:** This is a  Info </info>


 **Demo**
 
  <img width="551" alt="image" src="https://user-images.githubusercontent.com/103113830/192446830-92001ffe-6ac6-406b-840f-b9867eb6e3d2.png">

  
