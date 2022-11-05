# Targets with Quarto

Create `{targets}` pipeline with `Quarto` report(s) as side effect.

## Usage

Order of project execution in the flow:

1.  tar_preprocessing.R

2.  tar_modelling.R

3.  tar_reporting.R

To run each pipeline set eg. `Sys.setenv(TAR_PROJECT = "preprocessing")`. Names of projects are stored in `_targets.yaml`

To run entire flow simply run `run.R`

Quarto report properties are defined in `_quarto.yml`
