hcws <- read_rds("hcws gh_cam_uga.rds")
cdbk <- read_csv("code book.csv")

hcws_l <- sjlabelled::set_label(hcws, cdbk$Description)
write_rds(hcws_l, "hcws gh_cam_uga labelled.rds")

table(hcws$education, hcws$ctry)