#libraries
library(tidyverse)
library(dplyr)


#Deliverable 1
MechaCar_mpg <- read.csv(file="Resources/MechaCar_mpg.csv")

MechaCar_mpg_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD , MechaCar_mpg)
summary(MechaCar_mpg_lm)



#Deliverable 2




#Deliverable 3




