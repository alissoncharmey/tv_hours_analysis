library(tidyverse)
library(here)
tv_hours_table <- gss_cat %>% 
  filter (age >=30) %>% 
  group_by(marital) %>% 
  summarize(mean_tv_hours=mean(tvhours, na.rm=T))

write_csv(tv_hours_table, here("TV_Hours_by_marital_status.csv"))


gss_cat <-  gss_cat
class(gss_cat)
