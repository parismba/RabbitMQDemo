IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'OrderItem')
BEGIN
    CREATE TABLE dbo.OrderItem (
		orderid				INTEGER IDENTITY NOT NULL,
		itemid				INTEGER IDENTITY NOT NULL,
		productid			INTEGER NOT NULL,
		val					NUMERIC(10,7) NOT NULL,
		lastmodifieddttm	DATETIME NOT NULL,
		lastmodifieduser	INTEGER NOT NULL,
		PRIMARY KEY (orderid, itemid),
		CONSTRAINT FK_ProductOrder FOREIGN KEY (productid) REFERENCES product(productid),
		CONSTRAINT FK_UserOrderItem FOREIGN KEY (lastmodifieduser) REFERENCES users(userid)
	 )
END