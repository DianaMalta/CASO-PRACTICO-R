# CASO-PRACTICO-R
Contexto
Los temas más importantes vistos en las clases de R, fueron la manipulación y visualización
de datos con Tidyverse. Porque en un principio lo que se espera de un analista o científico
de datos, es que sea capaz de tomar cualquier conjunto de datos para manipularlo y
visualizarlo a su gusto. Al final de este proceso es cuando se extrae la información más
importante y luego se comparten los resultados con el resto de la organización.
Objetivo
Realiza un análisis exploratorio en R, del conjunto de datos Titanic para comprender mejor
qué características (por ejemplo, edad, nivel socioeconómico, costo de ticket, puerto de
embarcación, etcétera) tienen los pasajeros que sobrevivieron o no sobrevivieron al evento.
Una vez finalizado el análisis, en un documento pdf comparte un resumen no mayor a 2
párrafos con tus descubrimientos más importantes.
Detalle de las columnas
● PassangerId - Identificador único del pasajero.
● Survived - Indicada si el pasajero sobrevivió o no (Yes, No).
● Pclass - Nivel socioeconómico (Upper Class, Middle Class, Lower Class).
● Name - Nombre del pasajero.
● Sex - Género del pasajero.
● Age - Edad del pasajero.
● SibSp - Número total de herman@s y espos@s del pasajero.
● Parch - Número total de padres e hijos del pasajero.
● Ticket - Número de ticket del pasajero.
● Fare - Costo del ticket.
● Cabin - Número de cabina del pasajero (puede contener carácteres vacíos).
● Embarked - Puerto de embarcación del pasajero.
## RESULTADO DEL ANALISIS

Origen de Datos: Titanicv2.csv
Análisis Exploratorio:
-	Contiene 12 columnas 418 registros
-	Se utilizaron dos funciones para analizar la estructura del archivo
-	str(datos) #nos indica los tipos de datos de las columnas
-	summary(datos) #nos indica los valores, mínimos, máximo, mediana, entre otras cosas.
-	Durante la exploración se encontraron valores nulos en el archivo:
-	Datos es mi dataframe original, existen 3 campos con valores nulos (Age 86, Fare 1, Cabin 327)

Decidi seleccionar 7 campos para realizar mi análisis exploratorio: Survived, Age,SibSp,Parch,Sex,Pclass ,Embarked y adicional.
Limpieza de datos:
El campo Age, contiene 86 valores nulos, se eliminaron, quedando 332 registros para analizar.
Análisis exploratorio:
Adicional se utilizó el comando pipe con la librería dplyr, para realizar la presentación grafica de la información.
Se utilizaron 2 variables para la presentación de resultados:
Representación gráfica de esta variable, se visualiza que de las 3 clases sociales, la que más sobrevivientes tuvo fue Lower Class, después Upper Class y por último Middle Class, es evidente que LowerClass eran más pasajeros y de igual forma fue la que menos sobrevivientes tuvo.
![image](https://github.com/user-attachments/assets/e385538c-64c6-4860-ba77-91381a32d9c0)
 
Segundo Gráfico tipo histograma.
Se muestra el rango de edad de los sobrevivientes 
![image](https://github.com/user-attachments/assets/9d90f15a-042c-493d-849e-48c1d4f27269)

 
Variable Estadística: En este campo se calculó la edad promedio, la edad mínima y la edad máxima, así como una agrupación de los sobrevivientes y sexo, para poder representar el resultado gráficamente.

 ![image](https://github.com/user-attachments/assets/62e006d3-5c1c-492b-812f-ca18286a9d72)

Sobreviviente: 152, las cuales, todos fueron mujeres
No sobrevivientes: 266


