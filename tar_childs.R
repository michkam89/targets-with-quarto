library(targets)
library(tarchetypes)



list(
  tar_target(data, "The quick brown fox jumps over the lazy dog"),
  tar_quarto_rep(
    child_reports, 
    path = "child_template.qmd", 
    execute_params = tibble::tibble(
      par = c("A", "B"), 
      output_file = c("child_report1.md", "child_report2.md"))
    )
)