\encoding{latin1}
\name{estimacion}
\alias{estimacion}
\title{Estimaci�n de los par�metros del modelo}
\description{Estima los par�metros del modelo, adem�s de la varianza de los errores}
\usage{
estimacion(x,y)
}
\arguments{
  \item{x}{Un objeto matriz de variables independientes}
  \item{y}{un objeto vector de la variable dependiente}}
\details{Una vez introduccido las variables dependientes mediante una matriz y la variable independiente mendiante un vector,realiza una estimaci�n de los par�metros beta mediante el uso de las f�rmulas, adem�s de calcular la varianza de errores.
\cr
}
\value{
La funci�n \code{estimacion} nos muestra mediante una lista los coeficientes del modelo, es decir, los betas obtenidos y el valor de la varianza de errores.
\cr
}
\references{
Formulario Regresi�n Lineal 
\cr
\cr
Ejemplos Regresi�n Lineal
}
\author{
Julio Garc�a Bustos, 
Juan Luis Mart�nez Gualda,
Juan Jos� De la Hoz G�mez y 
Eduardo Arroyo Gal�n
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