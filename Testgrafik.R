library(tidyverse)

df1 <- read.csv("tas_global_Historical.csv")

df2 <- read.csv("tas_global_SSP5_8_5.csv")

df <- rbind(df1, df2)
head(df)


df1 %>% ggplot(aes(Year, Mean))+
  geom_line()+
  geom_ribbon(aes(ymin=X5., ymax=X95.), alpha=.2)+
  geom_line(data=df2, aes(Year, Mean), color="red")+
  geom_ribbon(data=df2, aes(ymin=X5., ymax=X95.), fill="red", alpha=.2)+
  theme_light()
