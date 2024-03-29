\encoding{latin1}
\name{contraste}
\alias{contraste}
\title{Contrastes de hip�tesis sobre los par�metros del modelo}
\description{Resuelve los contrastes de nulidad de los par�metros del modelo y contrastes sobre un subvector del vector de par�metros.
}
\usage{
contraste(x,y,alpha,R,r)
}

\arguments{
  \item{x}{un objeto matriz de las variables independientes}
  \item{y}{un objeto vector de la variable dependiente}
  \item{alpha}{un objeto num�rico que indique el nivel de significaci�n del contraste}
  \item{R}{un objeto matriz que contiene restricciones lineales}
  \item{r}{un objeto vector que contiene restricciones lineales}
  }
\details{
Resuelve contrastes definidos por las restricciones lineales que le indiquemos sobre los par�metros de nuestro modelo de regresi�n lineal m�ltiple.
\cr
\cr
Adem�s de reestimar el modelo bajo dichas restricciones lineales.  
\cr
\cr
}
\value{
La funci�n \code{contraste} nos muestra la predicci�n de la variable junto con la predicci�n de su media.
\cr
\cr
Adem�s nos muestra un invervalo de confianza de dichas predicciones.
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
R<-matrix(c(1,0,0,1,0,-2),ncol=3)
r<-c(3,0)

contraste(x,y,alpha,R,r)
}
\keyword{classes}
\keyword{list}
\keyword{methods}
\keyword{print}
