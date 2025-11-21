# Enable Input/Output Scanners

Input and output scanners help evaluate prompts and responses within your application.

* Input scanners assess user inputs or prompts sent to an AI node.
* Output scanners evaluate the responses returned from the LLM.

!!! note

    All system scanners are pre-deployed and available by default. You simply enable the scanners you want to use.


The steps below describe how to enable an input scanner. The steps for enabling an output scanner are similar.

Steps to enable an input scanner:

1. Log in to your account and click **Tools** under **Agent Platform Modules**.
   <img src="../images/access-tools-module.png" alt="access tools" title="access tools" style="border: 1px solid gray; zoom:75%;">

2. In the **Tools** section, click the name of the tool where you want to enable scanners. The Tool Flow page opens. 

2. Click **Guardrails** in the left navigation pane. The Guardrails page is displayed.  
<img src="./../images/guardrails_predeployed.png" alt="Guardrails" title="Guardrails" style="border: 1px solid gray; zoom:80%;">

3. In the Input Scanners section, review the list of pre-deployed scanners and turn on the toggle to each scanner you want to apply.
<img src="./../images/enable_guardrails.png" alt="Enable Guardrail" title="Enable Guardrail" style="border: 1px solid gray; zoom:80%;">

4. Click the added scanner to configure its settings, which vary depending on the scanner type.
For example, **Toxicity** includes options such as *Risk Threshold* and *Detection Sensitivity*. 
<img src="./../images/toxicity-config.png" alt="Configure Settings" title="Configure Settings" style="border: 1px solid gray; zoom:80%;">

