
library(ggplot2)

# change in axes
ggplot(mtcars, aes(x = log(wt),  y = log(mpg)))  +geom_point(aes(color=factor(gear)))

# normal axes
# ggplot(mtcars, aes(x = wt, y = mpg)) +geom_point(aes(color=factor(gear)))  