# Deploy an Agent

After completing and testing your agent flow, you can deploy your agent. After the deployment, you can see the dedicated API endpoint created for the agent.

!!! note

    Before deploying the agent, you must fix any errors or warnings in the Agent Flow.

Steps to deploy an agent and get its endpoint:

1. Click **Agent endpoint** in the left navigation.  
<img src="../images/deploy-an-agent.png" alt="Deploy an Agent" title="Deploy an Agent" style="border: 1px solid gray; zoom:80%;">
 
2. Click **Deploy**. After the deployment, you can see the dedicated API endpoint created for your agent. The API endpoint is available in the following formats: curl, Python, and Node.js. You can copy the code and use it as needed.  
<img src="../images/agents-endpoint.png" alt="Agents Endpoint" title="Agents Endpoint" style="border: 1px solid gray; zoom:80%;">

## How do you change the agent's flow and redeploy the agent? 

The Deployed version of your agent's flow is accessible from the **Agent Flow** page. You can click the **View the Flow** button to view the flow in read-only mode.  
<img src="../images/deployed-version.png" alt="Deployed Version" title="Deployed Version" style="border: 1px solid gray; zoom:80%;">

You can change the in-development version of the flow. To redeploy the agent with the updated flow, click the **Deploy** button at the top-right corner of the **Agent endpoint** page. The redeployment doesn't change the agent's endpoint.  