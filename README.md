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

## Key Analyses
- Employee retention comparison based on healthcare benefits
- Industry-level benchmarking of PTO and maternity leave
- Workforce size and revenue segmentation using CASE statements
- Identification of top-performing employers using subqueries
- Industry retention ranking using window functions

## Repository Structure
schema/
└── create_fortune_companies_table.sql   – Table creation for Fortune 500 company data

data/
└── insert_fortune_companies_data.sql    – Simulated Fortune 500 dataset with employee benefits and workforce metrics

analysis/
└── benefits_and_tenure_analysis.sql     – SQL queries analyzing employee benefits, retention, and industry trends


This structure separates database setup, data loading, and analytical queries to reflect real-world SQL project organization.

