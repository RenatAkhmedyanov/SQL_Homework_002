USE homework_002;

CREATE TABLE sales
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE NOT NULL,
    bucket INT NOT NULL
);

INSERT INTO sales (order_date, bucket)
VALUES
('2021-01-01', 123),
('2021-01-02', 158),
('2021-01-03', 95),
('2021-01-04', 250),
('2021-01-05', 379);

SELECT * FROM sales;

SELECT *,
CASE
	WHEN bucket < 100
     THEN 'Маленький заказ'
	WHEN bucket BETWEEN 100 AND 300
	 THEN 'Средний заказ'
	WHEN bucket > 300
     THEN 'Большой заказ'
 END AS size
 FROM sales;
 
 
 CREATE TABLE orders
 (
	orderid INT PRIMARY KEY AUTO_INCREMENT,
    employeeid VARCHAR(10) NOT NULL,
    amount FLOAT NOT NULL,
    orderstatus VARCHAR(10) NOT NULL
 );
 INSERT INTO orders (employeeid, amount, orderstatus)
 VALUES
 ('e03', 15.00, 'OPEN'),
 ('e01', 25.50, 'OPEN'),
 ('e05', 100.70, 'CLOSED'),
 ('e02', 22.18, 'OPEN'),
 ('e04', 9.50, 'CANCELLED'),
 ('e04', 99.99, 'OPEN');
 
 SELECT * FROM orders;
 
 SELECT orderid, orderstatus,
 CASE
	WHEN orderstatus = 'OPEN'
     THEN 'Order is in open state.'
	WHEN orderstatus = 'CLOSED'
     THEN 'Order is closed.'
	WHEN orderstatus = 'CANCELLED'
     THEN 'Order is cancelled.'
END AS order_summary
FROM orders;