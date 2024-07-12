# Evaluation

This evaluation phase streamlines the Quality Management (QM) evaluation process to drive better customer experience where the QA manager sets up the evaluation criteria for users or agents. Each QA and contact center has different operation procedures based on logical or functional groupings.

For better handling of the evaluation criteria, this evaluation stage is divided into the following two sections:

* Evaluation Forms
* Evaluation Metrics

## Evaluation Forms

The Evaluation Forms are designed to check adherence to individual questions. They are a collection of metrics that let you score, audit, and interact (for Conversation Intelligence and Auto QA Scoring). Once these forms are created, you can assign them to the QM auditors as assessments for review compliance.

The Evaluation Form includes chosen metrics with customizable weights totaling 100%. The Evaluation Forms are configured and assigned to respective Channels and Queues for audit. Each queue in the Chat and Voice channels can host only one evaluation form.

The users can access the Evaluation Forms by going to **Contact Center AI** > **Quality Management** > **Configure** > **Evaluation Forms**, as shown below.



<p id="gdcalert1" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image1.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert2">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image1.png "image_tooltip")


The Evaluation Forms has the following options:



* **Name**: Shows the name of the Evaluation Form.
* **Description**: Shows a short description of the form.
* **Queues**: Shows the forms assigned and not assigned in the queue.
* **Channel**: Shows the assigned form channel mode: Voice or Chat interaction. Only one form is allowed for the audit. 
* **Created By**: Shows the form creator's name.
* **Pass Score**: Shows the set pass score percentage for the specified assigned forms and the Channel selected.
* **Status**: Allows you to enable or disable the scoring for the individual Evaluation Form.  
* **Search**: Provides a quick search option to view and update the Evaluation Forms by name only.
* **Ascend**/**Descend Order**: Provides a quick ascending and descending arrow mark view option for all the edited and newly added Channels and Queues of Evaluation Forms (Configure and Assign).


### **Add New Evaluation Form**

The users can access the Evaluation Metrics by going to **Contact Center AI **>** Quality Management **>** Configure **>** Evaluation Forms > New Evaluation Forms**, as shown below.

<p id="gdcalert2" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image2.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert3">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image2.png "image_tooltip")


Steps to create a new Evaluation Form:



1. Click the **New Evaluation Form **button in the upper-right corner to configure the most commonly used evaluation form. The following screen appears, allowing you to add a new evaluation form.

    

<p id="gdcalert3" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image3.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert4">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image3.png "image_tooltip")



The following table describes the Evaluation Forms details:


<table>
  <tr>
   <td><strong>Add New Evaluation Form</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td colspan="2" ><strong>Settings: </strong>This section allows you to<strong> </strong>configure the settings for the New Evaluation Form.
   </td>
  </tr>
  <tr>
   <td><strong>Name</strong>
   </td>
   <td>Enter the name<strong> </strong>for the new evaluation form.
   </td>
  </tr>
  <tr>
   <td><strong>Description</strong>
   </td>
   <td>Enter a short description for the form, which is optional.
   </td>
  </tr>
  <tr>
   <td><strong>Select Channel</strong>
   </td>
   <td>Select a Channel mode (Voice or Chat).
   </td>
  </tr>
  <tr>
   <td><strong>Define Pass Score</strong>
   </td>
   <td>Set the minimum pass score percentage for the agent.
   </td>
  </tr>
  <tr>
   <td colspan="2" ><strong>Evaluation Metrics: </strong>This section allows you to add the evaluation metrics that are already configured and can be assigned to Evaluation Forms for the queue.
   </td>
  </tr>
  <tr>
   <td><strong>Add Evaluation Metrics</strong>
<p>


<p id="gdcalert4" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image4.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert5">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


<img src="images/image4.png" width="" alt="alt_text" title="image_tooltip">

   </td>
   <td>It allows you to search and add evaluation metrics and weightage against them based on the metrics.  
<p>
For example, if there is more than one Evaluation Metric, the total percentage must be set to 100% for all the evaluation metrics based on their weightage.
<p>
<strong>Note:</strong> If the channel selected is Chat, only metrics relevant to the Chat channel will be displayed. Metrics related to Speech and Playbook metrics with playbook channels set as Voice will not be shown.
   </td>
  </tr>
  <tr>
   <td colspan="2" ><strong>Assignments: </strong>This section allows you to add the assignment queues for the respective Evaluation Forms.
   </td>
  </tr>
  <tr>
   <td><strong>Queues</strong>
<p>


<p id="gdcalert5" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image5.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert6">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


<img src="images/image5.png" width="" alt="alt_text" title="image_tooltip">

   </td>
   <td>Allows you to search and add required assignment queues for the Evaluation Forms that you can access.
<p>
<strong>Note</strong>: Each Queue can only have one Evaluation Form per channel.
   </td>
  </tr>
</table>




2. Click Create to **Add New Evaluation Form** to the queue for review.
3. In case, if you are changing the existing channel mode from Voice to Chat or vice-versa which is already added, then the following dialog box appears.

    

<p id="gdcalert6" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image6.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert7">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image6.png "image_tooltip")



    **Note**: Upon changing any of the existing Channel modes like Voice to Chat or vice versa, will delete the earlier existing speech-based metrics in the Evaluation Form, which has to be updated again across the remaining metrics along with weights.

4. Click **Confirm **to update the Channel.


### **Edit Evaluation Form**

Steps to edit the existing Evaluation Forms:



1. Right-click to select any of the existing** Evaluation Form **(Name). The following screen appears to edit the required fields. \


<p id="gdcalert7" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image7.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert8">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image7.png "image_tooltip")

2. Click **Edit **to update the Evaluation Form dialog box fields. The following dialog box appears to update the required fields.

    

<p id="gdcalert8" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image8.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert9">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image8.png "image_tooltip")


3. Edit the required fields that you want to update.
4. Click **Update **to save the changes.