# Import Production Data

To evaluate how your AI agents perform in real-world conditions, start by importing production session data from your deployed Agentic apps into Evaluation Studio. This ensures your evaluation is based on actual user interactions.

Production data is sourced from Agentic app sessions and traces, and includes valuable session data.

![alt_text](images/image1.png "image_tooltip")

**Pre-requisites**

Before importing production data users should have already interacted with the app to generate conversation sessions.

**Steps to import production data:**

1. Click the **Import sessions** button to import the relevant session.
2. In the Import Session dialog:
    1. **Version:** Select the version of the Agentic app to evaluate.
    2. **Environment**: Choose the environment that contains the session data you want to import.
    3. **Time Range:** Define a custom date/time window to filter sessions by a specific release or timeframe.
3. After import, session data is displayed in a tabular format under the Imported Sessions section, organized into two tabs: **Sessions** and **Traces**. These tabs reflect that users can apply evaluators at two levels—session and trace—making it easy to add, run, and review evaluations accordingly.
    * **Sessions Tab**: Displays the list of sessions with details like session ID, number of traces, creation time, and duration. Users can add session-level evaluators here to measure overall outcomes. [Learn more about Session evaluators](./evaluate-production-data.md#session-evaluators).
    * **Traces Tab**: Breaks sessions into individual traces, each representing one pair of user input and agentic app response from the whole session. Users can add trace-level evaluators to check specific actions, like whether the correct agent or tool was used. [Learn more about Trace evaluators](./evaluate-production-data.md#trace-evaluators).