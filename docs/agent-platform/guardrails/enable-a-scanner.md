# Enable Input/Output Scanners

Input and output scanners help evaluate prompts and responses within your application.

* Input scanners assess user inputs or prompts sent to an AI node.
* Output scanners evaluate the responses returned from the LLM.

!!! note

    All system scanners are pre-deployed and available by default. You can simply enable the scanners you want to use.


Steps to enable scanners:

1. Log in to your account and open the Guardrails settings in your Agentic app or Tool:
    * For Agentic apps: Go to **Agentic apps**, select your app, then go to **Settings > PII & Guardrails**, and select the **Guardrails** tab.
    * For Tools: Go to **Tools**, select the tool you want to configure, and then select **Guardrails**.

2. On the Guardrails page, review the Input scanners and Output scanners tabs.  
Turn on the toggle next to each pre-deployed scanner you want to apply.
<img src="../images/enable_guardrails.png" alt="Enable Guardrail" title="Enable Guardrail" style="border: 1px solid gray; zoom:80%;">

3. To configure scanner settings, click the scanner you enabled, adjust the available options, and then click Save.
The available options vary by scanner type. For example, the **Toxicity** scanner includes options such as *Risk Threshold* and *Detection Sensitivity*. 
<img src="../images/toxicity-config.png" alt="Configure Settings" title="Configure Settings" style="border: 1px solid gray; zoom:80%;">
