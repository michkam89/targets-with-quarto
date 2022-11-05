library(targets)

tar_option_set(packages = c("dplyr", "tidyr", "palmerpenguins", "janitor", "stringr"))

important_cols <- c("species", 
                    "island", 
                    "stage", 
                    "culmen_length_mm", 
                    "culmen_depth_mm",
                    "flipper_length_mm", 
                    "body_mass_g",
                    "sex")

# End this file with a list of target objects.
list(
  tar_target(clean_cols, janitor::clean_names(palmerpenguins::penguins_raw)),
  tar_target(no_nas, tidyr::drop_na(clean_cols, important_cols)),
  tar_target(
    short_penguins,
    dplyr::mutate(
      no_nas,
      species = stringr::str_extract(tolower(species), ".+(?=\\spenguin)")
    )),
  tar_target(
    narrow_data, 
    dplyr::select(
      short_penguins, 
      all_of(important_cols)
      )
    ),
  tar_target(
    clean_data,
    dplyr::mutate(
      narrow_data,
      across(where(is.character), forcats::as_factor)
    )
  )
)
