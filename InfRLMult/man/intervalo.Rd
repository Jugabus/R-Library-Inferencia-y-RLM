\encoding{latin1}
\name{intervalo}
\alias{intervalo}

\title{
Intervalos de confianza para los par�metros del modelo
}
\description{
Proporciona intervalos de confianza para los par�metros del modelo de regresi�n lineal m�ltiple a un nivel de confianza.
}
\usage{
intervalo(x, y, alpha)
}

\arguments{
  \item{x}{un objeto matriz de las variables independientes}
  \item{y}{un objeto vector de la variable dependiente}
  \item{alpha}{un objeto num�rico que indique el nivel de significaci�n del contraste}
}
\details{
Realiza los intervalos de confianza devolviendo los extremos 
inferiores y superiores de los coeficientes del modelo y de la varianza de los errores.
}
\value{
La funci�n \code{intervalo} nos muestra una lista cuyo primer elemento es el intervalo de los coeficientes Beta (en forma matricial) y cuyo segundo elemento es el de la varianza de los errores.
\cr
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
alpha<-0.05

intervalo(x,y,alpha)

}


\keyword{classes}
\keyword{list}
\keyword{methods}
\keyword{print}
