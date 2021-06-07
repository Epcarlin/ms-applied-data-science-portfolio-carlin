### Pat Carlin
### IST 718 Final Project

## Reading in the programs 
library(readr)
library(dplyr)


## Reading in the destination data
Destination_ATL <- read_csv("Destination Data/Destination_ATL.csv")
Destination_BOS <- read_csv("Destination Data/Destination_BOS.csv")
Destination_CHI <- read_csv("Destination Data/Destination_CHI.csv")
Destination_DEN <- read_csv("Destination Data/Destination_DEN.csv")
Destination_DFW <- read_csv("Destination Data/Destination_ DFW.csv")
Destination_LAX <- read_csv("Destination Data/Destination_LAX.csv")
Destination_LGA <- read_csv("Destination Data/Destination_LGA.csv")


## Reading in the weather
ALL_2009_2018 <- read_csv("ALL-2009-2018.csv")


## Renaming the columns for joining 
names(Destination_ATL)[names(Destination_ATL) == 'FL_DATE'] <- 'DATE'
names(Destination_BOS)[names(Destination_BOS) == 'FL_DATE'] <- 'DATE'
names(Destination_DEN)[names(Destination_DEN) == 'FL_DATE'] <- 'DATE'
names(Destination_DFW)[names(Destination_DFW) == 'FL_DATE'] <- 'DATE'
names(Destination_LAX)[names(Destination_LAX) == 'FL_DATE'] <- 'DATE'
names(Destination_LGA)[names(Destination_LGA) == 'FL_DATE'] <- 'DATE'


## Subsetting the data 
ATL_WEATHER <- ALL_2009_2018[which(ALL_2009_2018$Location == 'ATL'),]
BOS_WEATHER <- ALL_2009_2018[which(ALL_2009_2018$Location == 'BOS'),]
DEN_WEATHER <- ALL_2009_2018[which(ALL_2009_2018$Location == 'DEN'),]
DFW_WEATHER <- ALL_2009_2018[which(ALL_2009_2018$Location == 'DFW'),]
LAX_WEATHER <- ALL_2009_2018[which(ALL_2009_2018$Location == 'LAX'),]
LGA_WEATHER <- ALL_2009_2018[which(ALL_2009_2018$Location == 'LGA'),]


## Joining the two data columns 
CompleteATL <- left_join(Destination_ATL, ATL_WEATHER, by=c("DATE"))
CompleteBOS <- left_join(Destination_BOS, BOS_WEATHER, by=c("DATE"))
CompleteDEN <- left_join(Destination_DEN, DEN_WEATHER, by=c("DATE"))
CompleteDFW <- left_join(Destination_DFW, DFW_WEATHER, by=c("DATE"))
CompleteLAX <- left_join(Destination_LAX, LAX_WEATHER, by=c("DATE"))
CompleteLGA <- left_join(Destination_LGA, LGA_WEATHER, by=c("DATE"))


## Now to clean what we're looking at ATL
CompleteATL$ORIGIN_CITY_NAME<-NULL
CompleteATL$DEST_CITY_NAME <- NULL
CompleteATL$DEST_STATE_ABR <- NULL
CompleteATL$TAXI_OUT <- NULL
CompleteATL$WHEELS_OFF <- NULL
CompleteATL$WHEELS_ON <- NULL
CompleteATL$TAXI_IN <-NULL
CompleteATL$CRS_ELAPSED_TIME <- NULL
CompleteATL$LATE_AIRCRAFT_DELAY <- NULL
CompleteATL$FIRST_DEP_TIME <- NULL
CompleteATL$TOTAL_ADD_GTIME <- NULL
CompleteATL$LONGEST_ADD_GTIME <- NULL
CompleteATL$DIV_AIRPORT_LANDINGS <- NULL
CompleteATL[,37:57] <- NULL

## Cleaning the BOS 
CompleteBOS$ORIGIN_CITY_NAME<-NULL
CompleteBOS$DEST_CITY_NAME <- NULL
CompleteBOS$DEST_STATE_ABR <- NULL
CompleteBOS$TAXI_OUT <- NULL
CompleteBOS$WHEELS_OFF <- NULL
CompleteBOS$WHEELS_ON <- NULL
CompleteBOS$TAXI_IN <-NULL
CompleteBOS$CRS_ELAPSED_TIME <- NULL
CompleteBOS$LATE_AIRCRAFT_DELAY <- NULL
CompleteBOS$FIRST_DEP_TIME <- NULL
CompleteBOS$TOTAL_ADD_GTIME <- NULL
CompleteBOS$LONGEST_ADD_GTIME <- NULL
CompleteBOS$DIV_AIRPORT_LANDINGS <- NULL
CompleteBOS[,37:57] <- NULL

## Cleaning the DEN
CompleteDEN$ORIGIN_CITY_NAME<-NULL
CompleteDEN$DEST_CITY_NAME <- NULL
CompleteDEN$DEST_STATE_ABR <- NULL
CompleteDEN$TAXI_OUT <- NULL
CompleteDEN$WHEELS_OFF <- NULL
CompleteDEN$WHEELS_ON <- NULL
CompleteDEN$TAXI_IN <-NULL
CompleteDEN$CRS_ELAPSED_TIME <- NULL
CompleteDEN$LATE_AIRCRAFT_DELAY <- NULL
CompleteDEN$FIRST_DEP_TIME <- NULL
CompleteDEN$TOTAL_ADD_GTIME <- NULL
CompleteDEN$LONGEST_ADD_GTIME <- NULL
CompleteDEN$DIV_AIRPORT_LANDINGS <- NULL
CompleteDEN[,37:57] <- NULL

## Cleaning the DFW
CompleteDFW$ORIGIN_CITY_NAME<-NULL
CompleteDFW$DEST_CITY_NAME <- NULL
CompleteDFW$DEST_STATE_ABR <- NULL
CompleteDFW$TAXI_OUT <- NULL
CompleteDFW$WHEELS_OFF <- NULL
CompleteDFW$WHEELS_ON <- NULL
CompleteDFW$TAXI_IN <-NULL
CompleteDFW$CRS_ELAPSED_TIME <- NULL
CompleteDFW$LATE_AIRCRAFT_DELAY <- NULL
CompleteDFW$FIRST_DEP_TIME <- NULL
CompleteDFW$TOTAL_ADD_GTIME <- NULL
CompleteDFW$LONGEST_ADD_GTIME <- NULL
CompleteDFW$DIV_AIRPORT_LANDINGS <- NULL
CompleteDFW[,37:57] <- NULL

## Cleaning the LGA
CompleteLGA$ORIGIN_CITY_NAME<-NULL
CompleteLGA$DEST_CITY_NAME <- NULL
CompleteLGA$DEST_STATE_ABR <- NULL
CompleteLGA$TAXI_OUT <- NULL
CompleteLGA$WHEELS_OFF <- NULL
CompleteLGA$WHEELS_ON <- NULL
CompleteLGA$TAXI_IN <-NULL
CompleteLGA$CRS_ELAPSED_TIME <- NULL
CompleteLGA$LATE_AIRCRAFT_DELAY <- NULL
CompleteLGA$FIRST_DEP_TIME <- NULL
CompleteLGA$TOTAL_ADD_GTIME <- NULL
CompleteLGA$LONGEST_ADD_GTIME <- NULL
CompleteLGA$DIV_AIRPORT_LANDINGS <- NULL
CompleteLGA[,37:57] <- NULL

## Cleanging the LAX
CompleteLAX$ORIGIN_CITY_NAME<-NULL
CompleteLAX$DEST_CITY_NAME <- NULL
CompleteLAX$DEST_STATE_ABR <- NULL
CompleteLAX$TAXI_OUT <- NULL
CompleteLAX$WHEELS_OFF <- NULL
CompleteLAX$WHEELS_ON <- NULL
CompleteLAX$TAXI_IN <-NULL
CompleteLAX$CRS_ELAPSED_TIME <- NULL
CompleteLAX$LATE_AIRCRAFT_DELAY <- NULL
CompleteLAX$FIRST_DEP_TIME <- NULL
CompleteLAX$TOTAL_ADD_GTIME <- NULL
CompleteLAX$LONGEST_ADD_GTIME <- NULL
CompleteLAX$DIV_AIRPORT_LANDINGS <- NULL
CompleteLAX[,37:57] <- NULL

## Exporting the csv's
write.csv(CompleteATL, file = "CompleteATL.csv")
write.csv(CompleteBOS, file = "CompleteBOS.csv")
write.csv(CompleteDEN, file = "CompleteDEN.csv")
write.csv(CompleteDFW, file = "CompleteDFW.csv")
write.csv(CompleteLAX, file = "CompleteLAX.csv")
write.csv(CompleteLGA, file = "CompleteLGA.csv")


## Running Summary Statistics
getwd()

