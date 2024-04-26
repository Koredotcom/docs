# Create a Fine-Tuned Model

You can create a fine-tuned model in the Create a fine-tune model wizard, which involves the following 5 steps:

* General details
* Selecting a base model
* Fine-tuning configuration
* Adding the training and evaluation datasets
* Adding the test dataset (optional)
* Selecting a hardware
* Integrating with Weights & Biases (optional)

Let us now look into each step in detail.

**To create a fine-tuned model, follow these steps**:

1. Click **Models** on the top navigation bar of the application. The **Models** page is displayed.

    <img src="../images/create-fine-tune-model.png" alt="Create Fine-Tune Model" title="Create Fine-Tune Model" style="border: 1px solid gray; zoom:80%;">

1. Click the **Create a fine-tuned model** button on the **Models** page. The **Create a fine-tuned model** dialog is displayed.
2. In the **General details** section:

    * Enter a **Model name** and **Description** for your fine-tuned model.

        <img src="../images/general-details-section.png" alt="General Details Section" title="General Details Section" style="border: 1px solid gray; zoom:80%;">

    * Provide tags to ease the search for the model and click **Next**.

    In the **Base** model section, do one of the following:

    * Select form the Kore hosted models.

    Or

    * Select Hugging Face connection to use. For more information about how to connect to Hugging Face account, see [How to Connect to your Hugging Face Account](../../integrations/how-to-to-connect-to-your-hugging-face-account.md).


    <img src="../images/base-model-section.png" alt="Base Model Section" title="Base Model Section" style="border: 1px solid gray; zoom:80%;">

1. In the **Fine-tuning configuration** section:

    * Select a **Fine-tuning type** that you want to fine-tune for your requirements.

    * Enter the **Number of Epochs** which implies the number of times the entire data set is passed through the model during the training process.

        <img src="../images/fine-tuning-configuration-section.png" alt="Fine-Tuning Configuration Section" title="Fine-Tuning Configuration Section" style="border: 1px solid gray; zoom:80%;">

    * Enter a number for **Batch size** which implies the number of training examples used in one iteration of training.

    * Enter a value for the **Learning rate** which implies the size of the steps taken during the optimization of a model.

    * Click **Next** to proceed to the next step.

1. In the **Dataset** section:

    * Select the **Training dataset** which is the data that will be used in training the base model and acts as the foundation for the model's learning.

    !!! note

        The format accepted is JSONL, CSV, or JSON. The training file, evaluation file, and the test file follow a specific format. The file should have at least two columns with one column as prompt and other as completion. In the wizard, you have an option to download the sample as well.

    
    * Define the data for evaluation. You can use the same training data set in the evaluation process as well. In this step, you can either allocate a percentage of the training dataset to use for evaluation, or upload a new evaluation dataset, or skip the evaluation.

        <img src="../images/dataset-section.png" alt="Dataset Section" title="Dataset Section" style="border: 1px solid gray; zoom:80%;">


    * Click **Next** to proceed to the next step.

1. In the **Test data** section:

    * Upload a dataset with which you want to test your fine-tuned model.

    !!! note

        The format accepted is JSONL, CSV, or JSON. 

    
    <img src="../images/test-data-section.png" alt=" Test Data Section" title="Test Data Section" style="border: 1px solid gray; zoom:80%;">

    * Click **Next** to proceed to the next step.

    !!! note

        If you change the training file or the evaluation file in the Dataset section of the wizard, then a warning is displayed in the Test data section. You can verify and proceed.

    In the **Hardware** section:

    * Select the hardware required for fine-tuning your model.

        <img src="../images/hardware-section.png" alt="Hardware Section" title="Hardware Section" style="border: 1px solid gray; zoom:80%;">
    
1. In the **Weights & Biases** section:

    * Select your **WandB connection** from the drop-down list. If you don't have a WandB connection, you can click the **+ New connection** that is available in the drop-down list. For more information about how to create the WandB account, see [How-to-Integrate-with-WandB](../../integrations/how-to-integrate-with-wandb.md).

        !!! note

            You need an account with Weights and Biases. Enabling the integration with the help of an API token will share your real-time fine-tuning status with the platform and you can comprehensively monitor the fine-tuning metrics of your model. You can use the API token they provided to create an integration and then all the data related to the fine-tuning process will be sent to the account related to that API token.

        <img src="../images/wandb-section.png" alt="WandB Section" title="WandB Section" style="border: 1px solid gray; zoom:80%;">

    * Click **Next** to proceed to the next step.

1. In the **Review** step, verify all the details that you provided earlier.

    !!! note

        If you want to make any modifications, you can go to the previous step by clicking the **Back** button or a particular step indicator on the left panel.

   
    <img src="../images/review-section.png" alt="Review Section" title="Review Section" style="border: 1px solid gray; zoom:80%;">

1. Click **Start fine-tuning**. The **Overview** page of your fine-tuned model is displayed with the status “Initializing”.

    <img src="../images/initializing-status.png" alt="Initializing Status" title="Initializing Status" style="border: 1px solid gray; zoom:80%;">

    The different statuses that are involved in the process include:


    * Initializing


    * Training in progress


    * Testing in progress


    * Fine-tuning completed

    !!! note

        You can stop the process if required in the middle and resume it later, then the status is changed to “Stopped”. Then a Re-trigger button is displayed to initiate the fine-tuning process again from the beginning. If the fine-tuning process fails, then the status is changed to “Failed” and you can view the reason for failure. You can make the required changes, and click the Re-trigger button to start the fine-tuning again.

    Once the fine-tuning is triggered, you can check the progress in real-time on the **Overview** page. You can click any model name from the list of fine-tuned models and the Overview page of the model is displayed.

    This page displays the following sections:


    * **Training information**: This section captures crucial information such as the type of training being performed, the step at which the training is currently, training duration, training loss, and validation loss, graphically displays them with a click of arrows, and plots the overall loss trend. You can click the arrow keys to access the graph.


    * **Test data information**: This section indicates how well your fine-tuned model performed on the test dataset (if you provided any) with the help of a metric called the BLEU score.

    * **Training parameters**: This section displays the summary of the parameters you have provided in the wizard and it is displayed for your convenience.

    * **System information**: This section captures the information about the Hardware- CPUs and GPUs functioning at the backend and its utilization during the fine-tuning process.


You can also download the training file for your reference from this page. You also have the option to download the test result and the test data from the test info section once the testing is completed.

!!! note

    If you want to perform the testing again, you can click the Retry option corresponding to the Test info section on the Overview page and select a new test data set file or use the existing file and confirm to start the testing again. The status then is displayed as “Testing in Progress”.


<img src="../images/overview-page.png" alt="Overview Page" title="Overview Page" style="border: 1px solid gray; zoom:80%;">


After the model is fine-tuned, you can deploy the fine-tuned model and use it across GALE and also externally via the API endpoint that is generated after deploying the model.

!!! note

    When fine-tuning is completed, you can use it to create another fine-tuned model on top of this model.


