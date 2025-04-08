here::i_am("code/02_vn_make_table2.R")

pacman::p_load(dplyr, tidyverse, gtsummary)

f75_interim <- read.csv(here::here("data/f75_interim.csv"))

table2 <- f75_interim %>%
  # Select and rename the relevant columns
  select(
    "MUAC Baseline" = muac,
    "MUAC Stabilization" = muac1,
    "MUAC Discharge" = muac2,
    "Weight Baseline" = weight,
    "Weight Stabilization" = weight1,
    "Weight Discharge" = weight2
  ) %>%
 
   # Create the gtsummary table
  tbl_summary(
    type = everything() ~ "continuous2",
    statistic = all_continuous() ~ c(
      "{mean} ({sd})",
      "{min}, {max}"
    ),
    digits = list(all_continuous() ~ c(2, 2, 2, 1)),
    missing = "no",
    label = list(
      "MUAC Baseline" ~ "Baseline MUAC (cm)",
      "MUAC Stabilization" ~ "Stabilization MUAC (cm)",
      "MUAC Discharge" ~ "Discharge MUAC (cm)",
      "Weight Baseline" ~ "Baseline Weight (kg)",
      "Weight Stabilization" ~ "Stabilization Weight (kg)",
      "Weight Discharge" ~ "Discharge Weight (kg)"
    )
    
  ) %>%
  # Add formatting and titles
  modify_header(
    label = "**Time Point**",
    stat_0 = "**Summary Statistics**"
  ) %>%
  modify_footnote(
    all_stat_cols() ~ "Mean (SD); Min, Max"
  ) %>%
  bold_labels() %>%
  modify_caption(
    "**Table 2. Nutritional Status Across Treatment Stages**<br>
    Mid-upper arm circumference (MUAC) and Weight Measurements at Baseline, Stabilization, and Discharge"
  )

table2

saveRDS(table2,
  file = "output/vn_table2.rds"
)






