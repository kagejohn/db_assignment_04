# Assignment 4

## Excercise 1 - user privileges

#### Arguments

##### Inventory - which is used to maintain the two tables products and productlines.

Inventory have been granted the permissions select, insert and update on products and productlines,
so that they can look up products, create new products and correct possible mistakes.

##### Bookkeeping which make sure that all orders are payed.

Bookkeeping have been granted the permission select on orders, orderdetails, payments and customers,
so that they can look up the status of orders.

##### Human resources which takes care of employees and their offices

Human resources have been granted the permissions select, insert, update and delete on employees and offices,
so that they can do everything they need to manage employees and offices.

##### Sales - who creates the orders for the customers

Sales have been granted the permissions select, insert and update on customers, orderdetails and orders,
so that they can create new orders and customers, update orders and customers, confirm the entered information

#### SQL

##### Inventory - which is used to maintain the two tables products and productlines.
```mysql
create user Inventory identified by 'cakefish';
grant select, insert, update, delete on products to Inventory;
grant select, insert, update, delete on productlines to Inventory;
```

##### Bookkeeping which make sure that all orders are payed.
```mysql
create user Bookkeeping identified by 'cakefish';
grant select on orders to Bookkeeping;
grant select on orderdetails to Bookkeeping;
grant select on payments to Bookkeeping;
grant select on customers to Bookkeeping;
```

##### Human resources which takes care of employees and their offices
```mysql
create user HumanResources identified by 'cakefish';
grant select, insert, update, delete on employees to HumanResources;
grant select, insert, update, delete on offices to HumanResources;
```

##### Sales - who creates the orders for the customers
```mysql
create user Sales identified by 'cakefish';
grant select, insert, update on customers to Sales;
grant select, insert, update on orderdetails to Sales;
grant select, insert, update on orders to Sales;
grant select, update on products to Sales;
```

## Exercise 2 - logging

#### SQL

##### Insert 2 new employees
```mysql
INSERT INTO `classicmodels`.`employees` (`employeeNumber`, `lastName`, `firstName`, `extension`, `email`, `officeCode`, `reportsTo`, `jobTitle`) VALUES (2000, 'fish1', 'cake1', 'x101', 'cfish1@classicmodelcars.com', 7, 1088, 'Sales Rep');
INSERT INTO `classicmodels`.`employees` (`employeeNumber`, `lastName`, `firstName`, `extension`, `email`, `officeCode`, `reportsTo`, `jobTitle`) VALUES (2001, 'fish2', 'cake2', 'x101', 'cfish2@classicmodelcars.com', 7, 1088, 'Sales Rep');
```

##### Insert 1 new product
```mysql
INSERT INTO `classicmodels`.`products` (`productCode`, `productName`, `productLine`, `productScale`, `productVendor`, `productDescription`, `quantityInStock`, `buyPrice`, `MSRP`) VALUES ('C1_1', 'Cake Fish', 'Classic Cars', '1:100', 'The finest cake fish', 'A disturbing combination of cake and fish', 1, 1000000, 1000001);
```

##### Create 1 new order
```mysql
INSERT INTO `classicmodels`.`customers` (`customerNumber`, `customerName`, `contactLastName`, `contactFirstName`, `phone`, `addressLine1`, `addressLine2`, `city`, `state`, `postalCode`, `country`, `salesRepEmployeeNumber`, `creditLimit`) VALUES (500, 'cake fish', 'fish', 'cake', '555 555 555 555', 'cake fish 1', '', 'CakeFish', 'FishCake', 555555, 'CakeFish', 2000, 10000000.00);
INSERT INTO `classicmodels`.`orders` (`orderNumber`, `orderDate`, `requiredDate`, `shippedDate`, `status`, `comments`, `customerNumber`) VALUES (10500, '2019-02-24', '2019-02-25', null, 'In Process', null, 500);
INSERT INTO `classicmodels`.`orderdetails` (`orderNumber`, `productCode`, `quantityOrdered`, `priceEach`, `orderLineNumber`) VALUES (10500, 'C1_1', 1, 1000001, 1);
UPDATE `classicmodels`.`products` SET `quantityInStock` = 0 WHERE `productCode` = 'C1_1';
```

#### Logs

[Log of commands can be seen here](https://github.com/kagejohn/db_assignment_04/blob/master/logs/sql_actions_MySQL_Sample_Database.log)

[Log of other things can be seen here](https://github.com/kagejohn/db_assignment_04/blob/master/logs/wb.log)

## Exercise 3 - backup and recovery

#### Method used

I have used the MySQL Workbench "Data Export" function to export the database but i can't see a way to export the privileges so they are missing.

The backup consist of SQL files
