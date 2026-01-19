# scripts/render_site.R
library(publistR)

cat("Working directory:", getwd(), "\n")

# Render multiple formats of the same document
quarto::quarto_render("index.qmd", output_format = "html")
quarto::quarto_render("about.qmd", output_format = "html")
quarto::quarto_render("pipeline.qmd", output_format = "html")
quarto::quarto_render("R-packages.qmd", output_format = "html")
quarto::quarto_render("r-coding-cafe/index.qmd", output_format = "html")
quarto::quarto_render("r-coding-cafe/notes.qmd", output_format = "html")
quarto::quarto_render("r-coding-cafe/practical-info.qmd", output_format = "html")

# Set working directory to a subfolder of the repo (e.g., "reports")
setwd(file.path(Sys.getenv("GITHUB_WORKSPACE", "."), "cv"))

# Confirm path
cat("Working directory:", getwd(), "\n")


#setwd("~/GitHub/zheer.dk/cv")
publistR(
  prepend = c('::: {.content-visible when-format="html"}',
              "Below you can find all of my scientific publications. 
              This document was made using the `{publistR}` <a href='https://github.com/zheer-kejlberg/publistR'>R package</a>", 
              ":::"),
  author_names = list(
    list(family = "Al-Mashhadi", given = "Z."),
    list(family = "Al-Mashhadi", given = "Z. K.")
  ),
  ref_sections = list(
    list(title = "First authorships", 
         DOIs = c("https://doi.org/10.3389/fendo.2022.882998",# 2022 Frontiers: GLP1 vs DPP4
                  "https://doi.org/10.3389/fendo.2022.861422", # 2022 Frotniers: SGLT2 vs GLP1
                  "https://doi.org/10.1007/s11914-020-00638-8", # 2020 COR: GLD and fracture risk
                  "https://doi.org/10.21926/obm.geriatr.2002123" # 2020 OBM Geriatrics
         )),
    list(title = "Co-authorships", 
         DOIs = c("https://doi.org/10.1016/j.jacc.2020.11.059", # 2021 Rozh, JACC: Local pressure 
                  "https://doi.org/10.1016/j.jacc.2019.06.057", # 2019 Rozh, JACC: 18FDG-PET in plaques
                  "https://doi.org/10.3390/nu16193232", # 2024 Mellbye: Cafestol
                  "https://doi.org/10.1007/s12020-024-03789-1", # 2024 JSL, Endocrine. Osteoglycine
                  "https://doi.org/10.1111/dom.15220", # 2024 Veerle: SGLT2 vs DPP4
                  "https://doi.org/10.3389/fendo.2021.826997", # 2022 Viggers: Alendronate vs Denosumab
                  "https://doi.org/10.3389/fendo.2021.771426", # 2021 Viggers, Frontiers: Alendronate and T2D
                  "https://doi.org/10.1007/s11914-020-00597-0" # 2020 Viggers, COR: Exercise and bone
         )),
    list(title = "Conference abstracts",
         DOIs = c("https://doi.org/10.1530/endoabs.81.OC8.2", # 2022 ECE: SGLT2 vs GLP1
                  "al-mashhadiFractureRiskTreatment2022" # 2022 EASD: GLP1 vs DPP4
         )),
    list(title = "Works in progress",
         DOIs = c("al-mashhadiSystemicGlucocorticoidUse" # Gluco-DM
         ))
  ),
  title_italic = T,
  output_filename = "publications",
  output_format = "all",
  bib_file = "publications.bib"
)

quarto::quarto_render("cv.qmd", output_format = "html")