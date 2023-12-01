library(ggplot2)

df <- data.frame(
  dose = c("D0.5","D1","D2"),
  len <-c(4.2,10,29.5)
  )
head(df)

# basic line plot with points
# ggplot(data = df,aes(x=dose,y=len,group=1))+geom_line()+geom_point()

# change the line type
# ggplot(data = df,aes(x=dose,y=len,group=1))+geom_line(linetype="dashed")+geom_point()

# change color
ggplot(data = df,aes(x=dose,y=len,group=1)) + geom_line(col="red")+geom_point()