## Script 07: Visualization with ggplot2: Scatterplots ##

# Load packages and dutch-prices.csv from the data folder

# The data is from Jan Luiten van Zanden, Prices and wages and the cost of
# living in the western part of the Netherlands, 1450-1800:
# http://www.iisg.nl/hpw/brenv.php

# Make the first plot
ggplot(data = dutch_prices, aes(x = year, y = guilders)) +
  geom_point()

# geoms -------------------------------------------------------------------

# Create a line plot by changing the geom.
# Make a plot that has lines and points.


# aesthetics --------------------------------------------------------------

# Differentiate the commodities by color
ggplot(data = dutch_prices, aes(x = year, y = guilders, color = commodity)) +
  geom_point()

# Try to map the commodity variable to other aesthetics
# such as shape, alpha, size, etc

# Make aesthetic changes to the geoms outside of aes() function
ggplot(data = dutch_prices, aes(x = year, y = guilders)) + 
  geom_point(color = "orange", size = 3, alpha = 0.5)


# facets ------------------------------------------------------------------

# Facet wrap by commodity
ggplot(data = dutch_prices, aes(x = year, y = guilders)) + 
  geom_point() + 
  facet_wrap(~ commodity)

# What other aesthetic changes can you make to a faceted plot?
# Make a faceted plot with a line instead of points.

