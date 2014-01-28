library(ggplot2)
library(ply)
gDat <- read.delim("gapminder-data.txt")
str(gDat)

tDat <- with(gDat,
             cbind(cambodia = lifeExp[country == "Cambodia"],
                   canada = lifeExp[country == "Canada"],
                   rwanda = lifeExp[country == "Rwanda"]))
rownames(tDat) <- with(gDat, year[country == "Canada"]) #USE ROWNAMES
str(tDat)
tDat
apply(tDat, 1, mean)
apply(tDat, 2, median)
rowMeans(tDat)
which.min(tDat[1,])

apply(tDat, 1, which.min)
colnames(tDat)[apply(tDat, 1, which.min)]
apply(tDat, 1, summary)
apply(tDat, 1, quantile, probs = c(0.25, 0.75))

apply(tDat, 2, IQR)

#aggregate
aggregate(lifeExp ~ continent, gDat, FUN = mean)
str(gDat)
aggregate(lifeExp  ~ continent * year, gDat, quantile, probs=c(0.05,0.95))
aggregate(country  ~ continent, gDat, function(x) length(unique(x)))
aggregate(gdpPercap ~ country, gDat, quantile, probs=c(0,1))
aggregate(gdpPercap ~ country, gDat, range)
aggregate(gdpPercap ~ country, gDat, function(x) c(min(x), max(x)))
aggregate(gdpPercap ~ country, gDat, range, 
          subset = country %in% c("Colombia","Venezuela", "Peru"))