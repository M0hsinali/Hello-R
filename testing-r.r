library(tidyverse)
data()
?starwars
View(starwars)

starwars%>%
  filter(hair_color == "black" | hair_color == "brown")%>%
  drop_na(sex)%>%
  ggplot(aes(hair_color, fill = sex)) +
  geom_bar(alpha = 0.5)+
  theme_bw()+
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())+
  labs(title = "Gender and hair color",
       x = "Hair color",
       y = "Number")
