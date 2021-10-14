library(tidyverse)
gha_cam <- read_csv("gha_cam.csv")
# Import Ghana and Cameroon data -------------------------------------------------------

gha_cam %>% 
  mutate(
    gen = fct_collapse(gen, 1 = c("1", "Male"), "Female" = c("2", "Female")),
    d_edu_c_o = fct_collapse(d_edu_c_o, 
                             "Undergraduate" = c("Secondary School/SHS/SSS or Lower", "Post-Secondary School/SSS/SHS Certificate", "Diploma", "Certificate", 1:3),
                             "Graduate" = c(4, "First Degree"),
                             "Post-Graduate" = c("Masters", "Post Graduate Training - Clinical", "Ph.D./DrPH", 5:6),
                             "Others" = c(7)),
    d_marital_c_u = fct_collapse(d_marital_c_u,
                                 "Living alone" = c("Living alone", 3, 1),
                                 "Living with another" = c("Living with another (Married, Partnership)", 2),
                                 "Prefer not to say" = c("Prefer not to say", 0)),
    d_chdn_i = case_when(d_chdn_i > 0 & d_chdn_i < 3 ~ 1,
                         d_chdn_i > 2 & d_chdn_i < 5 ~ 2,
                         d_chdn_i > 4 ~ 3,
                         d_chdn_i == 0 ~ 0),
    d_chdn_i = factor(d_chdn_i, levels = 0:3, labels = c("None", "1 to 2", "3 to 4", "5 or more")),
    across(c(e_ever_worked_c_u:e_do_care_c_o, e_aerosol_c_o), ~fct_collapse(.x,
                                     "No" = c(0, "No"),
                                     "Yes" = c(1, "Yes"),
                                     "Unsure" = c("Unsure", 2))),
    
    
  ) %>% 
  count(e_contact_type_c_o) 

table(gha_cam$d_marital_c_u)
