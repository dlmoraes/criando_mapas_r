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

leaflet() %>% addTiles() %>% addRectangles(
  lat1 = -8.023398,
  lng1 = -34.895028,
  lat2 = -8.028423,
  lng2 = -34.895800,
  fillColor = 'transparent'
)
