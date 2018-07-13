USE [master]
GO
/****** Object:  StoredProcedure [dbo].[sp_BackupDatabases]    Script Date: 7/13/2018 8:50:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[sp_BackupDatabases]  
            @databaseName sysname = null,
            @backupLocation nvarchar(200) 
AS 
  SET NOCOUNT ON; 
            DECLARE @BackupName1 varchar(100)
            DECLARE @sqlCommand NVARCHAR(1000) 
			DECLARE @dateTime NVARCHAR(20)
			Declare @backup1 varchar(200)
			Declare @dbname1 varchar(100) 
			SET @dateTime = CONVERT(VARCHAR(10), GETDATE(), 12)		       
    
	 set @dbname1='DATABASE NAME 1'  
	 SET @backup1 = @backupLocation+ @dateTime+'-'+ @dbname1 + '.bak'
	 SET @BackupName1 = @dbname1 +@dateTime
	 SET @sqlCommand = 'BACKUP DATABASE ' +@dbname1+  ' TO DISK = '''+@backup1+ ''' WITH INIT, NAME= ''' +@BackupName1+''', NOSKIP, NOFORMAT'
	 EXEC(@sqlCommand)

	 set @dbname1='DATABASE NAME 2'  
	 SET @backup1 = @backupLocation+@dateTime+'-'+ @dbname1  + '.bak'
	 SET @BackupName1 = @dbname1 +@dateTime
	 SET @sqlCommand = 'BACKUP DATABASE ' +@dbname1+  ' TO DISK = '''+@backup1+ ''' WITH INIT, NAME= ''' +@BackupName1+''', NOSKIP, NOFORMAT'
	 EXEC(@sqlCommand)

	 set @dbname1='DATABASE NAME 3'  
	 SET @backup1 = @backupLocation+@dateTime+'-'+ @dbname1  + '.bak'
	 SET @BackupName1 = @dbname1 +@dateTime
	 SET @sqlCommand = 'BACKUP DATABASE ' +@dbname1+  ' TO DISK = '''+@backup1+ ''' WITH INIT, NAME= ''' +@BackupName1+''', NOSKIP, NOFORMAT'
	 EXEC(@sqlCommand)

	 

	 set @dbname1='DATABASE NAME 4'  
	 SET @backup1 = @backupLocation+@dateTime+'-'+ @dbname1  + '.bak'
	 SET @BackupName1 = @dbname1 +@dateTime
	 SET @sqlCommand = 'BACKUP DATABASE ' +@dbname1+  ' TO DISK = '''+@backup1+ ''' WITH INIT, NAME= ''' +@BackupName1+''', NOSKIP, NOFORMAT'
	 EXEC(@sqlCommand)