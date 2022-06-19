#libraries
library(tidyverse)
library(dplyr)


#Deliverable 1
MechaCar_mpg <- read.csv(file="Resources/MechaCar_mpg.csv")

MechaCar_mpg_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD , MechaCar_mpg)
summary(MechaCar_mpg_lm)



#Deliverable 2

Suspension_coil <- read.csv(file="Resources/Suspension_Coil.csv")

total_summary <- Suspension_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

lot_summary <- Suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))



#Deliverable 3




