-- ============================================================
-- Table: fortune_companies
-- Purpose: Store Fortune 500 company data for employee benefits
--          and retention analysis
-- ============================================================

CREATE TABLE fortune_companies (
    company_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    company_name TEXT NOT NULL,
    industry TEXT NOT NULL,
    revenue NUMERIC(10,2),
    employees INTEGER,
    healthcare_benefits BOOLEAN,
    paid_time_off_days INTEGER,
    maternity_leave_weeks INTEGER,
    avg_employee_tenure NUMERIC(4,2)
);
