write.csv(data, file = "cameroon labelled data.csv", quote = F)

library(tidyverse)

data <- data %>% 
  mutate(
    d_marital_c_u = str_replace(d_marital_c_u, ",", " -")
  )


table(data$d_carer_b)

data <- data %>% 
  mutate(
    contacttype = str_replace(contacttype, ",", "-")
  )
str_detect(data$contacttype, ",") %>% table()

write.csv(data[, g], file = "uganda new labelled data.csv", quote = F)

g <- c("record_id", "age", "gender", "role", "role_other", "healthtype", "healthtype_2", "healthtype_3", "screening", "screening_2", "jobrole", "marital", "child_dependants", "adult_dependants",
       "experience_1", "experience_2", "experience_3", "experience_4", "prevention_1", "prevention_2", "skills_1", "skills_2", "belief", "conseq_beliefs_1", "conseq_beliefs_2", "conseq_beliefs_3",
       "intentions", "environment_context_1", "environment_context_2", "environment_context_3", "environment_context_4", "supplies_1", "social_influence_1", "social_influence_2", "social_influence_3",
       "emotion_1", "emotion_2", "emotion_3", "emotion_4", "emotion_5", "trust_1", "trust_2", "trust_3")
g

data[, g]

colnames(ghana) %>% data.frame() %>% 
  set_names(., "id") %>% 
  inner_join(gh_labs, by = c("id" = "label")) %>% 
  select(variable) %>% pull() -> newcols

colnames(ghana) <- newcols
ghana %>% 
  write.csv(file = "data for merging-20211221T110041Z-001/data for merging/ghana variable_names.csv", quote = F)
