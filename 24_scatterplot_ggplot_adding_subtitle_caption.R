library(ggplot2)

graph <- ggplot(mtcars,aes(x=wt,y=mpg)) + 
  geom_point(aes(color=factor(gear))) +
  stat_smooth(method="lm",col="red",se=FALSE,linewidth=1)
graph +
  labs(
    title = "Scatterplot with Linear Regression",
    subtitle = "Relationship between wt and mpg",
    caption = "Authors own computation" 
  )