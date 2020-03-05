library(ggplot2)
head(iris)
plot(x=iris$Sepal.Length, y=iris$Sepal.Width, xlab="Sepal Length", ylab = "Sepal Width", main = "Sepal Length-Width")
scatter <- ggplot(data=iris, aes(x=Sepal.Length, y = Sepal.Width))
scatter + geom_point(aes(color=Species, shape=Species)) + xlab("Sepal Length") + ylab("Sepal Width") + ggtitle("Sepal Length-Width")
scatter + geom_point(aes(color=Petal.Width, shape = Species), size = 2, alpha = I(1/2)) + geom_vline(aes(xintercept=mean(Sepal.Length)), color = "red", linetype = "dashed") + geom_hline(aes(yintercept=mean(Sepal.Width)), color="red", linetype = "dashed") + scale_color_gradient(low = "yellow", high = "red") + xlab("Sepal Length") + ylab("Sepal Width" )+ ggtitle("Sepal Length-Width")
boxplot(Sepal.Length~Species,data=iris, xlab="Species", ylab="Sepal Length", main="Iris Boxplot")                     
box <- ggplot(data=iris, aes(x=Species, y=Sepal.Length))
box + geom_boxplot(aes(fill=Species)) + ylab("Sepal Length") + ggtitle("Iris Boxplot") + stat_summary(fun.y=mean, geom="point", shape=5, size=4)
histogram <- ggplot(data=iris, aes(x=Sepal.Width))
histogram + geom_histogram(binwidth = 0.2, color = "black", aes(fill=Species)) + xlab("Sepal Width") + ylab("Frequency") + ggtitle("Histogram of Sepal Width")
set.seed(1234)
iris1 <- iris[sample(1:nrow(iris), 110), ]
hline <- data.frame(Species=c("setosa", "versicolor", "virginica"), hline=as.vector(table(iris$Species)))
hline
barplot(table(iris1$Species), col="black", xlab="Species", ylab="Count", main="Bar plot of Sepal Length")
bar <- ggplot(data=iris1, aes(x=Species))
bar + geom_bar() + xlab("Species") + ylab("Count") + ggtitle("Bar plot of Sepal Length") + geom_errorbar(data=hline, aes(y=hline, ymin=hline, ymax=hline), col="red", linetype="dashed")
library(reshape2)
iris2 <- melt(iris, id.vars="Species")
iris2[1:3,]
bar1 <- ggplot(data=iris2, aes(x=Species, y=value, fill=variable))
bar1+geom_bar(stat="identity", position="dodge")+scale_fill_manual(values=c("orange", "blue", "darkgreen", "purple"), name="Iris\nMeasurements", breaks=c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width"), labels=c("Sepal.Length", "Sepal.Width", "Petal Length", "Petal Width"))
quan <- as.vector(table(iris1$Species))
pos <- cumsum(quan) - quan/2
quantity <- data.frame(Species=c("setosa", "versicolor", "virginica"), quantity=quan, position=pos)
pie <- ggplot(iris1, aes(x=factor(1), fill=Species)) + geom_bar(width=1) + geom_text(data=quantity, aes(x=factor(1), y=position, label=quantity), size=5) + labs(x="", y="")
pie
pie + coord_polar()
pie + coord_polar(theta = "y")
head(ChickWeight)
chick <- unique(ChickWeight$Chick)
group <- chick[1]
dat <- ChickWeight[ChickWeight$Chick==group,]
color <- as.vector(dat$Diet[1])
plot(dat$Time, dat$weight, type ="1", ylim=range(ChickWeight$weight), col=color, xlab="Time", ylab="Weight", main="Line plot")
for(i in 2:length(chick)){
  group <- chick[i]
}