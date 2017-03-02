# title: IODS final project, R script file for Data Wrangling
# source: Cell data
# author: Sofia Oja
# date: 1 maaliskuuta 2017

# set working directory
setwd("C:/Users/Sofia/Documents/Temp/Data example/")
#setwd("~/Documents/Temp/Data example/")

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
                     endCol = 10)

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


# Cell shape parameters
# solun nro	
# ObjectAreaCh1	
# ObjectPerimCh1	
# ObjectShapeP2ACh1	
# ObjectShapeLWRCh1	
# ObjectShapeBFRCh1	
# ObjectLengthCh1	
# ObjectWidthCh1	
# ObjectConvexHullAreaRatioCh1	
# ObjectConvexHullPerimRatioCh1

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

# draw the plot
plot(p1_006$solun.nro, p1_006$ObjectAreaCh1)
#plot(p1_006$solun.nro, p1_006$ObjectPerimCh1)
plot(p3_006$solun.nro, p3_006$ObjectAreaCh1)
plot(p5_006$solun.nro, p5_006$ObjectAreaCh1)
plot(p7_006$solun.nro, p7_006$ObjectAreaCh1)

# Kumulatiivinen PD	Kumulatiivinen aika
# 006 p1	19.8	15
# 006 p3	31.3	28
# 006 p5	40.0	42
# 006 p7	45.9	78

# Cumulative PD and Day parameter table
PD = c(19.8, 31.3, 40.0, 45.9)
Day = c(15, 28, 42, 78)

# sd and standard deviation of cell shape ObjectAreaCh1 parameter
mean_p1_006_ObjectAreaCh1 = mean(p1_006$ObjectAreaCh1)
sd_p1_006_ObjectAreaCh1 =sd(p1_006$ObjectAreaCh1)

mean_p3_006_ObjectAreaCh1 = mean(p3_006$ObjectAreaCh1)
sd_p3_006_ObjectAreaCh1 =sd(p3_006$ObjectAreaCh1)

mean_p5_006_ObjectAreaCh1 = mean(p5_006$ObjectAreaCh1)
sd_p5_006_ObjectAreaCh1 =sd(p5_006$ObjectAreaCh1)

mean_p7_006_ObjectAreaCh1 = mean(p7_006$ObjectAreaCh1)
sd_p7_006_ObjectAreaCh1 =sd(p7_006$ObjectAreaCh1)

# Mean and standard deviation table
mean_p1357_006_ObjectAreaCh1 = c(mean_p1_006_ObjectAreaCh1, mean_p3_006_ObjectAreaCh1, mean_p5_006_ObjectAreaCh1, mean_p7_006_ObjectAreaCh1)
sd_p1357_006_ObjectAreaCh1 = c(sd_p1_006_ObjectAreaCh1, sd_p3_006_ObjectAreaCh1, sd_p5_006_ObjectAreaCh1, sd_p7_006_ObjectAreaCh1)

# draw the plot
plot(PD, mean_p1357_006_ObjectAreaCh1)
