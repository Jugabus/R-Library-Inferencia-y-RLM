\encoding{latin1}
\name{estimacion}
\alias{estimacion}
\title{Estimación de los parámetros del modelo}
\description{Estima los parámetros del modelo, además de la varianza de los errores}
\usage{
estimacion(x,y)
}
\arguments{
  \item{x}{Un objeto matriz de variables independientes}
  \item{y}{un objeto vector de la variable dependiente}}
\details{Una vez introduccido las variables dependientes mediante una matriz y la variable independiente mendiante un vector,realiza una estimación de los parámetros beta mediante el uso de las fórmulas, además de calcular la varianza de errores.
\cr
}
\value{
La función \code{estimacion} nos muestra mediante una lista los coeficientes del modelo, es decir, los betas obtenidos y el valor de la varianza de errores.
\cr
}
\references{
Formulario Regresión Lineal 
\cr
\cr
Ejemplos Regresión Lineal
}
\author{
Julio García Bustos, 
Juan Luis Martínez Gualda,
Juan José De la Hoz Gómez y 
Eduardo Arroyo Galán
}
\examples{
x<-matrix(c(3,1,5,2,4,5,4,6,4,6),ncol=2)
y<-c(3,1,8,3,5)
estimacion(x,y)
}
\keyword{classes}
\keyword{list}
\keyword{methods}
\keyword{print}