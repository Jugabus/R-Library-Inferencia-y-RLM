\encoding{latin1}
\name{anov}
\alias{anov}
\title{Tabla anova de la regresi�n}
\description{Realiza una tabla Anova, nos muestra el coeficiente de determinaci�n y el contraste de regresi�n}
\usage{
anov(x,y,alpha)
}
\arguments{
  \item{x}{un objeto matriz de las variables independientes}
  \item{y}{un objeto vector de la variable dependiente}
  \item{alpha}{un objeto num�rico que indique el nivel de significaci�n del contraste}
}
\details{
Calcula la tabla Anova sobre las variables con las que estamos trabajando, adem�s unas vez que obtiene la tabla, calcula el coeficiente de determinaci�n.
\cr
\cr
Y por �ltimo compara el p-valor con el alpha para ver si se rechaza o no el contraste.
\cr
}
\value{
La funci�n \code{anov} nos muestra la tabla que obtendr�amos con las variables que introducimos, luego nos muestra el coeficiente de determinaci�n.
\cr
\cr
Y por �ltimo nos muestra si se rechaza o acepta el contraste de regresi�n en funci�n del p-valor.
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
anov(x,y,alpha)
}
\keyword{classes}
\keyword{list}
\keyword{methods}
\keyword{print}
