library(targets)

Sys.setenv("TAR_PROJECT" = "childs")
tar_make()
Sys.setenv("TAR_PROJECT" = "final")
tar_make()
