# How to Pass Meta-information During Agent Transfer

As part of your Virtual Assistant design, you can choose the scenarios where you want to hand off the conversation to human agents. As part of this hand-off, it is important to pass the current conversation context to the Agent Hand-off / CCaaS system. This information can be used in the CCaaS system to set the requisite skills, routing rules, and so on.

The XO Platform offers an extensible framework for handling agent transfer conversations. Within this framework, you can pass any additional metadata you want to share with the agent. This capability allows agents to access supplementary information about the user’s details or queries in advance, enabling them to handle the conversation more efficiently.


## How this works

* The XO platform has introduced a new agent metadata object. This metadata object is currently supported for ServiceNow and Genesys agent integrations, with each integration having its own dedicated metadata object. The naming conventions for these metadata objects are as follows:
    * ServiceNow Agent: “ServiceNowMetaData”
    * Genesys Agent: “GenesysMetaData”
* The XO platform offers a built-in utility function called “agentUtils.setMetaInfo” to facilitate the exchange of additional information with the agent metadata context object. Developers are expected to leverage this function to set any supplementary data they wish to share with the agent.
* This function can be utilized anywhere the platform allows the definition of JavaScript code, providing developers with flexibility in integrating custom metadata at various points within the conversational flow.


## Set the additional information in the metadata object

* Before the agent transfer node gets executed in the platform, you need to set the additional information in the metadata object.
* For example, if you want to set the employee’s “Employee ID” and “Department” in the metadata, a script can be used to set the information in the context, as shown in the screenshot below.
<img src="../images/image1.png" alt=" " title=" " style="border: 1px solid gray; zoom:70%;">



* The values from the context can be used to set the metadata.
    * For example, if you have collected employee data using entities and wish to pass the gathered entity values to the agent system, you can dynamically define the values by leveraging the entity information available within the context object.


``` json
let metaData = {

“EmployeeID”: context.entities.EmployeeID
“Department”: context.entities.Department

}
agentUtils.setMetaInfo("GenesysMetaData", JSON.stringify(memberInfo))

```

## How to access the Metadata in the Genesys agent

As part of the Genesys Bot connector setup, you need to make Get and Set the participant data that needs to be transferred to the agent. The metadata shared by you will be available in the form of attributes in the Genesys agent system. Then you need to set the attributes that need to be shared with the agent using the “SetParticipantData” action in the Genesys bot connector before transitioning to the “ Transfer to ACD” action.

Follow these steps:



1. In the Genesys agent, click **Add attribute** in the “SetParticipantData” settings and provide the Key-value pairs that are passed as part of the metadata.
2. Click **Save** and then click **Publish**.
<img src="../images/image2.png" alt=" " title=" " style="border: 1px solid gray; zoom:70%;">




3. Once the agent transfer call is initiated, the additional metadata is available to the agent at **Performance > Workspace > Interactions > Interaction Selected > Participant Data**. 
<img src="../images/image3.png" alt="" title="" style="border: 1px solid gray; zoom:70%;">
<img src="../images/image4.png" alt=" " title="" style="border: 1px solid gray; zoom:70%;">


