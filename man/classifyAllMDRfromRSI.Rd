% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/classifyMDR.R
\name{classifyAllMDRfromRSI}
\alias{classifyAllMDRfromRSI}
\title{Classify the multi-drug resistance for multiple samples}
\usage{
classifyAllMDRfromRSI(RSI_table, total_cat)
}
\arguments{
\item{RSI_table}{A list with each row representing each
sample IDs and one of the columns is the string of
drugs that the sample resistant.}

\item{total_cat}{The integer number of total antimicrobial category of species.
mode is set to "complete" by default.
If all antimicrobial agents are tested and given,then use "complete" mode.
Otherwise, use "partial" mode to generate reasonable MDR categories.}
}
\value{
Returns a dataframe with each row name representing the sample ID and its
column representing the MDR category.
}
\description{
A function that classify the multi-drug resistances of all samples in the csv file
given the all drug resistances information from RGI prediction. The number of antimicrobial
agents tested determines which version of the multi-drug resistance category to use.
If all antimicrobial agents are tested and given,then use the criteria given by ECDC.
Otherwise, we use more specific criteria by subdividing ECDC criteria to generate reasonable MDR categories.
}
\examples{
# Example 6
# Using RSI_table dataset available with package
#classify the category of all samples' multi-drug resistance
resultsExample6 <- classifyAllMDRfromRSI(RSI_table = RSI_table, total_cat = 8)
# To obtain value from results
resultsExample6

}
\references{

}
