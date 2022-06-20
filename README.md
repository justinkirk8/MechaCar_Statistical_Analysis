# MechaCar_Statistical_Analysis

## Overview of Analysis:
The client requested an analysis of a new car prototype using the provided data. The client wants to know how many factors affect mpg based on the variables found in the MechaCar_mpg.csv. The client also requested an analysis of three suspension coil lots to determine if any issues are present.

## Resources
- Source Data: MechaCar_mpg.csv, Suspension_Coil.csv
- Software: R Studio

## Linear Regression to Predict MPG

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

    The intercept, the vehicle_length, and the ground clearance. It should be noted that vehicle_weight was below 0.1.

- Is the slope of the linear model considered to be zero? Why or why not?

    The slope is not zero because there are variables that have a significant effect on mpg.

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

    There are variables that are affecting the mpg to a significant degree, however, further explorations is warranted to determine if additional variables have an effect.     

<p align="center">
  <img src="https://github.com/justinkirk8/MechaCar_Statistical_Analysis/blob/main/images/MechaCar_mpg_lm.png" width="700" />
</p>

<p align="center">
  <img src="https://github.com/justinkirk8/MechaCar_Statistical_Analysis/blob/main/images/MechaCar_mpg_lm_summary.png" width="600" />
</p>

## Summary Statistics on Suspension Coils

- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
The current manufacturing data for the entire data set technically meets the criteria, however, it is more important to evaluate the lots individually. Lot 1 and Lot 2 pass the variance criteria, however, Lot 3 does not. This indicates that something has gone wrong with the production of that lot. The good news is that two of three lots are within tolerance which indicates that it is a consistency problem and not a problem with the overall process. 

<p align="center">
  <img src="https://github.com/justinkirk8/MechaCar_Statistical_Analysis/blob/main/images/total_summary.png" width="400" />
</p>

<p align="center">
  <img src="https://github.com/justinkirk8/MechaCar_Statistical_Analysis/blob/main/images/lot_summaries.png" width="500" />
</p>


## T-Tests on Suspension Coils

<p align="center">
  <img src="https://github.com/justinkirk8/MechaCar_Statistical_Analysis/blob/main/images/PSI_t.png" width="500" />
</p>

The above output shows that the p-value is just above 0.05. This indicates that the pool of 3 lots is just above the requirement for the mean to not be significantly different than the population mean of 1500. However, it is more important to consider lots independently. 

<p align="center">
  <img src="https://github.com/justinkirk8/MechaCar_Statistical_Analysis/blob/main/images/PSI_Lot1_t.png" width="500" />
</p>

The above output shows that the p-value is 1 which indicates the mean of Lot 1 is the same as the expected population mean.

<p align="center">
  <img src="https://github.com/justinkirk8/MechaCar_Statistical_Analysis/blob/main/images/PSI_Lot2_t.png" width="500" />
</p>

The above output shows that the p-value is 0.6072 which is well above the required 0.05. This shows that the mean of Lot 2 is not significantly different than the expected population mean.

<p align="center">
  <img src="https://github.com/justinkirk8/MechaCar_Statistical_Analysis/blob/main/images/PSI_Lot3_t.png" width="500" />
</p>

The above output shows that the p-value is 0.04168 which is below the required 0.05. This indicates that the mean of Lot 3 is significantly different than the expected population mean. It is recommended that you evaluate what occurred during the creation of Lot 3 to determine what went wrong. 

## Study Design: MechaCar vs Competition
One useful study to perform for a comparison of the MechaCar prototype to the competition would be to compare the mpg of the prototype vs cars from the competition that are of the same type. For example, if the prototype is a 4-door sedan with a 6-cylinder engine then it would make the most sense to compare it to other 4-door sedans with a 6-cylinder engine. The metrics to collect would be vehicle length and ground clearance since those were the variables found significant above. I would also collect vehicle weight since that was near the cut-off. The null hypothesis would be that the MechaCar prototype would be the same as the competition while the alternative hypothesis would be that the MechaCar prototype would be different than the competition. The mean of mpg of both competitors would determine whose is best. A Two-Sample t-Test would be sufficient for comparing the MechaCar prototype to each competitor since above we have noted that the competition chosen should be similar types of cars and not have additional variables to be concerned with. In order to perform this analysis, we will need data collection from at least 100 prototypes and 100 of each competitor to be compared. More than this would be ideal. 






