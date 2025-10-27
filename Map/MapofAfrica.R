#!/usr/bin/env Rscript

library(sf)
library(ggplot2)
library(rnaturalearth)
library(rnaturalearthdata)
library(dplyr)
library(readxl)

africa <- ne_countries(continent = "Africa", returnclass = "sf")

CODAfrica <- read_excel("Cause of Death AFRICA.xlsx")

CODAfrica <- CODAfrica %>%
  mutate(Entity = recode(Entity,
                         "Somaliland" = "Somalia",
                         "Eswatini" = "eSwatini",
                         "Cabo Verde" = "Cape Verde",
                         "GuineaBissau" = "Guinea-Bissau",
                         "Democratic Republic of Congo" = "Dem. Rep. Congo",
                         "Cote dIvoire" = "Côte d'Ivoire",
                         "Equatorial Guinea" = "Eq. Guinea",
                         "South Sudan" = "S. Sudan",
                         "Central African Republic" = "Central African Rep."
                         ))

africa <- ne_countries(continent = "Africa", returnclass = "sf") %>%
  mutate(name = recode(name,
                      "W. Sahara" = "Morocco",
                      "Somaliland" = "Somalia"
                      ))

hiv_2006 <- CODAfrica %>%
  filter(Year == 2006) %>%
  select(Entity, `HIV/AIDS fatalities`)

africa_hiv <- africa %>%
  left_join(hiv_2006, by = c("name" = "Entity"))
ggplot(africa_hiv) +
  geom_sf(aes(fill = `HIV/AIDS fatalities`)) +
  scale_fill_gradient(low = "lightpink", high = "darkred", labels = scales::comma) + 
  labs(
    title = "HIV/AIDS Fatalities Across African Countries (2006)",
    fill = "Fatalities"
  ) +
  theme_minimal()

savehistory("HIVMapped")