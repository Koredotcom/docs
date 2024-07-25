# Hardware Configurations and Pricing

The following table outlines hardware configurations and their corresponding hourly prices (model credits) for a single replica on the AWS cloud:

| Hardware Configuration         | Hourly Model Credits |
| ------------------------------ | ----------- |
| A10 single                     | 1.818      |
| A10 cluster of 4               | 8.508      |
| A10 cluster of 8               | 24.432     |
| T4 single                      | 1.128      |
| T4 cluster of 4                | 5.868      |
| T4 cluster of 8                | 11.736     |
| A100 cluster of 8 (on request) | 48.000     |
                   
*[Model Credits]: 1 Model Credit = $1

Prices are per replica. You can define minimum and maximum replicas. For example, with 3 replicas of "A10 single", up to 3 "A10 singles" will be used during high load before requests enter a waiting period.

Also, configurations like "T4 cluster of 4" represent one replica. A second replica would be another complete "T4 cluster of 4".

!!! note

      Azure and Google Cloud Platform (GCP) support is not yet available.


