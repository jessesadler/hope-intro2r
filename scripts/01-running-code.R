## Script 01: Running code in the console ##

# This is an R script. It is just a text document with a .R extension. An R
# script is a place to write and save R commands that perform a set of tasks.

# All lines that begin with a hashtag (#) are comments.
# Write comments to explain what individual commands do or to organize parts of
# a script. Any line that does not begin with one or more hashtags is
# interpreted as an R command.

# Let's write some R code: we can start with some math.
# To run the command in the console type Command+Enter in macOS or Ctrl+Enter in
# Windows

5 + 10

15 * 3

# When the commands are run on the console, the output is printed below.

# Creating objects --------------------------------------------------------

# To save the output of a command as a variable with a name use the assignment
# operator `<-`
# This is typed with a less than sign and a hyphen
# Or with keyboard shortcuts: Option+- or Alt+-

x <- 15 * 3

# Notice that nothing happens in the console.
# The variable or object named "x" should now be visible in the Environment
# pane to the upper right. To see the contents of the object in the console
# use either the print function or just use the name by itself.

# These commands have the same output
print(x)
x

# What if you try to print out a word?
print(hello)

# What does the error message say?

# If you want to create an object with the contents hello, you need to have
# quotations around it. This tells R that you want a character not an object.
"hello"
hello <- "hello"

# Functions ---------------------------------------------------------------

# Functions take in objects, perform some set of operations, and return another
# object. The objects and instructions for the functions are included within
# parentheses following the function name, and all instructions are separated by
# a comma. You can think of objects as nouns and functions as verbs.

# The sum() function takes in any number of numeric objects and returns their sum

sum(x, 8, 24)

# Now try this
sum(x 8, 24)

# What went wrong?
# The two arguments x and 8 have to be separated by a comma.

# Ww can save the working command as an object
y <- sum(x, 8, 24)

# If you make a mistake or the values change, the code can be rerun.
# Let's say the value of x changes to 15 * 4

x <- 15 * 4

# This changes the value for y if the relation between the two remains the same.

y <- sum(x, 8, 24)

# Once you get a command that produces the expected result, you can save the
# command to an R script like this one.


# Named arguments ---------------------------------------------------------

# The sequence function creates a vector of numbers
seq(from = 0, to = 20, length.out = 8)

# Use the by argument instead of length.out. What changes?

# What happens if you do not include the names of the arguments but just the
# values?

# Getting help ------------------------------------------------------------

# If you need help with a function you can search in the help menu or place a
# question mark before a function name. Pay particular attention to the 
# definitions of the arguments and the examples at the bottom.

?seq()
