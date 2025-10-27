# Map of Africa: HIV Impact Analysis

This repository tells the story of a dark chapter in South Africa’s recent history, when HIV/AIDS swept through the population and left a profound human toll. Through data-driven visualizations, it chronicles how the epidemic unfolded, the lives it affected, and the broader context of public health at the time.

---

## Context and Insights

In the early 1990s, HIV began to spread rapidly across South Africa, initially unnoticed by much of the public. Limited access to testing, social stigma, and delayed government response allowed the virus to take hold silently.

By the mid-1990s, fatalities from HIV started to rise dramatically. The exponential increase in deaths revealed the scale of the crisis in a period where families, communities, and the healthcare system were overwhelmed. Data from this era shows South Africa as an epicenter in the region, with mortality rates rising faster than in neighboring countries.

The visualizations in this repository illustrate three key perspectives:

1. Rate of Increase of HIV-related Fatalities in South Africa
Charts the alarming surge in deaths, highlighting just how quickly the epidemic escalated.

2. A comparison of HIV Impact in South Africa vs. Other African Countries
Places South Africa in a regional context, showing how the epidemic disproportionately affected the nation relative to its neighbors.

3. HIV Fatalities vs. Other Illnesses
Compares HIV to other causes of death at the time, underscoring the unprecedented scale of the epidemic.

By the early 2000s, there are signs of a flattening or even slight dip in fatalities, which I suspect may coincide with the introduction and gradual rollout of antiretroviral therapy (ARVs). This marks the beginning of a public health response that would eventually save countless lives, even as the virus continued to pose a threat.

Through these data visualizations, we can see not just the raw numbers, but also the human story behind them. A story of suffering, resilience, and the early impact of lifesaving interventions.

---

Key outputs
- Map of HIV/AIDS fatalities across Africa (2006).
- Top-10 causes of death in South Africa (2006).
- Time series comparing HIV/AIDS fatalities to other causes in South Africa (1990–2019).

Methods
- Data ingestion from "Cause of Death AFRICA.xlsx".
- Data wrangling with the tidyverse (readxl, dplyr, tidyr).
- Spatial data via rnaturalearth and sf.
- Static visuals with ggplot2; interactive versions via plotly.
- Reproducible reports authored in R Markdown.

Key findings (summary)
- HIV/AIDS was the leading cause of death in South Africa in 2006, substantially higher than other causes.
- Time-series plots show a rapid rise in HIV-related fatalities during the 1990s and early 2000s, with signs of stabilization coinciding with early ARV rollout.
- The map highlights South Africa as the worst-affected country in Africa for 2006.

Data sources & attribution
- Cause of death dataset: "Cause of Death AFRICA.xlsx" - sourced from a comprehensive global dataset of causes of death between 1990 and 2019, originally published via Our World in Data and made available on Kaggle. 
- Country boundaries: rnaturalearth (Natural Earth).

Project structure (high level)
- Map/: map Rmd and supporting code
- Univariate/: top-10 and other single-variable analyses
- Bivariate/: time-series comparisons

---

## Usage

### Run the analysis locally

**Unix / Mac:**
```bash
chmod +x MapofAfrica.R
./MapofAfrica.R
```

**Windows:**
```bash
Rscript MapofAfrica.R
```