## Script 10: Visualization with `ggplot2`: Saving plots ##

# Load packages and dutch prices data


# Create a plot you want to save


# Once you get it how you want it, use ggsave()
ggsave("plots/my-first-plot.png")

# This places the file in a plots folder and names it my-first-plot.png
# If you do not have a plots folder, you may need to create it.

# Create a pdf file of the plot.


# Change width and height -------------------------------------------------

ggsave("plots/my-first-plot1.png", width = 6, height = 4)

# What happens when you change the size of the saved plot?

# See ?ggave for more options
