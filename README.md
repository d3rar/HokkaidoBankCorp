# Hokkaido BankCorp

## Overview

Hokkaido BankCorp is a fictional Japanese bank database project designed to demonstrate SQL proficiency in data modeling, querying, and financial analysis.
The project simulates real-world banking operations including customers, accounts, and transactions to extract meaningful business insights using SQL.

## Database Structure

- The project consists of three main tables:

- Customers – Stores customer information (ID, name, city, etc.)

- Accounts – Contains account details (type, balance, linked customer ID)

- Transactions – Records all deposits, withdrawals, and timestamps

## Tools Used

- Microsoft SQL Server (SSMS)

- VsCode + MSsql extension for SQL queries

- Excel (data exports and summaries)

## SQL queries used

- JOIN operations (inner joins across multiple tables)

- GROUP BY with aggregation (SUM, COUNT, AVG)

- CASE WHEN for conditional calculations

- CTE (Common Table Expressions) for stepwise logic

- Filtering and sorting with WHERE, HAVING, and ORDER BY

- Derived metrics such as Net Flow, Total Balance per Customer, and Account Type Breakdown

## Analysis

- Query results were exported to Excel spreadsheets (one sheet per query).

- Each SQL file corresponds to its result sheet for transparency.

- Designed for potential Power BI or Tableau visualization in later stages.

## Insights Extracted

- Identified top customers by total balance

- Calculated total deposits versus withdrawals

- Determined net cash flow and final balance per client

- Aggregated balances by account type (savings and checking)

## Potential Next Steps

- Integrate with Power BI for dashboard reporting

- Add time-series analysis for monthly transaction patterns


