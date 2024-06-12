# Test Guardrails

After adding and configuring the necessary scanners, you can verify that they adhere to the specified standards. Test the effectiveness of an individual scanner or a group of scanners and then tweak the scanner's settings if required.

Steps to test the Guardrails or Scanners:

1. On the Guardrails page, click **Test**.  
<img src="../images/test-guardrails.png" alt="Test Guardrails" title="Test Guardrails" style="border: 1px solid gray; zoom:80%;">

2. On the Test Guardrails page, in the **Prompt input** box, enter a prompt or select **Input template** to choose a template.  
<img src="../images/test-guardrails-prompt-input.png" alt="Prompt to Test a Scanner" title="Prompt to Test a Scanner" style="border: 1px solid gray; zoom:80%;">

3. Select Test. Under Scores and Results, review the following results:  
<img src="../images/guardrails-test-results.png" alt="Guardrails Test Results" title="Guardrails Test Results" style="border: 1px solid gray; zoom:80%;"> 

    * **Validity**: Indicates whether the prompt is valid.

    * **Risk Score**:  Indicates the risk score of the prompt based on the value configured in the "End the flow if the risk score is above" field in the scanner settings.

    * **Duration**: Displays the time taken by the Scanner to execute the prompt.

4. Based on the results, you can adjust the Scanner's settings and test them again if necessary

