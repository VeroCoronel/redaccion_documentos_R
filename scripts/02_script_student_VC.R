#===============================================================================
# Redacción de artículos académicos con R
# 02. Estructuras y primeras operaciones
# Estudiante
#===============================================================================

# Clase 2:Estructuras y primeras operaciones ------------------------------


# Manipulacion de un vector -----------------------------------------------

# Ejercicio 1:
# 1. Crear un vector (cualquiera) de 5 elementos 

ejercicio1<-c("Juan", "Pedro", "Maria", "Carmen", "Ana")

# 2. Extraer elemento de la posición 1

ejercicio1[1]

# 3. Extraer elementos de la posición 3 y 5

ejercicio1[c(3,5)]

# R como calculadora ------------------------------------------------------

# Ejercicio 2:
# 1.Crear 2 vectores numéricos con 60 elementos usando la función sample
# Nota: Escribir el código de tal forma que se muestren los resultados

ejercicio2_1<-sample((1:100), 60, replace = T)

ejercicio2_2<-sample((1:100), 60, replace = T)

# 2. Sumar los dos vectores

ejercicio2_1+ejercicio2_2

# 3. Restar los dos vectores

ejercicio2_1-ejercicio2_2

# 4. Multiplicar los dos vectores

ejercicio2_1*ejercicio2_2

# 5. Dividir los dos vectores

ejercicio2_1/ejercicio2_2


# Operaciones estadísticas básicas ----------------------------------------

# Ejercicio 3:
# 1. Sumas los elementos de cada vector (usar los vectores creados en el ejercicio 2)


sum(ejercicio2_1)

sum(ejercicio2_2)

# 2. Obtener el valor máximo de cada vector

max(ejercicio2_1)

max(ejercicio2_2)

# 2. Obtener el percentil 45 de cada vector

quantile(ejercicio2_1, 0.45)

quantile(ejercicio2_2, 0.45)

# Operadores lógicos ------------------------------------------------------

# Ejercicio 4:
# 1. Filtrar el primer vector para aquellos elementos superiores o iguales
# a la mediana, usando el operador lógico: >=

ejercicio2_1>=median(ejercicio2_1)

ejercicio2_1[ejercicio2_1>=median(ejercicio2_1)]

# 2. Filtrar el segundo vector para aquellos elementos  usando dos operadores lógicos: < 
# Los elementos que estan entre el quartil 25 y 75

ejercicio2_2[(ejercicio2_2>=quantile(ejercicio2_2, 0.25)) & (ejercicio2_2<=quantile(ejercicio2_2, 0.75))]

# Fechas ------------------------------------------------------------------

# Ejercicio 5:
# 1. Crear un vector con fechas

fechas <- c("2022-06-26","2022-05-22","2022-04-20")

# 2. Obtener la clase del vector creado

class(fechas)

# 3. Convertir el vector a fecha

fechas2<-as.Date(fechas)

# 4. Obtener los atributos del vector final

attributes(fechas2)


## Horas------------------------------------------------------------------------

# Ejercicio 6:
# Obtener la hora actual con el uso horario de europa, Paris

now_ct <-as.POSIXct("2022-06-28 06:06", tz ="UTC")

structure(now_ct, tzone =
            "Europe/Paris")

# Obtener la hora actual con el uso horario de America, New_York

structure(now_ct, tzone =
            "America/New_York")

# Crear muestras aleatorias -----------------------------------------------

# Ejercicio 7
# 1. Crear un vector aleatorio de tipo caracter, de tamaño 100 y graficar
ejercicio7_base<-c("blanco", "rojo", "azul", "verde")

ejercicio7_sample<-sample(ejercicio7_base, 100, replace = T)

plot(ejercicio7_sample)

tabla_ejercicio<-table(ejercicio7_sample)

plot(tabla_ejercicio)

# 2. Transformar a factor

ejercicio7_sample_factor<-factor(ejercicio7_sample, levels = c("blanco", "rojo", "azul", "verde"))

plot(ejercicio7_sample_factor)

# 3. Crear un vector aleatorio de tipo numérico, de tamaño 100 

ingresos<-sample(0:10000, 100)

# 4. Transformar a factor

ingresos_funcion<-cut(x=ingresos,
                      breaks = c(500,1000,2000,Inf),
                      labels = c("Bajo","Medio","Alto"))

attributes(ingresos_funcion)

# Listas ------------------------------------------------------------------

# Ejercicio 8
# 1. Crear una lista con un elemento: caracter, entero, lógico y numérico

ejercicio8<-list("Edad", 
                 sample(0:100, 50), 
                 c(TRUE, FALSE, TRUE),
                 (1:80)/20)
               
# 2. Mostrar los elementos de esa lista

ejercicio8

# 3- Extraer los elementos de la lista
caracter<-ejercicio8[[1]]
caracter

entero<-ejercicio8[[2]]
entero

logico<-ejercicio8[[3]]
logico

numerico<-ejercicio8[[4]]
numerico

# 4. Extraer un elemento de la lista pero, como lista

numerico<-ejercicio8[4]

class(numerico)

# Tablas o data.frames ----------------------------------------------------

# Ejercicio 9: usar el data frame mtcars 
# 1. Ver la clase del data frame
class(mtcars)
# 2. Ver los atributos del data frame
attributes(mtcars)
# 3. Ver la dimensión
dim(mtcars)
# 4. Extraer de la tercera fila de la tabla:
mtcars[3,]
# 5. Extraer la fila 1,2 y las columnas 2 y 3 
mtcars[c(1,2), c(2,3)]
# 6. Crear una nueva variable en la tabla que sea la suma de la variable: carb

mtcars$new_column<-mtcars$carb+mtcars$gear

# Filtrar una tabla -------------------------------------------------------
# Ejercicio 9: usar el data frame iris
head(iris)
# 1. Filtrar la base 1 variable: en la variable "Species" se filtre solo por "setosa"

iris[iris$Species=="setosa",]

# 2. Filtrar la base 2 variables: Sepal.Length mayor a 4.9 y Sepal.Width menor a 3.6

iris[iris$Sepal.Length>4.9 & iris$Sepal.Width<3.6,]

