\encoding{latin1}
\name{contraste}
\alias{contraste}
\title{Contrastes de hipótesis sobre los parámetros del modelo}
\description{Resuelve los contrastes de nulidad de los parámetros del modelo y contrastes sobre un subvector del vector de parámetros.
}
\usage{
contraste(x,y,alpha,R,r)
}

\arguments{
  \item{x}{un objeto matriz de las variables independientes}
  \item{y}{un objeto vector de la variable dependiente}
  \item{alpha}{un objeto numérico que indique el nivel de significación del contraste}
  \item{R}{un objeto matriz que contiene restricciones lineales}
  \item{r}{un objeto vector que contiene restricciones lineales}
  }
\details{
Resuelve contrastes definidos por las restricciones lineales que le indiquemos sobre los parámetros de nuestro modelo de regresión lineal múltiple.
\cr
\cr
Además de reestimar el modelo bajo dichas restricciones lineales.  
\cr
\cr
}
\value{
La función \code{contraste} nos muestra la predicción de la variable junto con la predicción de su media.
\cr
\cr
Además nos muestra un invervalo de confianza de dichas predicciones.
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
alpha<-0.05
R<-matrix(c(1,0,0,1,0,-2),ncol=3)
r<-c(3,0)

contraste(x,y,alpha,R,r)
}
\keyword{classes}
\keyword{list}
\keyword{methods}
\keyword{print}
