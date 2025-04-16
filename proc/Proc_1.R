pacman::p_load(lme4,
               reghelper,
               haven,
               stargazer,
               ggplot2, # gráficos
               texreg, # tablas de regresion (screenreg)
               dplyr # manipulacion de datos
               )


#Directorio
setwd("D:/U pruebas/TDR_1/TRD_Multinivel_1/")

# Confirmar directorio/ evitar problema de compatibilidad. 
getwd()


#Base de datos

elsoc <- read_dta("D:/U pruebas/TDR_1/TRD_Multinivel_1/input/data/ELSOC_Long_2016_2023.dta")


#Observacion de la base. 
names(elsoc)

unique(elsoc$ola)

str(elsoc)

#Seleccion de ola. 

elsoc_2023 <- elsoc %>%
  filter(ola == 7)

