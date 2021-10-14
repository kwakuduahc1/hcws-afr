library(tidyverse)
amakye %>% 
  select(TOTALCOSTTREAT, TIC, HOWMUCHLOST)
  colnames()

  View(amakye)
  
  table(gh_cm$Country)
  colnames(amakye)
  amakye %>% 
    mutate(CONDDIAGNOSED = as.character(CONDDIAGNOSED),
           con = factor(CONDDIAGNOSED, levels = 1:3, labels = c("Simple Malaria", "Common cold", "Back pain")),
            FACILITY = as.character(FACILITY),
           fac = factor(FACILITY, levels = 1:4, labels = c("Public", "CHAG", "Quasi", "Private"))) %>% 
    count(fac, con) %>% 
    ggpubr::ggbarplot(x="con", y="n", fill = "fac", ylab = "Number of people", xlab = "Disease condition", legend.title="Facility type",
                      position = position_dodge())
  