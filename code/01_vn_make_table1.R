here::i_am("code/01_vn_make_table1.R")

pacman::p_load(dplyr, table1)

f75_interim <- read.csv(here::here("data/f75_interim.csv"))

# Add labels to the variables
label(f75_interim$site) <- "Study Site"
label(f75_interim$agemons) <- "Age (months)"
label(f75_interim$sex) <- "Sex"
label(f75_interim$height) <- "Height (cm)"

# Create table with HTML styling for bold caption
table1 <- table1(~ site + agemons + sex + height, 
                 data = f75_interim,
                 overall = "Total",
                 caption = "<b>Table 1. Baseline Characteristics</b>")  # HTML bold tags

saveRDS(
  table1,
  file = "output/vn_table1.rds"
)
