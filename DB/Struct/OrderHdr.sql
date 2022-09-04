IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'OrderHdr')
BEGIN
    CREATE TABLE dbo.OrderHdr (
		orderid				INTEGER IDENTITY NOT NULL,
		patientid			INTEGER NOT NULL,
		dttm				DATETIME NOT NULL,
		lastmodifieddttm	DATETIME NOT NULL,
		lastmodifieduser	INTEGER NOT NULL,
		PRIMARY KEY (orderid),
		CONSTRAINT FK_PatientOrder FOREIGN KEY (patientID) REFERENCES patient(patientid),
		CONSTRAINT FK_UserOrder FOREIGN KEY (lastmodifieduser) REFERENCES users(userid)
	 )
END