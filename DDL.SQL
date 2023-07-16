/
DDL SQL
Group 99
Ivan Ruiz, Zi Lei
/

SET FOREIGN_KEY_CHECKS=0;
SET AUTOCOMMIT = 0;

... [your SQL goes here]

***************************************************************
**                         Customers                         **
***************************************************************

CREATE TABLE IF NOT EXISTS Customers (
	customer_id int(15) NOT NULL AUTO_INCREMENT,
	customer_name varchar(20) NOT NULL,
	customer_phone varchar(15),
	customer_email varchar(50),
	PRIMARY KEY (customer_id)
);

***************************************************************
**                         Bobas                             **
***************************************************************

CREATE TABLE IF NOT EXISTS Bobas (
    	product_id int(10) NOT NULL AUTO_INCREMENT,
    	product_name varchar(25) NOT NULL,
    	product_price decimal(10,2),
    	PRIMARY KEY (product_id)
);


***************************************************************
**                         Employee                          **
***************************************************************

CREATE TABLE IF NOT EXISTS Employee (
    	employee_id int(10) NOT NULL AUTO_INCREMENT,
	employee_name varchar(20) NOT NULL,
    	job_title varchar(15) NOT NULL,
   	birthdate date NOT NULL,
   	salary decimal(15,2),
   	PRIMARY KEY (employee_id)
);

***************************************************************
**                    	 Order_has_bobas                     **
***************************************************************
CREATE TABLE IF NOT EXISTS Order_has_bobas (
	order_id int(15) NOT NULL,
    	product_id int(10),
    	FOREIGN KEY (order_id)
    	REFERENCES Orders(order_id),
    	FOREIGN KEY (product_id)
    	REFERENCES Bobas(product_id)
);

***************************************************************
**                         Orders                            **
***************************************************************

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

INSERT INTO Customers (customer_id, customer_name, customer_phone, customer_email)
VALUES ('1', 'Levi Cruz', '(695) 717-5798', 'levi.cruz@example.com'),
('2', 'Kelly Duncan', ,'kelly.duncan@example.com'),
('3', 'Clifford Schmidt', '(725) 868-5931', ),
('4', 'Adrian Thompson', , ),
('5', 'Terrence Stevens', '(840) 416-3086', 'terrence.stevens@example.com';

INSERT INTO Bobas (product_id, product_name, product_price)
VALUES ('6', 'Herbal Tea', 7.95),
('7', 'Tiger Sugar Boba', 8.95),
('8', 'Black Milk Tea', 6.99),
('9', 'Green Milk Tea', 6.99),
('10', 'Honey Lemon Tea', 5.99);

INSERT INTO Employee (employee_id, employee_name, job_title, birthdate, salary)
VALUES ('001', 'Constance Fowler', 'Barista', 1945-01-03, 12345),
('002', 'Luke Smith', 'Lead Barista', 1967-01-06, 23456),
(),
(),
();

INSERT INTO Order_has_bobas (order_id, product_id)
VALUES (),
(),
(),
(),
();

INSERT INTO Orders (order_id, customer_id, employee_id, order_date)
VALUES (),
(),
(),
(),
();

SET FOREIGN_KEY_CHECKS=1;
COMMIT;
