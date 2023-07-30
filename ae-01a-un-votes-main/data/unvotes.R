# load packages ----------------------------------------------------------------

library(unvotes)
library(tidyverse)
library(here)

# unvotes ----------------------------------------------------------------------

unvotes <- un_votes %>%
  inner_join(un_roll_calls, by = "rcid") %>%
  inner_join(un_roll_call_issues, by = "rcid")

# save RDS ---------------------------------------------------------------------

saveRDS(unvotes, file = here::here("data/unvotes.rds"))
