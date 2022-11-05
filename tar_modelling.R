library(targets)

# Set target-specific options such as packages.
tar_option_set(packages = "dplyr")

data <- tar_read(clean_data, store = "preprocessing_store")

list(
  tar_target(data_trim, dplyr::select(data, -stage)),
  tar_target(model, lm(species ~ ., data = data_trim))
)
