library(tidyverse)

gha_cam <- read_csv("gha_cam2.csv")

gh_cm <- gha_cam %>% 
  mutate(
    gen = case_when(gen == "Male" ~ 1,
                    gen == "Female" ~ 2),
    d_edu_c_o = case_when(d_edu_c_o %in% c("Secondary School/SHS/SSS or Lower", "Post-Secondary School/SSS/SHS Certificate", "Diploma", "Certificate", 1:3) ~ 0,
                          d_edu_c_o %in% c(4, "First Degree") ~ 1,
                          d_edu_c_o %in% c("Post-Graduate", "Masters", "Post Graduate Training - Clinical", "Ph.D./DrPH", 5:6) ~ 2),
    d_marital_c_u = case_when(d_marital_c_u %in% c("Living alone", 3, 1) ~ 1,
                              d_marital_c_u %in% c("Living with another (Married, Partnership)", 2) ~ 2,
                              d_marital_c_u == "Prefer not to say" ~ 0),
    d_chdn_i = case_when(d_chdn_i > 0 & d_chdn_i < 3 ~ 1,
                         d_chdn_i > 2 & d_chdn_i < 5 ~ 2,
                         d_chdn_i > 4 ~ 3,
                         d_chdn_i == 0 ~ 0),
    across(c(e_ever_worked_c_u:e_do_care_c_o, e_aerosol_c_o), ~case_when(.x == "No" ~ 0,
                                                                         .x == "Yes" ~ 1,
                                                                         .x =="Unsure"~  2)),
    e_contact_type_c_o = case_when(e_contact_type_c_o == "Direct Contact with COVID-19 patients" ~ 2,
                                    e_contact_type_c_o == "There are positive COVID-19 patients in the same facility but no direct contact" ~ 1,
                                    e_contact_type_c_o == "Unsure" ~ 3),
    across(n95:sue, ~factor(.x, labels = c("Strongly disagree", "Somewhat disagree", "Neither agree nor disagree", "Somwhat agree", "Strongly agree"),
                            levels = -2:2))
    
  ) # %>% 
  # select(s_can_followc_o:s_can_don_c_o) %>%
  # gtsummary::tbl_summary()
gh_cm$s_can_don_c_o %>% table()

write.csv(gh_cm, "Ghana Cameroon merged dataset.csv", quote = F)
