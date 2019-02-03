# Necessário ter o Java instalado na máquina
#install.packages('devtools')
#install.packages('htmltools')
#install.packages('httpuv')
#install.packages('mime', dependencies = T)
#install.packages('xtable', dependencies = T)
#install.packages('magrittr', dependencies = T)
#install.packages('crosstalk', dependencies = T)
#install.packages('jsonlite', dependencies = T)
#install.packages('yaml', dependencies = T)
#install.packages('shiny', dependencies = T)
#install.packages('leaflet', dependencies = T)

library(magrittr)
library(leaflet)
library(jsonlite)

a <- read.table('../diego/worksparce/r/criando_mapas/lat_e_long.txt', head = T)
a

leaflet(data=a) %>% addTiles() %>% addMarkers(a$long, a$lat, popup = as.character(a$nome))
