## Script 11: Tidying data with tidyr ##

# 1. Load the tidyverse
# Install lubridate package and make sure to load it
# 3. Load barley data from the data-raw folder and parse the NA values

# Taking untidy data and making it tidy

# 1. gather data -------------------------------------------------------------

barley_long <- gather(barley, key = month, value = price, -Year)

# Why is this the same?
gather(barley, key = month, value = price, September:August)


# 2. tidy date data -------------------------------------------------------

barley_long %>% 
  mutate(day = 1) %>% # create a day of the month
  unite(col = date, "Year", "month", "day", sep = " ") %>% # unite three columns into one
  mutate(date = ymd(date)) # change class of variable to date class with lubridate


# 3. label the type of grain ----------------------------------------------

barley_tidied <- barley_long %>% 
  mutate(day = 1) %>%
  unite(col = date, "Year", "month", "day", sep = " ") %>%
  mutate(date = ymd(date),
         grain = "barley")


# 4. Repeat steps with oats and wheat data ---------------------------------

# Create oats_tidied and wheat_tidied


# 5. Bind the data frames -------------------------------------------------

# Bind the rows of the three data frames with `bind_rows()` to create a
# `grain_prices` data frame.

bind_rows(barley_tidied, oats_tidied, wheat_tidied)


# 6. Visualize the data ---------------------------------------------------

