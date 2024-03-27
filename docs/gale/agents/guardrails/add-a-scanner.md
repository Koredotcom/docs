## Add a scanner

You have the option to add an input or output scanner, facilitating the scanning and verification of a particular objective. Input scanners evaluate the inputs or prompts directed to the LLM node, while output scanners assess the responses received from the LLM.

!!! note

    In the following procedure, you will learn how to add an input scanner. However, the steps are similar if you want to add an output scanner. You need to add an input scanner and output scanner separately based on your requirements.


**To add a scanner, follow these steps**:


1. Click **Apps** on the top navigation bar of the application.
2. Select the required application to which you want to add the guardrail scanners. The **Application** is displayed.
3. Click the **Guardrails** tab from the left navigation pane. The **Guardrails** page is displayed.
   
    <img src="../images/navigate-to-guardrails.png" alt="Navigate to Guardrails" title="Navigate to Guardrails" style="border: 1px solid gray; zoom:80%;">

1. Click **Add scanner** from the **Input Scanners** section. A pop-up with a list of options is displayed.

    <img src="../images/add-input-scanner.png" alt="Add Input Scanner" title="Add Input Scanner" style="border: 1px solid gray; zoom:80%;">
1. Select the required scanners and click **Done**. The selected scanner is added to the list.

    <img src="../images/scanner-added.png" alt="Scanner Added" title="Scanner Added" style="border: 1px solid gray; zoom:80%;">

    !!! note

        You must deploy the required scanner first and only then it will be listed in this pop-up list. For more about Deploying a scanner, see Manage Guardrails.

1. Click the required scanner from the list of added scanners to configure that scanner. The settings displayed are different for each scanner. For example, the settings for “Toxicity” are **Threshold** and **End the flow if the risk score is above**. Similarly, the settings for the “Regex” scanner are **Enter patterns to ban**, **End the flow if the risk score is above**, and **Match type**.

<img src="../images/remove-scanner.png" alt="Remove Scanner" title="Remove Scanner" style="border: 1px solid gray; zoom:80%;">

!!! note

        You can remove a scanner if you don’t want to be charged if not in use, by clicking the **Remove** icon corresponding to the scanner name from the list of scanners as shown in the following image.
    

