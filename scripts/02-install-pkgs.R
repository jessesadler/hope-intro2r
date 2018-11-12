## Script 02: Install and load packages ##

# Install a set of tidyverse packages with a single command
# Make sure to include the quotation marks

install.packages("tidyverse")

# Installing the package places it on your computer, but to use the package,
# you have to load it with every new session and/or script.

# Every script should begin with the packages needed to run the script

library(tidyverse)

# Check to make sure everything is working correctly

ggplot(data = mtcars, aes(x = mpg, y = disp)) +
  geom_point() + 
  geom_smooth()
