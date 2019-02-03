install.packages("maps", dependencies = TRUE)
library(maps)

map(database="world")
map(database = "world", regions = "brazil")

par(mar=c(1, 1, 1, 1))
map(database = "world", regions = "brazil")

par(mar=c(1, 1, 1, 1))
map(database = "world", regions = "usa")

par(mar=c(1, 1, 1, 1))
map("state", "california")

map("county", "california")

par(mar=c(1, 1, 1, 1))
map("state", "new york")
map("county", "new york")

par(mar=c(1, 1, 1, 1))
map("state", regions = c("california", "nevada", "texas"))

map("world", regions = "brazil")
map.axes(cex.axis=0.8)
abline(h=-1.5888347,lty=2)
abline(v=-48.8938354,lty=2)
map.scale(ratio=F,cex=0.6)


map("world", "brazil", fill=T, col="Grey")
map(,,add=T)
map.axes(cex.axis=0.8)
map.scale(ratio=F, cex=0.6, x=-48, y=-30)
map.cities(country = 'Brazil', minpop = 7000000, pch=19, cex=1.2)