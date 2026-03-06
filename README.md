# Fortune 500 Employee Benefits & Retention Analysis

## Overview
This project uses SQL to analyze employee benefits, workforce size, and employee retention trends across Fortune 500–style companies. The analysis focuses on how benefits such as healthcare coverage, paid time off, and maternity leave vary by industry, company size, and revenue level.

## Business Questions
- Do companies offering healthcare benefits retain employees longer?
- How do employee benefits vary across industries?
- Which industries have the highest average employee tenure?
- Do higher-revenue or larger companies offer more competitive benefits?

## Tools Used
- SQL (PostgreSQL)
- Relational database design
- Aggregations, filtering, and window functions

## Dataset
A simulated Fortune 500 dataset containing company revenue, workforce size, employee benefits, and average employee tenure. The dataset was designed to reflect realistic HR and workforce metrics.


- **Impact of Healthcare Benefits on Retention**  
  Compared average employee tenure between companies that offer healthcare benefits and those that do not to assess the relationship between benefits and retention.

- **Industry-Level Benefits & Retention Benchmarking**  
  Evaluated average paid time off, maternity leave duration, and employee tenure across industries to identify sectors offering the most competitive benefits.

- **Workforce Size & Benefit Scaling**  
  Segmented companies by employee count to analyze how benefits and retention trends differ between small, medium, and large organizations.

- **Revenue Category vs Employee Benefits**  
  Categorized companies into low, mid, and high revenue groups to determine whether higher-revenue organizations offer more generous benefits.

- **Top Employers Based on Benefits & Retention**  
  Identified companies that exceed overall averages for paid time off, maternity leave, and employee tenure using benchmark-based subqueries.

- **Industry Retention Ranking**  
  Ranked industries by average employee tenure using window functions to highlight sectors with the strongest employee retention.

## Repository Structure

schema/
└── create_fortune_companies_table.sql

data/
└── insert_fortune_companies_data.sql

analysis/
└── benefits_and_tenure_analysis.sql

