# Optimization_Project_Rlang
The following project was conducted utilizing R and RStudio in order to optimize call center staffing for Spanish and bi-lingual agents. This was my first project utilizing R language code for an optimization solution.

# Project Overview
The goal of the project was to deduce the optimized number of agents, full-time and part-time agents, needed per shift over a ten hour working day for a bilingual call center given known call volumes, respective of language.
  - Objectives
      - Provide the recommended shift count in order to minimize costs based on known call volumes and full-time versus part-time agents.
      - Account for shift constraints and constraints as it pertained to bilingual and Spanish speaking agents.
      - Provide an expected cost analysis and recommendation based on scheduling variations.

As with any coding optimization problem it is key to capture all inputs, parameters and stated objectives and capture these in code. It is key to identify the decision variables, constraints and formulate the objective function in order to arrive at the optimal solution. In this case it was to minimize the total operating cost to employ/schedule full-time and part-time Spanish and bi-lingual agents.

# Results
The optimization problem looked to minimize operational costs and identify the number of agents per shift, FT/PT and Spanish/Bi-lingual. After formulating the R code for the optimization problems results identified the following. For the pruposes of this file I will not be sharing the detailed results, breakdown of FT/PT and Spanish/Bi-lingual agents, but the amounted total figures (further details can be seen in the R code).

Based on formulations,
Staffing scenario 1:
    - The total employees needed for staffing scenario 1 per day: 86.
    - The total operational costs associated with the FT/PT agents per day: $4,635.

Staffing scenario 2:
    - The total employees needed for staffing scenario 2 per day: 80.
    - The total operational costs associated with the FT/PT agents per day: $4,640.

Staffing scenario 3:
    - The total employees needed for staffing scenario 3 per day: 78.
    - The total operational costs associated with the FT/PT agents per day: $4,537.53.


    

