# Targets with Quarto

Create simple `{targets}` pipeline with `Quarto` report(s) as side effect. The pipeline consists of 2 projects (defined ind `_targets.yaml` config file).

## Usage

1.  Restore environment with `renv::restore()`

2.  To run entire pipeline simply run `Rscript run.R`

-   This will first trigger project `childs` that is defined in `tar_childs.R` - creates intermediate `.md` files that will be included in the final report.

-   Second will be project `final` that simply pastes both *childs* into single report.
