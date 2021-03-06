\name{csu_ci5x_mean}
\alias{csu_ci5x_mean}
\docType{data}
\title{
cancer registry data 
}
\description{
CI5 X data, all population grouped.   
}
\usage{data("csu_ci5x_mean")}
\format{
  A data frame with 522 observations on the following 5 variables.
  \describe{
    \item{\code{CSU_age_factor}}{age variable from 1 to 18. 1 is 0-4 years, 2 is 5-9, etc..., 17 is 80-84, 18 is 85+.} 
    \item{\code{CSU_C}}{Number of cases (incidence)}
    \item{\code{CSU_P}}{Population-year: Reference population}
    \item{\code{ci5_cancer_label}}{cancer label}
    \item{\code{ci5_cancer_code}}{cancer code}
  }
}
\details{
This dataset have been created in order to compare age specific rate with the CI5X mean directly on the age specific rate graph.
Here is the table of cancer_label and cancer_code available:
\tabular{ll}{
	Code \tab Label\cr
	1 \tab Lip, oral cavity\cr
	2 \tab Nasopharynx\cr
	3 \tab Other pharynx\cr
	4 \tab Oesophagus\cr
	5 \tab Stomach\cr
	6 \tab Colorectum\cr
	7 \tab Liver\cr
	8 \tab Gallbladder\cr
	9 \tab Pancreas\cr
	10 \tab Larynx\cr
	11 \tab Lung\cr
	12 \tab Melanoma of skin\cr
	13 \tab Mesothelioma\cr
	14 \tab Kaposi sarcoma\cr
	15 \tab Breast\cr
	16 \tab Cervix uteri\cr
	17 \tab Corpus uteri\cr
	18 \tab Ovary\cr
	19 \tab Prostate\cr
	20 \tab Testis\cr
	21 \tab Kidney\cr
	22 \tab Bladder\cr
	23 \tab Brain, nervous system\cr
	24 \tab Thyroid\cr
	25 \tab Hodgkin lymphoma\cr
	26 \tab Non-Hodgkin lymphoma\cr
	27 \tab Multiple myeloma\cr
	28 \tab Leukaemia\cr
	29 \tab All sites but skin\cr	
}

See: \code{\link{csu_ageSpecific}}
}
\source{
\url{http://ci5.iarc.fr/CI5-X/Default.aspx}
}
\seealso{
	\code{\link{csu_ageSpecific}}
}

\examples{

data(csu_registry_data_1)
test <- csu_registry_data_1[csu_registry_data_1$registry_label=="Colombia, Cali",]
csu_ageSpecific(test,
                plot_title = "Colombia, Liver, male",
                CI5_comparison = "Liver")
 
#See more examples here:
help(csu_ageSpecific)

}
\keyword{datasets}
