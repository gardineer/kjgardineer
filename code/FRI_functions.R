#This code should be at the beginning of all of your scripts.

#Save repo to your C Drive in exactly this format:
#It requires that you create a folder in your C Drive called "GitHub" - make sure the G and H are capital.
#This is what mine would look like. Yours will be the same format of last name, first initial, middle initial and all lowercase.
home.path <- "C:/GitHub/wilsonmj"
setwd(home.path)

#Temp - delete for students
home.path <- "C:/GitHub/student-research-template"
#

#Within the home.path your code, data, and plots will be stored in separate folders. 
  #Do not change the names of folders cloned from the template. 
  #If a file path is broken, change the actual path on your computer to match the code.

#Pull data from Access Database ----
#Load dependencies
library(RODBC)
library(ggplot2)
library(readxl)

#Set data file as work
setwd(paste(home.path, "/data", sep = ""))


db<- file.path("Flowpath.accdb")

channel<- odbcConnectAccess2007(db, uid="resslerd")

TRAGD<-sqlFetch(channel, "TransducerRecordAGD")

View(TRAGD)



