library(targets)
library(tarchetypes)

data <- tar_read(data_trim, store = "modelling_store")
model <- tar_read(model, store = "modelling_store")

values <- tidyr::expand_grid(
  species = levels(data$species)
  # island = levels(data$island)
)

# End this file with a list of target objects.
list(
  tar_target(report_template, "demo.qmd", format = "file"),
  tar_map(
    values = values, 
    tar_target(
      report, 
      quarto::quarto_render(
        input = report_template, 
        execute_params = list(
          species = species
          # island = island
        ),
        output_file = paste0(species,".html")
        )
      )
    )
  )