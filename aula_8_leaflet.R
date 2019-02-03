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

leaflet() %>% addTiles() %>% addMarkers(lng = -48.4504451, lat = -1.3378627, popup = 'CELPA') %>% addTiles() %>% addMarkers(lng = -48.4329527, lat = -1.4031236, popup = 'Shooping Castanheira')

#?addMarkers