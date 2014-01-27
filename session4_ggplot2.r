library(ggplot2)

gDat <- read.delim("gapminder-data.txt")
str(gDat)


p <- ggplot(gDat, aes(x = gdpPercap, y = lifeExp))
p + geom_point( aes(color =continent)) + scale_x_log10() + 
  geom_point(alpha = 1/3, size = 3) + geom_smooth()

ggplot(gDat, aes(x = continent, y = lifeExp)) + geom_jitter()

ggplot(gDat, aes(x = continent, y = lifeExp)) + geom_jitter(position=position_jitter(width=0.1), alpha=1/4)

ggplot(gDat, aes(x = continent, y = lifeExp))  + geom_boxplot() + geom_jitter(position=position_jitter(width=0.1), alpha=1/4)