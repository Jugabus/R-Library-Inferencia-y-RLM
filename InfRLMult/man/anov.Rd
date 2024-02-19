\encoding{latin1}
\name{anov}
\alias{anov}
\title{Tabla anova de la regresión}
\description{Realiza una tabla Anova, nos muestra el coeficiente de determinación y el contraste de regresión}
\usage{
anov(x,y,alpha)
}
\arguments{
  \item{x}{un objeto matriz de las variables independientes}
  \item{y}{un objeto vector de la variable dependiente}
  \item{alpha}{un objeto numérico que indique el nivel de significación del contraste}
}
\details{
Calcula la tabla Anova sobre las variables con las que estamos trabajando, además unas vez que obtiene la tabla, calcula el coeficiente de determinación.
\cr
\cr
Y por último compara el p-valor con el alpha para ver si se rechaza o no el contraste.
\cr
}
\value{
La función \code{anov} nos muestra la tabla que obtendríamos con las variables que introducimos, luego nos muestra el coeficiente de determinación.
\cr
\cr
Y por último nos muestra si se rechaza o acepta el contraste de regresión en función del p-valor.
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
anov(x,y,alpha)
}
\keyword{classes}
\keyword{list}
\keyword{methods}
\keyword{print}
