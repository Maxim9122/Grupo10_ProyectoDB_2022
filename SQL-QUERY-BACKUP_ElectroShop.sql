BACKUP DATABASE [db_electro]
TO  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\Backup\db_electro.bak' 
WITH NOFORMAT, NOINIT,  
NAME = N'db_electro-Full Database Backup', 
SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO
