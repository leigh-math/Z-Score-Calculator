\name{calcz}
\docType{package}
\title{Z-Score calculation}
\description{Basic function that calculates the z-score using the formula: z = (x-mu)/(sd/sqrt(n))}

\usage{calcz(x, mu, sd, n)}
\arguments{ 
    \item{x}{Numeric value input by user to be standardized}
    \item{mu}{Value of sample mean input by user}
    \item{sd}{Value of sample standard deviation input by user}
    \item{n}{Sample size input by user, defaulted to 1}
}
\value{Standardized normal value}
\note{This function only works with all four arguments input.  If a sample size is not given, use n = 1.}

\author{Leigh Matthews}

\examples{
    ## Calculate z-score and p-value for X = 4 where mean = 0, sd = 2, and sample size = 100.
    calcz(0, 2, 4, 100)
}
\concept{Standard Normal Distribution}