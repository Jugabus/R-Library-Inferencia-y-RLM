\encoding{latin1}
\name{Prediccion}
\alias{Prediccion}
\title{Predecir la variable dependiente y su media}
\description{Predice la variable dependediente,su media y determina el intervalo de confianza de dichas predicciones}
\usage{
prediccion(x,y,x0,alpha)
}
\arguments{
  \item{x}{un objeto matriz de las variables independientes}
  \item{y}{un objeto vector de la variable dependiente}
  \item{x0}{un vector que contiene las nuevas observaciones de las variables independientes}
  \item{alpha}{un objeto num�rico que indique el nivel de significaci�n del contraste}
}
\details{
Predice la variable con los nuevos valores observado de las variables independiente predice la variable dependiente y su media. 
\cr
\cr
Adem�s realiza los intervalos de confianza para las predicciones obtenidas al nivel de confianza que le indiquemos. 
\cr
\cr
}
\value{
La funci�n \code{prediccion} nos muestra la preddicci�n de la variable junto con la preddicci�n de su media.
\cr
\cr
Ademas nos muestra un invervalo de confianza de dichas preddicciones.
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
x0<-c(1,4.75,5.25)
alpha<-0.05

prediccion(x,y,x0,alpha)
}
\keyword{classes}
\keyword{list}
\keyword{methods}
\keyword{print}
