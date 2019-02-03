# install.packages("ggplot2", dependencies = T)
library(ggplot2)

ggplot() + borders("world", regions = "brazil", fill = "yellow") + coord_equal()

ggplot() + borders("world", regions = "canada", fill = "black") + coord_equal()

ggplot() + borders("world", regions = "german", fill = "blue2", colour = 'yellow') + coord_equal()