\name{Interval-class}
\alias{-,Date,Interval-method}
\alias{-,Duration,Interval-method}
\alias{-,Interval,Date-method}
\alias{-,Interval,Interval-method}
\alias{-,Interval,missing-method}
\alias{-,Interval,numeric-method}
\alias{-,Interval,POSIXct-method}
\alias{-,Interval,POSIXlt-method}
\alias{-,numeric,Interval-method}
\alias{-,Period,Interval-method}
\alias{-,POSIXct,Interval-method}
\alias{-,POSIXlt,Interval-method}
\alias{[,Interval-method}
\alias{[<-,Interval,ANY-method}
\alias{*,ANY,Interval-method}
\alias{*,Interval,ANY-method}
\alias{/,difftime,Interval-method}
\alias{/,Interval,difftime-method}
\alias{/,Interval,Duration-method}
\alias{/,Interval,Interval-method}
\alias{/,Interval,numeric-method}
\alias{/,Interval,Period-method}
\alias{/,numeric,Interval-method}
\alias{\%\%,Interval,Duration-method}
\alias{\%\%,Interval,Interval-method}
\alias{\%\%,Interval,Period-method}
\alias{+,Date,Interval-method}
\alias{+,difftime,Interval-method}
\alias{+,Interval,Date-method}
\alias{+,Interval,difftime-method}
\alias{+,Interval,Duration-method}
\alias{+,Interval,Interval-method}
\alias{+,Interval,numeric-method}
\alias{+,Interval,Period-method}
\alias{+,Interval,POSIXct-method}
\alias{+,Interval,POSIXlt-method}
\alias{+,numeric,Interval-method}
\alias{+,POSIXct,Interval-method}
\alias{+,POSIXlt,Interval-method}
\alias{$,Interval-method}
\alias{$<-,Interval-method}
\alias{as.difftime,Interval-method}
\alias{as.numeric,Interval-method}
\alias{c,Interval-method}
\alias{intersect,Interval,Interval-method}
\alias{Interval-class}
\alias{rep,Interval-method}
\alias{setdiff,Interval,Interval-method}
\alias{show,Interval-method}
\alias{union,Interval,Interval-method}
\title{Interval class}
\description{
  Interval is an S4 class that extends the
  \code{\link{Timespan-class}} class. An Interval object
  records one or more spans of time. Intervals record these
  timespans as a sequence of seconds that begin at a
  specified date. Since intervals are anchored to a precise
  moment of time, they can accurately be converted to
  \code{\link{Period-class}} or
  \code{\link{Duration-class}} class objects. This is
  because we can observe the length in seconds of each
  period that begins on a specific date. Contrast this to a
  generalized period, which may not have a consistent
  length in seconds (e.g. the number of seconds in a year
  will change if it is a leap year).
}
\details{
  Intervals can be both negative and positive. Negative
  intervals progress backwards from the start date;
  positive intervals progress forwards.

  Interval class objects have two slots: .Data, a numeric
  object equal to the number of seconds in the interval;
  and start, a POSIXct object that specifies the time when
  the interval starts.
}

