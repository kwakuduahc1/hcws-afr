library(DBI)
library(tidyverse)
con <- dbConnect(odbc::odbc(), .connection_string = "Driver={SQL Server Native Client 11.0};DATABASE=HCWS;SERVER=kduah;Trusted_Connection=yes;MultipleActiveResultSets=true", 
    timeout = 10)

qry <- "select * from vwalldata";

hcws <- dbGetQuery(con, qry) %>% as_tibble()

colnames(hcws) <- c("id", cdbk$new_var_name)
hcws %>% 
  mutate(
    gender = factor(gender, levels = 1:2, labels = c("Male", "Female")),
    education = factor(education, levels = 0:2, labels = c("Undergraduate", "Graduate", "Post-graduate")),
    marital = factor(marital, levels = 0:2, labels = c("Prefer not to say", "Living alone/Single", "Living with a partner/Married")),
    chdn = factor(chdn, levels = 0:3, labels = c("None", "1 to 2", "3 to 4", "5 or more")),
    across(c(ever_worked:do_care, aerosol), ~factor(.x, labels = c("No", "Yes", "Unsure"), levels = 0:2)),
   cont_type = factor(cont_type, labels = c("No direct contact", "Direct contact", "Unsure"), levels = 1:3),
   across(can_follow:intentions, ~factor(.x, labels = c("Strongly disagree", "Somewhat disagree", "Neither agree nor disagree", "Somwhat agree", "Strongly agree"),
                           levels = -2:2)),
   across(n95:sue, ~factor(.x, labels = c("No", "Yes", "Unsure"), levels = 0:2))
  ) %>% select(ctry, cont_type, n95:sue) %>% 
  gtsummary::tbl_summary(by = ctry)

hist(hcws$age)
table(hcws$education)

write_rds(hcws, "hcws all countries.rds")

hcw$i_mask_c_o %>% table(useNA = "always")


write_rds(hcws, "hcws gh_cam_uga.rds")
