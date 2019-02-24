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
