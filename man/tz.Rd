\name{tz}
\alias{tz}
\alias{tz<-}
\title{Get/set time zone component of a date-time.}
\usage{
  tz(x)
}
\arguments{
  \item{x}{a date-time object}
}
\value{
  the first element of x's tzone attribute vector as a
  character string. If no tzone attribute exists, tz
  returns "GMT".
}
\description{
  Date-time must be a POSIXct, POSIXlt, Date, chron,
  yearmon, yearqtr, zoo, zooreg, timeDate, xts, its, ti,
  jul, timeSeries, and fts objects.
}
\details{
  Setting tz does not update a date-time to display the
  same moment as measured at a different time zone. See
  \code{\link{with_tz}}. Setting a new time zone creates a
  new date-time. The numerical value of the hours element
  stays the same, only the time zone attribute is replaced.
  This creates a new date-time that occurs an integer value
  of hours before or after the original date-time.

  If x is of a class that displays all date-times in the
  GMT timezone, such as chron, then R will update the
  number in the hours element to display the new date-time
  in the GMT timezone.

  For a description of the time zone attribute, see
  \code{\link[base]{DateTimeClasses}}.
}
\examples{
x <- now()
tz(x)
tz(x) <- "GMT"
x
tz(x) <- "America/New_York"
x
Sys.setenv(TZ = "GMT")
now()
tz(now())
Sys.unsetenv("TZ")
}
\keyword{chron}
\keyword{manip}
\keyword{methods}
\keyword{utilities}

