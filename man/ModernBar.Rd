% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ModernBar.R
\name{ModernBar}
\alias{ModernBar}
\title{ModernBar}
\description{
This is a concrete implementation of the abstract class \code{\link{Bar}}
using the \code{\link[progress:progress_bar]{progress::progress_bar}} as engine for the progress bar.
}
\examples{
# Create a modern bar instance.
bar <- ModernBar$new()

# Specify the number of ticks to be performed.
total <- 100

# Create the progress bar.
bar$create(total = total, initial = 0)

# Use the progress bar.
for (i in 1:total) {
    # Sleep a bit.
    Sys.sleep(0.02)

    # Update the progress bar.
    bar$update(i)
}

# Terminate the progress bar.
bar$terminate()

}
\seealso{
\code{\link{Bar}}, \code{\link{BasicBar}}, and \code{\link{BarFactory}}.
}
\section{Super class}{
\code{\link[parabar:Bar]{parabar::Bar}} -> \code{ModernBar}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-ModernBar-new}{\code{ModernBar$new()}}
\item \href{#method-ModernBar-create}{\code{ModernBar$create()}}
\item \href{#method-ModernBar-update}{\code{ModernBar$update()}}
\item \href{#method-ModernBar-terminate}{\code{ModernBar$terminate()}}
\item \href{#method-ModernBar-clone}{\code{ModernBar$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ModernBar-new"></a>}}
\if{latex}{\out{\hypertarget{method-ModernBar-new}{}}}
\subsection{Method \code{new()}}{
Create a new \code{\link{ModernBar}} object.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ModernBar$new()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
An object of class \code{\link{ModernBar}}.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ModernBar-create"></a>}}
\if{latex}{\out{\hypertarget{method-ModernBar-create}{}}}
\subsection{Method \code{create()}}{
Create a progress bar.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ModernBar$create(total, initial, ...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{total}}{The total number of times the progress bar should tick.}

\item{\code{initial}}{The starting point of the progress bar.}

\item{\code{...}}{Additional arguments for the bar creation passed to
\code{\link[progress:progress_bar]{progress::progress_bar$new()}}.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
This method returns void. The resulting bar is stored in the private
field \code{.bar}, accessible via the active binding \code{engine}. Both the
private field and the active binding are defined in the super class
\code{\link{Bar}}.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ModernBar-update"></a>}}
\if{latex}{\out{\hypertarget{method-ModernBar-update}{}}}
\subsection{Method \code{update()}}{
Update the progress bar by calling
\code{\link[progress:progress_bar]{progress::progress_bar$update()}}.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ModernBar$update(current)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{current}}{The position the progress bar should be at (e.g., 30
out of 100), usually the index in a loop.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ModernBar-terminate"></a>}}
\if{latex}{\out{\hypertarget{method-ModernBar-terminate}{}}}
\subsection{Method \code{terminate()}}{
Terminate the progress bar by calling
\code{\link[progress:progress_bar]{progress::progress_bar$terminate()}}.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ModernBar$terminate()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ModernBar-clone"></a>}}
\if{latex}{\out{\hypertarget{method-ModernBar-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ModernBar$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
