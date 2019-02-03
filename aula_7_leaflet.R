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

# Estilo google

leaflet() %>% addTiles()

# Destaque aos nomes das ruas/avenidas
leaflet() %>% addProviderTiles(providers$Stamen.Toner)

leaflet() %>% addProviderTiles(providers$Stamen.TonerHybrid)

leaflet() %>% addProviderTiles(providers$Stamen.TonerLabels)

leaflet() %>% addProviderTiles(providers$CartoDB.Positron)

leaflet() %>% addProviderTiles(providers$CartoDB.DarkMatterOnlyLabels)

leaflet() %>% addProviderTiles(providers$CartoDB.Positron) %>% addProviderTiles(providers$Stamen.TonerLite)

leaflet() %>% addProviderTiles(providers$MtbMap) %>% addProviderTiles(providers$Stamen.TonerLines, options = providerTileOptions(opacity = 0.95)) %>% addProviderTiles(providers$Stamen.TonerLabels, options = providerTileOptions(opacity = 0.9))