## Script 09: Visualization with `ggplot2`: Labels and themes ##

# Load packages and dutch prices data


# labels ------------------------------------------------------------------

# Create labels with labs()

ggplot(data = dutch_prices,
       aes(x = year, y = guilders, color = commodity)) +
  geom_point() + 
  labs(title = "Prices of Goods in Holland",
       x = "Date",
       y = "Price in Guilders",
       color = "Commodities")

# Create a subtitle for the plot


# themes ------------------------------------------------------------------

# Use variety of themes
ggplot(data = dutch_prices,
       aes(x = year, y = guilders, color = commodity)) +
  geom_point() +
  theme_bw()

# Test out other ggplot2 themes

# For way more information than you will ever want see ?theme()