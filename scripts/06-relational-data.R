## Script 06: Relational data: working with more than one data frame ##


# set up ------------------------------------------------------------------

# 1. Load packages and dvdm correspondence data
# 2. Use read_csv() to load correspondents.csv from the data folder

# 3. Create data frame from "letters" that has number of letters per writer
#    and name it per_writer

# joins -------------------------------------------------------------------

# Join number of letters per writer with kinship and gender data about correspondents
left_join(per_writer, correspondents, by = "writer")

# What happens if you do this?
left_join(correspondents, per_writer, by = "writer")

# Try the other types of joins. How do they differ in this instance? Why?


# variables with different names ------------------------------------------

alt_writers <- rename(per_writer, schrijver = writer)

left_join(alt_writers, correspondents, by = c("schrijver" = "writer"))

# Try to do this in one command with the pipe.