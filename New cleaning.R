
# Load the packages -------------------------------------------------------

library(tidyverse)
library(magrittr)
library(gtsummary)

# clean the demographics --------------------------------------------------
table(hcws$d_gender, useNA = "always")

hcws3 %>% 
  # mutate(
  #   ipc_skills
  # ) %>% 
  select(
    s_received_training,
    s_can_don_c_o,
    s_can_followc_o,
    s_can_protect_c_0,
    s_is_proected,
    s_is_straining_c_o,
    s_will_use_c_o
  ) %>% 
  tbl_summary()
