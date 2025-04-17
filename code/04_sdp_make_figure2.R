here::i_am("code/04_sdp_make_figure2.R")

pacman::p_load(tidyverse, ggplot2)

f75_interim <- read.csv(here::here("data/f75_interim.csv"))



### pivot long data set
muac_long <- f75_interim %>%
    select(subjid, muac, muac1, muac2) %>%
    pivot_longer(cols = c(muac, muac1, muac2),
                 names_to = "stage",
                 values_to = "muac_value") %>%
    mutate(stage = recode(stage,
                          muac = "Baseline",
                          muac1 = "Stabilization",
                          muac2 = "Discharge"))

weight_long <- f75_interim %>%
    select(subjid, weight, weight1, weight2) %>%
    pivot_longer(cols = c(weight, weight1, weight2),
                 names_to = "stage",
                 values_to = "weight_value") %>%
    mutate(stage = recode(stage,
                          weight = "Baseline",
                          weight1 = "Stabilization",
                          weight2 = "Discharge"))



#### muac ####
muac_plot <- ggplot(muac_long, aes(x = stage, y = muac_value, fill = stage)) +
    geom_boxplot() +
    labs(title = "MUAC Across Treatment Stages", x = "Stage", y = "MUAC (cm)") +
    theme(legend.position = "none") +
    theme_light() +
    theme(
        plot.title = element_text(hjust = 0.5, size = 16)
    )

ggsave(
    here::here("output/barplot-muac.png"),
    plot = muac_plot,
    device = "png"
)





weight_plot <- ggplot(weight_long, aes(x = stage, y = weight_value, fill = stage)) +
    geom_boxplot() +
    labs(title = "Weight Across Treatment Stages", x = "Stage", y = "Weight (kg)") +
    theme(legend.position = "none") +
    theme_light() +
    theme(
        plot.title = element_text(hjust = 0.5, size = 16)
    )

ggsave(
    here::here("output/barplot-weight.png"),
    plot = weight_plot,
    device = "png"
)

