
# df is your dataframe (or block of data)
df <- read.csv(file='Metcalf-Nitrate-Data.csv',header=T,sep=",")

# Assign each column of data to an array variable
# df$M1 means that you are pulling the M1 column of dataframe df
M1 <- df$M1
M2 <- df$M2
M3 <- df$M3
M4 <- df$MP

# Graph Nitrate Levels
# type = "b" means plot both point marker and line
# type = "l' means line only
# lwd = line width
# lty = line type; 1 = solid line; 2 = dash line
# pch = marker type
# ylim = set y-axis scale (0 to upper limit)

plot(df$M1,type="b",lwd=2,
     xaxt="n",ylim=c(0,15),col="black",
     xlab="Date",ylab="NO3-N (mg/l)",
     lty=1,
     pch=22,
     main="Nitrate Level")

axis(1,at=1:length(df$Date),labels=df$Date)
lines(df$M2,col="red",lty=2,type="b",pch=23,lwd=3)
lines(df$M3,col="orange",lty=1,type="b",pch=24,lwd=4)
lines(df$MP,col="blue",lty=2,type="b",pch=25,lwd=3)

# set gridlines
# lty = 3 (dotted line)
abline(h=0:15, v=1:15, col="gray", lty=3)

# exclude option: pch=20 (marker type)
# bty = legend box type; set = "o" (default) or n (no border around legend box)
legend("topright",legend=c("M1","M2","M3","MP"),
       lty=c(1,2,1,2),lwd=c(2,3,4,3),
       col=c("black","red","orange","blue"),
       pch=c(22,23,24,25),
       ncol=1, bty="o", cex=0.8,
       text.col=c("black","red","orange","blue"),
       inset=0.01)

