library(ggplot2)

#Creating scatterplot with fitted values.  
# An additional function stst_smooth is used for linear regression.  

ggplot(mtcars, 
       aes(x = log(mpg), y = log(drat))) + 
  geom_point(aes(color = factor(gear))) + 
  stat_smooth(method = "lm",col = "#C42126",se = FALSE,linewidth = 1)  

#in above example lm is used for linear regression and se stands for standard error.  
