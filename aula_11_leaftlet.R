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

a <- read.table('../diego/worksparce/r/criando_mapas/lat_e_long_v2.txt', head = T)
cores <- c()

for(i in 1:nrow(a))
{
  if (a$sexo[i] == "Mas") { cores[i] <- 'black' } 
  if (a$sexo[i] == "Fem") { cores[i] <- 'pink' }
}

icons <- awesomeIcons(icon='ios-close', library = 'ion', iconColor = 'Black', markerColor = cores)

leaflet() %>% addProviderTiles(providers$CartoDB.Positron) %>% addAwesomeMarkers(a$long, a$lat, icon = icons, label = as.character(a$nome))
