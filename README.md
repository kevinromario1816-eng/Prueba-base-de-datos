# Supply Chain and Inventory Management System (Riwi Supply)

This repository contains the database design and implementation for managing suppliers, purchases, products, warehouses, and inventory movements. It is designed to track product stock levels and purchase history across multiple cities.

---

##  Relational Schema (Tables)

Below are the details of the tables implemented in this database, including their Primary Keys (**PK**) and Foreign Keys (**FK**):

### 1. `riwi_city`
Stores the cities where suppliers and warehouses are located.
* `city_id` (PK) - Unique identifier for the city.
* `name` - Name of the city.

### 2. `riwi_supplier`
Contains information about the companies supplying the products.
* `supplier_id` (PK) - Unique identifier for the supplier.
* `name` - Company name.
* `contact_email` - Contact email address.
* `city_id` (FK) - City where the supplier operates.

### 3. `riwi_category`
Groups products into logical classifications.
* `category_id` (PK) - Unique identifier for the category.
* `name` - Name of the category.

### 4. `riwi_product`
The catalog of items available in the system.
* `product_id` (PK) - Unique identifier for the product.
* `name` - Name of the product.
* `price` - Unit price of the product.
* `category_id` (FK) - Category this product belongs to.

### 5. `riwi_warehouse`
Physical locations where inventory is stored.
* `warehouse_id` (PK) - Unique identifier for the warehouse.
* `name` - Name of the warehouse.
* `location` - Physical address or description.
* `city_id` (FK) - City where the warehouse is located.

### 6. `riwi_purchase`
Master record of supply orders made to suppliers.
* `purchase_id` (PK) - Unique identifier for the purchase order.
* `purchase_date` - Date when the order was placed.
* `supplier_id` (FK) - Supplier who fulfills the order.

### 7. `riwi_purchase_detail`
Line items for each purchase order (breakdown of products bought).
* `detail_id` (PK) - Unique identifier for the detail row.
* `purchase_id` (FK) - Associated purchase order.
* `product_id` (FK) - Product being purchased.
* `quantity` - Quantity bought.
* `unit_price` - Price paid per unit in this specific transaction.

### 8. `riwi_inventory_movement`
Tracks all stock changes (Inputs/Outputs) across warehouses.
* `movement_id` (PK) - Unique identifier for the stock movement.
* `product_id` (FK) - Product being moved.
* `warehouse_id` (FK) - Warehouse where the movement happens.
* `quantity` - Number of units moved.
* `movement_type` - Type of transaction (e.g., 'IN', 'OUT').
* `movement_date` - Timestamp of when the transaction occurred.

---

##  Tech Stack

* **Database Engine:** PostgreSQL / MySQL
* **Language:** SQL (DDL & DML)
* **Design Pattern:** Relational Database Management System (RDBMS)

---
Developed for advanced inventory control and data integrity.
