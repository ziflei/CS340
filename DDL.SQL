/
DDL SQL
Group 99
Ivan Ruiz, Zi Lei
/

SET FOREIGN_KEY_CHECKS=0;
SET AUTOCOMMIT = 0;

... [your SQL goes here]

CREATE TABLE IF NOT EXISTS Customers (
	customer_id int(15) NOT NULL AUTO_INCREMENT,
	customer_name varchar(20) NOT NULL,
	customer_phone varchar(15),
	customer_email varchar(50),
	PRIMARY KEY (customer_id)
);

CREATE TABLE IF NOT EXISTS Order_has_bobas (
	order_id int(15) NOT NULL,
    product_id int(10),
    FOREIGN KEY (order_id)
    REFERENCES Orders(order_id),
    FOREIGN KEY (product_id)
    REFERENCES Bobas(product_id)
);

CREATE TABLE IF NOT EXISTS Orders (
	order_id int(15) NOT NULL AUTO_INCREMENT,
	customer_id int(15) NOT NULL,
	employee_id int(10) NOT NULL,
	order_date date NOT NULL,
	PRIMARY KEY (order_id),
    	FOREIGN KEY (customer_id)
    	REFERENCES Customers(customer_id),
    	FOREIGN KEY (employee_id)
    	REFERENCES Employee(employee_id)
);

SET FOREIGN_KEY_CHECKS=1;
COMMIT;
