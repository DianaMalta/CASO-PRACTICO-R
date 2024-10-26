#Carga de librerias
install.packages("tidyverse")
library(tidyverse)
library(dplyr)

#cargo archivo csv a datos, debo tener definido mi directorio, de lo contario poner la ruta compelta
datos<-read_csv("Titanicv2.csv")
#Exploracion de datos con  tidyverse

str(datos) #nos indica los tipos de datos de las columnas
summary(datos) #tenemos valores nulos en Age=86, Fare=1, Cabin

#obtengo la media
summary(datos$Age)

#Exploración y limpieza de datos con pipes
#Utilizaremos dplyr para explorar y limpiar los datos. El pipe (%>%) 
# limpieza y transformación básica
datosLimpios <- datos %>%
  # El campo Age tiene 86 valores nulos, los cuales se rellenan con la mediana (el valor es 27)
  mutate(Age = ifelse(is.na(Age), median(Age, na.rm = TRUE), Age)) %>%
  select(Survived,Age, SibSp, Parch, Sex, Pclass, Embarked) %>%
  # Convertir 'Survived', 'Pclass', y 'Sex' a factores
  mutate(Survived = as.factor(Survived),
         Pclass = as.factor(Pclass),
         Sex = as.factor(Sex))
 
  estadistica<-datosLimpios%>%
  group_by(Survived, Sex) %>%
  summarise(
    edad_promedio = mean(Age),
    edad_minima = min(Age),
    edad_maxima = max(Age),
    total_pasajeros = n()
   )

  #Presentacion gráfica en barras de los pasajeros sobrevivientes por clase (baja, media, alta)
#Resultado, la clase alta tuvo mayor porcentaje de sobrevivencia
datosLimpios %>%
  ggplot(aes(x = Pclass, fill = Survived)) +
 geom_bar()+
 # geom_bar(position = "fill") +
  labs(y = "Proporción", title = "Supervivencia por clase de pasajero")

# Presentación gráfica en histrograma de los sobrevivientes por edad
#Resultado, el rango de edad con mayor sobrevivientes es 22 - 23 años
datosLimpios %>%
  ggplot(aes(x = Age, fill = Survived)) +
  geom_histogram(binwidth = 5, color = "black", alpha = 0.7) +
  labs(title = "Distribución de Edad por Supervivencia")

#La edad promedio de sobreviviente y no es entre 28 a 32 años

#Solo hubo sobrevivientes mujeres
estadistica %>%
  ggplot(aes(x = Sex,fill = Survived)) +
  geom_bar(stat = "count") +
  labs(title = "Conteo de sobrevivientes", x = "Supervivencia", y = "Cantidad")
