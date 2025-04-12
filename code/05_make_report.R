here::i_am("code/05_make_report.R")

args <- commandArgs(trailingOnly = TRUE)

table <- args[1]
figure <- args[2]

rmarkdown::render(
  here::here("report.Rmd"),
  params=list(table_run=table, figure_run=figure),
  knit_root_dir = here::here()
)
