#libraries
library(tidyverse)
library(dplyr)


#Deliverable 1
MechaCar_mpg <- read.csv(file="Resources/MechaCar_mpg.csv")

MechaCar_mpg_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD , MechaCar_mpg)
MechaCar_mpg_lm
summary(MechaCar_mpg_lm)



#Deliverable 2

Suspension_coil <- read.csv(file="Resources/Suspension_Coil.csv")

total_summary <- Suspension_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

lot_summary <- Suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))



#Deliverable 3

PSI_t <- t.test(Suspension_coil$PSI, mu = 1500)
PSI_t

PSI_Lot1 <- subset(Suspension_coil, Manufacturing_Lot == "Lot1")
PSI_Lot1_t <- t.test(PSI_Lot1$PSI, mu = 1500)
PSI_Lot1_t

PSI_Lot2 <- subset(Suspension_coil, Manufacturing_Lot == "Lot2")
PSI_Lot2_t <- t.test(PSI_Lot2$PSI, mu = 1500)
PSI_Lot2_t

PSI_Lot3 <- subset(Suspension_coil, Manufacturing_Lot == "Lot3")
PSI_Lot3_t <- t.test(PSI_Lot3$PSI, mu = 1500)
PSI_Lot3_t



