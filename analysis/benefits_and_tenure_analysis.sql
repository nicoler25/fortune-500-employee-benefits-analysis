-- ============================================================
-- Fortune 500 Employee Benefits & Retention Analysis
-- Purpose: Analyze how employee benefits relate to retention,
--          company size, revenue, and industry trends.
-- ============================================================


-- ============================================================
-- FEATURED QUERY 1: Impact of Healthcare Benefits on Retention
-- Business Question:
-- Do companies offering healthcare benefits retain employees longer?
-- ============================================================
SELECT
    healthcare_benefits,
    ROUND(AVG(avg_employee_tenure), 2) AS avg_employee_tenure
FROM fortune_companies
GROUP BY healthcare_benefits;


-- ============================================================
-- FEATURED QUERY 2: Industry-Level Benefits & Retention Benchmarking
-- Business Question:
-- Which industries offer the most competitive benefits and retention?
-- ============================================================
SELECT
    industry,
    ROUND(AVG(paid_time_off_days), 1) AS avg_pto_days,
    ROUND(AVG(maternity_leave_weeks), 1) AS avg_maternity_leave,
    ROUND(AVG(avg_employee_tenure), 1) AS avg_employee_tenure
FROM fortune_companies
GROUP BY industry
ORDER BY avg_employee_tenure DESC;


-- ============================================================
-- FEATURED QUERY 3: Workforce Size & Benefit Scaling
-- Business Question:
-- How do employee benefits and retention scale by company size?
-- ============================================================
SELECT
    CASE
        WHEN employees < 5000 THEN 'Small'
        WHEN employees BETWEEN 5000 AND 100000 THEN 'Medium'
        ELSE 'Large'
    END AS company_size,
    ROUND(AVG(paid_time_off_days), 1) AS avg_pto_days,
    ROUND(AVG(maternity_leave_weeks), 1) AS avg_maternity_leave,
    ROUND(AVG(avg_employee_tenure), 1) AS avg_employee_tenure
FROM fortune_companies
GROUP BY company_size
ORDER BY avg_employee_tenure DESC;


-- ============================================================
-- FEATURED QUERY 4: Revenue Category vs Employee Benefits
-- Business Question:
-- Do higher-revenue companies offer more competitive benefits?
-- ============================================================
SELECT
    CASE
        WHEN revenue < 200 THEN 'Low Revenue'
        WHEN revenue BETWEEN 200 AND 400 THEN 'Mid Revenue'
        ELSE 'High Revenue'
    END AS revenue_category,
    ROUND(AVG(paid_time_off_days), 1) AS avg_pto_days,
    ROUND(AVG(maternity_leave_weeks), 1) AS avg_maternity_leave
FROM fortune_companies
GROUP BY revenue_category
ORDER BY avg_pto_days DESC;


-- ============================================================
-- FEATURED QUERY 5: Top Employers Based on Benefits & Retention
-- Business Question:
-- Which companies exceed average benchmarks across multiple metrics?
-- ============================================================
SELECT
    company_name,
    industry,
    paid_time_off_days,
    maternity_leave_weeks,
    avg_employee_tenure
FROM fortune_companies
WHERE
    paid_time_off_days > (SELECT AVG(paid_time_off_days) FROM fortune_companies)
    AND maternity_leave_weeks > (SELECT AVG(maternity_leave_weeks) FROM fortune_companies)
    AND avg_employee_tenure > (SELECT AVG(avg_employee_tenure) FROM fortune_companies)
ORDER BY avg_employee_tenure DESC;


-- ============================================================
-- FEATURED QUERY 6: Industry Retention Ranking (Window Function)
-- Business Question:
-- Which industries rank highest for employee retention?
-- ============================================================
SELECT
    industry,
    ROUND(AVG(avg_employee_tenure), 2) AS avg_employee_tenure,
    RANK() OVER (ORDER BY AVG(avg_employee_tenure) DESC) AS retention_rank
FROM fortune_companies
GROUP BY industry;
