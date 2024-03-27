# Skills

The **Skills** feature helps set up organizational classifications to route calls or chats to an agent based on the agent’s specialization, department, vertical, customer segment, and other categories. Examples of agent skills may include:

* **Languages** – Agents can speak different languages, such as English, Hindi, Spanish, etc. Language is considered a default skill that every agent must have.
* **Customer Interactions** – Agents are trained for retention, up-selling/cross-selling, or other related skills.

# The Skills Live Board

You can reach the Skills Live Board by going to **Contact Center > ROUTING > Skills**.
<img src="../images/skills-page.png" alt="Skills Page" title="Skills Page" style="border: 1px solid gray; zoom:80%;">

The Skills section is organized by Skill Groups. Click a group to expand it and display the skills assigned to that group. You can use the **Search** field to find skills or skill groups by name.

# Add a Skill

Before adding a skill, you need a skill group. See [Skill Groups](https://docs.kore.ai/smartassist/skill-group/skill-groups/)for details. SmartAssist comes pre-configured with a Default Skill Group to which you can add skills.

To add skills to a skill group, follow these steps:

1. Click the respective skill group to get the drill-down view of associated **Skills**;
2. Click the **+ New Skill** button.
<img src="../images/new-skill-button.png" alt="New Skill Button" title="New Skill Button" style="border: 1px solid gray; zoom:70%;">

3. Enter the following details in the **Add New Skill** window:
    1. **Skill Name**: Enter the name to identify the skill by.
    2. **Description**: Enter a brief description of the skill or its purpose.
    3. **Agent Assignments**: Associate agents to the skill and provide the proficiency level (Novice, Average, Good, and Expert);
    <img src="../images/add-new-skill.png" alt="Add New Skill" title="Add New Skill" style="border: 1px solid gray; zoom:60%;">

    4. Click **Create** to complete the process. SmartAssist creates the new skill, adds it to the list, and displays a success confirmation message.
    <img src="../images/skill-created.png" alt="Skill Created" title="Skill Created" style="border: 1px solid gray; zoom:60%;">

# Add a Skill Using a Script

You can use custom attributes to add skills dynamically.

SmartAssist administrators can dynamically add skills using script nodes while building [dialogs in the XO platform](https://developer.kore.ai/docs/bots/bot-builder-tool/dialog-task/working-with-the-script-node/) or building an [experience flow in SmartAssist](https://docs.kore.ai/smartassist/experience-flows/script-task/).

The following methods are available:

**setSkills(skillsInfo)** – You can use this method to append skills to the current conversation. _skillsInfo_ is an array parameter.

```
var loanType = { //creating a sample variable of skill - loan type
    "Car Loan": {
         name: "Car Loan",
         id: "60b50bec5c4c1a4195b55d88",
    },
    "House Loan": {
         name: "House Loan",
         id: "60b50c005c4c1a4195b55d89",
    },
    "Education Loan": {
         name: "Education Loan",
         id: "60b894198afcca6accc5f466",
    },
    "Gold Loan": {
         name: "Gold Loan",
         id: "60b8943a8afcca6accc5f467",
    },
};

agentUtils.setSkills([loanType[a]]); //setting the skill - loan type
```

**getSkills()** – Returns an array of skills in the current conversation.

**getSkillById(skillId)** – Returns a skill using the skill ID. Skills IDs are available under skills.

**deleteSkillById(skillId)** – Deletes a skill from the context of the current conversation.

**deleteSkills(skillsToDelete)** – Deletes an array of skills from the context of the current conversation.

# Edit a Skill

To edit the field values of an existing skill, follow these steps:

1. Click the desired skill group to get the associated skills list;
2. Click the **Edit** icon corresponding to the skill you want to update;
<img src="../images/edit-skill-button.png" alt="Edit Skill Button" title="Edit Skill Button" style="border: 1px solid gray; zoom:70%;">

3. Make your changes in the **Edit Skill** window;
4. Click **Save**. A success confirmation message is displayed once the skill details are updated.

# Delete a Skill

To delete a skill, follow these steps:

1. Click the desired skill group to get the associated skills list;
2. Click the **Edit** icon corresponding to the skill you want to delete;
3. Ensure that there are no agents assigned to the skill. If there are, you must remove them to delete the skill. Removing an agent from a skill also removes the skill assignment on the agent’s profile. Follow these steps:
    1. In the **Edit Skill** window, scroll down to **Agent Assignments**;
    2. Click the **Delete** icon for all the agents mapped to the skill.
    3. Click the **Delete** button on the confirmation pop-up for each agent. Once deleting all the agents under _Agent Assignments_, click **Save**.
    4. Click the **Delete Skill** icon.
    5. Click the **Delete** button on the confirmation pop-up to confirm your choice.
    <img src="../images/delete-skill-button.png" alt="Delete Skill Button" title="Delete Skill Button" style="border: 1px solid gray; zoom:70%;">

!!! Note

     You cannot restore deleted Skills.
