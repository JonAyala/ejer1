library(readxl)
library(naniar)
library(dplyr)

#5
datos<-read_xlsx("datos/online_retail_II.xlsx")
str(datos)
datos$`Customer ID`<-as.character(datos$`Customer ID`)


#6
miss_var_summary(datos)
miss_case_summary(datos)

#vis_miss(datos, cluster = T)

sum(is.na(datos))


#7
n_distinct(datos$Invoice)


#8
precio_medio_producto<- datos %>% 
  group_by(Invoice) %>% 
  summarize(Precio_medio = mean(Price))


#9
Num_productos_pedido<- datos %>% 
  group_by(Invoice) %>% 
  summarize(Numero_productos = sum(Quantity))




