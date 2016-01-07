# load and sort data
DataRefugies <- read.csv2("D:\\ownCloud\\fortytwo\\réfugiés 2014\\datarefugies.csv",sep=";",header=TRUE,dec=",",stringsAsFactor=FALSE,encoding="latin1")
str(DataRefugies)
DataParHabs <- read.csv2("D:\\ownCloud\\fortytwo\\réfugiés 2014\\dataparhab.csv",sep=";",header=TRUE,dec=",",stringsAsFactor=FALSE,encoding="latin1")
str(DataParHabs)
DataParHabs2 <- read.csv2("D:\\ownCloud\\fortytwo\\réfugiés 2014\\dataparhab2.csv",sep=";",header=TRUE,dec=",",stringsAsFactor=FALSE,encoding="latin1")
str(DataParHabs2)

# load required libraries
require(ggplot2)
require(rCharts)



# plot scores

refugiesPlot <- dPlot(
  y="ADMIN.C.40",
  x="REFUGEES.N.7.0",
  data=DataRefugies,
  type="bar",
  height=600,
  width=800
)
refugiesPlot$xAxis(type="addMeasureAxis", outputFormat="#,")
refugiesPlot$yAxis(type="addCategoryAxis")
refugiesPlot$save('D:\\ownCloud\\fortytwo\\réfugiés 2014\\refugiesplot.html', cdn = TRUE)

refugiesparhabPlot <- dPlot(
  y="ADMIN.C.40",
  x="POP_BY_REF.N.10.2",
  data=DataParHabs,
  type="bar",
  height=600,
  width=800
)
refugiesparhabPlot$xAxis(type="addMeasureAxis", outputFormat="#,")
refugiesparhabPlot$yAxis(type="addCategoryAxis")
refugiesparhabPlot$save('D:\\ownCloud\\fortytwo\\réfugiés 2014\\refugiesparhabplot.html', cdn = TRUE)

refugiesparhab2Plot <- dPlot(
  y="ADMIN.C.40",
  x="POP_BY_REF.N.10.2",
  data=DataParHabs2,
  type="bar",
  height=600,
  width=800
)
refugiesparhab2Plot$xAxis(type="addMeasureAxis", outputFormat="#,")
refugiesparhab2Plot$yAxis(type="addCategoryAxis")
refugiesparhab2Plot$save('D:\\ownCloud\\fortytwo\\réfugiés 2014\\refugiesparhab2plot.html', cdn = TRUE)
