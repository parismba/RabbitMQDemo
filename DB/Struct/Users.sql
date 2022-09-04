IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'users')
BEGIN
    CREATE TABLE dbo.users (
		userid				INTEGER IDENTITY NOT NULL,
		username			VARCHAR(30) NOT NULL
		PRIMARY KEY (userid)
	 )
END