library(tidyverse)
library(here)

gss_cat
class(gss_cat)

###Git has separated the 2 orders: one that i did online, one that was done here, separated by <<<<<< So we just need to delete everything that we dont want. 
tv_hours_tabulation <- gss_cat %>% 
  filter (age <30) %>% #changed that
  group_by(marital) %>% 
  summarize(mean_tv_hours=mean(tvhours, na.rm=T))

tv_hours_tabulation

#Register it
write_csv(tv_hours_tabulation, here("TV_Hours_by_marital_status.csv"))



gss_cat <-  gss_cat

