% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/00_utils.R
\name{rss3d}
\alias{rss3d}
\title{A substitute for the DiceDesign::rss3d to fix a bug}
\usage{
rss3d(design, lower, upper, gof.test.type = "greenwood",
  gof.test.stat = NULL, transform = NULL, n.angle = 60, graphics = 1,
  trace = TRUE)
}
\arguments{
\item{design}{a matrix or data.frame containing the d-dimensional design of experiments. The row no. i contains the values of the d input variables corresponding to simulation no. i}

\item{lower}{the domain lower boundaries.}

\item{upper}{the domain upper boundaries.}

\item{gof.test.type}{an optional character indicating the kind of statistical test to be used to test the goodness-of-fit of the design projections to their theoretical distribution. Several tests are available, see unif.test.statistic. Default is "greenwood".}

\item{gof.test.stat}{an optional number equal to the goodness-of-fit statistic at level 5\%. Default is the modified test statistic for fully specified distribution (see details below).}

\item{transform}{an optional character indicating what type of transformation should be applied before testing uniformity. Only one choice available "spacings", that lead to over-detection. Default - and recommended - is NULL.}

\item{n.angle}{an optional number indicating the number of angles used. Default is 360 corresponding to a 0.5-degree discretization step. Note that the RSS curve is continuous.}

\item{graphics}{an optional integer indicating whether a graph should be produced. If negative, no graph is produced. Otherwise (default), the design is plotted in the worst 3D coordinate subspace (corr. to the worst value of statistic), with its projections onto the worst (oblique) axis}

\item{trace}{an optional boolean. Turn it to FALSE if you want no verbosity.}
}
\value{
a list with components:
}
\description{
For a 3-dimensional design, the 3D radial scanning statistic (RSS) scans angularly the domain. In each direction, it compares the distribution of projected points to their theoretical distribution under the assumption that all design points are drawn from uniform distribution. For a d-dimensional design, all triplets of dimensions are scanned. The RSS detects the defects of low discrepancy sequences or orthogonal arrays, and can be used for selecting space-filling designs.
}
