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

#Paso 9. Comparación de segmentos
cluster_prom <- aggregate(. ~ cluster, data=asignacion, FUN=mean)
cluster_prom

# Conclusión
# La segmentación, o agrupación en clusters, es una herramienta valiosa para 
# las empresas que buscan clasificar a sus clientes y llevar a cabo campañas 
# de marketing más precisas y especializadas. En este contexto, se determinó 
# el número óptimo de segmentos para analizar un listado de vinos, siendo 3 
# el número ideal. Esta segmentación refleja la diversidad de vinos, lo que 
# a su vez representa las preferencias de los consumidores para los productores 
# y distribuidores. Posteriormente, esta segmentación facilitará un estudio 
# más detallado sobre las características específicas de cada grupo de 
# consumidores. 


