#Lisset Hernández A01284611

#1. Instalar y llamar librerias
install.packages("cluster")
install.packages("ggplot2")
install.packages("data.table")
install.packages("factoextra")


library(cluster)
library(ggplot2)
library(data.table)
library(factoextra)

#2. Cargar data
data <- read.csv("C:\Users\alanh\Downloads\wine.csv")

#3. Escalar la base de datos
data_escalada<- scale(data)

#Definir número de grupos
grupos <- 3