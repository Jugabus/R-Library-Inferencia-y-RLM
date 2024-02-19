pkgname <- "InfRLMult"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
options(pager = "console")
library('InfRLMult')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
base::assign(".old_wd", base::getwd(), pos = 'CheckExEnv')
cleanEx()
nameEx("anov")
### * anov

flush(stderr()); flush(stdout())

### Name: anov
### Title: Tabla anova de la regresión
### Aliases: anov
### Keywords: classes list methods print

### ** Examples

x<-matrix(c(3,1,5,2,4,5,4,6,4,6),ncol=2)
y<-c(3,1,8,3,5)
alpha<-0.05
anov(x,y,alpha)



cleanEx()
nameEx("contraste")
### * contraste

flush(stderr()); flush(stdout())

### Name: contraste
### Title: Contrastes de hipótesis sobre los parámetros del modelo
### Aliases: contraste
### Keywords: classes list methods print

### ** Examples

x<-matrix(c(3,1,5,2,4,5,4,6,4,6),ncol=2)
y<-c(3,1,8,3,5)
alpha<-0.05
R<-matrix(c(1,0,0,1,0,-2),ncol=3)
r<-c(3,0)

contraste(x,y,alpha,R,r)



cleanEx()
nameEx("estimacion")
### * estimacion

flush(stderr()); flush(stdout())

### Name: estimacion
### Title: Estimación de los parámetros del modelo
### Aliases: estimacion
### Keywords: classes list methods print

### ** Examples

x<-matrix(c(3,1,5,2,4,5,4,6,4,6),ncol=2)
y<-c(3,1,8,3,5)
estimacion(x,y)



cleanEx()
nameEx("intervalo")
### * intervalo

flush(stderr()); flush(stdout())

### Name: intervalo
### Title: Intervalos de confianza para los parámetros del modelo
### Aliases: intervalo
### Keywords: classes list methods print

### ** Examples

x<-matrix(c(3,1,5,2,4,5,4,6,4,6),ncol=2)
y<-c(3,1,8,3,5)
alpha<-0.05

intervalo(x,y,alpha)




cleanEx()
nameEx("nulidad")
### * nulidad

flush(stderr()); flush(stdout())

### Name: Nulidad
### Title: Contraste de nulidad y sobre un subvector
### Aliases: Nulidad
### Keywords: classes list methods print

### ** Examples

x<-matrix(c(3,1,5,2,4,5,4,6,4,6),ncol=2)
y<-c(3,1,8,3,5)
alpha<-0.05
i<-1
j<-2
beta0<-c(1,-2)
nulidad(x,y,i,j,alpha,beta0)



cleanEx()
nameEx("prediccion")
### * prediccion

flush(stderr()); flush(stdout())

### Name: Prediccion
### Title: Predecir la variable dependiente y su media
### Aliases: Prediccion
### Keywords: classes list methods print

### ** Examples

x<-matrix(c(3,1,5,2,4,5,4,6,4,6),ncol=2)
y<-c(3,1,8,3,5)
x0<-c(1,4.75,5.25)
alpha<-0.05

prediccion(x,y,x0,alpha)



### * <FOOTER>
###
cleanEx()
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
