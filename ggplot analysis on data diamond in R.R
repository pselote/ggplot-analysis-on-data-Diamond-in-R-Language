library(tidyverse)
data("diamonds")
print(colnames(diamonds))
print(head(diamonds))
print(tail(diamonds))
view(diamonds)
print(summary(diamonds))
print(nrow(diamonds))
print(ncol(diamonds))
print(dim(diamonds))
print(names(diamonds))
print(rownames(diamonds))
print(mean(diamonds$price))
print(median(diamonds$price))
print(sum(diamonds$price))
##Bar Graph
print(ggplot(data = diamonds)+
        geom_bar(mapping = aes(x=cut)))
## Histogram
print(ggplot(data = diamonds)+
        geom_histogram(mapping = aes(x=carat),binwidth = 0.5))
print(ggplot(data = diamonds)+
        geom_histogram(mapping = aes(x=carat),binwidth = 0.1))
## Facet wrap
print(ggplot(data = diamonds)+
        geom_histogram(mapping = aes(x=carat),binwidth = 0.1)+
      facet_wrap(~cut))
## Freqpoly
print(ggplot(data = diamonds,mapping = aes(x=carat,colour=cut))+
        geom_freqpoly(binwidth = 0.1))
## Box plot
print(ggplot(data = diamonds,mapping = aes(x=carat,y=price))+
        geom_boxplot(mapping = aes(group=cut_width(carat,0.1))))
##Scatter plot
print(ggplot(data = diamonds)+
        geom_point(mapping = aes(x=carat,y=price)))


