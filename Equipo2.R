#Lisset Hernández A01284611
#Luis Mendoza A00829099
#Hector de la Garza A01177960
#Jazmin Cortez A00831105
#Flor Martinez A01411732

#Parte 1. Instalar y llamar librerias
install.packages("cluster")
install.packages("ggplot2")
install.packages("data.table")
install.packages("factoextra")

library(cluster)
library(ggplot2)
library(data.table)
library(factoextra)

#Parte 2. Cargar data
data <- read.csv("C:\Users\alanh\Downloads\wine.csv")

#Parte 3. Escalar la base de datos
data_escalada<- scale(data)

#Parte 4. Definir número de grupos
grupos <- 3

#Parte 5. Generar los segmentos
segmentos <- kmeans(data_escalada, grupos)
segmentos

#Parte 6. Asignar el grupo al que pertenece cada observación
asignacion <- cbind(cluster = segmentos$cluster, datos)
head(asignacion)

#Parte 7. Graficar los clusters
fviz_cluster(segmentos,data = data_escalada)

# Parte 8. Optimizar la cantidad de grupos
set.seed(123)
optimizacion <- clusGap(data_escalada, FUN = kmeans, nstart = 1, K.max = 10)
plot(optimizacion,xlab = "Numero de clusters k")

