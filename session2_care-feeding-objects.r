#gdURL <- "http://tiny.cc/gapminder"
#dDat <- read.delim(gdURL)

gDat <- read.delim("gapminder-data.txt")
head(gDat)
tail(gDat)
names(dDat)
dim(gDat)
colnames(gDat)
summary(gDat)

gDat$lifeExp
summary(gDat$lifeExp)
hist(gDat$lifeExp)
class(gDat$country)
table(gDat$continent)
levels(gDat$continent)
nlevels(gDat$continent)

cambodiaData <- subset(gDat, subset = country=="Cambodia")
subset(gDat, subset = year == "1952", select = "year")
subset(gDat, subset = country %in% c("Japan", "Belgium"))
       
(lowLifeExpentancyData <- subset(gDat, subset = lifeExp<32))
summary(lowLifeExpentancyData$"continent")
plot(lifeExp ~ year, gDat, subset= country == "Cambodia")
mean(gDat$lifeExp)

with(subset(gDat, country="Cambodia"),
  cor(lifeExp, gdpPercap))

       