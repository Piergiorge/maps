library(ggplot2)
library(geobr)
library(ggspatial)

#Acessando os dados do IBGE
rj <- read_state(code_state = "RJ",year = 2020)
br <- read_state(code_state = "all",year = 2020)

# Plotando o mapa
ggplot(br) +
  aes(group = code_state) +
  geom_sf(size = 0.1,fill="white") +
  geom_sf(aes(group=code_state),data=rj,fill="red",col="#EA6E16")+
  labs(x = "Longitude", y = "Latitude", title = "Mapa do Brasil") +
  annotation_north_arrow(style = north_arrow_fancy_orienteering)+ 
  annotation_scale(location="br",height = unit(0.15,"cm"))+
  theme_bw()
