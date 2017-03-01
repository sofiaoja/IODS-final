# title: IODS final project
# source: Cell data
# author: Sofia Oja
# date: 1 maaliskuuta 2017

# set working directory
setwd("C:/Users/jonio/Documents/Temp/Data example/")

# Access xlsx library
library(xlsx)

# read CSV into R
# p1_006 <- read.xlsx2("Manuskripti_006 p1_kaikki data Cell Insightista_160413.xlsx",
#                  sheetIndex = 1,
#                  startRow=1,
#                  colIndex = 1)

p1_006 <- read.xlsx2("Manuskripti_006 p1_kaikki data Cell Insightista_160413.xlsx",
                     sheetIndex = 1,
                     startRow=1,
                     colIndex = 1,
                     endCol = 10)

# stucture of the new dataset
str(p1_006)
dim(p1_006)
summary(p1_006)
