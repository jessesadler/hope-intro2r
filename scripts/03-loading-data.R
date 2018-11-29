## Script 03: Loading data ##

# The first step with every script is to load the packages that will be used.

library(tidyverse)

# read_csv ----------------------------------------------------------------

# To load the data we need to create a path from our "working directory" to
# where the data is. RStudio projects situates the working directory as the
# folder in which the project is.

# The data we want to load is in a csv, so we use the `read_csv()` function.
# Make sure to use the function with an underscore (_), not a period.
# We also need to name the object to save it into the environment.

letters <- read_csv("data-raw/dvdm-correspondence-1591.csv")

# Inspect the data
letters

# How many rows or observations are there?
# How many columns or variables are there?

# Another way to look at the data
glimpse(letters)

# This type of object is known as a data frame. In this case, "letters" is a
# tibble, which is a slightly modified data frame designed to work within the
# tidyverse set of packages.


# Parsing types of data ---------------------------------------------------

# Do you notice anything problematic with the types of data?
# The date variable is shown as an integer, a number, instead of a date.
# Let's change that with the read_csv() function.

letters <- read_csv("data-raw/dvdm-correspondence-1591.csv",
                    col_types = cols(date = col_date(format = "%Y%m%d")))

# For further information on parsing data, see Chapter 11 of R for Data Science:
# https://r4ds.had.co.nz/data-import.html


# Save the parsed data ----------------------------------------------------

# To avoid manually parsing the data every time we load it, we can save the new
# letters data. The converse of read_csv() is write_csv().
# To save the now clean data in our data folder:

write_csv(letters, "data/dvdm-correspondence.csv")
