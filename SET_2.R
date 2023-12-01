df <- data.frame(
  ProductID = c(1,2,3,4,5),
  ProductName = c("Product A","Product B","Product C","Product D","Product E"),
  QuantityAvailable = c(250,175,300,200,220),
  Price = c(20,60,87,94,45)
)
df

barplot(df$QuantityAvailable, names.arg = df$ProductName, col = "skyblue",
        xlab = "Product Name", ylab = "Quantity Available",
        main = "Quantity of Each Product in Inventory")


library(ggplot2)
ggplot(df, aes(x = ProductName, y = QuantityAvailable, fill = ProductName)) +
  geom_bar(stat = "identity")


ggplot(df, aes(x = Price, y = QuantityAvailable, label = ProductName)) +
  geom_point() +
  geom_text(vjust = 1.5, hjust = 0.5) +
  labs(title = "Relationship between Product Price and Quantity Available",
       x = "Price",
       y = "Quantity Available")