## Script 05: The pipe ##

# Load packages and dvdm correspondence data

# What if you want to perform multiple operations?

# 1. Create new objects for each step

letters_bremen <- filter(letters, destination == "Bremen") # letters to Bremen
bremen_grouped <- group_by(letters_bremen, source) # group by source
bremen_summarised <- summarise(bremen_grouped, count = n()) # letters per source
finally_done <- arrange(bremen_summarised, desc(count)) # most letters at the top

# Or use the pipe: %>% 
# macOS keyboard shortcut: Cmd+Shift+m
# Windows keyboard shortcut: Ctrl+Shift+M

letters %>% 
  filter(destination == "Bremen") %>% # letters to Bremen
  group_by(source) %>% # group by source
  summarise(count = n()) %>% # letters per source
  arrange(desc(count)) # most letters at the top

# Find the number of letters sent between each source and destination with the pipe.
# Find the number of letters sent by each writer with the pipe.