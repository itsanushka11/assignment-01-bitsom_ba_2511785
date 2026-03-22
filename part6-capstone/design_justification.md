## Storage Systems

For predicting patient readmission risk, I would use a Data Warehouse because it is best suited for storing structured historical data like patient records, treatments, and outcomes. Since this data needs to be analyzed over time to train machine learning models, having it cleaned and organized in a warehouse makes the process much easier and more efficient.

To allow doctors to query patient history in plain English, I would use a Vector Database. By converting patient records into embeddings, the system can understand the meaning behind a query instead of just matching keywords. This makes it much more useful in real-world scenarios where doctors may phrase questions differently.

For generating monthly reports, such as bed occupancy and department costs, a Data Warehouse is again the best choice. It supports aggregation and trend analysis, which are essential for reporting and decision-making.

For real-time ICU vitals, I would use a Data Lake along with a streaming system. ICU devices generate continuous data, so a system that can handle high-volume, real-time ingestion is required. A data lake can store this raw data efficiently for later analysis.

---

## OLTP vs OLAP Boundary

The OLTP system includes the hospital’s day-to-day operational databases, where patient data is constantly being created and updated. These systems are designed for fast and reliable transactions, such as recording patient admissions, treatments, and billing information.

The OLAP system starts after this data is processed and moved into analytical storage like a Data Warehouse or Data Lake. This is where reporting, trend analysis, and machine learning tasks are performed. Keeping OLTP and OLAP separate ensures that heavy analytical queries do not slow down critical hospital operations.

---

## Trade-offs

One major trade-off in this design is the complexity of managing multiple systems, such as a Data Warehouse, Data Lake, Vector Database, and streaming tools. While each system serves a specific purpose, integrating and maintaining them can be challenging.

To handle this, managed cloud services and proper data pipelines can be used to reduce operational overhead. Another possible improvement is using a Lakehouse approach, which combines the benefits of both data lakes and warehouses. This can simplify the architecture while still supporting different types of workloads.