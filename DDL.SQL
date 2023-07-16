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

CREATE TABLE IF NOT EXISTS Customers (
	customer_id int(15) NOT NULL AUTO_INCREMENT,
  customer_name varchar(20) NOT NULL,
  customer_phone varchar(15),
  customer_email varchar(50),
  PRIMARY KEY (customer_id)
);

SET FOREIGN_KEY_CHECKS=1;
COMMIT;
