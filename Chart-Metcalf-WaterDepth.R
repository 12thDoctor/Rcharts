## myData <- read.csv ("Metcalf-April-10-July-2012.csv", header = T, sep=",")

myData <- read.csv ("Metcalf-Jan-to-July-2012.csv", header = T, sep=",")

NewDateTime <- paste(myData$Date, myData$Time)
NewDateTimeX <- strptime(NewDateTime, "%m/%d/%y %H:%M:%S") 

ChartTitle  <- "Metcalf TWR Water Level\n January to July 2012"

Ytitle <- "Depth, ft" 
Xtitle <- "2012"

plot(NewDateTimeX, myData$Feet,                    # Call plot() function in R
     xlab= Xtitle, ylab=Ytitle,
     pch = 16,
     ylim=c(0,8),
#     ylim = c(3,7),                               # hard coded: set Y-scale from 3 to 7 Feet        
#     ylim = range(myData$Feet),                   # Set y-axis scale depending on range of data (min-max values)
     type="l",                                     # type = "l"; line only
     lty=1,                                        # ltyp = 1; line type (1=solid; 2=dash, 3=dotted)
     lwd = 1.25,                                   # thickness of line (Thin: 1.25 or Thick: 3.0)
     col = "blue",
     cex = 0.5,                                    # Set size of marker cex = 0.2 or cex = 0.5   
     
##     type="l",                                   # line chart without markers
##     lwd = 1.25,                                 # thickness of line (Thin: 1.25 or Thick: 3.0)
##     axes = FALSE,                               # means do not draw the axes; customize settings using the axis function option below    
     bg = "white")

abline(h=0:8, col="gray", lty=3)

title(main = ChartTitle)

