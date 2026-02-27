# Dataset Description

## Overview

This project uses a customer marketing campaign dataset containing information on 2,240 customers. The dataset includes demographic characteristics, purchasing behaviour, website engagement metrics, and campaign response outcomes.

The objective of the analysis was to identify the factors most strongly associated with marketing campaign conversion.

---

## Target Variable

**Response**
- 1 = Customer accepted the marketing campaign offer
- 0 = Customer did not accept the offer

This variable was used to calculate overall conversion rate and segment-level conversion performance.

---

## Key Feature Categories

### Demographic Variables
- Income
- Education
- Marital Status
- Age (derived from Year of Birth)

### Purchasing Behaviour
- MntWines
- MntFruits
- MntMeatProducts
- MntFishProducts
- MntSweetProducts
- MntGoldProds

These variables were aggregated to calculate total customer spending.

### Purchase Frequency
- NumWebPurchases
- NumCatalogPurchases
- NumStorePurchases

Used to analyze the relationship between purchase history and campaign conversion.

### Website Engagement
- NumWebVisitsMonth

Used to assess whether customer engagement predicted campaign success.

---

## Data Preparation & Cleaning

- Verified total row count: 2,240 customers.
- Checked for missing values in Income (handled using segmentation that included an “Unknown” category).
- Aggregated spending variables to create customer spending groups.
- Used conditional logic (CASE statements) to create behavioral segments.

---

## Analytical Focus

The dataset was used to answer the following business questions:

- What is the overall campaign conversion rate?
- Which demographic segments convert most?
- Do high-spending customers convert at higher rates?
- Does purchase frequency predict campaign success?
- Does website engagement correlate with conversion?

---

## Summary

This dataset provides a structured view of customer behaviour, enabling segmentation analysis and identification of predictive factors influencing marketing campaign performance.