#simple sample with the default database "iris"

summary(iris)
amostra = sample(c(0,1), 150, replace = TRUE, prob = c(0.5,0.5))
amostra
length(amostra[amostra==1])

#stratified sample
install.packages("sampling")
library(sampling)

amostraEstratificada = strata(iris,
                              c("Species"), 
                              size = c(25,25,25),
                              method = "srswor")
summary(amostraEstratificada)

infert
summary(infert)

propA = 120/248 * 100
propB = 116/248 * 100
propC = 12/248 * 100

amostraEstratificada2 = strata(infert,
                              c("education"), 
                              size = c(propC,propB,propA),
                              method = "srswor")
summary(amostraEstratificada2)

#Teaching Sampling
install.packages("TeachingSampling")
library(TeachingSampling)

amostraSistematica = S.SY(150,10)
amostraSistematicaIris = iris[amostraSistematica, ]
amostraSistematicaIris
