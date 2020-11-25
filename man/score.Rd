\name{score}
\alias{score}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Score
}
\description{
Scores a thread according to the five phases of the Interaction Analysis Model.
Also returns a social presence score.
}
\usage{
score(thread)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{thread}{
A text vector containing user postings.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Nick V. Flor
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
scores=score(IAM::transcript_culture2$post)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.
