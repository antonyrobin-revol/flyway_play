GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CmnFormDetails]') AND [TYPE] IN (N'U'))
BEGIN
	CREATE TABLE [dbo].[CmnFormDetails](
		FormID INT NOT NULL,
		Name NVARCHAR(100) NOT NULL, 
		DisplayName NVARCHAR(200) NOT NULL,
		FormPath NVARCHAR(500) NULL, 
		MainMenu1 INT NULL, 
		MainMenu2 INT NULL, 
		MainMenu3 INT NULL, 
		ModuleID INT NOT NULL, 
		MainMenuOrder INT NULL, 
		SubMenuOrder INT NULL, 
		TableName SYSNAME NULL,
		KeyColumn SYSNAME NULL,
		FormType INT NOT NULL CONSTRAINT [DF_CmnFormDetails_FormType] DEFAULT (0),  
		FormIcon NVARCHAR(50) NOT NULL, 
		AuditTrail BIT NOT NULL CONSTRAINT [DF_CmnFormDetails_AuditTrail] DEFAULT (0),
		PageOrientation INT NULL,
		FormEvents NVARCHAR(MAX) NULL,
		IsMobileMenu BIT NOT NULL CONSTRAINT [DF_CmnFormDetails_IsMobileMenu] DEFAULT 1,
		IsOfflineSave BIT NULL,
		IsFooter BIT NULL,
		IsMainPage BIT NULL,
		CompanyID INT NULL,
		ModifiedDateGMT DATETIME NULL,
		CreatedBy INT NOT NULL, 
		CreatedDate DATETIME NOT NULL CONSTRAINT [DF_CmnFormDetails_CreatedDate] DEFAULT (GETUTCDATE()),
		ModifiedBy INT NOT NULL, 
		ModifiedDate DATETIME NOT NULL CONSTRAINT [DF_CmnFormDetails_ModifiedDate] DEFAULT (GETUTCDATE()),
		IsDeleted BIT NOT NULL CONSTRAINT [DF_CmnFormDetails_IsDeleted] DEFAULT (0),
		DeletedBy INT NULL,
		DeletedDate DATETIME NULL,
		DeletedReason NVARCHAR(4000) NULL,
		CONSTRAINT [PK_CmnFormDetails] PRIMARY KEY CLUSTERED (FormID)
			WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
		) ON [PRIMARY]
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CmnFormDetails]') AND name = N'IDX_CmnFormDetails')
	CREATE NONCLUSTERED INDEX [IDX_CmnFormDetails] ON [dbo].[CmnFormDetails](ModuleID ASC, MainMenu1 ASC, Name ASC)
GO

SET ANSI_PADDING OFF
GO


IF NOT EXISTS( SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CmnFormDetails' AND COLUMN_NAME = 'FormEvents')
BEGIN
	ALTER TABLE CmnFormDetails ADD FormEvents NVARCHAR(MAX) NULL;	
END
GO

IF NOT EXISTS( SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CmnFormDetails' AND COLUMN_NAME = 'IsMobileMenu')
BEGIN
	ALTER TABLE CmnFormDetails ADD IsMobileMenu BIT NOT NULL CONSTRAINT [DF_CmnFormDetails_IsMobileMenu] DEFAULT 1;	
END
GO

IF NOT EXISTS( SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CmnFormDetails' AND COLUMN_NAME = 'IsOfflineSave')
BEGIN
	ALTER TABLE CmnFormDetails ADD IsOfflineSave BIT NULL;	
END
GO

IF NOT EXISTS( SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CmnFormDetails' AND COLUMN_NAME = 'ModifiedDateGMT')
BEGIN
	ALTER TABLE CmnFormDetails ADD ModifiedDateGMT DATETIME NULL;	
END
GO

IF NOT EXISTS( SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CmnFormDetails' AND COLUMN_NAME = 'CompanyID')
BEGIN
	ALTER TABLE CmnFormDetails ADD CompanyID INT NULL;	
END
GO

IF NOT EXISTS( SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CmnFormDetails' AND COLUMN_NAME = 'DeletedReason')
BEGIN
	ALTER TABLE CmnFormDetails ADD DeletedReason NVARCHAR(4000) NULL;	
END
GO

IF NOT EXISTS( SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CmnFormDetails' AND COLUMN_NAME = 'IsFooter')
BEGIN
	ALTER TABLE CmnFormDetails ADD IsFooter BIT NULL;	
END
GO

IF NOT EXISTS( SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CmnFormDetails' AND COLUMN_NAME = 'IsMainPage')
BEGIN
	ALTER TABLE CmnFormDetails ADD IsMainPage BIT NULL;	
END
GO

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CmnFormTabs]') AND [TYPE] IN (N'U'))
BEGIN
	CREATE TABLE [dbo].[CmnFormTabs](
		TabID INT IDENTITY(1, 1) NOT NULL,
		FormID INT NOT NULL,
		Name NVARCHAR(100) NOT NULL,
		DisplayName NVARCHAR(100) NULL,
		TabOrder SMALLINT NOT NULL,
		IsMandatory BIT NOT NULL,
		TableName SYSNAME NULL,
		KeyColumn VARCHAR(255) NULL,
		IsMobile BIT NOT NULL DEFAULT 1,
		IsStatic BIT NULL,
		Description NVARCHAR(MAX) NULL,
		ModifiedDate DATETIME NOT NULL,
		IsDeleted BIT NOT NULL CONSTRAINT [DF_CmnFormTabs_IsDeleted] DEFAULT ((0)),
		CONSTRAINT FK_CmnFormTabs FOREIGN KEY (FormID) REFERENCES CmnFormDetails(FormID),  
		CONSTRAINT [PK_CmnFormTabs] PRIMARY KEY CLUSTERED (TabID ASC)
			WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CmnFormTabs]') AND name = N'IDX_CmnFormTabs')
	CREATE NONCLUSTERED INDEX [IDX_CmnFormTabs] ON [dbo].[CmnFormTabs](FormID ASC, Name ASC)
GO

SET ANSI_PADDING OFF
GO

IF NOT EXISTS( SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CmnFormTabs' AND  COLUMN_NAME = 'DisplayName')
BEGIN
	ALTER TABLE CmnFormTabs ADD DisplayName NVARCHAR(100) NULL;	
END
GO

IF NOT EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CmnFormTabs' AND COLUMN_NAME = 'IsMobile')
BEGIN
	ALTER TABLE CmnFormTabs ADD IsMobile BIT NOT NULL DEFAULT 1;	
END
GO

IF NOT EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CmnFormTabs' AND COLUMN_NAME = 'IsStatic')
BEGIN
	ALTER TABLE CmnFormTabs ADD IsStatic BIT NULL;	
END
GO

IF NOT EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CmnFormTabs' AND COLUMN_NAME = 'Description')
BEGIN
	ALTER TABLE CmnFormTabs ADD Description NVARCHAR(MAX) NULL;	
END
GO


IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CmnFormDetails]') AND name = N'IDX_CmnFormDetailsMain')
	CREATE NONCLUSTERED INDEX [IDX_CmnFormDetailsMain] ON [dbo].[CmnFormDetails](MainMenu1, IsDeleted)
GO

/*=========================
03-Apr-2025 START
=========================*/
SET NOCOUNT ON
SET QUOTED_IDENTIFIER ON
DECLARE @UserID BIGINT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID)
DECLARE @UTCTime DATETIME = GETUTCDATE(),
	@FormID NVARCHAR(500),
    @Name NVARCHAR(500),
	@DisplayName NVARCHAR(500),
	@ParentMenu NVARCHAR(500),
	@MenuOrder NVARCHAR(500),
	@FormType NVARCHAR(500),
	@ModuleID NVARCHAR(500),
	@AuditTrail NVARCHAR(500),
	@TableName NVARCHAR(500),
	@KeyColumn NVARCHAR(500),
	@FormIcon NVARCHAR(500),
	@FormPath NVARCHAR(500),
	@Max INT
DECLARE @ObjectName NVARCHAR(100) = 'Static QueryBuilder_Form_Insert_03-Apr-2025'
DECLARE @MainMenuOrder BIGINT, @SubMenuOrder BIGINT, @MainMenu1 BIGINT

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	SET @FormID = ISNULL((SELECT MAX(FormID) FROM CmnFormDetails), 0) + 1;
	SET @Name = N'Query Builder';
	SET @DisplayName = N'Query Builder';
	SET @MainMenu1 = NULL;
	SET @MainMenuOrder = ISNULL((SELECT MAX(MainMenuOrder) FROM CmnFormDetails), 0) + 1;
	SET @SubMenuOrder = 0;
	SET @FormType = 7;
	SET @ModuleID = 4;
	SET @AuditTrail = 0;
	SET @TableName = NULL;
	SET @KeyColumn = NULL;
	SET @FormIcon = N'fa-database';
	SET @FormPath = N'query-builder';
	SET @Max = 0;

	IF EXISTS (SELECT 1 FROM CmnFormDetails WHERE Name = @Name AND IsDeleted = 0)
	BEGIN
		SET @FormID = ISNULL((SELECT TOP 1 FormID FROM CmnFormDetails WHERE Name = @Name AND IsDeleted = 0), 0);
	END
	ELSE
	BEGIN
		SELECT @Max = ISNULL(MAX(FormID), 0) FROM CmnFormDetails;
		SET @FormID = @Max + 1;
	END

	IF NOT EXISTS (SELECT 1 FROM CmnFormDetails WHERE Name = @Name)
	BEGIN
	INSERT INTO CmnFormDetails (FormPath,MainMenuOrder,SubMenuOrder,MainMenu1,FormType,
		FormID, Name, DisplayName, ModuleID, AuditTrail, TableName, KeyColumn, FormIcon,
		IsDeleted, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsMainPage)
	SELECT @FormPath,@MainMenuOrder,@SubMenuOrder,@MainMenu1,@FormType,
		@FormID, @Name, @DisplayName, @ModuleID, @AuditTrail, @TableName, @KeyColumn, @FormIcon,
		0, @UserID, @UTCTime, @UserID, @UTCTime, 0
	END

	IF NOT EXISTS (SELECT 1 FROM CmnFormTabs WHERE FormID = @FormID AND Name = @Name AND ISNULL(IsDeleted, 0) = 0)
	BEGIN
	INSERT INTO CmnFormTabs (FormID, Name, DisplayName, TabOrder, IsMandatory, TableName, KeyColumn, ModifiedDate, IsDeleted)
	VALUES (@FormID, @Name, @DisplayName, 1, 1, '', '', GETUTCDATE(), 0)
	END

	INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
	VALUES(@ObjectName, 'Static QueryBuilder_Form_Insert_03-Apr-2025', @UTCTime)
END
GO

/*=========================
03-Apr-2025 STOP
=========================*/

/*=========================
17-Jun-2025 START
==========================*/
SET NOCOUNT ON;
DECLARE @UserID INT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID),
        @UTCTime DATETIME = GETUTCDATE(),
        @ObjectName NVARCHAR(100) = 'CmnFormDetails_QueryBuilder_IsMainPage_Update_17-Jun-2025'

IF NOT EXISTS(SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
    -- Updated: Set IsMainPage = 0 for 'Query Builder' form
    UPDATE CmnFormDetails
    SET IsMainPage = 0
    WHERE Name = 'Query Builder';

    INSERT INTO CmnInstalledScriptHistory (ObjectName, [Description], InstalledDate)
    VALUES (@ObjectName, 'Updated IsMainPage to 0 where Name = ''Query Builder'' in CmnFormDetails', @UTCTime)
END
GO
/*=========================
17-Jun-2025 END
==========================*/