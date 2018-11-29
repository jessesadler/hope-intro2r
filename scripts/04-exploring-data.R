## Script 04: Exploring data ##

# Load packages and dvdm correspondence data you just created
# Use what you know from previous scripts


# select ------------------------------------------------------------------

# Pick variables or columns to keep or discard
select(letters, writer, date)

# Get rid of variables you do not want to keep
select(letters, -date)

# Rearrange columns
select(letters, writer, date, destination, source)

# Rename columns within selection: `new_name = old_name`
select(letters, writer, from = source, to = destination)

# To keep all variables but rename one or more use `rename()`
rename(letters, correspondent = writer)

# Create a new object with fewer variables
# Rename variable names with and without removing variables


# arrange -----------------------------------------------------------------

# Arrange rows by values in a variable
arrange(letters, writer)

# Try to arrange rows by two variables

# Arrange rows in descending order with `desc()`
arrange(letters, desc(date))


# filter ------------------------------------------------------------------

# Pick letters sent to Antwerp
filter(letters, destination == "Antwerp")

# How many letters were sent to Antwerp?
# Why don't the following commands work?

filter(letters, destination = "Antwerp")
filter(letters, destination == Antwerp)

# Pick letters sent during certain years
filter(letters, year >= 1584 & year <= 1586)

# Remove rows that do not have a known source or destination: `NA`
filter(letters, !is.na(source), !is.na(destination))

# mutate ------------------------------------------------------------------

# Create new variable with dates from Julian calendar for letters sent after 1582.

# New data frame with letters after 1582
gregorian_letters <- filter(letters, year > 1582)

# New variable with Julian calendar dates
mutate(gregorian_letters, julian = date - 10)


# summarise ---------------------------------------------------------------

# Summarise works similarly to mutate

# Let's try it with `n()` to count the observations
summarise(letters, count = n())

# What happened?


# summarise with group_by -------------------------------------------------

# Group the data frame by a variable and then use `summarise()` and `n()`
# create grouped data frame
letters_writer <- group_by(letters, writer)

# How many letters were written by each correspondent?
summarise(letters_writer, count = n())

# Can you write commands to see how many letters were sent along each route,
# that is, from each source to each destination?
