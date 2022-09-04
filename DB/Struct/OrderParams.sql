IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'OrderParams')
BEGIN
    CREATE TABLE dbo.OrderParams (
		orderid				INTEGER NOT NULL,
		paramid				INTEGER NOT NULL,
		val					NUMERIC(10,7) NOT NULL,
		lastmodifieddttm	DATETIME NOT NULL,
		lastmodifieduser	INTEGER NOT NULL,
		PRIMARY KEY (orderid, paramid),
		CONSTRAINT FK_OrderParamOrder FOREIGN KEY (orderid) REFERENCES orderhdr(orderid),
		CONSTRAINT FK_ParamOrder FOREIGN KEY (paramid) REFERENCES params(paramid),
		CONSTRAINT FK_UserOrderParams FOREIGN KEY (lastmodifieduser) REFERENCES users(userid)
	 )
END