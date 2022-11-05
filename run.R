library(targets)

Sys.setenv("TAR_PROJECT" = "preprocessing")
tar_make()
Sys.setenv("TAR_PROJECT" = "modelling")
tar_make()
Sys.setenv("TAR_PROJECT" = "reporting")
tar_make()
