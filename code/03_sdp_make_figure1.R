here::i_am("code/03_sdp_make_figure1.R")

pacman::p_load(ggplot2)

f75_interim <- read.csv(here::here("data/f75_interim.csv"))

##### Study Site  ####
studysite_plot <- ggplot(f75_interim, aes(x = site, fill = site)) +
    geom_bar(aes(y = ..count../sum(..count..))) +
    scale_y_continuous(labels = scales::percent) +
    labs(title = "Study Site Distribution", x = "Site", y = "Proportion") +
    theme_light() +
    theme(
        plot.title = element_text(hjust = 0.5, size = 16)
    )

ggsave(
    here::here("output/barplot-study_site.png"),
    plot = studysite_plot,
    device = "png"
)






##### Sex  ####
sex_plot <- ggplot(f75_interim, aes(x = sex, fill = sex)) +
    geom_bar(aes(y = ..count../sum(..count..))) +
    scale_y_continuous(labels = scales::percent) +
    labs(title = "Sex Distribution", x = "Sex", y = "Proportion") +
    theme_light() +
    theme(
        plot.title = element_text(hjust = 0.5, size = 16)
    )

ggsave(
    here::here("output/barplot-age.png"),
    plot = sex_plot,
    device = "png"
)






##### Age   ####
age_plot <- ggplot(f75_interim, aes(y = agemons)) +
    geom_boxplot(fill = "#9ecae1") +
    labs(title = "Age Distribution", y = "Age (months)") +
    theme_light() +
    theme(
        plot.title = element_text(hjust = 0.5, size = 16)
    )

ggsave(
    here::here("output/boxplot-age.png"),
    plot = age_plot,
    device = "png"
)






##### Height   ####
height_plot <- ggplot(f75_interim, aes(y = height)) +
    geom_boxplot(fill = "#fdae6b") +
    labs(title = "Height Distribution", y = "Height (cm)") +
    theme_light() +
    theme(
        plot.title = element_text(hjust = 0.5, size = 16)
    )


ggsave(
    here::here("output/boxplot-height.png"),
    plot = height_plot,
    device = "png"
)



