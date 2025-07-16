/*=========================
02-Mar-2022 START
==========================*/
SET NOCOUNT ON;
DECLARE @UserID INT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID),
		@UTCTime DATETIME = GETUTCDATE(),
		@ObjectName NVARCHAR(100) = 'FormControl_Update_02-Mar-2022',
		@FormID INT = 0

IF NOT EXISTS(SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	UPDATE FormControlConfig
	SET IsMobile = 1,
		ModifiedBy = @UserID,
		ModifiedDate = @UTCTime,
		ModifiedDateGMT = @GMTTime
	WHERE IsIdentity = 1 AND ISNULL(IsMobile, 0) = 0 AND ISNULL(IsDeleted, 0) = 0;

	UPDATE FormControlColumnsConfig
	SET IsMobile = 1,
		ModifiedBy = @UserID,
		ModifiedDate = @UTCTime,
		ModifiedDateGMT = @GMTTime
	WHERE IsIdentity = 1 AND ISNULL(IsMobile, 0) = 0 AND ISNULL(IsDeleted, 0) = 0;

	UPDATE CmnFormControls
	SET IsMobile = 1
	WHERE IsIdentity = 1 AND ISNULL(IsMobile, 0) = 0;

	UPDATE CmnControlColumns
	SET IsMobile = 1
	WHERE IsIdentity = 1 AND ISNULL(IsMobile, 0) = 0;

	INSERT INTO CmnInstalledScriptHistory (ObjectName, [Description], InstalledDate) VALUES (@ObjectName, '', @UTCTime)
END
GO
/*=========================
02-Mar-2022 END
==========================*/

/*=========================
12-May-2022 START
==========================*/
SET NOCOUNT ON;
DECLARE @UserID INT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID),
		@UTCTime DATETIME = GETUTCDATE(),
		@ObjectName NVARCHAR(100) = 'FormButton_AutoClose_Update_19-Mar-2022',
		@FormID INT = 0

IF NOT EXISTS(SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	UPDATE FormButtonConfig
	SET AutoClose = 1,
		ModifiedBy = @UserID,
		ModifiedDate = @UTCTime,
		ModifiedDateGMT = @GMTTime
	WHERE ISNULL(IsDml, 0) = 1 AND ISNULL(IsDeleted, 0) = 0;

	UPDATE BP
	SET AutoClose = 1,
		ModifiedBy = @UserID,
		ModifiedDate = @UTCTime,
		ModifiedDateGMT = @GMTTime
	FROM CmnFormButtonProperties BP
		JOIN CmnCodeMaster MB ON MB.Type = 'Menubutton' AND MB.ReferenceID = BP.ButtonID AND MB.MenuID = BP.FormID
	WHERE ISNULL(MB.IsDml, 0) = 1 AND ISNULL(BP.IsDeleted, 0) = 0;

	INSERT INTO CmnInstalledScriptHistory (ObjectName, [Description], InstalledDate) VALUES (@ObjectName, '', @UTCTime)
END
GO
/*=========================
12-May-2022 END
==========================*/

/*=========================
03-Jun-2024 START
==========================*/

SET NOCOUNT ON;
DECLARE @UserID INT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID),
		@UTCTime DATETIME = GETUTCDATE(),
		@ObjectName NVARCHAR(100) = 'DataCorrection_DecimalLength_Update_03-Jun-2024'

IF NOT EXISTS(SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	UPDATE FormControlConfig 
	SET DataBaseDecimalLength = DecimalLength,
		ModifiedBy = @UserID,
		ModifiedDate = @UTCTime,
		ModifiedDateGMT = @GMTTime;
	
	UPDATE FormControlColumnsConfig 
	SET DataBaseDecimalLength = DecimalLength,
		ModifiedBy = @UserID,
		ModifiedDate = @UTCTime,
		ModifiedDateGMT = @GMTTime; 

	UPDATE FormGridControlColumnsConfig 
	SET DataBaseDecimalLength = DecimalLength,
		ModifiedBy = @UserID,
		ModifiedDate = @UTCTime,
		ModifiedDateGMT = @GMTTime;

	UPDATE WorkFlowControlConfig 
	SET DataBaseDecimalLength = DecimalLength,
		ModifiedBy = @UserID,
		ModifiedDate = @UTCTime,
		ModifiedDateGMT = @GMTTime;

	UPDATE WorkFlowControlColumnsConfig 
	SET DataBaseDecimalLength = DecimalLength,
		ModifiedBy = @UserID,
		ModifiedDate = @UTCTime,
		ModifiedDateGMT = @GMTTime;

	UPDATE WorkFlowGridControlColumnsConfig 
	SET DataBaseDecimalLength = DecimalLength,
		ModifiedBy = @UserID,
		ModifiedDate = @UTCTime,
		ModifiedDateGMT = @GMTTime;


	INSERT INTO CmnInstalledScriptHistory (ObjectName, [Description], InstalledDate) VALUES (@ObjectName, @ObjectName, @UTCTime);
END
GO

/*=========================
03-Jun-2024 END
==========================*/

/*=========================
04-Sep-2024 START
==========================*/
SET NOCOUNT ON;
DECLARE @UserID INT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID),
		@UTCTime DATETIME = GETUTCDATE(),
		@ObjectName NVARCHAR(100) = 'MenuButton_ButtonType_Update_04-Sep-2024',
		@FormID INT = 0

IF NOT EXISTS(SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	UPDATE MB
	SET ButtonType = 6,
		ModifiedBy = @UserID,
		ModifiedDate = @UTCTime,
		ModifiedDateGMT = @GMTTime
	FROM CmnCodeMaster MB WHERE MB.Type = 'Menubutton' AND ISNULL(MB.ButtonType, 0) = 0 AND MB.ModuleID IN (6, 7)
		AND ISNULL(MB.IsDeleted, 0) = 0 AND ISNULL(MB.NotActive, 0) = 0 AND ISNULL(MB.IsCurrentVersion, 0) = 1;

	INSERT INTO CmnInstalledScriptHistory (ObjectName, [Description], InstalledDate) VALUES (@ObjectName, '', @UTCTime)
END
GO
/*=========================
04-Sep-2024 END
==========================*/

/*=========================
15-Oct-2024 START
==========================*/
SET NOCOUNT ON;
DECLARE @UserID INT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID),
		@UTCTime DATETIME = GETUTCDATE(),
		@ObjectName NVARCHAR(100) = 'Dashboard_IndividualChart_Update_15-Oct-2024',
		@FormID INT = 0

IF NOT EXISTS(SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	UPDATE RDS
	SET RDS.IndividualChartIDs = '0',
		ModifiedBy = @UserID,
		ModifiedDate = @UTCTime,
		ModifiedDateGMT = @GMTTime
	FROM DashboardReportDataSource RDS WHERE ISNULL(RDS.IndividualChartIDs, '') = ''
		AND ISNULL(RDS.IsDeleted, 0) = 0 AND ISNULL(RDS.NotActive, 0) = 0 AND ISNULL(RDS.IsCurrentVersion, 0) = 1;

	INSERT INTO CmnInstalledScriptHistory (ObjectName, [Description], InstalledDate) VALUES (@ObjectName, '', @UTCTime)
END
GO
/*=========================
15-Oct-2024 END
==========================*/
