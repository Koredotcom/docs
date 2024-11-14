# Advanced Features  

Prompt Studio offers a suite of features designed to streamline and enhance your prompt creation and management process, providing greater flexibility, collaboration, and control throughout your workflow.
  

## Prompt Versioning

Prompt versioning in GALE improves the experimentation process and promotes collaboration among team members. It allows users to create a shareable roadmap of prompt iterations within a repository, tracking each version as the prompt evolves. With prompt versioning, you can track and manage changes by committing updates at any stage, creating a repository that logs all modifications for easy reference and control. This feature helps evolve prompts to better suit specialized use cases.

**Committing Prompts** - You can save the current prompt only after generating the output. Committing the prompt without first generating the output is not allowed. When you commit the prompt, a new version is created that includes both the prompt and its corresponding output.

**Version naming** - When you commit a prompt, the first version is created and automatically labeled (e.g., V1). Subsequent versions are sequentially named V2, V3, and so forth. Users are not allowed to manually assign names to the versions.

**Version Management** - You can view the number of versions available for a particular prompt and access the content of each version. You can also restore a previous version. The latest committed version becomes the default, but you can change the default version manually.
 
You can also view versions created by others, which helps understand how prompts have changed over time. Additionally, you can use any version as a draft without altering the original. You can edit the draft and commit the changes to create a new version, which will be visible to others.

!!! note

    You can create and generate as many versions as you need.

**Steps to commit a version:**

1. To save the current prompt version, click the **Commit** button on the prompt canvas.
The current prompt, system prompt, and the preferred model is recorded as a version.

    After you commit a version, a record is created in Versions. The number of versions is displayed in the **Versions** button, next to the **Commit** button.

    <img src="../images/prompt_no_of_versions_example.png" alt="Prompts commit" title="Prompt commit" style="border: 1px solid gray; zoom:80%;">

2. If you click the Versions button, the **Versions** dialog opens with details of the different saved versions.

    <img src="../images/prompt_versions_example.png" alt="Prompt versions" title="Prompt versions" style="border: 1px solid gray; zoom:80%;">
 
To use a particular prompt version, select it and click **Use as a draft**. The prompt canvas automatically opens with selected prompt and system prompts.


## Prompt API Endpoint

The Prompt API enables seamless sharing of prompts outside of GALE by using version-specific API keys. Users can fetch prompts via API calls, eliminating the need for repetitive copy-pasting.

Each prompt has an associated API endpoint. When a user commits the first version of a created prompt, the API endpoint is automatically generated for that specific prompt's latest version. The endpoint becomes active only after a version is committed. Users can designate a specific version as the default. If no default version is selected, the endpoint will call the latest version.

When a request is made to the API endpoint using the correct API key, the API responds with both the system prompt (labeled as “SystemPrompt”) and human prompt (labeled as “HumanPrompt”) from the specified version. 

**Editing API Endpoints** - Users can edit the endpoint to specify a different version in the query parameters. If no version is mentioned, it will call the default version of the prompt. This helps users to easily access the version they need.

**Deleting API Keys** - When a user deletes an API key, any external locations where the API key was used will be affected, rendering the key invalid.

**API Request Options** - Users can access various request methods for active API endpoints: cURL, Python, and Node.js. This provides users with multiple options for integrating the API into their applications.

Users can create multiple API keys for each endpoint. Each API key can be copied once and later deleted, but cannot be reused. This functionality streamlines prompt updates and reduces the manual effort required in managing API keys, while enhancing security when used externally.

The following image displays the window when you click the prompt API icon. It features tabs for the API endpoint and API keys.

<img src="../images/prompt_api_keys.png" alt="Prompt API" title="Prompt API" style="border: 1px solid gray; zoom:80%;">
 

## Bookmark a Model

When testing a prompt with multiple models, if one model consistently provides the best response, you can bookmark that model. When you bookmark a model, it is set as your preferred model. If you have not bookmarked any model, you will be asked to select a preferred model while committing a version.

This preferred model will produce the expected output for a given input set (system prompt and human prompt). Choosing a different model may result in varied outputs.

Steps to bookmark a model:

1. On the prompt canvas, click the **Bookmark model with its settings** icon.

    <img src="../images/bookmark_model.png" alt="Bookmark model" title="Bookmark model" style="border: 1px solid gray; zoom:80%;">
 
    After you bookmark a model, the icon changes to **Model bookmarked with its settings**.

2. If you try to commit a version without bookmarking a model, you will be asked to select a preferred model. Select your preferred model in the dialog that appears.

    <img src="../images/prompt_bookmark_select_example.png" alt="Select preferred model" title="Select preferred model" style="border: 1px solid gray; zoom:80%;">
 
    Once you select a preferred model, your version is committed successfully, and the number of committed versions is displayed.

    <img src="../images/commited_version.png" alt="Versions committed" title="Versions committed" style="border: 1px solid gray; zoom:70%;">

3. If you click Versions, the **Versions** dialog opens. You can see the model you bookmarked as the **Preferred model**.

    <img src="../images/versions_dialog_prefered_model.png" alt="Versions dialog" title="Versions dialog" style="border: 1px solid gray; zoom:70%;">


## Draft History

The Draft history option saves the current state of the entire prompt canvas. Draft history captures the prompt canvas at different points in time, preserving all input, output, and model information.

 <img src="../images/draft_history_new.png" alt="Draft history" title="Draft history" style="border: 1px solid gray; zoom:70%;">

Once you click on Draft History, a dialog appears displaying the different drafts saved at various points in time. This dialog includes the system and human prompts, associated variables, the prompt window, and the generated output for each draft. If you click ‘Restore’, you can revert to the original prompt and the corresponding output generations.

 <img src="../images/draft_history_dialog_new.png" alt="Draft history preview" title="Draft history preview" style="border: 1px solid gray; zoom:70%;">
 
You can utilize each version as a draft without altering the saved version of the prompt. While using a version as a draft, you can edit the prompt content (both human and system prompts) in the current prompt canvas. Any edits made in draft mode do not affect the saved version of the prompt.


!!! note

    
    **Draft History** includes both the input and the output, capturing the entire progression of the prompt, including any generated responses.   
    **Versions** focus only on the development of the prompt itself, tracking and retaining only the input without considering the generated outputs.  
    This distinction helps in more detailed tracking of prompt changes (via Versions) while still preserving the full context of input-output iterations (via Draft History).

## Regenerating Output

Regenerating output is a cost-effective way to run the same prompt and generate responses again without the need for additional model generations. This feature helps reduce costs associated with multiple model generations by allowing you to do selective regenerations. Regeneration options are available at both the cell and column levels. This approach is particularly useful in cases involving multiple models and rows. 

After generating the initial output, review each output to determine if it meets your expectations. If you find an issue in a specific cell, you can tweak the prompt slightly and regenerate it for improved results. Similarly, if a particular model is not performing well, you can modify the prompt to reduce any potential bias and regenerate the output. 

You can experiment with specific cells or columns, adjust variables, and preserve desired outputs ultimately enhancing user experience and optimizing token usage.

**Useful for:**

* Improving Prompts: Fine-tune prompts for better quality.
* Comparing Models: Assess different models with the same prompt.
* Reducing Bias: Adjust prompts to improve performance.
* Targeted Changes: Experiment with specific areas while preserving other outputs.

Cell-level regeneration:

 <img src="../images/prompt_regenerate_cell_example.png" alt="Regenerate cell level" title="Regenerate cell level" style="border: 1px solid gray; zoom:70%;">

Column-level regeneration:

 <img src="../images/prompt_regenerate_model_example.png" alt="Regenerate model level" title="Regenerate model level" style="border: 1px solid gray; zoom:70%;">
 
