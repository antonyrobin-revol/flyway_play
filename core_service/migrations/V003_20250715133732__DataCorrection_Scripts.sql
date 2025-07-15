/*=========================
17-Apr-2018 START
==========================*/
SET NOCOUNT ON
DECLARE @UserID INT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID),
		@UTCTime DATETIME = GETUTCDATE(),
		@ObjectName NVARCHAR(100) = N'Company & Branch Insert_14-Jun-2018',
		@CurrencyID INT,
		@IndustryID INT,
		@Code NVARCHAR(200),
		@Name NVARCHAR(200),
		@Initial NVARCHAR(10),
		@OffsetMinute INT,
		@ParentCompanyID INT,
		@Orderby INT
  
IF NOT EXISTS(SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN

  SET @CurrencyID = ISNULL((SELECT CodemasterID FROM CmnCodeMaster WHERE Type = 'Currency' AND TypeValues = 'INR'), 0)
  SET @IndustryID = ISNULL((SELECT CodemasterID FROM CmnCodeMaster WHERE Type = 'Industry Type' AND TypeValues = 'Petrochemical'), 1)
  SET @Code = N'Cmp01'
  SET @Name = N'Revol'
  SET @Initial = N'RVL'
  SET @OffsetMinute = 330
  SET @ParentCompanyID = NULL
  SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM MstCompanyDetails WHERE ParentCompanyID IS NULL), 1)

  INSERT INTO MstCompanyDetails (ParentCompanyID, Code, Name, Initial, CurrencyID, IndustryID, OffsetMinute, OrderBy, [Version], IsCurrentVersion, 
    NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
  SELECT @ParentCompanyID, @Code, @Name, @Initial, @CurrencyID, @IndustryID, @OffsetMinute, @Orderby, 
    1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
	WHERE NOT EXISTS (SELECT 1 FROM MstCompanyDetails WHERE ParentCompanyID IS NOT NULL)

  SET @Code = N'Branch01'
  SET @Name = N'Revol-B'
  SET @Initial = N'RVL-B'
  SET @OffsetMinute = 330
  SET @ParentCompanyID = ISNULL((SELECT TOP 1 ReferenceID FROM MstCompanyDetails WHERE ParentCompanyID IS NULL ORDER BY ReferenceID), 1)
  SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM MstCompanyDetails WHERE ParentCompanyID IS NOT NULL), 1)

  INSERT INTO MstCompanyDetails (ParentCompanyID, Code, Name, Initial, CurrencyID, IndustryID, OffsetMinute, OrderBy, [Version], IsCurrentVersion, 
      NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
  SELECT @ParentCompanyID, @Code, @Name, @Initial, @CurrencyID, @IndustryID, @OffsetMinute, @Orderby, 
    1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
	WHERE NOT EXISTS (SELECT 1 FROM MstCompanyDetails WHERE ParentCompanyID IS NOT NULL)

  INSERT INTO CmnInstalledScriptHistory (ObjectName, [Description], InstalledDate) VALUES (@ObjectName, '', @UTCTime)
END 
GO

DECLARE @UserID INT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID),
		@UTCTime DATETIME = GETUTCDATE(),
		@ObjectName NVARCHAR(100) = 'User Revol & System Insert_14-Jun-2018',
		@RoleID VARCHAR(100),
		@Type INT,
		@TypeID INT,
		@UserName NVARCHAR(100),
		@Password NVARCHAR(100),
		@Orderby INT

IF NOT EXISTS(SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN

  SET @RoleID = ISNULL((SELECT CodemasterID FROM CmnCodeMaster WHERE Type = 'Roles' AND TypeValues = 'Admin'), 1)
  SET @Type = 0
  SET @TypeID = 0
  SET @UserName = N'Revol'
  SET @Password = N'P/MNftTwf0OWXGc2ls+L5A=='
  SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnUserDetails), 1)

  INSERT INTO CmnUserDetails (Type, TypeID, Username, [Password], RoleID, LoginAttempt, OrderBy, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
	SELECT @Type, @TypeID, @UserName, @Password, @RoleID, 0, @Orderby, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
	WHERE NOT EXISTS (SELECT 1 FROM CmnUserDetails WHERE Username = @UserName)

  SET @UserName = 'System'
  SET @Password = 'P/MNftTwf0OWXGc2ls+L5A=='
  SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnUserDetails), 1)

  INSERT INTO CmnUserDetails (Type, TypeID, Username, [Password], RoleID, LoginAttempt, OrderBy, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
	SELECT @Type, @TypeID, @UserName, @Password, @RoleID, 0, @Orderby, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
	WHERE NOT EXISTS (SELECT 1 FROM CmnUserDetails WHERE Username = @UserName)

  SET @UserName = 'Admin'
  SET @Password = 'P/MNftTwf0OWXGc2ls+L5A=='
  SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnUserDetails), 1)

  INSERT INTO CmnUserDetails (Type, TypeID, Username, [Password], RoleID, LoginAttempt, OrderBy, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
	SELECT @Type, @TypeID, @UserName, @Password, @RoleID, 0, @Orderby, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
	WHERE NOT EXISTS (SELECT 1 FROM CmnUserDetails WHERE Username = @UserName)

  INSERT INTO CmnInstalledScriptHistory (ObjectName, [Description], InstalledDate) VALUES (@ObjectName, '', @UTCTime)
END
GO
/*=========================
17-Apr-2018 END
==========================*/

/*=========================
19-Apr-2018 START
==========================*/
SET NOCOUNT ON
DECLARE @UserID INT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID),
		@UTCTime DATETIME = GETUTCDATE(),
		@ObjectName NVARCHAR(100) = 'Password Policy Insert_19-Apr-2018',
		@StartWithID INT,
		@AuthenticationType VARCHAR(100) = '',
		@RetriveType INT

IF NOT EXISTS(SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN

  SET @StartWithID = ISNULL((SELECT CodemasterID FROM CmnCodeMaster WHERE Type = 'Password Start With' AND TypeValues = 'Any'), 1)
  SELECT @AuthenticationType = @AuthenticationType + CASE WHEN @AuthenticationType = '' THEN '' ELSE ',' END + CAST(CodemasterID AS VARCHAR(50)) FROM CmnCodeMaster WHERE Type = 'User Authentication Type'
	SET @AuthenticationType = ISNULL(@AuthenticationType, '')
  SET @RetriveType = ISNULL((SELECT CodemasterID FROM CmnCodeMaster WHERE Type = 'Message Type' AND TypeValues = 'Email'), 1)

  INSERT INTO CmnPasswordPolicy (MinimumLength, MaximumLength, ExpiryDays, ExpiryDaysNegotiable, IsNumeric, IsAlpha, IsSplCharacter, StartWithID, LoginAttempt, 
    SessionTimeout, CaptchaValidation, CaptchaLevel, OTPValidation, OTPType, OTPExpireMin, MultipleLogin, AuthenticationType, RememberUser, RetrivePassword, RetriveType,
    OrderBy, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
	SELECT 4, 16, 365, 0, 0, 1, 0, @StartWithID, 5, 60, 0, 0, 0, 0, 0, 0, @AuthenticationType, 1, 1, @RetriveType, 1, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
	WHERE NOT EXISTS (SELECT 1 FROM CmnPasswordPolicy)

  INSERT INTO CmnInstalledScriptHistory (ObjectName, [Description], InstalledDate) VALUES (@ObjectName, '', @UTCTime)
END
GO
/*=========================
19-Apr-2018 END
==========================*/

/*=========================
24-Apr-2018 START
==========================*/
SET NOCOUNT ON
DECLARE @UserID INT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID),
		@UTCTime DATETIME = GETUTCDATE(),
		@ObjectName NVARCHAR(100) = 'SequenceFeederInsert_24-Apr-2018',
		@Number INT,
		@MaxNum INT

IF NOT EXISTS(SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
  IF (SELECT COUNT(1) FROM CmnSequenceFeeder) = 0
	BEGIN
    SET @Number = 1
    SET @MaxNum = 5000
    WHILE @Number <= @MaxNum 
		BEGIN
      INSERT INTO CmnSequenceFeeder (NumberID) 
			SELECT @Number
    
      SET @Number = @Number + 1
    END
  END

  INSERT INTO CmnInstalledScriptHistory (ObjectName, [Description], InstalledDate) VALUES (@ObjectName, '', @UTCTime)
END
GO
/*=========================
24-Apr-2018 END
==========================*/

/*=========================
04-Jul-2020 START
==========================*/
SET NOCOUNT ON
DECLARE @UserID INT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID),
		@UTCTime DATETIME = GETUTCDATE(),
		@ObjectName NVARCHAR(100) = 'FormConfigurationUpdate_04-Jul-2020',
		@Number INT,
		@MaxNum INT

IF NOT EXISTS(SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
  UPDATE CmnFormControls SET IsMobile = 1, IsWizard = 1 WHERE IsMandatory = 1 OR IsIdentity = 1 OR SearchApplicable = 1;
  UPDATE CmnControlColumns SET IsMobile = 1, IsWizard = 1 WHERE IsMandatory = 1 OR IsIdentity = 1;
  UPDATE CmnFormSearchControl SET IsMobile = 1;
  UPDATE CmnControlColumns SET IsMobile = 1;
  
  UPDATE CmnCodeMaster SET Description = 'TextBox', ImagePath = 'fa fa-square-o', OrderBy = 1 WHERE Type = 'Control Type' AND TypeValues = 'Textbox';

	UPDATE CmnCodeMaster SET Description = 'DropDownBox', ImagePath = 'fa fa-caret-square-o-down', OrderBy = 2 WHERE Type = 'Control Type' AND TypeValues = 'Combobox';

	UPDATE CmnCodeMaster SET Description = 'CheckBox', ImagePath = 'fa fa-check-square-o', OrderBy = 3 WHERE Type = 'Control Type' AND TypeValues = 'Checkbox';

	UPDATE CmnCodeMaster SET Description = 'RadioButton', ImagePath = 'fa fa-check-circle', OrderBy = 4 WHERE Type = 'Control Type' AND TypeValues = 'Radio Button';

	UPDATE CmnCodeMaster SET Description = 'DatePicker', ImagePath = 'fa fa-calendar', OrderBy = 5 WHERE Type = 'Control Type' AND TypeValues = 'Date';

	UPDATE CmnCodeMaster SET Description = 'DateTime', ImagePath = 'fa fa-calendar', OrderBy = 6 WHERE Type = 'Control Type' AND TypeValues = 'Datetime';

	UPDATE CmnCodeMaster SET Description = 'Time', ImagePath = 'fa fa-clock-o', OrderBy = 7 WHERE Type = 'Control Type' AND TypeValues = 'Time';

	UPDATE CmnCodeMaster SET Description = 'Label', ImagePath = 'fa fa-font', OrderBy = 8 WHERE Type = 'Control Type' AND TypeValues = 'Label';

	UPDATE CmnCodeMaster SET Description = 'Multiline', ImagePath = 'fa fa-comment-o', OrderBy = 9 WHERE Type = 'Control Type' AND TypeValues = 'Multiline Textbox';

	UPDATE CmnCodeMaster SET Description = 'MultiSelect', ImagePath = 'fa fa-list', OrderBy = 10 WHERE Type = 'Control Type' AND TypeValues = 'Check Listbox';

	UPDATE CmnCodeMaster SET Description = 'RadioList', ImagePath = 'fa fa-list-alt', OrderBy = 11 WHERE Type = 'Control Type' AND TypeValues = 'Radiolist Grid';

	UPDATE CmnCodeMaster SET Description = 'CheckList', ImagePath = 'fa fa-list-alt', OrderBy = 12 WHERE Type = 'Control Type' AND TypeValues = 'Checklist Grid';

	UPDATE CmnCodeMaster SET Description = 'RichTextEditor', ImagePath = 'fa fa-pencil-square-o', OrderBy = 13 WHERE Type = 'Control Type' AND TypeValues = 'CK Editor';

	UPDATE CmnCodeMaster SET Description = 'NumberBox', ImagePath = 'fa fa-sort-numeric-asc', OrderBy = 14 WHERE Type = 'Control Type' AND TypeValues = 'Number';

	UPDATE CmnCodeMaster SET Description = 'Attachments', ImagePath = 'fa fa-paperclip', OrderBy = 15 WHERE Type = 'Control Type' AND TypeValues = 'Attachment';

	UPDATE CmnCodeMaster SET Description = 'PhotoViewer', ImagePath = 'fa fa-picture-o', OrderBy = 16 WHERE Type = 'Control Type' AND TypeValues = 'Photo Viewer';

	UPDATE CmnCodeMaster SET Description = 'GRID', ImagePath = 'fa fa-table', OrderBy = 17 WHERE Type = 'Control Type' AND TypeValues = 'Grid';

	UPDATE CmnCodeMaster SET Description = 'TREE', ImagePath = 'fa fa-tree', OrderBy = 18 WHERE Type = 'Control Type' AND TypeValues = 'Tree';

	UPDATE CmnCodeMaster SET Description = 'Email', ImagePath = 'fa fa-envelope-o', OrderBy = 19 WHERE Type = 'Control Type' AND TypeValues = 'Email';

	UPDATE CmnCodeMaster SET Description = 'URL', ImagePath = 'fa fa-link', OrderBy = 20 WHERE Type = 'Control Type' AND TypeValues = 'URL';

	UPDATE CmnCodeMaster SET Description = 'DualTextBox', ImagePath = 'fa fa-square-o', OrderBy = 21 WHERE Type = 'Control Type' AND TypeValues = 'Dual Textbox';

	UPDATE CmnCodeMaster SET Description = 'DualComboBox', ImagePath = 'fa fa-caret-square-o-down', OrderBy = 22 WHERE Type = 'Control Type' AND TypeValues = 'Dual Combobox';

	UPDATE CmnCodeMaster SET Description = 'ComboTextBox', ImagePath = 'fa fa-caret-square-o-down', OrderBy = 23 WHERE Type = 'Control Type' AND TypeValues = 'Combo Textbox';

	UPDATE CmnCodeMaster SET Description = 'TextComboBox', ImagePath = 'fa fa-square-o', OrderBy = 24 WHERE Type = 'Control Type' AND TypeValues = 'Text Combobox';

	UPDATE CmnCodeMaster SET Description = 'CheckTextBox', ImagePath = 'fa fa-square-o', OrderBy = 25 WHERE Type = 'Control Type' AND TypeValues = 'Checked Textbox';

	UPDATE CmnCodeMaster SET Description = 'CheckComboBox', ImagePath = 'fa fa-caret-square-o-down', OrderBy = 26 WHERE Type = 'Control Type' AND TypeValues = 'Checked Combobox';

	UPDATE CmnCodeMaster SET Description = 'CheckDateBox', ImagePath = 'fa fa-calendar', OrderBy = 27 WHERE Type = 'Control Type' AND TypeValues = 'Checked Date';

	UPDATE CmnCodeMaster SET Description = 'CheckDateTimeBox', ImagePath = 'fa fa-calendar', OrderBy = 28 WHERE Type = 'Control Type' AND TypeValues = 'Checked Datetime';

	UPDATE CmnCodeMaster SET Description = 'DualTime', ImagePath = 'fa fa-clock-o', OrderBy = 29 WHERE Type = 'Control Type' AND TypeValues = 'Dual Time';

	UPDATE CmnCodeMaster SET ImagePath = 'fa fa-bold', OrderBy = 30 WHERE Type = 'Control Type' AND TypeValues = 'Button';

	UPDATE CmnCodeMaster SET ImagePath = 'fa fa-pie-chart', OrderBy = 31 WHERE Type = 'Control Type' AND TypeValues = 'Chart';

  INSERT INTO CmnInstalledScriptHistory (ObjectName, [Description], InstalledDate) VALUES (@ObjectName, '', @UTCTime)
END
GO
/*=========================
04-Jul-2020 END
==========================*/


/*=========================
27-Aug-2020 START
==========================*/
SET NOCOUNT ON;
DECLARE @UserID INT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID),
		@UTCTime DATETIME = GETUTCDATE(),
		@ObjectName NVARCHAR(100) = 'MasterDataButtonUpdate_29-Aug-2020',
		@FormID INT = 0

IF NOT EXISTS(SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
  SELECT @FormID = FormID FROM CmnFormDetails WHERE Name = 'Master Data';

	UPDATE CmnFormDetails
	SET AuditTrail = 1,
		ModifiedBy = @UserID,
		ModifiedDate = @UTCTime
	WHERE FormID = @FormID;

	UPDATE CmnCodeMaster 
	SET OrderBy  = 4,
		ModifiedBy = @UserID,
		ModifiedDate = @UTCTime,
		ModifiedDateGMT = @GMTTime
	WHERE Type = 'MenuButton' AND MenuID = @FormID AND TypeValues = 'Delete';

	UPDATE CmnCodeMaster 
	SET OrderBy  = 3,
		ModifiedBy = @UserID,
		ModifiedDate = @UTCTime,
		ModifiedDateGMT = @GMTTime
	WHERE Type = 'MenuButton' AND MenuID = @FormID AND TypeValues = 'Add Type';

	UPDATE CmnCodeMaster 
  SET OrderBy  = 1,
  	ModifiedBy = @UserID,
  	ModifiedDate = @UTCTime,
  	ModifiedDateGMT = @GMTTime
  WHERE Type = 'MenuButton' AND MenuID = @FormID AND TypeValues = 'Add';

  UPDATE CmnCodeMaster 
  SET OrderBy  = 2,
  	ModifiedBy = @UserID,
  	ModifiedDate = @UTCTime,
  	ModifiedDateGMT = @GMTTime
  WHERE Type = 'MenuButton' AND MenuID = @FormID AND TypeValues = 'Update';

  INSERT INTO CmnInstalledScriptHistory (ObjectName, [Description], InstalledDate) VALUES (@ObjectName, '', @UTCTime)
END
GO
/*=========================
27-Aug-2020 END
==========================*/

/*=========================
16-Jun-2023 START
==========================*/
SET NOCOUNT ON;
DECLARE @UserID INT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID),
		@UTCTime DATETIME = GETUTCDATE(),
		@ObjectName NVARCHAR(100) = 'DatabaseTableSettings_Insert_16-Jun-2023'

IF NOT EXISTS(SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	INSERT INTO CmnDatabaseTableSettings (TableName, KeyColumn, UniqueTypeID)
	VALUES ('CmnUserDetails', 'UserID', 2);

	INSERT INTO CmnInstalledScriptHistory (ObjectName, [Description], InstalledDate) VALUES (@ObjectName, '', @UTCTime)
END
GO
/*=========================
16-Jun-2023 END
==========================*/

/*=========================
29-Nov-2024 START
==========================*/
/*SET NOCOUNT ON;
DECLARE @UserID INT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID),
		@UTCTime DATETIME = GETUTCDATE(),
		@ObjectName NVARCHAR(100) = 'FormConfigRoleIDs_Update_29-Nov-2024'

IF NOT EXISTS(SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	UPDATE FC SET RoleIDs = ISNULL((SELECT STRING_AGG(RC.RoleID, ',') FROM FormRoleConfiguration RC WHERE RC.FormID = FC.ReferenceID AND RC.IsDeleted = 0 
										AND RC.NotActive = 0 AND RC.IsCurrentVersion = 1), '')
		FROM FormConfiguration FC WHERE FC.IsDeleted = 0 AND FC.NotActive = 0 AND FC.IsCurrentVersion = 1;

	INSERT INTO CmnInstalledScriptHistory (ObjectName, [Description], InstalledDate) VALUES (@ObjectName, '', @UTCTime)
END
GO*/
/*=========================
29-Nov-2024 END
==========================*/

/*=========================
21-Apr-2025 START
==========================*/
SET NOCOUNT ON;
DECLARE @UserID INT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID),
        @UTCTime DATETIME = GETUTCDATE(),
        @ObjectName NVARCHAR(100) = 'CmnUserDetails_NotActive_Update_21-Apr-2025'

IF NOT EXISTS(SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
    UPDATE CmnUserDetails
    SET NotActive = 0
    WHERE NotActive IS NULL;

    INSERT INTO CmnInstalledScriptHistory (ObjectName, [Description], InstalledDate)
    VALUES (@ObjectName, 'Update NotActive to 0 where NotActive is NULL', @UTCTime)
END
GO
/*=========================
21-Apr-2025 END
==========================*/

