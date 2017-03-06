# title: IODS final project, R script file for Data Wrangling
# source: Cell data
# author: Sofia Oja
# date: 6 maaliskuuta 2017

# set working directory
setwd("C:/Users/Sofia/Documents/Temp/Data example/")

# Access xlsx library
library(xlsx)

# read xlsx into R
p1_006 <- read.xlsx2("Manuskripti_006 p1_kaikki data Cell Insightista_160413.xlsx",
                     sheetIndex = 1,
                     colIndex = 1,                     
                     endCol = 10)

p3_006 <- read.xlsx2("Manuskripti_006 p3_kaikki data Cell Insightilta_160413.xlsx",
                     sheetIndex = 1,
                     colIndex = 1,                     
                     endCol = 10)

p5_006 <- read.xlsx2("Manuskripti_006 p5_kaikki data Cell Insightilta_160413.xlsx",
                     sheetIndex = 1,
                     colIndex = 1,                     
                     endCol = 11)

p7_006 <- read.xlsx2("Manuskripti_006 p7_kaikki data Cell Insightilta_160413.xlsx",
                     sheetIndex = 1,
                     colIndex = 1,                     
                     endCol = 10)

# mutate p1_006 parameters to numeric
p1_006$solun.nro <- as.numeric(as.character(p1_006$solun.nro))
p1_006$ObjectAreaCh1 <- as.numeric(as.character(p1_006$ObjectAreaCh1))
p1_006$ObjectPerimCh1 <- as.numeric(as.character(p1_006$ObjectPerimCh1))
p1_006$ObjectShapeP2ACh1 <- as.numeric(as.character(p1_006$ObjectShapeP2ACh1))
p1_006$ObjectShapeLWRCh1 <- as.numeric(as.character(p1_006$ObjectShapeLWRCh1))
p1_006$ObjectShapeBFRCh1 <- as.numeric(as.character(p1_006$ObjectShapeBFRCh1))
p1_006$ObjectLengthCh1 <- as.numeric(as.character(p1_006$ObjectLengthCh1))
p1_006$ObjectWidthCh1 <- as.numeric(as.character(p1_006$ObjectWidthCh1))
p1_006$ObjectConvexHullAreaRatioCh1 <- as.numeric(as.character(p1_006$ObjectConvexHullAreaRatioCh1))
p1_006$ObjectConvexHullPerimRatioCh1 <- as.numeric(as.character(p1_006$ObjectConvexHullPerimRatioCh1))

# mutate p3_006 parameters to numeric
p3_006$solun.nro <- as.numeric(as.character(p3_006$solun.nro))
p3_006$ObjectAreaCh1 <- as.numeric(as.character(p3_006$ObjectAreaCh1))
p3_006$ObjectPerimCh1 <- as.numeric(as.character(p3_006$ObjectPerimCh1))
p3_006$ObjectShapeP2ACh1 <- as.numeric(as.character(p3_006$ObjectShapeP2ACh1))
p3_006$ObjectShapeLWRCh1 <- as.numeric(as.character(p3_006$ObjectShapeLWRCh1))
p3_006$ObjectShapeBFRCh1 <- as.numeric(as.character(p3_006$ObjectShapeBFRCh1))
p3_006$ObjectLengthCh1 <- as.numeric(as.character(p3_006$ObjectLengthCh1))
p3_006$ObjectWidthCh1 <- as.numeric(as.character(p3_006$ObjectWidthCh1))
p3_006$ObjectConvexHullAreaRatioCh1 <- as.numeric(as.character(p3_006$ObjectConvexHullAreaRatioCh1))
p3_006$ObjectConvexHullPerimRatioCh1 <- as.numeric(as.character(p3_006$ObjectConvexHullPerimRatioCh1))

# mutate p5_006 parameters to numeric
p5_006$solun.nro <- as.numeric(as.character(p5_006$solun.nro))
p5_006$ObjectAreaCh1 <- as.numeric(as.character(p5_006$ObjectAreaCh1))
p5_006$ObjectPerimCh1 <- as.numeric(as.character(p5_006$ObjectPerimCh1))
p5_006$ObjectShapeP2ACh1 <- as.numeric(as.character(p5_006$ObjectShapeP2ACh1))
p5_006$ObjectShapeLWRCh1 <- as.numeric(as.character(p5_006$ObjectShapeLWRCh1))
p5_006$ObjectShapeBFRCh1 <- as.numeric(as.character(p5_006$ObjectShapeBFRCh1))
p5_006$ObjectLengthCh1 <- as.numeric(as.character(p5_006$ObjectLengthCh1))
p5_006$ObjectWidthCh1 <- as.numeric(as.character(p5_006$ObjectWidthCh1))
p5_006$ObjectConvexHullAreaRatioCh1 <- as.numeric(as.character(p5_006$ObjectConvexHullAreaRatioCh1))
p5_006$ObjectConvexHullPerimRatioCh1 <- as.numeric(as.character(p5_006$ObjectConvexHullPerimRatioCh1))

# mutate p7_006 parameters to numeric
p7_006$solun.nro <- as.numeric(as.character(p7_006$solun.nro))
p7_006$ObjectAreaCh1 <- as.numeric(as.character(p7_006$ObjectAreaCh1))
p7_006$ObjectPerimCh1 <- as.numeric(as.character(p7_006$ObjectPerimCh1))
p7_006$ObjectShapeP2ACh1 <- as.numeric(as.character(p7_006$ObjectShapeP2ACh1))
p7_006$ObjectShapeLWRCh1 <- as.numeric(as.character(p7_006$ObjectShapeLWRCh1))
p7_006$ObjectShapeBFRCh1 <- as.numeric(as.character(p7_006$ObjectShapeBFRCh1))
p7_006$ObjectLengthCh1 <- as.numeric(as.character(p7_006$ObjectLengthCh1))
p7_006$ObjectWidthCh1 <- as.numeric(as.character(p7_006$ObjectWidthCh1))
p7_006$ObjectConvexHullAreaRatioCh1 <- as.numeric(as.character(p7_006$ObjectConvexHullAreaRatioCh1))
p7_006$ObjectConvexHullPerimRatioCh1 <- as.numeric(as.character(p7_006$ObjectConvexHullPerimRatioCh1))

# stucture of the new dataset
#str(p1_006)
dim(p1_006)
summary(p1_006)
dim(p3_006)
summary(p3_006)
dim(p5_006)
summary(p5_006)
dim(p7_006)
summary(p7_006)

# access the ggplot2 libraries
library(ggplot2)

# draw the plot
plot(p1_006$solun.nro, p1_006$ObjectAreaCh1)
plot(p1_006$solun.nro, p1_006$ObjectPerimCh1)
plot(p1_006$solun.nro, p1_006$ObjectShapeLWRCh1)
plot(p1_006$solun.nro, p1_006$ObjectConvexHullAreaRatioCh1)

plot(p3_006$solun.nro, p3_006$ObjectAreaCh1)
plot(p5_006$solun.nro, p5_006$ObjectAreaCh1)
plot(p7_006$solun.nro, p7_006$ObjectAreaCh1)

# access the tidyverse libraries tidyr, dplyr
library(tidyr); library(dplyr)

# select rows
#p1_006 <- filter(p1_006, p1_006$ObjectAreaCh1 < 10000)
p1_006 <- filter(p1_006, p1_006$ObjectShapeLWRCh1 < 10000)
p1_006 <- filter(p1_006, p1_006$ObjectConvexHullAreaRatioCh1 < 10000)

# clean columns
p1_006 <- select(p1_006, -startRow)
p3_006 <- select(p3_006, -startRow)
p5_006 <- select(p5_006, -startRow)
p5_006 <- select(p5_006, -Object.area.Ch1..um.2.)
p7_006 <- select(p7_006, -startRow)

# write a data to an Excel workbook
write.xlsx2(p1_006, "p1_006.xlsx", sheetName="Taul1",
            col.names=TRUE, row.names=FALSE, append=FALSE)

write.xlsx2(p3_006, "p3_006.xlsx", sheetName="Taul1",
            col.names=TRUE, row.names=FALSE, append=FALSE)

write.xlsx2(p5_006, "p5_006.xlsx", sheetName="Taul1",
            col.names=TRUE, row.names=FALSE, append=FALSE)

write.xlsx2(p7_006, "p7_006.xlsx", sheetName="Taul1",
            col.names=TRUE, row.names=FALSE, append=FALSE)
