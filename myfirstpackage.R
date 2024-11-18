library(carData)
df <- TitanicSurvival
df
head(df)
#Utilisez devtools::create("TitanicPackage") pour générer la structure du package. 
library(devtools)
devtools::create("DICAPRIO") 
devtools::document("DICAPRIO")
devtools::build("DICAPRIO")
devtools::check("DICAPRIO")

# ajoute une fonction  pour calculer le taux de survie selon la classe 

rose <- function(df){
tbl <- table(TitanicSurvival$survived , TitanicSurvival$passengerClass)
rose_prop <- prop.table(tbl, 2)
rose_per <- prop.table(tbl, 2)*100
print("proportion:")
print(rose_prop)

print("percentage:")
print(rose_per)
}
rose(TitanicSurvival)

#ajoute une fonction  pour calculer le taux de survie en fonction du sexe 

survie_sex <- function(df){
  tbl <- table(TitanicSurvival$survived, TitanicSurvival$sex)
  survie_sex_prop <- prop.table(tbl,2)
  survie_sex_per<- prop.table(tbl,2)*100
  print("proportion:")
  print(survie_sex_prop)
  
  print("percentage:")
  print(survie_sex_per)
}
survie_sex(TitanicSurvival)

#Documentez chaque fonction en utilisant roxygen2 et génère la documentation avec devtools::document().

