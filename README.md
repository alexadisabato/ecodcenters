# US Counties With Data Centers Had Fewer Natural Disaster Declarations
## Overview
### This repository contains the analysis code and datasets for a county-level ecological study examining whether U.S. counties with more data centers tend to experience fewer FEMA-declared natural disasters, and whether this varies by disaster type and over time.
### Data Centers locations came from the Data_Centers_Database (FracTracker Alliance), downloaded June 5, 2026 at 3:24PM EDT. Disaster exposure was measured using FEMA disaster declaration records from 2019-2024, crosswalked to U.S. county FIPS codes. All 3,143 U.S. counties are included, with counties without data centers or disaster records encoded by a zero rather than excluded.
### The analysis moves from simple to more complex models: logistic regression to test whether having any data centers predicts every being hit by a disaster, linear regression to test whether disaster counts vary with data center presence, and negative binomial regression (MASS v7.3-65) as the primary count model given the overdispersed, right-skewed distribution of disaster counts. An interaction model tests whether the association varies by disaster type, and separate models for each year from 2019-2024 evaluate consistency over time.
### To run the analysis, open the scripts/ folder in RStudio and set your working directory to the /data folder containing the CSV files. Scripts should be run in the order they appear in the folder.
### R version 4.6.0, MASS (v7.3-65), and ggplot2 (v4.0.3) are required. All datasets are pre processed and included, so no additional data preparation needed.

### For questions, contact Dr. Clair Kronk, clair.kronk@mountsinai.org

## Data Sources
### Data center locations: Data_Centers_Database (FracTracker Alliance), downloaded June 5, 2026
### Natural disasters: FEMA disaster declaration records, 2019–2024
### County universe: U.S. Census county FIPS codes
### ZIP-to-county crosswalk: HUD-USPS
