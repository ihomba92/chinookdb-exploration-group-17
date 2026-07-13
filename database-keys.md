# Database Keys Study Notes: Chinook Schema

This file contains my research on how database keys work and how they connect different tables inside the Chinook sample database.

## 1. What are Database Keys?

*   **Primary Key (PK):** This is a unique ID for a specific row in a table. Think of it like a national ID card or a student number—no two rows can have the same Primary Key, and it can never be blank (`NOT NULL`).
*   **Foreign Key (FK):** This is a column in one table that links to a Primary Key in another table. It acts as a bridge so we can join tables together. It ensures **Referential Integrity**, which just means it prevents us from having "orphaned" records (like an invoice that doesn't belong to any real customer).
*   **Composite Key:** This is a Primary Key made up of two or more columns combined together. We use this when a single column isn't enough to make a row unique, which happens a lot in junction tables that handle many-to-many relationships.

---

## 2. Common Keys Found in Chinook Tables

By looking at the Chinook database diagram, I identified these key relationships:

### Table: `Customer`
*   **Primary Key:** `CustomerId` — Uniquely identifies each customer in the system.
*   **Foreign Key:** `SupportRepId` — Points to `EmployeeId` in the `Employee` table. This tells us which employee is assigned to support this customer.

### Table: `Invoice`
*   **Primary Key:** `InvoiceId` — Uniquely identifies every individual sales receipt.
*   **Foreign Key:** `CustomerId` — Points to `CustomerId` in the `Customer` table. This connects the purchase directly to the person who bought it.

### Table: `PlaylistTrack`
*   **Composite Primary Key:** (`PlaylistId`, `TrackId`) — This is a junction table. Because a playlist can have many songs, and a song can be on many playlists, we combine both IDs to make sure we don't accidentally add the exact same song to the exact same playlist twice.

---

## 3. Handy Reminders for SQL Joins
*   When writing an `INNER JOIN`, I need to use the Foreign Key to connect the tables. For example:
    `FROM Customer INNER JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId`
*   SQLite enforces these keys, so if I try to delete a customer who has existing invoices, the database will throw a foreign key constraint error to protect the data.

---

## 4. References
*   [SQLite Tutorial: Foreign Key Constraints](https://www.sqlitetutorial.net/sqlite-foreign-key/)
*   [W3Schools: SQL Primary Key Connection](https://www.w3schools.com/sql/sql_primarykey.asp)
*   [Official SQLite Documentation](https://www.sqlite.org/foreignkeys.html)