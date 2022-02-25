
# Fetch data from database ------------------------------------------------

library(DBI)
library(tidyverse)
con <- dbConnect(odbc::odbc(), .connection_string = "Driver={SQL Server Native Client 11.0};DATABASE=HCWS;SERVER=kduah;Trusted_Connection=yes;MultipleActiveResultSets=true", 
    timeout = 10)

qry <- "select * from vwalldata";

hcws <- dbGetQuery(con, qry) %>% as_tibble()

cdbk <- read_csv("code book all data2.csv")
# Set column names --------------------------------------------------------


colnames(hcws) <- c("id", cdbk$new_var_name)

# Label values ------------------------------------------------------------
hcws <- hcws %>% 
  mutate(
    gender = factor(gender, levels = 1:2, labels = c("Male", "Female")),
    education = factor(education, levels = 0:3, labels = c("Undergraduate", "Graduate", "Post-graduate", "Others")),
    marital = factor(marital, levels = 0:2, labels = c("Prefer not to say", "Living alone/Single", "Living with a partner/Married")),
    chdn = factor(chdn, levels = 0:3, labels = c("None", "1 to 2", "3 to 4", "5 or more")),
    across(c(ever_worked:do_care, aerosol), ~factor(.x, labels = c("No", "Yes", "Unsure"), levels = 0:2)),
   cont_type = factor(cont_type, labels = c("No direct contact", "Direct contact", "Unsure"), levels = 1:3),
   across(can_follow:intentions, ~factor(.x, labels = c("Strongly disagree", "Somewhat disagree", "Neither agree nor disagree", "Somwhat agree", "Strongly agree"),
                           levels = -2:2)),
   across(n95:sue, ~factor(.x, labels = c("No", "Yes", "Unsure"), levels = 0:2)),
   job_role = factor(job_role, labels = c("Non-Clinical", "Clinical"), levels = 1:0),
   hosp_type = factor(hosp_type, labels = c("Public facility", "Private facility", "Denominational", "Other"), levels = 0:3)
  )

# Save the data -----------------------------------------------------------


write_rds(hcws, "hcws gh_cam_uga.rds")

hcws_l <- sjlabelled::set_label(hcws, c("id", cdbk$Description))
write_rds(hcws_l, "hcws gh_cam_uga labelled.rds")
