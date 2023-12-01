
library(ggplot2 )
 
#Creating scatterplot with fitted values.  
# An additional function stst_smooth is used for linear regression.  
new_graph<-ggplot(mtcars, aes(x = log(mpg), y = log(drat))) +geom_point(aes(color = factor(gear))) +  
  stat_smooth(method = "lm",col = "#C42126",se = FALSE,size = 1)          

#in above example lm is used for linear regression and se stands for standard error.  
#Adding title with dynamic name  
new_graph + labs(  
  x = "Drat definition",  
  y = "Mile per hours",  
  color = "Gear",  
  title = "Relation between Mile per hours and drat",  
  subtitle = "Relationship break down by gear class",  
  caption = "Authors own computation"  
)  

        