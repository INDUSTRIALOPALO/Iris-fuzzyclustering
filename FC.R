rm(list = ls())
library(cluster)
library(e1071)
library(ggplot2)
library(factoextra)
library(corrplot)
library(plotly)
(Data<- iris)
View(Data)

#Calcular Fuzzy Clustering
(fc <- fanny(Data, 3))
#Gráfica
clusplot(fc)
ggplot(iris, aes(Petal.Length, Petal.Width, color = fc$cluster)) + geom_point()
ggplotly()
fviz_cluster(fc, ellipse.type = "norm",ellipse.level = 0.68)
# Silhouette plot
fviz_silhouette(fc, label = FALSE)
print(fc)
ggplotly()
# Membership coefficient
fc$membership
fc$clustering







