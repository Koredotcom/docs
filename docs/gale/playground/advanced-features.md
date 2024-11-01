# Advanced Features


## Prompt API integration

The Prompt API enables seamless sharing of prompts outside of GALE by using version-specific API keys. Users can fetch prompts via API calls, eliminating the need for repetitive copy-pasting.


**API Endpoints**



* Each prompt has an associated API endpoint. When a user commits the first version of a created prompt, the API endpoint is automatically generated for that specific prompt's latest version. 
* The endpoint becomes active only after a version is committed. Users can designate a specific version as the default. If no default version is selected, the endpoint will call the latest version.
* When a request is made to the API endpoint using the correct API key, the API responds with both the system prompt (labeled as “sysPrompt”) and human prompt (labeled as “humPrompt”) from the specified version. 

**Editing or Deleting API Endpoints**



* Users can edit the endpoint to specify a different version in the query parameters. If no version is mentioned, it will call the default version of the prompt. This helps users to easily access the version they need.
* When a user deletes an API key, any external locations where the API key was used will be affected, rendering the key invalid.


**Integration Options**



* Users can access various request methods for active API endpoints: cURL, Python, and Node.js. This provides users with multiple options for integrating the API into their applications.
* Users can create multiple API keys for each endpoint. Each API key can be copied once and later deleted, but cannot be reused. This functionality streamlines prompt updates and reduces manual effort in managing endpoints.

The following screenshot displays the window when you click the prompt API icon. It features tabs for the API endpoint and API keys. 
 

## Bookmark a Model

When testing a prompt with multiple models, if one model consistently provides the best response, you can bookmark that model for easy access. When you bookmark a model, it is set as your preferred model. If you have not bookmarked any model, you will be asked to select a preferred model while committing a version. 

This preferred model will produce the expected output for a given input set (system prompt and human prompt). Choosing a different model may result in varied outputs.


Steps to bookmark a model: 



1. On the prompt canvas, click the **Bookmark model with its settings** icon. 

    After you bookmark a model, the icon changes to **Model bookmarked with its settings**. 


2. If you try to commit a version without bookmarking a model, you will be asked to select a preferred model. Select your preferred model in the dialog that appears. 

    Once you select a preferred model, your version is committed successfully, and the number of committed versions is displayed. 

3. If you click Versions, the **Versions** dialog opens. You can see the model you bookmarked as the **Preferred model**.  



## Prompt Versioning

Prompt versioning in GALE improves the experimentation process and promotes collaboration among team members. It allows users to create a shareable roadmap of prompt iterations within a repository, tracking each version as the prompt evolves. With prompt versioning, you can decide when to commit changes, creating a repository that logs all modifications and explains how specific changes enhance the prompt for different use cases. Overall, this feature fosters a more intentional approach to prompt experimentation and enables users to share and collaborate on prompts more effectively.

**Saving Prompts** - You can save the current prompt only after generating the output. Committing the prompt without first generating the output is not allowed. When you commit the prompt, a new version is created that includes both the prompt and its corresponding output.

**Version naming** - When you commit a prompt, the first version is created and automatically labeled (e.g., V1). Subsequent versions are sequentially named V2, V3, and so forth. Users are not allowed to manually assign names to the versions.

**Version Management** - You can view the number of versions available for a particular prompt and access the content of each version. You can also restore a previous version. The latest committed version becomes the default, but you can change the default version manually. 
 
You can also view and compare versions created by others, which helps understand how prompts have changed over time. Additionally, you can use any version as a draft without altering the original. You can edit the draft and commit the changes to create a new version, which will be visible to others.

**Note:** You can create and generate as many versions as you need.

**Steps to commit a version:**



1. On the prompt canvas, click the **Commit** button. 
The current prompt, system prompt, and the preferred model is recorded as a version.  

    After you commit a version, the number of versions is displayed in the **Versions** button, next to the **Commit** button. 


2. If you click the Versions button, the **Versions** dialog opens with details of the different saved versions. 

    To use a particular prompt version, select it and click **Use as a draft**. The prompt canvas automatically opens with selected prompt and system prompts.


## Draft History

The Draft history option lets you save the current state of the entire prompt canvas. Draft history captures the prompt canvas at different points in time, preserving all input, output, and model information. 

Once you click on Draft History, a dialog appears displaying the different drafts saved at various points in time. This dialog includes the system and human prompts, associated variables, the prompt window, and the generated output for each draft. If you click ‘Restore’, you can revert to the original prompt and the corresponding output generations. 


You can utilize each version as a draft without altering the saved version of the prompt. While using a version as a draft, you can edit the prompt content (both human and system prompts) in the current prompt canvas. Any edits made in draft mode do not affect the saved version of the prompt. You can commit the changes if you wish to save the edits made in draft mode as a new prompt version. Upon committing, a new version of the prompt is created, which will be visible to shared users, allowing for collaborative development and feedback. 

There is no limit to the number of versions that can be created for a prompt. Hence, you can create as many versions as you need, allowing for extensive exploration and refinement of your ideas.

**Note:** Draft history is different from Versions. Draft history includes both input and output, whereas Versions focus solely on the development of the prompt by retaining only the input, without considering the generated outputs.


## Regenerating Output

You can regenerate the output to run the same prompt and generate responses again. Regeneration options are available at both the cell and column levels. This approach is particularly useful in cases involving multiple models and rows. 

After generating the initial output, review each output to determine if it meets your expectations. If you find an issue in a specific cell, you can tweak the prompt slightly and regenerate it for improved results. Similarly, if a particular model is not performing well, you can modify the prompt to reduce any potential bias and regenerate the output. 

This cell-level and column-level execution in the prompt canvas gives you greater control over output generation, allowing you to make changes without affecting the outputs of other models. You can experiment with specific cells or columns, adjust variables, and preserve desired outputs ultimately enhancing user experience and optimizing token usage.

