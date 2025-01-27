# Overview

Evaluation Studio is a comprehensive tool in GALE for assessing LLM performance. It offers users the flexibility to select from a variety of pre-existing evaluators to measure model effectiveness. Users can upload and organize datasets (including inputs and outputs) into designated projects for evaluation, with adjustable thresholds and scoring metrics for customization based on specific needs. With Evaluation Studio, users can assess datasets against models, analyze results, and gain insights through a streamlined, user-friendly interface tailored to their selected criteria.


## Key Features of Evaluation Studio

1. **Project-based Organization:** Projects serve as folders for evaluations. Users can create multiple evaluations under a project, and each evaluation contains a dataset. Users can create, rename, and delete projects.
2. **Flexible Dataset Handling and Import:** Evaluation Studio supports importing data through CSV files (with input-output pairs or input data).
3. **Streamlined Evaluation Process**: Evaluate model performance based on out-of-the-box evaluators such as groundness, coherence, toxicity, etc. Users can run evaluations on datasets, with results helping identify areas for model improvement.
4. **Flexibility for Different Data Scenarios**: Evaluation Studio supports various evaluation scenarios:
    1. **One Input, One Output**: Simple, straightforward evaluations.
    2. **One Input, Multiple Outputs**: Assess multiple outputs from a single input.
    3. **Input Only**: Generate outputs when only input data is available.


## Why Use Evaluation Studio?

Evaluation Studio is an essential tool for managing, evaluating, and optimizing Large Language Models. It simplifies the process of model evaluation and provides flexible options for data import and analysis. This makes it an invaluable resource for data scientists, machine learning engineers, and teams working on model development and optimization.

1. **Streamlined Workflow:** Evaluation Studio captures the model evaluation through datasets with various pre-built evaluators. Users can manage projects, upload data, perform evaluations, and track results, all in one place.
2. **Customizability:** Users can define evaluation criteria that suit their specific needs. The platform adapts to different evaluation scenarios, from simple to complex use cases.
3. **Continuous Improvement:** Regular evaluations allow users to track model performance over time, ensuring that models are updated or fine-tuned as needed for ongoing optimization.


## Evaluation Studio: User Experience Overview

The following table outlines the key actions at each stage of the Evaluation Studio user journey. It serves as a quick reference, guiding users through the process.



<table>
  <tr>
   <td><strong>Step</strong>
   </td>
   <td><strong>Action</strong>
   </td>
   <td><strong>Link to procedure </strong>
   </td>
  </tr>
  <tr>
   <td><strong>1. Create a Project</strong>
   </td>
   <td>Log in to GALE, go to Evaluation Studio, and
    create a project.
   </td>
   <td><a href="https://docs.kore.ai/gale/evaluation/create-project/"> Creating a Project</a>
   </td>
  </tr>
  <tr>
   <td><strong>2. Create an Evaluation</strong>
   </td>
   <td>Create an evaluation for your project.
   </td>
   <td><a href="https://docs.kore.ai/gale/evaluation/create-evaluation/"> Creating an Evaluation</a>
   </td>
  </tr>
  <tr>
   <td><strong>3. Import a Dataset</strong>
   </td>
   <td>Upload your dataset (e.g., CSV) for evaluation.
   </td>
   <td><a href="https://docs.kore.ai/gale/evaluation/import-dataset/"> Importing a dataset</a>
   </td>
  </tr>
  <tr>
   <td><strong>4. Configure Evaluators</strong>
   </td>
   <td>Choose Quality or Safety evaluators such as Coherence,  
    Toxicity, or Bias Detection. Link the evaluator’s prompt variables (e.g., {{input}}, {{output}}) to the dataset columns.
   </td>
   <td><a href="https://docs.kore.ai/gale/evaluation/configure-evaluator/"> Adding an Evaluator</a>
   </td>
  </tr>
  <tr>
   <td><strong>5. Run the Evaluation</strong>
   </td>
   <td>Trigger the evaluation based on your dataset  
    and selected evaluators.
   </td>
   <td><a href="https://docs.kore.ai/gale/evaluation/run-evaluation/"> Run an evaluation</a>
   </td>
  </tr>
 </table>

