## Anomaly Analysis

### Insert Anomaly
In the orders_flat.csv dataset, product-related fields such as `product_id`, `product_name`, `category`, and `unit_price` are stored along with order data.

For example, rows with order_id like ORD1027 and ORD1162 contain product details. However, there is no way to insert a new product unless an order exists.

This creates an insert anomaly because product information cannot be stored independently of an order.

---

### Update Anomaly
Customer details are repeated across multiple rows in the dataset.

For instance, the same `customer_id` appears in rows such as order_id = ORD1131 and ORD1025, along with repeated fields like `customer_name`, `customer_email`, and `customer_city`.

If a customer changes their email or city, multiple rows must be updated. If any row is missed, it leads to inconsistent data.

---

### Delete Anomaly
In some cases, a product appears in only one row.

For example, a row such as order_id = ORD1185 may contain the only record of a specific `product_id`.

If this row is deleted, all information about that product (name, category, price) is also lost. This results in unintended data loss, which is a delete anomaly.

---

## Normalization Justification

Although storing all data in a single table may seem convenient, it introduces redundancy and multiple types of anomalies. In the given dataset, customer, product, and order information are combined, causing repeated storage of the same data.

For example, customer details are duplicated across several rows for different orders. This not only increases storage but also creates update anomalies, where a single change must be applied in multiple places.

By normalizing the data into separate tables such as Customers, Products, Orders, and Order_Items, redundancy is reduced. Each entity is stored only once, and relationships are maintained using foreign keys. This ensures that updates are consistent and easier to manage.

Normalization also prevents delete anomalies. In a normalized design, deleting an order does not remove product or customer data, since they are stored independently.

Overall, normalization improves data integrity, reduces redundancy, and makes the database more scalable and reliable. Therefore, it is an essential design approach rather than unnecessary complexity.