GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CmnUserDetails]') AND [TYPE] IN (N'U'))
BEGIN
	CREATE TABLE [dbo].[CmnUserDetails](
		UserID INT IDENTITY(1, 1) NOT NULL,
		[Type] INT NOT NULL, 
		TypeID INT NOT NULL, 
		Username NVARCHAR(100) NOT NULL,
		[Password] NVARCHAR(200) NOT NULL,
		RoleID VARCHAR(100) NOT NULL, 
		LoginAttempt INT NOT NULL CONSTRAINT [DF_CmnUserDetails_LoginAttempt] DEFAULT ((0)),
		IsLocked BIT NOT NULL CONSTRAINT [DF_CmnUserDetails_IsLocked] DEFAULT ((0)),
		LicenseType INT NULL, 
		AuthenticationType INT NULL,
		OnlineUser BIT NULL,
		ProfileID INT NULL CONSTRAINT [DF_CmnUserDetails_ProfileID] DEFAULT ((0)),
		ThemesID INT NULL CONSTRAINT [DF_CmnUserDetails_ThemesID] DEFAULT ((0)),
		FontType INT NULL CONSTRAINT [DF_CmnUserDetails_FontType] DEFAULT ((0)),
		MenuType INT NULL CONSTRAINT [DF_CmnUserDetails_MenuType] DEFAULT ((0)),
		MenuBar BIT NULL DEFAULT 0,
		BarcodePrinterID INT NULL CONSTRAINT [DF_CmnUserDetails_BarcodePrinterID] DEFAULT ((0)),
		COAPrinterID INT NULL CONSTRAINT [DF_CmnUserDetails_COAPrinterID] DEFAULT ((0)),
		ProfileOrientation INT NULL,
		UserParentID INT NULL,
		AccessTypeID INT NULL,
		PageOrientation INT NULL,
		ThemeMode INT NULL,
		SearchType INT NULL,
		ModuleBarRequired INT NULL,
		RememberSearch INT NULL,
		RBSGroupIDs VARCHAR(100) NULL,
		NotActiveReason NVARCHAR(2000) NULL,
		DeleteReason NVARCHAR(2000) NULL,
		NotActiveDate DATE NULL,
		CompanyID INT NULL,
		CreatedBy INT NOT NULL,
		CreatedDate DATETIME NOT NULL CONSTRAINT [DF_CmnUserDetails_CreatedDate] DEFAULT (GETUTCDATE()),
		CreatedDateGMT DATETIME NOT NULL, 
		ModifiedBy INT NOT NULL, 
		ModifiedDate DATETIME NOT NULL CONSTRAINT [DF_CmnUserDetails_ModifiedDate] DEFAULT (GETUTCDATE()),
		ModifiedDateGMT DATETIME NOT NULL,
		IsDeleted BIT NOT NULL CONSTRAINT [DF_CmnUserDetails_IsDeleted] DEFAULT (0),
		DeletedBy INT NULL,
		DeletedDate DATETIME NULL,
		DeletedDateGMT DATETIME NULL,
		NotActive BIT NOT NULL DEFAULT 0,
		OrderBy INT NOT NULL,
		ERPID VARCHAR(25) NULL,
		ResetPassword INT NULL CONSTRAINT [DF_CmnUserDetails_ResetPassword] DEFAULT (1),
		PasswordUpdatedDate DATETIME NOT NULL CONSTRAINT [DF_CmnUserDetails_PasswordUpdatedDate] DEFAULT (GETUTCDATE()),
		MainPageID INT NOT NULL CONSTRAINT [DF_CmnUserDetails_MainPageID] DEFAULT (1)
		CONSTRAINT [PK_CmnUserDetails] PRIMARY KEY CLUSTERED (UserID ASC)
			WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CmnUserDetails]') AND name = N'IDX_CmnUserDetails')
	CREATE NONCLUSTERED INDEX [IDX_CmnUserDetails] ON [dbo].[CmnUserDetails]([Type] ASC, TypeID ASC)
GO

SET ANSI_PADDING OFF
GO

IF NOT EXISTS( SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CmnUserDetails' AND  COLUMN_NAME = 'IsDeleted')
BEGIN
	ALTER TABLE CmnUserDetails ADD IsDeleted BIT NOT NULL DEFAULT 0;	
END
GO

IF NOT EXISTS( SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CmnUserDetails' AND  COLUMN_NAME = 'DeletedBy')
BEGIN
	ALTER TABLE CmnUserDetails ADD DeletedBy INT NULL;	
END
GO

IF NOT EXISTS( SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CmnUserDetails' AND  COLUMN_NAME = 'DeletedDate')
BEGIN
	ALTER TABLE CmnUserDetails ADD DeletedDate DATETIME NULL;	
END
GO

IF NOT EXISTS( SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CmnUserDetails' AND  COLUMN_NAME = 'DeletedDateGMT')
BEGIN
	ALTER TABLE CmnUserDetails ADD DeletedDateGMT DATETIME NULL;	
END
GO

IF OBJECT_ID('dbo.[UK_CmnUserDetailsUsername]', 'C') IS NOT NULL 
	ALTER TABLE CmnUserDetails DROP CONSTRAINT UK_CmnUserDetailsUsername;  
GO

IF NOT EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CmnUserDetails' AND COLUMN_NAME = 'ResetPassword')
BEGIN
	ALTER TABLE CmnUserDetails ADD ResetPassword INT NULL CONSTRAINT [DF_CmnUserDetails_ResetPassword] DEFAULT (1);
END
GO

IF NOT EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CmnUserDetails' AND COLUMN_NAME = 'PasswordUpdatedDate')
BEGIN
	ALTER TABLE CmnUserDetails ADD PasswordUpdatedDate DATETIME NOT NULL CONSTRAINT [DF_CmnUserDetails_PasswordUpdatedDate] DEFAULT (GETUTCDATE());
END
GO

IF NOT EXISTS( SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CmnUserDetails' AND  COLUMN_NAME = 'MainPageID')
BEGIN
	ALTER TABLE CmnUserDetails ADD MainPageID INT NOT NULL CONSTRAINT [DF_CmnUserDetails_MainPageID] DEFAULT (1);	
END
GO

IF NOT EXISTS( SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CmnUserDetails' AND  COLUMN_NAME = 'CompanyID')
BEGIN
	ALTER TABLE CmnUserDetails ADD CompanyID INT NULL;	
END
GO

IF NOT EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CmnUserDetails' AND  COLUMN_NAME = 'AccessTypeID')
BEGIN
	ALTER TABLE CmnUserDetails ADD AccessTypeID INT NULL;	
END
GO

IF NOT EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CmnUserDetails' AND  COLUMN_NAME = 'NotActive')
BEGIN
	ALTER TABLE CmnUserDetails ADD NotActive BIT NOT NULL DEFAULT 0;
END
GO

IF NOT EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CmnUserDetails' AND  COLUMN_NAME = 'PageOrientation')
BEGIN
	ALTER TABLE CmnUserDetails ADD PageOrientation INT NULL;	
END
GO

IF NOT EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CmnUserDetails' AND  COLUMN_NAME = 'ThemeMode')
BEGIN
	ALTER TABLE CmnUserDetails ADD ThemeMode INT NULL;	
END
GO

IF NOT EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CmnUserDetails' AND  COLUMN_NAME = 'SearchType')
BEGIN
	ALTER TABLE CmnUserDetails ADD SearchType INT NULL;	
END
GO

IF NOT EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CmnUserDetails' AND  COLUMN_NAME = 'ModuleBarRequired')
BEGIN
	ALTER TABLE CmnUserDetails ADD ModuleBarRequired INT NULL;	
END
GO

IF NOT EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CmnUserDetails' AND  COLUMN_NAME = 'RememberSearch')
BEGIN
	ALTER TABLE CmnUserDetails ADD RememberSearch INT NULL;	
END
GO

IF EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CmnUserDetails' AND  COLUMN_NAME = 'RoleID' AND DATA_TYPE <> 'VARCHAR')
BEGIN
	IF EXISTS (SELECT 1 FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CmnUserDetails]') AND name = N'IDX_CmnUserDetails')
	BEGIN
		DROP INDEX IDX_CmnUserDetails ON CmnUserDetails;
		CREATE NONCLUSTERED INDEX IDX_CmnUserDetails
			ON [dbo].[CmnUserDetails] ([Type],[TypeID],[UserName],[LicenseType])
	END
	IF EXISTS (SELECT 1 FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CmnUserDetails]') AND name = N'IDX_FC_CmnUserDetails')
	BEGIN
		DROP INDEX IDX_FC_CmnUserDetails ON CmnUserDetails;
		CREATE NONCLUSTERED INDEX IDX_FC_CmnUserDetails   
			ON [dbo].[CmnUserDetails] ([IsDeleted], [NotActive], [LicenseType], [Type], [TypeID], [UserName])
	END
	ALTER TABLE CmnUserDetails ALTER COLUMN RoleID VARCHAR(100) NULL;	
END
GO

IF NOT EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CmnUserDetails' AND  COLUMN_NAME = 'RBSGroupIDs')
BEGIN
	ALTER TABLE CmnUserDetails ADD RBSGroupIDs VARCHAR(100) NULL;	
END
GO

IF NOT EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CmnUserDetails' AND  COLUMN_NAME = 'NotActiveReason')
BEGIN
	ALTER TABLE CmnUserDetails ADD NotActiveReason NVARCHAR(2000) NULL;	
END
GO

IF NOT EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CmnUserDetails' AND  COLUMN_NAME = 'DeleteReason')
BEGIN
	ALTER TABLE CmnUserDetails ADD DeleteReason NVARCHAR(2000) NULL;	
END
GO

IF NOT EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CmnUserDetails' AND  COLUMN_NAME = 'NotActiveDate')
BEGIN
	ALTER TABLE CmnUserDetails ADD NotActiveDate DATE NULL;	
END
GO

IF EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CmnUserDetails' AND COLUMN_NAME = 'NotActive' AND COLUMN_DEFAULT IS NULL)
BEGIN
    -- Update NotActive as 0
    UPDATE CmnUserDetails
    SET NotActive = 0
    WHERE NotActive IS NULL;

    -- Alter column to set not null
    ALTER TABLE CmnUserDetails
    ALTER COLUMN NotActive BIT NOT NULL;

    -- Add default constraint
    ALTER TABLE CmnUserDetails
    ADD CONSTRAINT DF_CmnUserDetails_NotActive DEFAULT 0 FOR NotActive;
END
GO

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CmnInstalledScriptHistory]') AND [TYPE] IN (N'U'))
BEGIN
	CREATE TABLE [dbo].[CmnInstalledScriptHistory](
		ObjectName NVARCHAR(100) NOT NULL,
		[Description]	NVARCHAR(1000) NOT NULL,
		InstalledDate DATETIME NOT NULL,
		CONSTRAINT [PK_CmnInstalledScriptHistory] PRIMARY KEY CLUSTERED (ObjectName)
			WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
		)ON [PRIMARY]
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CmnInstalledScriptHistory]') AND name = N'IDX_CmnInstalledScriptHistory')
	CREATE NONCLUSTERED INDEX [IDX_CmnInstalledScriptHistory] ON [dbo].[CmnInstalledScriptHistory](InstalledDate DESC)
GO

SET ANSI_PADDING OFF
GO

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CmnCodeMaster]') AND [TYPE] IN (N'U'))
BEGIN
	CREATE TABLE [dbo].[CmnCodeMaster](
		ReferenceID BIGINT IDENTITY(1, 1) NOT NULL, 
		CodemasterID INT NOT NULL, 
		DisplayType NVARCHAR(100) NOT NULL,
		[Type] NVARCHAR(50) NOT NULL, 
		TypeValues NVARCHAR(100) NOT NULL, 
		Code VARCHAR(200) NULL, 
		[Description] NVARCHAR(1000) NULL, 
		Remarks NVARCHAR(1000) NULL, 
		ModuleID INT NULL,
		Category NVARCHAR(400) NULL, 
		UserAccess SMALLINT NOT NULL,
		ImagePath NVARCHAR(500) NULL,  
		Details NVARCHAR(1000) NULL, 
		MenuID VARCHAR(200) NULL, 
		MenuCategory NVARCHAR(500) NULL,
		ButtonKeyColumn VARCHAR(100) NULL, 
		AvailableStatus VARCHAR(100) NULL,
		SubType BIT NULL DEFAULT 0,
		ButtonTriggerEvent VARCHAR(500) NULL,
		ButtonCategory BIT NULL DEFAULT 0,
		ButtonType INT NULL,
		VisibleTabs VARCHAR(100) NULL,
		DisableTabs VARCHAR(100) NULL,
		IsMultipleApproval BIT NULL DEFAULT 0,
		IsDml BIT NULL DEFAULT 1,
		CompanyID INT NULL,
		CreatedBy INT NOT NULL,
		CreatedDate DATETIME NOT NULL CONSTRAINT [DF_CmnCodeMaster_CreatedDate] DEFAULT (GETUTCDATE()),
		CreatedDateGMT DATETIME NOT NULL,
		ModifiedBy INT NOT NULL, 
		ModifiedDate DATETIME NOT NULL CONSTRAINT [DF_CmnCodeMaster_ModifiedDate] DEFAULT (GETUTCDATE()),
		ModifiedDateGMT DATETIME NOT NULL,
		NotActive BIT NOT NULL CONSTRAINT [DF_CmnCodeMaster_NotActive] DEFAULT (0),
		NotActiveDate DATETIME NULL,
		NotActiveDateGMT DATETIME NULL,
		NotActiveReason NVARCHAR(100) NULL, 
		IsDeleted BIT NOT NULL CONSTRAINT [DF_CmnCodeMaster_IsDeleted] DEFAULT (0),
		DeletedBy INT NULL,
		DeletedDate DATETIME NULL,
		DeletedDateGMT DATETIME NULL,
		DeleteReason NVARCHAR(100) NULL,
		IsCurrentVersion BIT NOT NULL CONSTRAINT [DF_CmnCodeMaster_IsCurrentVersion] DEFAULT (1),
		[Version] INT NOT NULL CONSTRAINT [DF_CmnCodeMaster_Version] DEFAULT (1), 
		VersionID INT NULL,
		OrderBy INT NOT NULL,
		ERPID VARCHAR(25) NULL,  	
		CONSTRAINT [PK_CmnCodeMaster] PRIMARY KEY CLUSTERED ([Type] ASC, CodemasterID ASC)
			WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
		) ON [PRIMARY]
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CmnCodeMaster]') AND name = N'IDX_CmnCodeMasterValue')
	CREATE NONCLUSTERED INDEX [IDX_CmnCodeMasterValue] ON [dbo].[CmnCodeMaster]([Type] ASC, TypeValues ASC)
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CmnCodeMaster]') AND name = N'IDX_CmnCodeMasterCode')
	CREATE NONCLUSTERED INDEX [IDX_CmnCodeMasterCode] ON [dbo].[CmnCodeMaster]([Type] ASC, Code ASC)
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CmnCodeMaster]') AND name = N'IDX_CmnCodeMasterCategory')
	CREATE NONCLUSTERED INDEX [IDX_CmnCodeMasterCategory] ON [dbo].[CmnCodeMaster]([Type] ASC, Category ASC)
GO

SET ANSI_PADDING OFF
GO

IF NOT EXISTS( SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CmnCodeMaster' AND  COLUMN_NAME = 'SubType')
BEGIN
	ALTER TABLE CmnCodeMaster ADD SubType BIT NULL DEFAULT 0;	
END
GO

IF NOT EXISTS( SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CmnCodeMaster' AND  COLUMN_NAME = 'ButtonCategory')
BEGIN
	ALTER TABLE CmnCodeMaster ADD ButtonCategory BIT NULL DEFAULT 0;	
END
GO

IF NOT EXISTS( SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CmnCodeMaster' AND  COLUMN_NAME = 'ButtonType')
BEGIN
	ALTER TABLE CmnCodeMaster ADD ButtonType INT NULL;	
END
GO

IF NOT EXISTS( SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CmnCodeMaster' AND  COLUMN_NAME = 'ButtonTriggerEvent')
BEGIN
	ALTER TABLE CmnCodeMaster ADD ButtonTriggerEvent VARCHAR(500) NULL;	
END
GO

IF NOT EXISTS( SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CmnCodeMaster' AND  COLUMN_NAME = 'VisibleTabs')
BEGIN
	ALTER TABLE CmnCodeMaster ADD VisibleTabs VARCHAR(100) NULL;	
END
GO

IF NOT EXISTS( SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CmnCodeMaster' AND  COLUMN_NAME = 'DisableTabs')
BEGIN
	ALTER TABLE CmnCodeMaster ADD DisableTabs VARCHAR(100) NULL;	
END
GO

IF NOT EXISTS( SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CmnCodeMaster' AND  COLUMN_NAME = 'IsMultipleApproval')
BEGIN
	ALTER TABLE CmnCodeMaster ADD IsMultipleApproval BIT NULL DEFAULT 0;	
END
GO

IF NOT EXISTS( SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CmnCodeMaster' AND  COLUMN_NAME = 'IsDml')
BEGIN
	ALTER TABLE CmnCodeMaster ADD IsDml BIT NULL DEFAULT 1;	
END
GO

IF NOT EXISTS( SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CmnCodeMaster' AND  COLUMN_NAME = 'ReferenceID')
BEGIN
	ALTER TABLE CmnCodeMaster ADD ReferenceID BIGINT IDENTITY(1, 1) NOT NULL;	
END
GO

IF NOT EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'CmnCodeMaster' AND  COLUMN_NAME = 'CompanyID')
BEGIN
	ALTER TABLE CmnCodeMaster ADD CompanyID INT NULL;	
END
GO

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MstEmployeeDetails]') AND [TYPE] IN (N'U'))
BEGIN
	CREATE TABLE [dbo].[MstEmployeeDetails](
		ReferenceID INT IDENTITY(1, 1) NOT NULL,
		CompanyID INT NOT NULL,
		BranchID INT NOT NULL,
		Code NVARCHAR(100) NOT NULL,
		NickName NVARCHAR(500) NOT NULL,
		TitleID INT NULL,
		FirstName NVARCHAR(500) NULL,
		MiddleName NVARCHAR(500) NULL,
		LastName NVARCHAR(500) NULL,	
		Initial NVARCHAR(50) NULL,
		JoinDate DATETIME NULL,
		DOB DATETIME NULL,	
		GenderID INT NULL,
		NationalityID INT NULL,
		DesignationID INT NULL,
		DepartmentID INT NULL,
		BusinessUnit INT NULL,
		CostCenterID INT NULL,
		Qualification NVARCHAR(100) NULL,
		WorkshiftID INT NULL,
		ReportingHeadID INT NULL,
		Religion INT NULL,
		Remarks NVARCHAR(1000) NULL,	
		MonthlyWorkingDays INT NULL,
		DailyWorkingHours INT NULL,
		DailyWorkingMins INT NULL,
		WeekendDays VARCHAR(100) NULL,
		FamilyStatus INT NULL,
		ClientID INT NULL,
		ClientContactID INT NULL,
		SupplierID INT NULL,
		SupplierContactID INT NULL,
		ManufacturerID INT NULL,
		ManufacturerContactID INT NULL,	 
		Labs VARCHAR(100) NULL,
		Grade INT NULL,
		ProbationDays INT NULL,
		ConfirmationDate DATETIME NULL,
		NoticeDays INT NULL,
		Delegate INT NULL,
		MaritalStatus INT NULL,
		Height DECIMAL(5, 2) NULL,
		[Weight] DECIMAL(5, 2) NULL,
		Complexion INT NULL,
		EyeColor INT NULL,
		HairColor INT NULL,
		BodyType INT NULL,
		AllergyMedicines NVARCHAR(1000) NULL,
		UndergoingMedication NVARCHAR(1000) NULL,
		SurgeriesPerformed NVARCHAR(1000) NULL,
		BPSys INT NULL,
		BPDias INT NULL,
		EyeSightLeft NVARCHAR(100) NULL,
		EyeSightRight NVARCHAR(100) NULL,
		BMI DECIMAL(5, 2) NULL,
		PulseRate INT NULL,
		Smoking BIT NOT NULL CONSTRAINT [DF_MstEmployeeDetails_Smoking] DEFAULT ((0)),
		MotherTongue INT NULL,
		Drinking BIT NOT NULL CONSTRAINT [DF_MstEmployeeDetails_Drinking] DEFAULT ((0)),
		ElecSignature INT NULL,
		PhotoViewer INT NULL,
		LabID INT NULL,
		CreatedBy INT NOT NULL,
		CreatedDate DATETIME NOT NULL CONSTRAINT [DF_MstEmployeeDetails_CreatedDate] DEFAULT (GETUTCDATE()),
		CreatedDateGMT DATETIME NOT NULL,
		ModifiedBy INT NOT NULL,
		ModifiedDate DATETIME NOT NULL CONSTRAINT [DF_MstEmployeeDetails_ModifiedDate] DEFAULT (GETUTCDATE()),
		ModifiedDateGMT DATETIME NOT NULL,
		NotActive BIT NOT NULL CONSTRAINT [DF_MstEmployeeDetails_NotActive] DEFAULT ((0)),
		NotActiveDate DATETIME NULL,
		NotActiveDateGMT DATETIME NULL,
		NotActiveReason NVARCHAR(100) NULL,
		IsDeleted BIT NOT NULL CONSTRAINT [DF_MstEmployeeDetails_IsDeleted] DEFAULT ((0)),
		DeletedBy INT NULL,
		DeletedDate DATETIME NULL,
		DeletedDateGMT DATETIME NULL,
		DeleteReason NVARCHAR(100) NULL,
		IsCurrentVersion BIT NOT NULL CONSTRAINT [DF_MstEmployeeDetails_IsCurrentVersion] DEFAULT ((1)),
		[Version] INT NOT NULL CONSTRAINT [DF_MstEmployeeDetails_Version] DEFAULT ((1)),
		VersionID INT NULL,
		OrderBy INT NOT NULL,
		ERPID VARCHAR(25) NULL,  
		CONSTRAINT [PK_MstEmployeeDetails] PRIMARY KEY CLUSTERED (ReferenceID ASC)
			WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[MstEmployeeDetails]') AND name = N'IDX_MstEmployeeDetails')
	CREATE NONCLUSTERED INDEX [IDX_MstEmployeeDetails] ON [dbo].[MstEmployeeDetails](CompanyID ASC, BranchID ASC, Code ASC, NickName ASC)
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[MstEmployeeDetails]') AND name = N'IDX_MstEmployee')
	CREATE NONCLUSTERED INDEX [IDX_MstEmployee] ON [dbo].[MstEmployeeDetails](Code ASC, NickName ASC)
GO

IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'MstEmployeeDetails' AND COLUMN_NAME = 'LabID')
BEGIN
	ALTER TABLE MstEmployeeDetails ADD LabID INT NULL;
END
GO

SET ANSI_PADDING OFF
GO

IF  EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_GMTCalculation]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
  DROP FUNCTION [dbo].[fn_GMTCalculation]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[fn_GMTCalculation](
	@IN_UserID INT)
	
RETURNS VARCHAR(50)
AS
BEGIN
	DECLARE @OP_DateGMT DATETIME,
		@OP_Input INT,
		@CompanyID INT

  SET @CompanyID = 0

  SELECT @CompanyID = EMP.CompanyID
  FROM MstEmployeeDetails EMP
    JOIN CmnUserDetails U ON U.Type = 1 AND U.TypeID = EMP.ReferenceID
  WHERE U.TypeID = UserID;
    
  IF @CompanyID <> 0
	BEGIN
		SET @OP_Input = (ISNULL((SELECT OffsetMinute FROM MstCompanyDetails WHERE ReferenceID = @CompanyID), 0));
		
    IF @OP_Input <>''
			SET @OP_DateGMT = (SELECT DATEADD(MI, @OP_Input, GETUTCDATE()))
    ELSE
			SET @OP_DateGMT = GETUTCDATE()
	END
  ELSE
		SET @OP_DateGMT = GETUTCDATE()

  RETURN CONVERT(VARCHAR(50), @OP_DateGMT, 101) + ' ' + SUBSTRING(CONVERT(VARCHAR(50), @OP_DateGMT, 109), 13, 8) + ' ' +
						+ SUBSTRING(CONVERT(VARCHAR(50), @OP_DateGMT, 109), 25, 8)

END
GO



/*=========================
15-Apr-2025 START
=========================*/
SET NOCOUNT ON
DECLARE @UserID BIGINT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID)
DECLARE @UTCTime DATETIME = GETUTCDATE(),
  @Type NVARCHAR(500),
  @CodemasterID NVARCHAR(500),
  @TypeValues NVARCHAR(500),
  @Code NVARCHAR(500),
  @Description NVARCHAR(500),
  @Remarks NVARCHAR(500),
  @ModuleID NVARCHAR(500),
  @Category NVARCHAR(500),
  @UserAccess NVARCHAR(500),
  @ImagePath NVARCHAR(500),
  @Details NVARCHAR(500),
  @OrderBy NVARCHAR(500),
  @ConditionCheck NVARCHAR(500)
DECLARE @ObjectName NVARCHAR(100) = 'CodeMaster_Insert_AIDocuments_15-Apr-2025'

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	SET @Type = 'AI Documents';
	SET @TypeValues = 'Revol Development Studio';
	SET @CodemasterID = 1;
	SET @UserAccess = 6;
	SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
	SET @Code = 0;
	SET @Description = '';
	SET @Remarks = '';
	SET @Category = '';
	SET @ModuleID = 0;
	SET @ImagePath = '';
	SET @Details = '';

	IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND CodemasterID = @CodemasterID)
	BEGIN
		INSERT INTO CmnCodeMaster (Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category,
			UserAccess, ImagePath, Details, OrderBy, Version, IsCurrentVersion, NotActive, IsDeleted,
			CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
		SELECT @Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath,
			@Details, @OrderBy , 1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
	END

	SET @Type = 'AI Documents';
	SET @TypeValues = 'Technical Reference';
	SET @CodemasterID = 2;
	SET @UserAccess = 6;
	SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
	SET @Code = 0;
	SET @Description = '';
	SET @Remarks = '';
	SET @Category = '';
	SET @ModuleID = 0;
	SET @ImagePath = '';
	SET @Details = '';

	IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND CodemasterID = @CodemasterID)
	BEGIN
		INSERT INTO CmnCodeMaster (Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category,
			UserAccess, ImagePath, Details, OrderBy, Version, IsCurrentVersion, NotActive, IsDeleted,
			CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
		SELECT @Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath,
			@Details, @OrderBy , 1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
	END

	SET @Type = 'AI Documents';
	SET @TypeValues = 'User Manual';
	SET @CodemasterID = 3;
	SET @UserAccess = 6;
	SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
	SET @Code = 0;
	SET @Description = '';
	SET @Remarks = '';
	SET @Category = '';
	SET @ModuleID = 0;
	SET @ImagePath = '';
	SET @Details = '';

	IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND CodemasterID = @CodemasterID)
	BEGIN
		INSERT INTO CmnCodeMaster (Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category,
			UserAccess, ImagePath, Details, OrderBy, Version, IsCurrentVersion, NotActive, IsDeleted,
			CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
		SELECT @Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath,
			@Details, @OrderBy , 1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
	END

	SET @Type = 'AI Documents';
	SET @TypeValues = 'Test SOP';
	SET @CodemasterID = 4;
	SET @UserAccess = 6;
	SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
	SET @Code = 0;
	SET @Description = '';
	SET @Remarks = '';
	SET @Category = '';
	SET @ModuleID = 0;
	SET @ImagePath = '';
	SET @Details = '';

	IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND CodemasterID = @CodemasterID)
	BEGIN
		INSERT INTO CmnCodeMaster (Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category,
			UserAccess, ImagePath, Details, OrderBy, Version, IsCurrentVersion, NotActive, IsDeleted,
			CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
		SELECT @Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath,
			@Details, @OrderBy , 1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
	END
	INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
	VALUES(@ObjectName, @ObjectName, @UTCTime)
END
GO
/*=========================
15-Apr-2025 END
=========================*/

/*=========================
03-Jun-2025 START
=========================*/
SET NOCOUNT ON
DECLARE @UserID BIGINT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID)
DECLARE @UTCTime DATETIME = GETUTCDATE(),
  @Type NVARCHAR(500),
  @CodemasterID NVARCHAR(500),
  @TypeValues NVARCHAR(500),
  @Code NVARCHAR(500),
  @Description NVARCHAR(500),
  @Remarks NVARCHAR(500),
  @ModuleID NVARCHAR(500),
  @Category NVARCHAR(500),
  @UserAccess NVARCHAR(500),
  @ImagePath NVARCHAR(500),
  @Details NVARCHAR(500),
  @OrderBy NVARCHAR(500),
  @ConditionCheck NVARCHAR(500)
DECLARE @ObjectName NVARCHAR(100) = 'CodeMaster_Insert_SuggestionType_03-Jun-2025_2'

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	SET @Type = 'AI Suggestions';
	SET @TypeValues = 'Report';
	SET @CodemasterID = 1;
	SET @UserAccess = 6;
	SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
	SET @Code = 0;
	SET @Description = '';
	SET @Remarks = '';
	SET @Category = '';
	SET @ModuleID = 0;
	SET @ImagePath = '';
	SET @Details = '';

	IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND CodemasterID = @CodemasterID)
	BEGIN
		INSERT INTO CmnCodeMaster (Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category,
			UserAccess, ImagePath, Details, OrderBy, Version, IsCurrentVersion, NotActive, IsDeleted,
			CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
		SELECT @Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath,
			@Details, @OrderBy , 1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
	END

	SET @Type = 'AI Suggestions';
	SET @TypeValues = 'Agent';
	SET @CodemasterID = 2;
	SET @UserAccess = 6;
	SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
	SET @Code = 0;
	SET @Description = '';
	SET @Remarks = '';
	SET @Category = '';
	SET @ModuleID = 0;
	SET @ImagePath = '';
	SET @Details = '';

	IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND CodemasterID = @CodemasterID)
	BEGIN
		INSERT INTO CmnCodeMaster (Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category,
			UserAccess, ImagePath, Details, OrderBy, Version, IsCurrentVersion, NotActive, IsDeleted,
			CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
		SELECT @Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath,
			@Details, @OrderBy , 1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
	END

	SET @Type = 'AI Suggestions';
	SET @TypeValues = 'Development Studio';
	SET @CodemasterID = 3;
	SET @UserAccess = 6;
	SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
	SET @Code = 0;
	SET @Description = '';
	SET @Remarks = '';
	SET @Category = '';
	SET @ModuleID = 0;
	SET @ImagePath = '';
	SET @Details = '';

	IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND CodemasterID = @CodemasterID)
	BEGIN
		INSERT INTO CmnCodeMaster (Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category,
			UserAccess, ImagePath, Details, OrderBy, Version, IsCurrentVersion, NotActive, IsDeleted,
			CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
		SELECT @Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath,
			@Details, @OrderBy , 1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
	END

	SET @Type = 'AI Suggestions';
	SET @TypeValues = 'User Manual';
	SET @CodemasterID = 4;
	SET @UserAccess = 6;
	SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
	SET @Code = 0;
	SET @Description = '';
	SET @Remarks = '';
	SET @Category = '';
	SET @ModuleID = 0;
	SET @ImagePath = '';
	SET @Details = '';

	IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND CodemasterID = @CodemasterID)
	BEGIN
		INSERT INTO CmnCodeMaster (Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category,
			UserAccess, ImagePath, Details, OrderBy, Version, IsCurrentVersion, NotActive, IsDeleted,
			CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
		SELECT @Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath,
			@Details, @OrderBy , 1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
	END
	INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
	VALUES(@ObjectName, @ObjectName, @UTCTime)
END
GO
/*=========================
03-Jun-2025 END
=========================*/

/*=========================
19-Jun-2025 START
=========================*/
SET NOCOUNT ON
DECLARE @UserID BIGINT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID)
DECLARE @UTCTime DATETIME = GETUTCDATE(),
  @Type NVARCHAR(500),
  @CodemasterID NVARCHAR(500),
  @TypeValues NVARCHAR(500),
  @Code NVARCHAR(500),
  @Description NVARCHAR(500),
  @Remarks NVARCHAR(500),
  @ModuleID NVARCHAR(500),
  @Category NVARCHAR(500),
  @UserAccess NVARCHAR(500),
  @ImagePath NVARCHAR(500),
  @Details NVARCHAR(500),
  @OrderBy NVARCHAR(500),
  @ConditionCheck NVARCHAR(500)
DECLARE @ObjectName NVARCHAR(100) = 'CodeMaster_Insert_PredictionType_19-Jun-2025'

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	SET @Type = 'Prediction Type';
	SET @TypeValues = 'Predict By Value';
	SET @CodemasterID = 1;
	SET @UserAccess = 6;
	SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
	SET @Code = 0;
	SET @Description = '';
	SET @Remarks = '';
	SET @Category = '';
	SET @ModuleID = 0;
	SET @ImagePath = '';
	SET @Details = '';

	IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND CodemasterID = @CodemasterID)
	BEGIN
		INSERT INTO CmnCodeMaster (Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category,
			UserAccess, ImagePath, Details, OrderBy, Version, IsCurrentVersion, NotActive, IsDeleted,
			CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
		SELECT @Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath,
			@Details, @OrderBy , 1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
	END

	SET @Type = 'Prediction Type';
	SET @TypeValues = 'Predict By Date';
	SET @CodemasterID = 2;
	SET @UserAccess = 6;
	SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
	SET @Code = 0;
	SET @Description = '';
	SET @Remarks = '';
	SET @Category = '';
	SET @ModuleID = 0;
	SET @ImagePath = '';
	SET @Details = '';

	IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND CodemasterID = @CodemasterID)
	BEGIN
		INSERT INTO CmnCodeMaster (Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category,
			UserAccess, ImagePath, Details, OrderBy, Version, IsCurrentVersion, NotActive, IsDeleted,
			CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
		SELECT @Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath,
			@Details, @OrderBy , 1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
	END
	INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
	VALUES(@ObjectName, @ObjectName, @UTCTime)
END
GO
/*=========================
19-Jun-2025 END
=========================*/