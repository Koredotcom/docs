# About Agentic Evaluation

Agentic Evaluation is a comprehensive framework for systematically analyzing AI agent performance in real-world, production scenarios. It enables structured evaluation of complete AI agent trajectories across entire sessions and individual decision points within traces — offering both high-level and granular insights into how AI agents reason, act, and interact over time.

In an Agentic app, when a user submits a query, the supervisor/orchestrator coordinates the response by selecting and invoking the appropriate agents. These agents may then call tools or external systems to fulfill the task. Agentic evaluation evaluates the inputs and outputs at each stage—across the supervisor, agents, and tools.

Using a suite of automated evaluators, Agentic Evaluation scores AI agent behavior, measures action effectiveness, and highlights areas for improvement. Built for Agentic apps, it allows users to import live session data and assess performance across the supervisor, agent, and tool layers through an interactive interface. 

The Agentic Evaluation framework supports a range of evaluation types that collectively provide a comprehensive view of AI agent behavior. These evaluations span from high-level outcomes to step-by-step decision-making, helping users diagnose issues, measure effectiveness, and optimize Agentic app performance. For more information on the different types of evaluators, see [Types of Evaluators](./evaluate-production-data.md#types-of-evaluators).


## **Key Features of Agentic Evaluation**

Agentic Evaluation enables you to analyze real-world performance of deployed Agentic apps using production data. It helps ensure your supervisors, agents, and tools are working together efficiently and delivering high-quality outcomes.

* **Model Trace Analysis**: Import and evaluate app sessions and traces from deployed apps using filters like app version, environment, and time range. 
* **Multi-level Evaluation**: Assess AI behavior across different layers—sessions (e.g., goal achievement, tone), traces (e.g., agent selection, tool usage), and specific interactions. 
* **Evaluator Library**: Apply predefined evaluators to  assess the quality and effectiveness of agentic app behavior.
* **Interactive Scorecards**: Visualize scores and drill into specific sessions or traces using clickable cards and detailed views.
* **Trace Tree Visualization**: Navigate the full execution path—supervisor, agent, and tool—to pinpoint errors, inefficiencies, or optimization opportunities.
* **Actionable Insights**: Identify failures, deviations, or redundant interactions to continuously improve your app’s responsiveness, reliability, and user satisfaction.

## Key Benefits

* **Continuous Improvement:** Understand how your AI agents behave in production and refine them based on real usage patterns.
* **Scalable Quality Assurance:** Evaluate thousands of sessions in bulk using automated evaluators.
* **Informed Decision Making:** Use evaluation data to prioritize fixes, redesign workflows, or refine prompts and tools.
* **Stronger Agentic Design**: Gain visibility into how supervisors, agents, and tools interact, allowing you to design more robust, reliable, and context-aware agentic applications.

## Agentic Evaluation User Experience Overview

The following outlines the key actions at each stage of the Agentic Evaluation user journey in Agent Platform:

1. [**Create a project**](./create-project.md): Log in to the Agent Platform, navigate to Evaluation Studio, and create a new project for your AI agent evaluation.
2. [**Create an evaluation**](./create-evaluation.md): After setting up a project, create an evaluation to organize and analyze imported session data.
3. [**Import production data**](./import-production-data.md): Import live session data from your deployed Agentic apps. You can filter by various parameters such as app version, environment, and time range to focus on specific sets of data for evaluation.
4. [**Configure evaluators**](./evaluate-production-data.md): Select from predefined evaluators to assess various aspects of AI agent performance.
5. [**Run the evaluation**](./run-evaluation.md): Trigger the evaluation to run across the imported production sessions or traces. The system automatically computes evaluation scores for each session and its underlying traces, with evaluators running in parallel to ensure efficiency.
6. [**View evaluation results**](./view-evaluation-result.md): View the results in an interactive analysis interface. Evaluation results are displayed in a session grid with scores and visual indicators for each evaluator.
7. [**Analyze evaluation results**](./analyze-evaluation.md): Use drill-down capabilities to examine scores at different levels - supervisor, agent, and tool interactions -  and identify areas for improvement.