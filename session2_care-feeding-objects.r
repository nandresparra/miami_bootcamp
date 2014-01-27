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

(x <- cbind(month.abb, month.name))

(x <- matrix(LETTERS, ncol = 2))

(x <- data.frame(month.num = 1:12, I(month.abb), I(month.name)))
str(x)

set.seed(1)
(x <- round(rnorm(8), 2))
names(x) <- letters[seq_along(x)]       