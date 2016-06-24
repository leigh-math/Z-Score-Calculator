\name{zcalculator-package}
\alias{calcz}
\alias{zcalculator-package}
\alias{zcalculator}

\docType{package}
\title{
\packageTitle{zcalculator}
}
\description{
\packageDescription{zcalculator}
}
\details{

The DESCRIPTION file:
\packageDESCRIPTION{zcalculator}
\packageIndices{zcalculator}
    User inputs the sample mean (mu), sample standard deviation (sd), value to standardize (X), 
    and sample size (n or 1 if none is given) with the \code{calcz}.
}
\author{
\packageAuthor{zcalculator}

Maintainer: \packageMaintainer{zcalculator}
}

\references{Anderson, David R., Dennis J. Sweeney, and Thomas A. Williams. 
Essential Statistics for Business and Economics. 7th ed. Minneapolis: Cengage Learning, 2015. Print. 
}

\usage{calcz(x, mu, sd, n)}
\arguments{ 
    \item{mu}{Value of sample mean input by user}
    \item{sd}{Value of sample standard deviation input by user}
    \item{x}{Numeric value input by user to be standardized}
    \item{n}{Sample size input by user, defaulted to 1}
    \deqn{calcz{x, mu, sd, n}}{Calculates the z-score}
}

\keyword{ package }
\keyword{calcz}
\keyword{zscore}

\examples{
    ## Calculate z-score and p-value for X = 4 where mean = 0, sd = 2, and sample size = 100.
    calcz(0, 2, 4, 100)
    ## Calculate z-score for X = 8 where mean = 10, sd = 8, and no sample size is given.
    calcz(10, 5, 8, 1)
}
