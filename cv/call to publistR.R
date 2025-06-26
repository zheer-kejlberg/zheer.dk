devtools::install_github("zheer-kejlberg/publistR")
library(publistR)
?publistR

setwd("~/GitHub/zheer.dk/cv")
publistR(
  author_names = list(
    list(family = "Al-Mashhadi", given = "Z."),
    list(family = "Al-Mashhadi", given = "Z. K.")
  ),
  ref_sections = list(
    list(title = "First authorships", 
         DOIs = c("https://doi.org/10.3389/fendo.2022.882998", 
                  "https://doi.org/10.3389/fendo.2022.861422",
                  "https://doi.org/10.1007/s11914-020-00638-8",
                  "https://doi.org/10.21926/obm.geriatr.2002123"
                  )),
    list(title = "Co-authorships", 
         DOIs = c("https://doi.org/10.1016/j.jacc.2020.11.059",
                  "https://doi.org/10.1016/j.jacc.2019.06.057",
                  "https://doi.org/10.3390/nu16193232",
                  "https://doi.org/10.1007/s12020-024-03789-1",
                  "https://doi.org/10.1111/dom.15220",
                  "https://doi.org/10.3389/fendo.2021.826997",
                  "https://doi.org/10.3389/fendo.2021.771426",
                  "https://doi.org/10.1007/s11914-020-00597-0"
                  )),
    list(title = "Conference abstracts",
         DOIs = c("https://doi.org/10.1530/endoabs.81.OC8.2", # 2022 Endoabs (ECE): SGLT2 vs GLP1
                  "al-mashhadiFractureRiskTreatment2022" # 2022 EASD: GLP1 vs DPP4
                  )),
    list(title = "Works in progress",
         DOIs = c("al-mashhadiSystemicGlucocorticoidUse"
                  ))
  ),
  title_italic = T,
  output_filename = "publications",
  output_format = "all",
  bib_file = "publications.bib"
)
setwd("~/GitHub/zheer.dk")