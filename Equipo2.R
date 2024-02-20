#Lisset Hernández A01284611

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
segmentos <- kmeans(df, grupos)
segmentos

#Parte 6. Asignar el grupo al que pertenece cada observación
asignacion <- cbind(cluster = segmentos$cluster, datos)
head(asignacion)

