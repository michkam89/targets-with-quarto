library(targets)
library(tarchetypes)



list(
  tar_quarto(
    final_report, 
    path = "final_template.qmd", 
    extra_files = c("child_report1.md", "child_report2.md")
    )
)