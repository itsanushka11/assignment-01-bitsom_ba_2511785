## ETL Decisions

### Decision 1 — Fixing Date Formats  
Problem: The dataset had dates written in different formats, like DD-MM-YYYY and MM/DD/YYYY, which could cause confusion during analysis.

Resolution: I converted all dates into a single standard format (YYYY-MM-DD) before loading them into the data warehouse. This made it easier to group and analyze data by month and year.

---

### Decision 2 — Standardizing Categories  
Problem: Product categories were written in different ways, such as "electronics", "ELECTRONICS", and "Electronics".

Resolution: I cleaned the data by converting all category values into a consistent format (proper case). This ensures accurate grouping when calculating sales by category.

---

### Decision 3 — Handling Missing Values  
Problem: Some rows had missing values in important fields like store name or product category.

Resolution: I removed rows with critical missing data or replaced values where possible. This helped maintain data quality and avoided errors during joins and analysis.