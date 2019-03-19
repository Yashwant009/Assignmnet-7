#1.Creating histogram of all variables

library(purrr)
library(tidyr)
library(ggplot2)

mtcars %>% keep(is.numeric) %>% 
  gather() %>% 
  
  ggplot(aes(value)) +
  facet_wrap(~ key, scales = "free") +
  geom_histogram(bins = 10)

#2. Creating density function of all variables

library(purrr)
library(tidyr)
library(ggplot2)

mtcars %>%
  keep(is.numeric) %>% 
  gather() %>% 
  ggplot(aes(value)) +
  facet_wrap(~ key, scales = "free") +
  geom_density()


#3. Creating boxplot with mtcars

library(tidyr)
library(ggplo2)
df <- gather(mtcars)

ggplot(data = df, aes(x=key, y=value)) + 
  geom_boxplot(aes()) + facet_wrap( ~ key, scales="free")
