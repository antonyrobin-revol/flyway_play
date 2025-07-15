/*=========================
18-Nov-2020 START
=========================*/
SET NOCOUNT ON
SET QUOTED_IDENTIFIER ON
DECLARE @UserID BIGINT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID)
DECLARE @UTCTime DATETIME = GETUTCDATE()
 , @FormID NVARCHAR(500)
 , @Name NVARCHAR(500)
 , @DisplayName NVARCHAR(500)
 , @ParentMenu NVARCHAR(500)
 , @MenuOrder NVARCHAR(500)
 , @FormType NVARCHAR(500)
 , @ModuleID NVARCHAR(500)
 , @AuditTrail NVARCHAR(500)
 , @TableName NVARCHAR(500)
 , @KeyColumn NVARCHAR(500)
 , @FormIcon NVARCHAR(500)
 , @FormPath NVARCHAR(500)
DECLARE @ObjectName NVARCHAR(100) = 'Static Forms_Form_Insert_18Nov2020_134142'
DECLARE @MainMenuOrder BIGINT, @SubMenuOrder BIGINT, @MainMenu1 BIGINT 

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
  SET @FormID = 200;
  SET @Name = N'Company Master';
  SET @DisplayName = N'Company Master';
  SET @MainMenu1 = NULL;
  SET @MainMenuOrder = 1;  SET @SubMenuOrder = 0;
  SET @FormType = 0;
  SET @ModuleID = 2;
  SET @AuditTrail = 0;
  SET @TableName = NULL;
  SET @KeyColumn = NULL;
  SET @FormIcon = N'fa-home';
 SET @FormPath = N'';


  IF NOT EXISTS (SELECT 1 FROM CmnFormDetails WHERE FormID = @FormID)
  BEGIN
    INSERT INTO CmnFormDetails (FormPath,MainMenuOrder,SubMenuOrder,MainMenu1,FormType,
      FormID, Name, DisplayName, ModuleID, AuditTrail, TableName, KeyColumn, FormIcon
      , IsDeleted, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate)
    SELECT @FormPath,@MainMenuOrder,@SubMenuOrder,@MainMenu1,@FormType,
    @FormID, @Name, @DisplayName, @ModuleID, @AuditTrail, @TableName, @KeyColumn, @FormIcon
      , 0, @UserID, @UTCTime, @UserID, @UTCTime
  END

  INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
 VALUES(@ObjectName, 'Static Forms_Form_Insert_18Nov2020_134142', @UTCTime);
END
GO
/*=========================
18-Nov-2020 END
=========================*/


/*=========================
18-Nov-2020 START
=========================*/
SET NOCOUNT ON
SET QUOTED_IDENTIFIER ON
DECLARE @UserID BIGINT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID)
DECLARE @UTCTime DATETIME = GETUTCDATE()
 , @ModuleID NVARCHAR(500)
 , @FormID NVARCHAR(500)
 , @Role NVARCHAR(500)
 , @HasReadPermission NVARCHAR(500)
 , @IsFavourite NVARCHAR(500)
 , @FavouriteOrder NVARCHAR(500)
 , @SubAudit NVARCHAR(500)
 , @Audit NVARCHAR(500)
 , @ValidateChecksum NVARCHAR(500)
DECLARE @RoleID BIGINT, @ButtonList NVARCHAR(500), @TabList NVARCHAR(500), @MainMenuOrder BIGINT, @SubMenuOrder BIGINT 
DECLARE @ObjectName NVARCHAR(100) = 'Static Forms_FormPermission_Insert_18Nov2020_134142'

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
  SET @ModuleID = N'2';
  SET @FormID = N'200';
  SET @Role = N'Admin';
  SET @HasReadPermission = 1;
  SET @IsFavourite = 0;
  SET @FavouriteOrder = N'0';
  SET @SubAudit = 1;
  SET @Audit = 1;
  SET @ValidateChecksum = 1;
  SET @RoleID = ISNULL((SELECT CodemasterID FROM CmnCodeMaster WHERE Type = 'Roles' AND TypeValues = @Role), 1)
  SET @ButtonList = ISNULL(SUBSTRING((SELECT ','+ ISNULL(CAST(CodemasterID AS VARCHAR(50)), '') FROM CmnCodeMaster WHERE Type = 'Menubutton' AND MenuID = @FormID FOR XML PATH('')), 2, 2000), '')
  SET @TabList = ISNULL(SUBSTRING((SELECT ','+ ISNULL(CAST(TabID AS VARCHAR(50)), '') FROM CmnFormTabs WHERE FormID = @FormID FOR XML PATH('')), 2, 2000), '')
  SELECT @MainMenuOrder = MainMenuOrder, @SubMenuOrder = SubMenuOrder FROM CmnFormDetails WHERE FormID = @FormID

  INSERT INTO CmnRolePermission (RoleID, Tabs, Buttons, MainMenuOrder, SubMenuOrder, 
      FormID, HasReadPermission, IsFavourite, FavouriteOrder, SubAudit, Audit, ValidateChecksum
    , CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  SELECT @RoleID, @TabList, @ButtonList, @MainMenuOrder, @SubMenuOrder, 
    @FormID, @HasReadPermission, @IsFavourite, @FavouriteOrder, @SubAudit, @Audit, @ValidateChecksum
    , @UserID, @UTCTime, @UserID, @UTCTime, 0
  WHERE NOT EXISTS (SELECT 1 FROM CmnRolePermission WHERE RoleID = @RoleID AND FormID = @FormID AND IsDeleted = 0)

  INSERT INTO CmnRBSPermission (UserID, Tabs, Buttons, MainMenuOrder, SubMenuOrder, 
      FormID, HasReadPermission, IsFavourite, FavouriteOrder, SubAudit, Audit, ValidateChecksum
    , CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  SELECT E.UserID, @TabList, @ButtonList, @MainMenuOrder, @SubMenuOrder, 
    @FormID, @HasReadPermission, @IsFavourite, @FavouriteOrder, @SubAudit, @Audit, @ValidateChecksum
    , @UserID, @UTCTime, @UserID, @UTCTime, 0
  FROM CmnUserDetails
E
  WHERE E.RoleID = @RoleID
    AND NOT EXISTS (SELECT 1 FROM CmnRBSPermission RBS WHERE RBS.UserID = E.UserID AND RBS.FormID = @FormID AND RBS.IsDeleted = 0)
  INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
 VALUES(@ObjectName, 'Static Forms_FormPermission_Insert_18Nov2020_134142', @UTCTime);
END
GO
/*=========================
18-Nov-2020 END
=========================*/
/*=========================
16-Nov-2020 START
=========================*/
SET NOCOUNT ON
SET QUOTED_IDENTIFIER ON
DECLARE @UserID BIGINT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID)
DECLARE @UTCTime DATETIME = GETUTCDATE()
 , @FormID NVARCHAR(500)
 , @Name NVARCHAR(500)
 , @DisplayName NVARCHAR(500)
 , @ParentMenu NVARCHAR(500)
 , @MenuOrder NVARCHAR(500)
 , @FormType NVARCHAR(500)
 , @ModuleID NVARCHAR(500)
 , @AuditTrail NVARCHAR(500)
 , @TableName NVARCHAR(500)
 , @KeyColumn NVARCHAR(500)
 , @FormIcon NVARCHAR(500)
 , @FormPath NVARCHAR(500)
DECLARE @ObjectName NVARCHAR(100) = 'Static Forms_Form_Insert_16Nov2020_152807'
DECLARE @MainMenuOrder BIGINT, @SubMenuOrder BIGINT, @MainMenu1 BIGINT 

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
  SET @FormID = 206;
  SET @Name = N'Master Data';
  SET @DisplayName = N'Master Data';
  SET @MainMenu1 = 200;
  SET @MainMenuOrder = 0;  SET @SubMenuOrder = 10;
  SET @FormType = 7;
  SET @ModuleID = 2;
  SET @AuditTrail = 0;
  SET @TableName = NULL;
  SET @KeyColumn = NULL;
  SET @FormIcon = N'fa-database';
 SET @FormPath = N'MasterData';


  IF NOT EXISTS (SELECT 1 FROM CmnFormDetails WHERE FormID = @FormID)
  BEGIN
    INSERT INTO CmnFormDetails (FormPath,MainMenuOrder,SubMenuOrder,MainMenu1,FormType,
      FormID, Name, DisplayName, ModuleID, AuditTrail, TableName, KeyColumn, FormIcon
      , IsDeleted, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate)
    SELECT @FormPath,@MainMenuOrder,@SubMenuOrder,@MainMenu1,@FormType,
    @FormID, @Name, @DisplayName, @ModuleID, @AuditTrail, @TableName, @KeyColumn, @FormIcon
      , 0, @UserID, @UTCTime, @UserID, @UTCTime
  END

  SET @FormID = 100;
  SET @Name = N'RBS Permission';
  SET @DisplayName = N'RBS Permission';
  SET @MainMenu1 = NULL;
  SET @MainMenuOrder = 1;  SET @SubMenuOrder = 0;
  SET @FormType = 0;
  SET @ModuleID = 1;
  SET @AuditTrail = 0;
  SET @TableName = NULL;
  SET @KeyColumn = NULL;
  SET @FormIcon = N'fa-database';
 SET @FormPath = N'';


  IF NOT EXISTS (SELECT 1 FROM CmnFormDetails WHERE FormID = @FormID)
  BEGIN
    INSERT INTO CmnFormDetails (FormPath,MainMenuOrder,SubMenuOrder,MainMenu1,FormType,
      FormID, Name, DisplayName, ModuleID, AuditTrail, TableName, KeyColumn, FormIcon
      , IsDeleted, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate)
    SELECT @FormPath,@MainMenuOrder,@SubMenuOrder,@MainMenu1,@FormType,
    @FormID, @Name, @DisplayName, @ModuleID, @AuditTrail, @TableName, @KeyColumn, @FormIcon
      , 0, @UserID, @UTCTime, @UserID, @UTCTime
  END

  SET @FormID = 101;
  SET @Name = N'User Permission';
  SET @DisplayName = N'User Permission';
  SET @MainMenu1 = 100;
  SET @MainMenuOrder = 0;  SET @SubMenuOrder = 1;
  SET @FormType = 7;
  SET @ModuleID = 1;
  SET @AuditTrail = 0;
  SET @TableName = NULL;
  SET @KeyColumn = NULL;
  SET @FormIcon = N'fa-database';
 SET @FormPath = N'UserPermission';


  IF NOT EXISTS (SELECT 1 FROM CmnFormDetails WHERE FormID = @FormID)
  BEGIN
    INSERT INTO CmnFormDetails (FormPath,MainMenuOrder,SubMenuOrder,MainMenu1,FormType,
      FormID, Name, DisplayName, ModuleID, AuditTrail, TableName, KeyColumn, FormIcon
      , IsDeleted, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate)
    SELECT @FormPath,@MainMenuOrder,@SubMenuOrder,@MainMenu1,@FormType,
    @FormID, @Name, @DisplayName, @ModuleID, @AuditTrail, @TableName, @KeyColumn, @FormIcon
      , 0, @UserID, @UTCTime, @UserID, @UTCTime
  END

  SET @FormID = 102;
  SET @Name = N'Role Permission';
  SET @DisplayName = N'Role Permission';
  SET @MainMenu1 = 100;
  SET @MainMenuOrder = 0;  SET @SubMenuOrder = 2;
  SET @FormType = 7;
  SET @ModuleID = 1;
  SET @AuditTrail = 0;
  SET @TableName = NULL;
  SET @KeyColumn = NULL;
  SET @FormIcon = N'fa-database';
 SET @FormPath = N'RolePermission';


  IF NOT EXISTS (SELECT 1 FROM CmnFormDetails WHERE FormID = @FormID)
  BEGIN
    INSERT INTO CmnFormDetails (FormPath,MainMenuOrder,SubMenuOrder,MainMenu1,FormType,
      FormID, Name, DisplayName, ModuleID, AuditTrail, TableName, KeyColumn, FormIcon
      , IsDeleted, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate)
    SELECT @FormPath,@MainMenuOrder,@SubMenuOrder,@MainMenu1,@FormType,
    @FormID, @Name, @DisplayName, @ModuleID, @AuditTrail, @TableName, @KeyColumn, @FormIcon
      , 0, @UserID, @UTCTime, @UserID, @UTCTime
  END

  INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
 VALUES(@ObjectName, 'Static Forms_Form_Insert_16Nov2020_152807', @UTCTime);
END
GO
/*=========================
16-Nov-2020 END
=========================*/
/*=========================
16-Nov-2020 START
=========================*/
SET NOCOUNT ON
SET QUOTED_IDENTIFIER ON
DECLARE @UserID BIGINT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID)
DECLARE @UTCTime DATETIME = GETUTCDATE()
 , @Type NVARCHAR(500)
 , @CodemasterID NVARCHAR(500)
 , @DisplayType NVARCHAR(500)
 , @TypeValues NVARCHAR(500)
 , @Code NVARCHAR(500)
 , @Description NVARCHAR(500)
 , @Category NVARCHAR(500)
 , @Remarks NVARCHAR(500)
 , @UserAccess NVARCHAR(500)
 , @OrderBy NVARCHAR(500)
 , @AvailableStatus NVARCHAR(500)
 , @ImagePath NVARCHAR(500)
 , @MenuID NVARCHAR(500)
 , @ModuleID NVARCHAR(500)
 , @ButtonKeyColumn NVARCHAR(500)
 , @Details NVARCHAR(500)
 , @ConditionCheck NVARCHAR(500)
 , @MenuCategory NVARCHAR(500)
DECLARE @MaxID BIGINT = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
DECLARE @ObjectName NVARCHAR(100) = 'Static Forms_CodeMaster_Insert_16Nov2020_152807'

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
  SET @Type = N'Menubutton';
  SET @CodemasterID = NULL;
  SET @DisplayType = N'Menubutton';
  SET @TypeValues = N'Add Type';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 1;
  SET @OrderBy = 1;
  SET @AvailableStatus = N'';
  SET @ImagePath = N'fa-save';
  SET @MenuID = N'206';
  SET @ModuleID = 0;
  SET @ButtonKeyColumn = N'';
  SET @Details = N'MD.dmlMasterData(''add type''),MD.openPopup(''add type'')';
  SET @ConditionCheck = N'Form';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN ISNULL(@OrderBy, '') = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  Typevalues = @TypeValues AND MenuID = @MenuID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, AvailableStatus, ImagePath, MenuID, ModuleID, ButtonKeyColumn, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @AvailableStatus, @ImagePath, @MenuID, @ModuleID, @ButtonKeyColumn, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Menubutton';
  SET @CodemasterID = NULL;
  SET @DisplayType = N'Menubutton';
  SET @TypeValues = N'Add';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 1;
  SET @OrderBy = 2;
  SET @AvailableStatus = N'3,4,6';
  SET @ImagePath = N'fa-save';
  SET @MenuID = N'206';
  SET @ModuleID = 0;
  SET @ButtonKeyColumn = N'UserAccess';
  SET @Details = N'MD.dmlMasterData(''add''),MD.openPopup(''add'')';
  SET @ConditionCheck = N'Form';
  SET @MenuCategory = 2;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN ISNULL(@OrderBy, '') = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  Typevalues = @TypeValues AND MenuID = @MenuID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, AvailableStatus, ImagePath, MenuID, ModuleID, ButtonKeyColumn, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @AvailableStatus, @ImagePath, @MenuID, @ModuleID, @ButtonKeyColumn, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Menubutton';
  SET @CodemasterID = NULL;
  SET @DisplayType = N'Menubutton';
  SET @TypeValues = N'Update';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 1;
  SET @OrderBy = 3;
  SET @AvailableStatus = N'3,5,6';
  SET @ImagePath = N'fa-save';
  SET @MenuID = N'206';
  SET @ModuleID = 0;
  SET @ButtonKeyColumn = N'UserAccess';
  SET @Details = N'MD.dmlMasterData(''update''),MD.openPopup(''edit'')';
  SET @ConditionCheck = N'Form';
  SET @MenuCategory = 1;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN ISNULL(@OrderBy, '') = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  Typevalues = @TypeValues AND MenuID = @MenuID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, AvailableStatus, ImagePath, MenuID, ModuleID, ButtonKeyColumn, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @AvailableStatus, @ImagePath, @MenuID, @ModuleID, @ButtonKeyColumn, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Menubutton';
  SET @CodemasterID = NULL;
  SET @DisplayType = N'Menubutton';
  SET @TypeValues = N'Delete';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 1;
  SET @OrderBy = 4;
  SET @AvailableStatus = N'6';
  SET @ImagePath = N'fa-trash-o';
  SET @MenuID = N'206';
  SET @ModuleID = 0;
  SET @ButtonKeyColumn = N'UserAccess';
  SET @Details = N'MD.deleteMasterData()';
  SET @ConditionCheck = N'Form';
  SET @MenuCategory = 1;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN ISNULL(@OrderBy, '') = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  Typevalues = @TypeValues AND MenuID = @MenuID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, AvailableStatus, ImagePath, MenuID, ModuleID, ButtonKeyColumn, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @AvailableStatus, @ImagePath, @MenuID, @ModuleID, @ButtonKeyColumn, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Menubutton';
  SET @CodemasterID = NULL;
  SET @DisplayType = N'Menubutton';
  SET @TypeValues = N'Update';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 1;
  SET @OrderBy = 1;
  SET @AvailableStatus = N'';
  SET @ImagePath = N'fa-save';
  SET @MenuID = N'101';
  SET @ModuleID = 0;
  SET @ButtonKeyColumn = N'';
  SET @Details = N'CMNF.gridDml()';
  SET @ConditionCheck = N'Form';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN ISNULL(@OrderBy, '') = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  Typevalues = @TypeValues AND MenuID = @MenuID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, AvailableStatus, ImagePath, MenuID, ModuleID, ButtonKeyColumn, Details, MenuCategory, ButtonType
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @AvailableStatus, @ImagePath, @MenuID, @ModuleID, @ButtonKeyColumn, @Details, @MenuCategory, 2
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Menubutton';
  SET @CodemasterID = NULL;
  SET @DisplayType = N'Menubutton';
  SET @TypeValues = N'Update';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 1;
  SET @OrderBy = 1;
  SET @AvailableStatus = N'';
  SET @ImagePath = N'fa-save';
  SET @MenuID = N'102';
  SET @ModuleID = 0;
  SET @ButtonKeyColumn = N'';
  SET @Details = N'CMNF.gridDml()';
  SET @ConditionCheck = N'Form';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN ISNULL(@OrderBy, '') = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  Typevalues = @TypeValues AND MenuID = @MenuID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, AvailableStatus, ImagePath, MenuID, ModuleID, ButtonKeyColumn, Details, MenuCategory, ButtonType
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @AvailableStatus, @ImagePath, @MenuID, @ModuleID, @ButtonKeyColumn, @Details, @MenuCategory, 2
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
 VALUES(@ObjectName, 'Static Forms_CodeMaster_Insert_16Nov2020_152807', @UTCTime);
END
GO
/*=========================
16-Nov-2020 END
=========================*/
/*=========================
16-Nov-2020 START
=========================*/
SET NOCOUNT ON
SET QUOTED_IDENTIFIER ON
DECLARE @UserID BIGINT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID)
DECLARE @UTCTime DATETIME = GETUTCDATE()
 , @ModuleID NVARCHAR(500)
 , @FormID NVARCHAR(500)
 , @Role NVARCHAR(500)
 , @HasReadPermission NVARCHAR(500)
 , @IsFavourite NVARCHAR(500)
 , @FavouriteOrder NVARCHAR(500)
 , @SubAudit NVARCHAR(500)
 , @Audit NVARCHAR(500)
 , @ValidateChecksum NVARCHAR(500)
DECLARE @RoleID BIGINT, @ButtonList NVARCHAR(500), @TabList NVARCHAR(500), @MainMenuOrder BIGINT, @SubMenuOrder BIGINT 
DECLARE @ObjectName NVARCHAR(100) = 'Static Forms_FormPermission_Insert_16Nov2020_152807'

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
  SET @ModuleID = N'2';
  SET @FormID = N'206';
  SET @Role = N'Admin';
  SET @HasReadPermission = 1;
  SET @IsFavourite = 0;
  SET @FavouriteOrder = N'0';
  SET @SubAudit = 1;
  SET @Audit = 1;
  SET @ValidateChecksum = 1;
  SET @RoleID = ISNULL((SELECT CodemasterID FROM CmnCodeMaster WHERE Type = 'Roles' AND TypeValues = @Role), 1)
  SET @ButtonList = ISNULL(SUBSTRING((SELECT ','+ ISNULL(CAST(CodemasterID AS VARCHAR(50)), '') FROM CmnCodeMaster WHERE Type = 'Menubutton' AND MenuID = @FormID FOR XML PATH('')), 2, 2000), '')
  SET @TabList = ISNULL(SUBSTRING((SELECT ','+ ISNULL(CAST(TabID AS VARCHAR(50)), '') FROM CmnFormTabs WHERE FormID = @FormID FOR XML PATH('')), 2, 2000), '')
  SELECT @MainMenuOrder = MainMenuOrder, @SubMenuOrder = SubMenuOrder FROM CmnFormDetails WHERE FormID = @FormID

  INSERT INTO CmnRolePermission (RoleID, Tabs, Buttons, MainMenuOrder, SubMenuOrder, 
      FormID, HasReadPermission, IsFavourite, FavouriteOrder, SubAudit, Audit, ValidateChecksum
    , CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  SELECT @RoleID, @TabList, @ButtonList, @MainMenuOrder, @SubMenuOrder, 
    @FormID, @HasReadPermission, @IsFavourite, @FavouriteOrder, @SubAudit, @Audit, @ValidateChecksum
    , @UserID, @UTCTime, @UserID, @UTCTime, 0
  WHERE NOT EXISTS (SELECT 1 FROM CmnRolePermission WHERE RoleID = @RoleID AND FormID = @FormID AND IsDeleted = 0)

  INSERT INTO CmnRBSPermission (UserID, Tabs, Buttons, MainMenuOrder, SubMenuOrder, 
      FormID, HasReadPermission, IsFavourite, FavouriteOrder, SubAudit, Audit, ValidateChecksum
    , CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  SELECT E.UserID, @TabList, @ButtonList, @MainMenuOrder, @SubMenuOrder, 
    @FormID, @HasReadPermission, @IsFavourite, @FavouriteOrder, @SubAudit, @Audit, @ValidateChecksum
    , @UserID, @UTCTime, @UserID, @UTCTime, 0
  FROM CmnUserDetails
E
  WHERE PATINDEX(CONCAT('%,', CAST(@RoleID AS VARCHAR(50)), ',%'), CONCAT(',', E.RoleID, ',')) > 0
    AND NOT EXISTS (SELECT 1 FROM CmnRBSPermission RBS WHERE RBS.UserID = E.UserID AND RBS.FormID = @FormID AND RBS.IsDeleted = 0)
  SET @ModuleID = N'1';
  SET @FormID = N'100';
  SET @Role = N'Admin';
  SET @HasReadPermission = 1;
  SET @IsFavourite = 0;
  SET @FavouriteOrder = N'0';
  SET @SubAudit = 0;
  SET @Audit = 0;
  SET @ValidateChecksum = 0;
  SET @RoleID = ISNULL((SELECT CodemasterID FROM CmnCodeMaster WHERE Type = 'Roles' AND TypeValues = @Role), 1)
  SET @ButtonList = ISNULL(SUBSTRING((SELECT ','+ ISNULL(CAST(CodemasterID AS VARCHAR(50)), '') FROM CmnCodeMaster WHERE Type = 'Menubutton' AND MenuID = @FormID FOR XML PATH('')), 2, 2000), '')
  SET @TabList = ISNULL(SUBSTRING((SELECT ','+ ISNULL(CAST(TabID AS VARCHAR(50)), '') FROM CmnFormTabs WHERE FormID = @FormID FOR XML PATH('')), 2, 2000), '')
  SELECT @MainMenuOrder = MainMenuOrder, @SubMenuOrder = SubMenuOrder FROM CmnFormDetails WHERE FormID = @FormID

  INSERT INTO CmnRolePermission (RoleID, Tabs, Buttons, MainMenuOrder, SubMenuOrder, 
      FormID, HasReadPermission, IsFavourite, FavouriteOrder, SubAudit, Audit, ValidateChecksum
    , CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  SELECT @RoleID, @TabList, @ButtonList, @MainMenuOrder, @SubMenuOrder, 
    @FormID, @HasReadPermission, @IsFavourite, @FavouriteOrder, @SubAudit, @Audit, @ValidateChecksum
    , @UserID, @UTCTime, @UserID, @UTCTime, 0
  WHERE NOT EXISTS (SELECT 1 FROM CmnRolePermission WHERE RoleID = @RoleID AND FormID = @FormID AND IsDeleted = 0)

  INSERT INTO CmnRBSPermission (UserID, Tabs, Buttons, MainMenuOrder, SubMenuOrder, 
      FormID, HasReadPermission, IsFavourite, FavouriteOrder, SubAudit, Audit, ValidateChecksum
    , CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  SELECT E.UserID, @TabList, @ButtonList, @MainMenuOrder, @SubMenuOrder, 
    @FormID, @HasReadPermission, @IsFavourite, @FavouriteOrder, @SubAudit, @Audit, @ValidateChecksum
    , @UserID, @UTCTime, @UserID, @UTCTime, 0
  FROM CmnUserDetails
E
  WHERE PATINDEX(CONCAT('%,', CAST(@RoleID AS VARCHAR(50)), ',%'), CONCAT(',', E.RoleID, ',')) > 0
    AND NOT EXISTS (SELECT 1 FROM CmnRBSPermission RBS WHERE RBS.UserID = E.UserID AND RBS.FormID = @FormID AND RBS.IsDeleted = 0)
  SET @ModuleID = N'1';
  SET @FormID = N'101';
  SET @Role = N'Admin';
  SET @HasReadPermission = 1;
  SET @IsFavourite = 0;
  SET @FavouriteOrder = N'0';
  SET @SubAudit = 1;
  SET @Audit = 1;
  SET @ValidateChecksum = 1;
  SET @RoleID = ISNULL((SELECT CodemasterID FROM CmnCodeMaster WHERE Type = 'Roles' AND TypeValues = @Role), 1)
  SET @ButtonList = ISNULL(SUBSTRING((SELECT ','+ ISNULL(CAST(CodemasterID AS VARCHAR(50)), '') FROM CmnCodeMaster WHERE Type = 'Menubutton' AND MenuID = @FormID FOR XML PATH('')), 2, 2000), '')
  SET @TabList = ISNULL(SUBSTRING((SELECT ','+ ISNULL(CAST(TabID AS VARCHAR(50)), '') FROM CmnFormTabs WHERE FormID = @FormID FOR XML PATH('')), 2, 2000), '')
  SELECT @MainMenuOrder = MainMenuOrder, @SubMenuOrder = SubMenuOrder FROM CmnFormDetails WHERE FormID = @FormID

  INSERT INTO CmnRolePermission (RoleID, Tabs, Buttons, MainMenuOrder, SubMenuOrder, 
      FormID, HasReadPermission, IsFavourite, FavouriteOrder, SubAudit, Audit, ValidateChecksum
    , CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  SELECT @RoleID, @TabList, @ButtonList, @MainMenuOrder, @SubMenuOrder, 
    @FormID, @HasReadPermission, @IsFavourite, @FavouriteOrder, @SubAudit, @Audit, @ValidateChecksum
    , @UserID, @UTCTime, @UserID, @UTCTime, 0
  WHERE NOT EXISTS (SELECT 1 FROM CmnRolePermission WHERE RoleID = @RoleID AND FormID = @FormID AND IsDeleted = 0)

  INSERT INTO CmnRBSPermission (UserID, Tabs, Buttons, MainMenuOrder, SubMenuOrder, 
      FormID, HasReadPermission, IsFavourite, FavouriteOrder, SubAudit, Audit, ValidateChecksum
    , CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  SELECT E.UserID, @TabList, @ButtonList, @MainMenuOrder, @SubMenuOrder, 
    @FormID, @HasReadPermission, @IsFavourite, @FavouriteOrder, @SubAudit, @Audit, @ValidateChecksum
    , @UserID, @UTCTime, @UserID, @UTCTime, 0
  FROM CmnUserDetails
E
  WHERE PATINDEX(CONCAT('%,', CAST(@RoleID AS VARCHAR(50)), ',%'), CONCAT(',', E.RoleID, ',')) > 0
    AND NOT EXISTS (SELECT 1 FROM CmnRBSPermission RBS WHERE RBS.UserID = E.UserID AND RBS.FormID = @FormID AND RBS.IsDeleted = 0)
  SET @ModuleID = N'1';
  SET @FormID = N'102';
  SET @Role = N'Admin';
  SET @HasReadPermission = 1;
  SET @IsFavourite = 0;
  SET @FavouriteOrder = N'0';
  SET @SubAudit = 1;
  SET @Audit = 1;
  SET @ValidateChecksum = 1;
  SET @RoleID = ISNULL((SELECT CodemasterID FROM CmnCodeMaster WHERE Type = 'Roles' AND TypeValues = @Role), 1)
  SET @ButtonList = ISNULL(SUBSTRING((SELECT ','+ ISNULL(CAST(CodemasterID AS VARCHAR(50)), '') FROM CmnCodeMaster WHERE Type = 'Menubutton' AND MenuID = @FormID FOR XML PATH('')), 2, 2000), '')
  SET @TabList = ISNULL(SUBSTRING((SELECT ','+ ISNULL(CAST(TabID AS VARCHAR(50)), '') FROM CmnFormTabs WHERE FormID = @FormID FOR XML PATH('')), 2, 2000), '')
  SELECT @MainMenuOrder = MainMenuOrder, @SubMenuOrder = SubMenuOrder FROM CmnFormDetails WHERE FormID = @FormID

  INSERT INTO CmnRolePermission (RoleID, Tabs, Buttons, MainMenuOrder, SubMenuOrder, 
      FormID, HasReadPermission, IsFavourite, FavouriteOrder, SubAudit, Audit, ValidateChecksum
    , CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  SELECT @RoleID, @TabList, @ButtonList, @MainMenuOrder, @SubMenuOrder, 
    @FormID, @HasReadPermission, @IsFavourite, @FavouriteOrder, @SubAudit, @Audit, @ValidateChecksum
    , @UserID, @UTCTime, @UserID, @UTCTime, 0
  WHERE NOT EXISTS (SELECT 1 FROM CmnRolePermission WHERE RoleID = @RoleID AND FormID = @FormID AND IsDeleted = 0)

  INSERT INTO CmnRBSPermission (UserID, Tabs, Buttons, MainMenuOrder, SubMenuOrder, 
      FormID, HasReadPermission, IsFavourite, FavouriteOrder, SubAudit, Audit, ValidateChecksum
    , CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  SELECT E.UserID, @TabList, @ButtonList, @MainMenuOrder, @SubMenuOrder, 
    @FormID, @HasReadPermission, @IsFavourite, @FavouriteOrder, @SubAudit, @Audit, @ValidateChecksum
    , @UserID, @UTCTime, @UserID, @UTCTime, 0
  FROM CmnUserDetails
E
  WHERE PATINDEX(CONCAT('%,', CAST(@RoleID AS VARCHAR(50)), ',%'), CONCAT(',', E.RoleID, ',')) > 0
    AND NOT EXISTS (SELECT 1 FROM CmnRBSPermission RBS WHERE RBS.UserID = E.UserID AND RBS.FormID = @FormID AND RBS.IsDeleted = 0)
  INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
 VALUES(@ObjectName, 'Static Forms_FormPermission_Insert_16Nov2020_152807', @UTCTime);
END
GO
/*=========================
16-Nov-2020 END
=========================*/

/*=========================
04-May-2021 START
=========================*/
SET NOCOUNT ON
SET QUOTED_IDENTIFIER ON
DECLARE @UserID BIGINT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID)
DECLARE @UTCTime DATETIME = GETUTCDATE(),
  @Type NVARCHAR(500),
  @CodemasterID INT,
  @TypeValues NVARCHAR(500),
  @Code NVARCHAR(500),
  @Description NVARCHAR(500),
  @Remarks NVARCHAR(500),
  @ModuleID INT,
	@FormID INT,
	@MenuCategory INT,
  @Category NVARCHAR(500),
  @UserAccess NVARCHAR(500),
  @ImagePath NVARCHAR(500),
  @Details NVARCHAR(500),
  @OrderBy NVARCHAR(500),
  @ConditionCheck NVARCHAR(500),
	@Role NVARCHAR(200) = '',
	@RoleID INT = 0,
	@ButtonList VARCHAR(500) = ''
DECLARE @MaxID BIGINT = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
DECLARE @ObjectName NVARCHAR(100) = 'UserPermission_MenuButton_Insert_04-May-2021'

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	SET @Type = 'MenuButton';
  SET @TypeValues = 'RBS Data Variable';
  SET @CodemasterID = ISNULL((SELECT MAX(CodemasterID) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
  SET @UserAccess = 1;
	SET @ModuleID = 1;
  SET @FormID = 101;
  SET @Role = 'Admin';
  SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
  SET @Code = 0;
  SET @Description = '';
  SET @Remarks = '';
  SET @Category = '';
  SET @ModuleID = 0;
  SET @ImagePath = 'fa-universal-access';
  SET @Details = 'USERRBS.openRbsDataVariablePopup()';
	SET @MenuCategory = 0;
	
	IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND MenuID = @FormID AND Typevalues = @TypeValues)
	BEGIN
		INSERT INTO CmnCodeMaster (Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, MenuID, ButtonType,
			Category, UserAccess, ImagePath, Details, MenuCategory, OrderBy, Version, IsCurrentVersion, 
			NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
		SELECT @Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @FormID, 2, @Category, @UserAccess, @ImagePath, 
			@Details, @MenuCategory, @OrderBy, 1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
	END

	SET @RoleID = ISNULL((SELECT CodemasterID FROM CmnCodeMaster WHERE Type = 'Roles' AND TypeValues = @Role), 0);
  SET @ButtonList =  ISNULL(SUBSTRING((SELECT ',' + CONVERT(VARCHAR(50), CodemasterID) FROM CmnCodeMaster WHERE Type = 'MenuButton' AND MenuID = @FormID
			 FOR XML PATH(''), ROOT('MyString'), TYPE).value('/MyString[1]','NVARCHAR(MAX)'), 2, 4000000000), '');

  UPDATE CmnRolePermission
  SET Buttons = @ButtonList,
    ModifiedBy = @UserID,
    ModifiedDate = @UTCTime
  WHERE RoleID = @RoleID AND FormID = @FormID AND ISNULL(IsDeleted, 0) = 0;

  UPDATE RBS
  SET Buttons = @ButtonList,
    ModifiedBy = @UserID,
    ModifiedDate = @UTCTime
	FROM CmnRBSPermission RBS
    JOIN CmnUserDetails UD ON UD.UserID = RBS.UserID AND ISNULL(UD.IsDeleted, 0) = 0
  WHERE PATINDEX(CONCAT('%,', CAST(@RoleID AS VARCHAR(50)), ',%'), CONCAT(',', UD.RoleID, ',')) > 0 AND RBS.FormID = @FormID AND ISNULL(RBS.IsDeleted, 0) = 0;
  
  INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
  VALUES(@ObjectName, 'UserPermission_MenuButton_Insert_04-May-2021', @UTCTime)
END
GO
/*=========================
04-May-2021 END
=========================*/

/*=========================
07-May-2021 START
=========================*/
SET NOCOUNT ON
SET QUOTED_IDENTIFIER ON
DECLARE @UserID BIGINT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID)
DECLARE @UTCTime DATETIME = GETUTCDATE(),
  @Type NVARCHAR(500),
  @CodemasterID INT,
  @TypeValues NVARCHAR(500),
  @Code NVARCHAR(500),
  @Description NVARCHAR(500),
  @Remarks NVARCHAR(500),
  @ModuleID INT,
	@FormID INT,
	@MenuCategory INT,
  @Category NVARCHAR(500),
  @UserAccess NVARCHAR(500),
  @ImagePath NVARCHAR(500),
  @Details NVARCHAR(500),
  @OrderBy NVARCHAR(500),
  @ConditionCheck NVARCHAR(500),
	@Role NVARCHAR(200) = '',
	@RoleID INT = 0,
	@ButtonList VARCHAR(500) = ''
DECLARE @MaxID BIGINT = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
DECLARE @ObjectName NVARCHAR(100) = 'RolePermission_MenuButton_Insert_06-May-2021'

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	SET @Type = 'MenuButton';
  SET @TypeValues = 'RBS Data Variable';
  SET @CodemasterID = ISNULL((SELECT MAX(CodemasterID) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
  SET @UserAccess = 1;
	SET @ModuleID = 1;
  SET @FormID = 102;
  SET @Role = 'Admin';
  SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
  SET @Code = 0;
  SET @Description = '';
  SET @Remarks = '';
  SET @Category = '';
  SET @ModuleID = 0;
  SET @ImagePath = 'fa-universal-access';
  SET @Details = 'RBSDV.openRbsDataVariablePopup()';
	SET @MenuCategory = 0;
	
	IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND MenuID = @FormID AND Typevalues = @TypeValues)
	BEGIN
		INSERT INTO CmnCodeMaster (Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, MenuID, ButtonType,
			Category, UserAccess, ImagePath, Details, MenuCategory, OrderBy, Version, IsCurrentVersion, 
			NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
		SELECT @Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @FormID, 2, @Category, @UserAccess, @ImagePath, 
			@Details, @MenuCategory, @OrderBy, 1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
	END

	SET @RoleID = ISNULL((SELECT CodemasterID FROM CmnCodeMaster WHERE Type = 'Roles' AND TypeValues = @Role), 0);
  SET @ButtonList =  ISNULL(SUBSTRING((SELECT ',' + CONVERT(VARCHAR(50), CodemasterID) FROM CmnCodeMaster WHERE Type = 'MenuButton' AND MenuID = @FormID
			 FOR XML PATH(''), ROOT('MyString'), TYPE).value('/MyString[1]','NVARCHAR(MAX)'), 2, 4000000000), '');

  UPDATE CmnRolePermission
  SET Buttons = @ButtonList,
    ModifiedBy = @UserID,
    ModifiedDate = @UTCTime
  WHERE RoleID = @RoleID AND FormID = @FormID AND ISNULL(IsDeleted, 0) = 0;

  UPDATE RBS
  SET Buttons = @ButtonList,
    ModifiedBy = @UserID,
    ModifiedDate = @UTCTime
	FROM CmnRBSPermission RBS
    JOIN CmnUserDetails UD ON UD.UserID = RBS.UserID AND ISNULL(UD.IsDeleted, 0) = 0
  WHERE PATINDEX(CONCAT('%,', CAST(@RoleID AS VARCHAR(50)), ',%'), CONCAT(',', UD.RoleID, ',')) > 0 AND RBS.FormID = @FormID AND ISNULL(RBS.IsDeleted, 0) = 0;

	UPDATE CmnCodeMaster
	SET Details = @Details,
		ModifiedBy = @UserID,
		ModifiedDate = @UTCTime,
		ModifiedDateGMT = @GMTTime
	WHERE Type = @Type AND MenuID = 101 AND Typevalues = @TypeValues;
  
  INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
  VALUES(@ObjectName, 'RolePermission_MenuButton_Insert_06-May-2021', @UTCTime)
END
GO
/*=========================
07-May-2021 END
=========================*/

/*=========================
10-May-2021 START
=========================*/
SET NOCOUNT ON
SET QUOTED_IDENTIFIER ON
DECLARE @UserID BIGINT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID)
DECLARE @UTCTime DATETIME = GETUTCDATE()
DECLARE @FormID INT = 101, @FormName NVARCHAR(500)= 'User Permission', @TabID INT = 0, @GroupID INT = 0
DECLARE @ObjectName NVARCHAR(100) = 'RBSPermission_DataVariable_Insert_10-May-2021'

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	IF NOT EXISTS (SELECT 1 FROM CmnFormTabs WHERE FormID = @FormID AND Name = @FormName AND ISNULL(IsDeleted, 0) = 0)
	BEGIN
		INSERT INTO CmnFormTabs (FormID, Name, DisplayName, TabOrder, IsMandatory, TableName, KeyColumn, ModifiedDate, IsDeleted)
		VALUES (@FormID, @FormName, @FormName, 1, 1, '', '', GETUTCDATE(), 0)

		SET @TabID = IDENT_CURRENT('CmnFormTabs');
	END
	ELSE
		SET @TabID = ISNULL((SELECT TOP 1 TabID FROM CmnFormTabs WHERE FormID = @FormID AND Name = @FormName AND ISNULL(IsDeleted, 0) = 0), 0);

	IF NOT EXISTS (SELECT 1 FROM CmnGroupBoxes WHERE TabID = @TabID AND Name = @FormName AND ISNULL(IsDeleted, 0) = 0)
	BEGIN
		INSERT INTO CmnGroupBoxes (TabID, Name, DisplayName, GroupOrder, CommonGroup, TableName, KeyColumn, ModifiedDate, IsDeleted)
		VALUES (@TabID, @FormName, @FormName, 1, 1, '', '', GETUTCDATE(), 0)

		SET @GroupID = IDENT_CURRENT('CmnGroupBoxes');
	END
	ELSE
		SET @GroupID = ISNULL((SELECT TOP 1 GroupID FROM CmnGroupBoxes WHERE TabID = @TabID AND Name = @FormName AND ISNULL(IsDeleted, 0) = 0), 0);

	INSERT INTO CmnFormControls (GroupID, Name, TableColumn, ControlType, DataType, Visibility, Readonly, IsMandatory, MaxLength, SearchApplicable,
		SelectApplicable, IsIdentity, IsDmlControl, IsEncrypt, IsReturnFill, IsNoAdd, IsNoUpdate, FillType, FkType, FkTable, FkColumn, FkData, FkOrder, 
		FkDelete, FkNotActive, FkVersion, FkShowActive, VersionCheck, ControlOrder, ModifiedDate, IsDeleted)
	VALUES (@GroupID, 'User', 'UserID', 2, 1, 1, 1, 1, 10, 1, 1, 0, 0, 0, 1, 0, 0, 0, 2, 'CmnUserDetails', 'UserID', 'UserName', 1, 1, 0, 0, 0, 0, 1, GETUTCDATE(), 0)

	INSERT INTO CmnFormControls (GroupID, Name, TableColumn, ControlType, DataType, Visibility, Readonly, IsMandatory, MaxLength, SearchApplicable,
		SelectApplicable, IsIdentity, IsDmlControl, IsEncrypt, IsReturnFill, IsNoAdd, IsNoUpdate, FillType, FkType, FkTable, FkColumn, FkData, AdditionalConditions, FkOrder, 
		FkDelete, FkNotActive, FkVersion, FkShowActive, VersionCheck, ControlOrder, ModifiedDate, IsDeleted)
	VALUES (@GroupID, 'Branch', 'BranchID', 2, 1, 1, 1, 1, 10, 1, 1, 0, 0, 0, 1, 0, 0, 0, 2, 'MstCompanyDetails', 'ReferenceID', 'Name', 'ParentCompanyID IS NULL', 1, 1, 0, 0, 0, 0, 1, GETUTCDATE(), 0)

	INSERT INTO CmnFormControls (GroupID, Name, TableColumn, ControlType, DataType, Visibility, Readonly, IsMandatory, MaxLength, SearchApplicable,
		SelectApplicable, IsIdentity, IsDmlControl, IsEncrypt, IsReturnFill, IsNoAdd, IsNoUpdate, FillType, FkType, FkTable, FkColumn, FkData, FkOrder, 
		FkDelete, FkNotActive, FkVersion, FkShowActive, VersionCheck, ControlOrder, ModifiedDate, IsDeleted)
	VALUES (@GroupID, 'Role', 'RoleID', 2, 1, 1, 1, 1, 10, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 'Roles', 'CodemasterID', 'TypeValues', 1, 1, 0, 0, 0, 0, 1, GETUTCDATE(), 0)

	INSERT INTO CmnFormControls (GroupID, Name, TableColumn, ControlType, DataType, Visibility, Readonly, IsMandatory, MaxLength, SearchApplicable,
		SelectApplicable, IsIdentity, IsDmlControl, IsEncrypt, IsReturnFill, IsNoAdd, IsNoUpdate, FillType, FkType, FkTable, FkColumn, FkData, FkOrder, 
		FkDelete, FkNotActive, FkVersion, FkShowActive, VersionCheck, ControlOrder, ModifiedDate, IsDeleted)
	VALUES (@GroupID, 'User Type', 'UserTypeID', 2, 1, 1, 1, 1, 10, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 'Company Type', 'CodemasterID', 'TypeValues', 1, 1, 0, 0, 0, 0, 1, GETUTCDATE(), 0)

	INSERT INTO CmnFormControls (GroupID, Name, TableColumn, ControlType, DataType, Visibility, Readonly, IsMandatory, MaxLength, SearchApplicable,
		SelectApplicable, IsIdentity, IsDmlControl, IsEncrypt, IsReturnFill, IsNoAdd, IsNoUpdate, FillType, FkType, FkTable, FkColumn, FkData, FkOrder, 
		FkDelete, FkNotActive, FkVersion, FkShowActive, VersionCheck, ControlOrder, ModifiedDate, IsDeleted)
	VALUES (@GroupID, 'Module', 'ModuleID', 2, 1, 1, 1, 1, 10, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 'Module', 'CodemasterID', 'TypeValues', 1, 1, 0, 0, 0, 0, 1, GETUTCDATE(), 0)

	SET @FormID = 102;
	SET @FormName = 'Role Permission';

	IF NOT EXISTS (SELECT 1 FROM CmnFormTabs WHERE FormID = @FormID AND Name = @FormName AND ISNULL(IsDeleted, 0) = 0)
	BEGIN
		INSERT INTO CmnFormTabs (FormID, Name, DisplayName, TabOrder, IsMandatory, TableName, KeyColumn, ModifiedDate, IsDeleted)
		VALUES (@FormID, @FormName, @FormName, 1, 1, '', '', GETUTCDATE(), 0)

		SET @TabID = IDENT_CURRENT('CmnFormTabs');
	END
	ELSE
		SET @TabID = ISNULL((SELECT TOP 1 TabID FROM CmnFormTabs WHERE FormID = @FormID AND Name = @FormName AND ISNULL(IsDeleted, 0) = 0), 0);

	IF NOT EXISTS (SELECT 1 FROM CmnGroupBoxes WHERE TabID = @TabID AND Name = @FormName AND ISNULL(IsDeleted, 0) = 0)
	BEGIN
		INSERT INTO CmnGroupBoxes (TabID, Name, DisplayName, GroupOrder, CommonGroup, TableName, KeyColumn, ModifiedDate, IsDeleted)
		VALUES (@TabID, @FormName, @FormName, 1, 1, '', '', GETUTCDATE(), 0)

		SET @GroupID = IDENT_CURRENT('CmnGroupBoxes');
	END
	ELSE
		SET @GroupID = ISNULL((SELECT TOP 1 GroupID FROM CmnGroupBoxes WHERE TabID = @TabID AND Name = @FormName AND ISNULL(IsDeleted, 0) = 0), 0);

	INSERT INTO CmnFormControls (GroupID, Name, TableColumn, ControlType, DataType, Visibility, Readonly, IsMandatory, MaxLength, SearchApplicable,
		SelectApplicable, IsIdentity, IsDmlControl, IsEncrypt, IsReturnFill, IsNoAdd, IsNoUpdate, FillType, FkType, FkTable, FkColumn, FkData, FkOrder, 
		FkDelete, FkNotActive, FkVersion, FkShowActive, VersionCheck, ControlOrder, ModifiedDate, IsDeleted)
	VALUES (@GroupID, 'Role', 'RoleID', 2, 1, 1, 1, 1, 10, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 'Roles', 'CodemasterID', 'TypeValues', 1, 1, 0, 0, 0, 0, 1, GETUTCDATE(), 0)

	INSERT INTO CmnFormControls (GroupID, Name, TableColumn, ControlType, DataType, Visibility, Readonly, IsMandatory, MaxLength, SearchApplicable,
		SelectApplicable, IsIdentity, IsDmlControl, IsEncrypt, IsReturnFill, IsNoAdd, IsNoUpdate, FillType, FkType, FkTable, FkColumn, FkData, FkOrder, 
		FkDelete, FkNotActive, FkVersion, FkShowActive, VersionCheck, ControlOrder, ModifiedDate, IsDeleted)
	VALUES (@GroupID, 'Module', 'ModuleID', 2, 1, 1, 1, 1, 10, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 'Module', 'CodemasterID', 'TypeValues', 1, 1, 0, 0, 0, 0, 1, GETUTCDATE(), 0)

	INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
  VALUES(@ObjectName, 'RBSPermission_DataVariable_Insert_10-May-2021', @UTCTime)
END
GO
/*=========================
10-May-2021 END
=========================*/

/*=========================
21-Nov-2023 START
=========================*/
/* ApplyToOtherRoles Button*/

SET NOCOUNT ON
	SET QUOTED_IDENTIFIER ON
		DECLARE @UserID BIGINT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
		DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID)
		DECLARE @UTCTime DATETIME = GETUTCDATE(),
			@Type NVARCHAR(500),
			@CodemasterID INT,
			@TypeValues NVARCHAR(500),
			@Code NVARCHAR(500),
			@Description NVARCHAR(500),
			@Remarks NVARCHAR(500),
			@ModuleID INT,
			@FormID INT,
			@MenuCategory INT,
			@Category NVARCHAR(500),
			@UserAccess NVARCHAR(500),
			@ImagePath NVARCHAR(500),
			@Details NVARCHAR(500),
			@OrderBy NVARCHAR(500),
			@ConditionCheck NVARCHAR(500),
			@Role NVARCHAR(200) = '',
			@RoleID INT = 0,
			@ButtonList VARCHAR(500) = ''
		DECLARE @MaxID BIGINT = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
		DECLARE @ObjectName NVARCHAR(100) = ''

	IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
	BEGIN
		SET @Type = 'MenuButton';
		SET @TypeValues = 'Apply To Other Roles';
		SET @CodemasterID = ISNULL((SELECT MAX(CodemasterID) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
		SET @UserAccess = 1;
		SET @ModuleID = 1;
		SET @FormID =ISNULL((SELECT TOP 1 FormID FROM CmnFormDetails WHERE Name = 'Role Permission' AND IsDeleted = 0), 0);
		SET @Role = 'Admin';
		SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
		SET @Code = 0;
		SET @Description = '';
		SET @Remarks = '';
		SET @Category = '';
		SET @ModuleID = 0;
		SET @ImagePath = 'fa fa-arrow-circle-right';
		SET @Details = 'ROLERBS.openApplyToOtherRolesPopup()';
		SET @MenuCategory = 0;
	
		IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND MenuID = @FormID AND Typevalues = @TypeValues)
		BEGIN
			INSERT INTO CmnCodeMaster (Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, MenuID, ButtonType,
				Category, UserAccess, ImagePath, Details, MenuCategory, OrderBy, Version, IsCurrentVersion, 
				NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
			SELECT @Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @FormID, 2, @Category, @UserAccess, @ImagePath, 
				@Details, @MenuCategory, @OrderBy, 1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
		END

	SET @RoleID = ISNULL((SELECT CodemasterID FROM CmnCodeMaster WHERE Type = 'Roles' AND TypeValues = @Role), 0);
	SET @ButtonList =  ISNULL(SUBSTRING((SELECT ',' + CONVERT(VARCHAR(50), CodemasterID) FROM CmnCodeMaster WHERE Type = 'MenuButton' AND MenuID = @FormID
			 FOR XML PATH(''), ROOT('MyString'), TYPE).value('/MyString[1]','NVARCHAR(MAX)'), 2, 4000000000), '');

	UPDATE CmnRolePermission
	SET Buttons = @ButtonList, ModifiedBy = @UserID, ModifiedDate = @UTCTime
	WHERE RoleID = @RoleID AND FormID = @FormID AND ISNULL(IsDeleted, 0) = 0;

	UPDATE RBS
	SET Buttons = @ButtonList, ModifiedBy = @UserID, ModifiedDate = @UTCTime
	FROM CmnRBSPermission RBS
		JOIN CmnUserDetails UD ON UD.UserID = RBS.UserID AND ISNULL(UD.IsDeleted, 0) = 0
	WHERE PATINDEX(CONCAT('%,', CAST(@RoleID AS VARCHAR(50)), ',%'), CONCAT(',', UD.RoleID, ',')) > 0 AND RBS.FormID = @FormID AND ISNULL(RBS.IsDeleted, 0) = 0;

  
	INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
	VALUES(@ObjectName, 'RolePermission_MenuButton_Insert_21-Nov-2023', @UTCTime)
	END
GO

/*=========================
21-Nov-2023 END
=========================*/
/*=========================
15-Oct-2024 START
=========================*/
SET NOCOUNT ON
SET QUOTED_IDENTIFIER ON
DECLARE @UserID BIGINT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID)
DECLARE @UTCTime DATETIME = GETUTCDATE()
 , @FormID NVARCHAR(500)
 , @Name NVARCHAR(500)
 , @DisplayName NVARCHAR(500)
 , @ParentMenu NVARCHAR(500)
 , @MenuOrder NVARCHAR(500)
 , @FormType NVARCHAR(500)
 , @ModuleID NVARCHAR(500)
 , @AuditTrail NVARCHAR(500)
 , @TableName NVARCHAR(500)
 , @KeyColumn NVARCHAR(500)
 , @FormIcon NVARCHAR(500)
 , @FormPath NVARCHAR(500)
 , @Max INT
DECLARE @ObjectName NVARCHAR(100) = 'Static Forms_Form_Insert_15-Oct-2024'
DECLARE @MainMenuOrder BIGINT, @SubMenuOrder BIGINT, @MainMenu1 BIGINT 

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN

  SET @FormID = 103;
  SET @Name = N'User Permission New';
  SET @DisplayName = N'User Permission New';
  SET @MainMenu1 = 100;
  SET @MainMenuOrder = 0;  SET @SubMenuOrder = 2;
  SET @FormType = 7;
  SET @ModuleID = 1;
  SET @AuditTrail = 0;
  SET @TableName = NULL;
  SET @KeyColumn = NULL;
  SET @FormIcon = N'fa-database';
  SET @FormPath = N'UserPermissionNew';
  SET @Max = 0;

  IF EXISTS (SELECT 1 FROM CmnFormDetails WHERE FormID = @FormID AND IsDeleted = 0)
  BEGIN
	IF EXISTS (SELECT 1 FROM CmnFormDetails WHERE Name = @Name AND IsDeleted = 0)
	BEGIN
		SET @FormID = ISNULL((SELECT TOP 1 FormID FROM CmnFormDetails WHERE Name = @Name AND IsDeleted = 0), 0);
	END
	ELSE
	BEGIN
		SELECT @Max = MAX(FormID) FROM CmnFormDetails;
		SET @FormID = @Max + 1;
	END
  END
  IF NOT EXISTS (SELECT 1 FROM CmnFormDetails WHERE FormID = @FormID)
  BEGIN
    INSERT INTO CmnFormDetails (FormPath,MainMenuOrder,SubMenuOrder,MainMenu1,FormType,
      FormID, Name, DisplayName, ModuleID, AuditTrail, TableName, KeyColumn, FormIcon
      , IsDeleted, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate)
    SELECT @FormPath,@MainMenuOrder,@SubMenuOrder,@MainMenu1,@FormType,
    @FormID, @Name, @DisplayName, @ModuleID, @AuditTrail, @TableName, @KeyColumn, @FormIcon
      , 0, @UserID, @UTCTime, @UserID, @UTCTime
  END

  SET @FormID = 104;
  SET @Name = N'Role Permission New';
  SET @DisplayName = N'Role Permission New';
  SET @MainMenu1 = 100;
  SET @MainMenuOrder = 0;  SET @SubMenuOrder = 2;
  SET @FormType = 7;
  SET @ModuleID = 1;
  SET @AuditTrail = 0;
  SET @TableName = NULL;
  SET @KeyColumn = NULL;
  SET @FormIcon = N'fa-database';
  SET @FormPath = N'RolePermissionNew';

  IF EXISTS (SELECT 1 FROM CmnFormDetails WHERE FormID = @FormID AND IsDeleted = 0)
  BEGIN
	IF EXISTS (SELECT 1 FROM CmnFormDetails WHERE Name = @Name AND IsDeleted = 0)
	BEGIN
		SET @FormID = ISNULL((SELECT TOP 1 FormID FROM CmnFormDetails WHERE Name = @Name AND IsDeleted = 0), 0);
	END
	ELSE
	BEGIN
		SELECT @Max = MAX(FormID) FROM CmnFormDetails;
		SET @FormID = @Max + 1;
	END
  END

  IF NOT EXISTS (SELECT 1 FROM CmnFormDetails WHERE FormID = @FormID)
  BEGIN
    INSERT INTO CmnFormDetails (FormPath,MainMenuOrder,SubMenuOrder,MainMenu1,FormType,
      FormID, Name, DisplayName, ModuleID, AuditTrail, TableName, KeyColumn, FormIcon
      , IsDeleted, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate)
    SELECT @FormPath,@MainMenuOrder,@SubMenuOrder,@MainMenu1,@FormType,
    @FormID, @Name, @DisplayName, @ModuleID, @AuditTrail, @TableName, @KeyColumn, @FormIcon
      , 0, @UserID, @UTCTime, @UserID, @UTCTime
  END
INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
 VALUES(@ObjectName, 'Static Forms_Form_Insert_15-Oct-2024', @UTCTime);
END
GO

SET NOCOUNT ON
SET QUOTED_IDENTIFIER ON
DECLARE @UserID BIGINT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID)
DECLARE @UTCTime DATETIME = GETUTCDATE()
 , @Type NVARCHAR(500)
 , @CodemasterID NVARCHAR(500)
 , @DisplayType NVARCHAR(500)
 , @TypeValues NVARCHAR(500)
 , @Code NVARCHAR(500)
 , @Description NVARCHAR(500)
 , @Category NVARCHAR(500)
 , @Remarks NVARCHAR(500)
 , @UserAccess NVARCHAR(500)
 , @OrderBy NVARCHAR(500)
 , @AvailableStatus NVARCHAR(500)
 , @ImagePath NVARCHAR(500)
 , @MenuID NVARCHAR(500)
 , @ModuleID NVARCHAR(500)
 , @ButtonKeyColumn NVARCHAR(500)
 , @Details NVARCHAR(500)
 , @ConditionCheck NVARCHAR(500)
 , @MenuCategory NVARCHAR(500)
DECLARE @MaxID BIGINT = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
DECLARE @ObjectName NVARCHAR(100) = 'Static Forms_CodeMaster_Insert_15-Oct-2024'
IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
  SET @Type = N'Menubutton';
  SET @CodemasterID = NULL;
  SET @DisplayType = N'Menubutton';
  SET @TypeValues = N'Update';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
  SET @UserAccess = 1;
  SET @OrderBy = 1;
  SET @AvailableStatus = N'';
  SET @ImagePath = N'fa-save';
  SET @MenuID = ISNULL((SELECT TOP 1 FormID FROM CmnFormDetails WHERE Name = 'User Permission New' AND IsDeleted = 0), 0);
  SET @ModuleID = 0;
  SET @ButtonKeyColumn = N'';
  SET @Details = N'CMNF.gridDml()';
  SET @ConditionCheck = N'Form';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN ISNULL(@OrderBy, '') = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  Typevalues = @TypeValues AND MenuID = @MenuID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, AvailableStatus, ImagePath, MenuID, ModuleID, ButtonKeyColumn, Details, MenuCategory, ButtonType
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @AvailableStatus, @ImagePath, @MenuID, @ModuleID, @ButtonKeyColumn, @Details, @MenuCategory, 2
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Menubutton';
  SET @CodemasterID = NULL;
  SET @DisplayType = N'Menubutton';
  SET @TypeValues = N'Update';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
  SET @UserAccess = 1;
  SET @OrderBy = 1;
  SET @AvailableStatus = N'';
  SET @ImagePath = N'fa-save';
  SET @MenuID = ISNULL((SELECT TOP 1 FormID FROM CmnFormDetails WHERE Name = 'Role Permission New' AND IsDeleted = 0), 0);
  SET @ModuleID = 0;
  SET @ButtonKeyColumn = N'';
  SET @Details = N'CMNF.gridDml()';
  SET @ConditionCheck = N'Form';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN ISNULL(@OrderBy, '') = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  Typevalues = @TypeValues AND MenuID = @MenuID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, AvailableStatus, ImagePath, MenuID, ModuleID, ButtonKeyColumn, Details, MenuCategory, ButtonType
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @AvailableStatus, @ImagePath, @MenuID, @ModuleID, @ButtonKeyColumn, @Details, @MenuCategory, 2
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END
  INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
 VALUES(@ObjectName, 'Static Forms_CodeMaster_Insert_15-Oct-2024', @UTCTime);
END
GO

SET NOCOUNT ON
SET QUOTED_IDENTIFIER ON
DECLARE @UserID BIGINT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID)
DECLARE @UTCTime DATETIME = GETUTCDATE()
 , @ModuleID NVARCHAR(500)
 , @FormID NVARCHAR(500)
 , @Role NVARCHAR(500)
 , @HasReadPermission NVARCHAR(500)
 , @IsFavourite NVARCHAR(500)
 , @FavouriteOrder NVARCHAR(500)
 , @SubAudit NVARCHAR(500)
 , @Audit NVARCHAR(500)
 , @ValidateChecksum NVARCHAR(500)
DECLARE @RoleID BIGINT, @ButtonList NVARCHAR(500), @TabList NVARCHAR(500), @MainMenuOrder BIGINT, @SubMenuOrder BIGINT 
DECLARE @ObjectName NVARCHAR(100) = 'Static Forms_FormPermission_Insert_15-Oct-2024'

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN

  SET @ModuleID = N'1';
  SET @FormID = ISNULL((SELECT TOP 1 FormID FROM CmnFormDetails WHERE Name = 'User Permission New' AND IsDeleted = 0), 0);
  SET @Role = N'Admin';
  SET @HasReadPermission = 1;
  SET @IsFavourite = 0;
  SET @FavouriteOrder = N'0';
  SET @SubAudit = 1;
  SET @Audit = 1;
  SET @ValidateChecksum = 1;
  SET @RoleID = ISNULL((SELECT CodemasterID FROM CmnCodeMaster WHERE Type = 'Roles' AND TypeValues = @Role), 1)
  SET @ButtonList = ISNULL(SUBSTRING((SELECT ','+ ISNULL(CAST(CodemasterID AS VARCHAR(50)), '') FROM CmnCodeMaster WHERE Type = 'Menubutton' AND MenuID = @FormID FOR XML PATH('')), 2, 2000), '')
  SET @TabList = ISNULL(SUBSTRING((SELECT ','+ ISNULL(CAST(TabID AS VARCHAR(50)), '') FROM CmnFormTabs WHERE FormID = @FormID FOR XML PATH('')), 2, 2000), '')
  SELECT @MainMenuOrder = MainMenuOrder, @SubMenuOrder = SubMenuOrder FROM CmnFormDetails WHERE FormID = @FormID

  INSERT INTO CmnRolePermission (RoleID, Tabs, Buttons, MainMenuOrder, SubMenuOrder, 
      FormID, HasReadPermission, IsFavourite, FavouriteOrder, SubAudit, Audit, ValidateChecksum
    , CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  SELECT @RoleID, @TabList, @ButtonList, @MainMenuOrder, @SubMenuOrder, 
    @FormID, @HasReadPermission, @IsFavourite, @FavouriteOrder, @SubAudit, @Audit, @ValidateChecksum
    , @UserID, @UTCTime, @UserID, @UTCTime, 0
  WHERE NOT EXISTS (SELECT 1 FROM CmnRolePermission WHERE RoleID = @RoleID AND FormID = @FormID AND IsDeleted = 0)

  INSERT INTO CmnRBSPermission (UserID, Tabs, Buttons, MainMenuOrder, SubMenuOrder, 
      FormID, HasReadPermission, IsFavourite, FavouriteOrder, SubAudit, Audit, ValidateChecksum
    , CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  SELECT E.UserID, @TabList, @ButtonList, @MainMenuOrder, @SubMenuOrder, 
    @FormID, @HasReadPermission, @IsFavourite, @FavouriteOrder, @SubAudit, @Audit, @ValidateChecksum
    , @UserID, @UTCTime, @UserID, @UTCTime, 0
  FROM CmnUserDetails
E
  WHERE PATINDEX(CONCAT('%,', CAST(@RoleID AS VARCHAR(50)), ',%'), CONCAT(',', E.RoleID, ',')) > 0
    AND NOT EXISTS (SELECT 1 FROM CmnRBSPermission RBS WHERE RBS.UserID = E.UserID AND RBS.FormID = @FormID AND RBS.IsDeleted = 0)

  SET @ModuleID = N'1';
  SET @FormID = ISNULL((SELECT TOP 1 FormID FROM CmnFormDetails WHERE Name = 'Role Permission New' AND IsDeleted = 0), 0);
  SET @Role = N'Admin';
  SET @HasReadPermission = 1;
  SET @IsFavourite = 0;
  SET @FavouriteOrder = N'0';
  SET @SubAudit = 1;
  SET @Audit = 1;
  SET @ValidateChecksum = 1;
  SET @RoleID = ISNULL((SELECT CodemasterID FROM CmnCodeMaster WHERE Type = 'Roles' AND TypeValues = @Role), 1)
  SET @ButtonList = ISNULL(SUBSTRING((SELECT ','+ ISNULL(CAST(CodemasterID AS VARCHAR(50)), '') FROM CmnCodeMaster WHERE Type = 'Menubutton' AND MenuID = @FormID FOR XML PATH('')), 2, 2000), '')
  SET @TabList = ISNULL(SUBSTRING((SELECT ','+ ISNULL(CAST(TabID AS VARCHAR(50)), '') FROM CmnFormTabs WHERE FormID = @FormID FOR XML PATH('')), 2, 2000), '')
  SELECT @MainMenuOrder = MainMenuOrder, @SubMenuOrder = SubMenuOrder FROM CmnFormDetails WHERE FormID = @FormID

  INSERT INTO CmnRolePermission (RoleID, Tabs, Buttons, MainMenuOrder, SubMenuOrder, 
      FormID, HasReadPermission, IsFavourite, FavouriteOrder, SubAudit, Audit, ValidateChecksum
    , CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  SELECT @RoleID, @TabList, @ButtonList, @MainMenuOrder, @SubMenuOrder, 
    @FormID, @HasReadPermission, @IsFavourite, @FavouriteOrder, @SubAudit, @Audit, @ValidateChecksum
    , @UserID, @UTCTime, @UserID, @UTCTime, 0
  WHERE NOT EXISTS (SELECT 1 FROM CmnRolePermission WHERE RoleID = @RoleID AND FormID = @FormID AND IsDeleted = 0)

  INSERT INTO CmnRBSPermission (UserID, Tabs, Buttons, MainMenuOrder, SubMenuOrder, 
      FormID, HasReadPermission, IsFavourite, FavouriteOrder, SubAudit, Audit, ValidateChecksum
    , CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  SELECT E.UserID, @TabList, @ButtonList, @MainMenuOrder, @SubMenuOrder, 
    @FormID, @HasReadPermission, @IsFavourite, @FavouriteOrder, @SubAudit, @Audit, @ValidateChecksum
    , @UserID, @UTCTime, @UserID, @UTCTime, 0
  FROM CmnUserDetails
E
  WHERE PATINDEX(CONCAT('%,', CAST(@RoleID AS VARCHAR(50)), ',%'), CONCAT(',', E.RoleID, ',')) > 0
    AND NOT EXISTS (SELECT 1 FROM CmnRBSPermission RBS WHERE RBS.UserID = E.UserID AND RBS.FormID = @FormID AND RBS.IsDeleted = 0)

  INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
 VALUES(@ObjectName, 'Static Forms_FormPermission_Insert_15-Oct-2024', @UTCTime);
END
GO

SET NOCOUNT ON
SET QUOTED_IDENTIFIER ON
DECLARE @UserID BIGINT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID)
DECLARE @UTCTime DATETIME = GETUTCDATE()
DECLARE @FormID INT = ISNULL((SELECT TOP 1 FormID FROM CmnFormDetails WHERE Name = 'User Permission New' AND IsDeleted = 0), 0), 
@FormName NVARCHAR(500)= 'User Permission New', @TabID INT = 0, @GroupID INT = 0
DECLARE @ObjectName NVARCHAR(100) = 'RBSPermission_DataVariable_Insert_15-Oct-2024'

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	IF NOT EXISTS (SELECT 1 FROM CmnFormTabs WHERE FormID = @FormID AND Name = @FormName AND ISNULL(IsDeleted, 0) = 0)
	BEGIN
		INSERT INTO CmnFormTabs (FormID, Name, DisplayName, TabOrder, IsMandatory, TableName, KeyColumn, ModifiedDate, IsDeleted)
		VALUES (@FormID, @FormName, @FormName, 1, 1, '', '', GETUTCDATE(), 0)

		SET @TabID = IDENT_CURRENT('CmnFormTabs');
	END
	ELSE
		SET @TabID = ISNULL((SELECT TOP 1 TabID FROM CmnFormTabs WHERE FormID = @FormID AND Name = @FormName AND ISNULL(IsDeleted, 0) = 0), 0);

	IF NOT EXISTS (SELECT 1 FROM CmnGroupBoxes WHERE TabID = @TabID AND Name = @FormName AND ISNULL(IsDeleted, 0) = 0)
	BEGIN
		INSERT INTO CmnGroupBoxes (TabID, Name, DisplayName, GroupOrder, CommonGroup, TableName, KeyColumn, ModifiedDate, IsDeleted)
		VALUES (@TabID, @FormName, @FormName, 1, 1, '', '', GETUTCDATE(), 0)

		SET @GroupID = IDENT_CURRENT('CmnGroupBoxes');
	END
	ELSE
		SET @GroupID = ISNULL((SELECT TOP 1 GroupID FROM CmnGroupBoxes WHERE TabID = @TabID AND Name = @FormName AND ISNULL(IsDeleted, 0) = 0), 0);

	INSERT INTO CmnFormControls (GroupID, Name, TableColumn, ControlType, DataType, Visibility, Readonly, IsMandatory, MaxLength, SearchApplicable,
		SelectApplicable, IsIdentity, IsDmlControl, IsEncrypt, IsReturnFill, IsNoAdd, IsNoUpdate, FillType, FkType, FkTable, FkColumn, FkData, FkOrder, 
		FkDelete, FkNotActive, FkVersion, FkShowActive, VersionCheck, ControlOrder, ModifiedDate, IsDeleted)
	VALUES (@GroupID, 'User', 'UserID', 2, 1, 1, 1, 1, 10, 1, 1, 0, 0, 0, 1, 0, 0, 0, 2, 'CmnUserDetails', 'UserID', 'UserName', 1, 1, 0, 0, 0, 0, 1, GETUTCDATE(), 0)

	INSERT INTO CmnFormControls (GroupID, Name, TableColumn, ControlType, DataType, Visibility, Readonly, IsMandatory, MaxLength, SearchApplicable,
		SelectApplicable, IsIdentity, IsDmlControl, IsEncrypt, IsReturnFill, IsNoAdd, IsNoUpdate, FillType, FkType, FkTable, FkColumn, FkData, AdditionalConditions, FkOrder, 
		FkDelete, FkNotActive, FkVersion, FkShowActive, VersionCheck, ControlOrder, ModifiedDate, IsDeleted)
	VALUES (@GroupID, 'Branch', 'BranchID', 2, 1, 1, 1, 1, 10, 1, 1, 0, 0, 0, 1, 0, 0, 0, 2, 'MstCompanyDetails', 'ReferenceID', 'Name', 'ParentCompanyID IS NULL', 1, 1, 0, 0, 0, 0, 1, GETUTCDATE(), 0)

	INSERT INTO CmnFormControls (GroupID, Name, TableColumn, ControlType, DataType, Visibility, Readonly, IsMandatory, MaxLength, SearchApplicable,
		SelectApplicable, IsIdentity, IsDmlControl, IsEncrypt, IsReturnFill, IsNoAdd, IsNoUpdate, FillType, FkType, FkTable, FkColumn, FkData, FkOrder, 
		FkDelete, FkNotActive, FkVersion, FkShowActive, VersionCheck, ControlOrder, ModifiedDate, IsDeleted)
	VALUES (@GroupID, 'Role', 'RoleID', 2, 1, 1, 1, 1, 10, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 'Roles', 'CodemasterID', 'TypeValues', 1, 1, 0, 0, 0, 0, 1, GETUTCDATE(), 0)

	INSERT INTO CmnFormControls (GroupID, Name, TableColumn, ControlType, DataType, Visibility, Readonly, IsMandatory, MaxLength, SearchApplicable,
		SelectApplicable, IsIdentity, IsDmlControl, IsEncrypt, IsReturnFill, IsNoAdd, IsNoUpdate, FillType, FkType, FkTable, FkColumn, FkData, FkOrder, 
		FkDelete, FkNotActive, FkVersion, FkShowActive, VersionCheck, ControlOrder, ModifiedDate, IsDeleted)
	VALUES (@GroupID, 'User Type', 'UserTypeID', 2, 1, 1, 1, 1, 10, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 'Company Type', 'CodemasterID', 'TypeValues', 1, 1, 0, 0, 0, 0, 1, GETUTCDATE(), 0)

	INSERT INTO CmnFormControls (GroupID, Name, TableColumn, ControlType, DataType, Visibility, Readonly, IsMandatory, MaxLength, SearchApplicable,
		SelectApplicable, IsIdentity, IsDmlControl, IsEncrypt, IsReturnFill, IsNoAdd, IsNoUpdate, FillType, FkType, FkTable, FkColumn, FkData, FkOrder, 
		FkDelete, FkNotActive, FkVersion, FkShowActive, VersionCheck, ControlOrder, ModifiedDate, IsDeleted)
	VALUES (@GroupID, 'Module', 'ModuleID', 2, 1, 1, 1, 1, 10, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 'Module', 'CodemasterID', 'TypeValues', 1, 1, 0, 0, 0, 0, 1, GETUTCDATE(), 0)

	SET @FormID = ISNULL((SELECT TOP 1 FormID FROM CmnFormDetails WHERE Name = 'Role Permission New' AND IsDeleted = 0), 0);
	SET @FormName = 'Role Permission New';

	IF NOT EXISTS (SELECT 1 FROM CmnFormTabs WHERE FormID = @FormID AND Name = @FormName AND ISNULL(IsDeleted, 0) = 0)
	BEGIN
		INSERT INTO CmnFormTabs (FormID, Name, DisplayName, TabOrder, IsMandatory, TableName, KeyColumn, ModifiedDate, IsDeleted)
		VALUES (@FormID, @FormName, @FormName, 1, 1, '', '', GETUTCDATE(), 0)

		SET @TabID = IDENT_CURRENT('CmnFormTabs');
	END
	ELSE
		SET @TabID = ISNULL((SELECT TOP 1 TabID FROM CmnFormTabs WHERE FormID = @FormID AND Name = @FormName AND ISNULL(IsDeleted, 0) = 0), 0);

	IF NOT EXISTS (SELECT 1 FROM CmnGroupBoxes WHERE TabID = @TabID AND Name = @FormName AND ISNULL(IsDeleted, 0) = 0)
	BEGIN
		INSERT INTO CmnGroupBoxes (TabID, Name, DisplayName, GroupOrder, CommonGroup, TableName, KeyColumn, ModifiedDate, IsDeleted)
		VALUES (@TabID, @FormName, @FormName, 1, 1, '', '', GETUTCDATE(), 0)

		SET @GroupID = IDENT_CURRENT('CmnGroupBoxes');
	END
	ELSE
		SET @GroupID = ISNULL((SELECT TOP 1 GroupID FROM CmnGroupBoxes WHERE TabID = @TabID AND Name = @FormName AND ISNULL(IsDeleted, 0) = 0), 0);

	INSERT INTO CmnFormControls (GroupID, Name, TableColumn, ControlType, DataType, Visibility, Readonly, IsMandatory, MaxLength, SearchApplicable,
		SelectApplicable, IsIdentity, IsDmlControl, IsEncrypt, IsReturnFill, IsNoAdd, IsNoUpdate, FillType, FkType, FkTable, FkColumn, FkData, FkOrder, 
		FkDelete, FkNotActive, FkVersion, FkShowActive, VersionCheck, ControlOrder, ModifiedDate, IsDeleted)
	VALUES (@GroupID, 'Role', 'RoleID', 2, 1, 1, 1, 1, 10, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 'Roles', 'CodemasterID', 'TypeValues', 1, 1, 0, 0, 0, 0, 1, GETUTCDATE(), 0)

	INSERT INTO CmnFormControls (GroupID, Name, TableColumn, ControlType, DataType, Visibility, Readonly, IsMandatory, MaxLength, SearchApplicable,
		SelectApplicable, IsIdentity, IsDmlControl, IsEncrypt, IsReturnFill, IsNoAdd, IsNoUpdate, FillType, FkType, FkTable, FkColumn, FkData, FkOrder, 
		FkDelete, FkNotActive, FkVersion, FkShowActive, VersionCheck, ControlOrder, ModifiedDate, IsDeleted)
	VALUES (@GroupID, 'Module', 'ModuleID', 2, 1, 1, 1, 1, 10, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 'Module', 'CodemasterID', 'TypeValues', 1, 1, 0, 0, 0, 0, 1, GETUTCDATE(), 0)

	INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
  VALUES(@ObjectName, 'RBSPermission_DataVariable_Insert_15-Oct-2024', @UTCTime)
END
GO

/* ApplyToOtherRoles Button*/

SET NOCOUNT ON
	SET QUOTED_IDENTIFIER ON
		DECLARE @UserID BIGINT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
		DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID)
		DECLARE @UTCTime DATETIME = GETUTCDATE(),
			@Type NVARCHAR(500),
			@CodemasterID INT,
			@TypeValues NVARCHAR(500),
			@Code NVARCHAR(500),
			@Description NVARCHAR(500),
			@Remarks NVARCHAR(500),
			@ModuleID INT,
			@FormID INT,
			@MenuCategory INT,
			@Category NVARCHAR(500),
			@UserAccess NVARCHAR(500),
			@ImagePath NVARCHAR(500),
			@Details NVARCHAR(500),
			@OrderBy NVARCHAR(500),
			@ConditionCheck NVARCHAR(500),
			@Role NVARCHAR(200) = '',
			@RoleID INT = 0,
			@ButtonList VARCHAR(500) = ''
		DECLARE @MaxID BIGINT = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
		DECLARE @ObjectName NVARCHAR(100) = 'RolePermission_MenuButton_Insert_18-Jun-2024'

	IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
	BEGIN
		SET @Type = 'MenuButton';
		SET @TypeValues = 'Apply To Other Roles';
		SET @CodemasterID = ISNULL((SELECT MAX(CodemasterID) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
		SET @UserAccess = 1;
		SET @ModuleID = 1;
		SET @FormID =ISNULL((SELECT TOP 1 FormID FROM CmnFormDetails WHERE Name = 'Role Permission New' AND IsDeleted = 0), 0);
		SET @Role = 'Admin';
		SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
		SET @Code = 0;
		SET @Description = '';
		SET @Remarks = '';
		SET @Category = '';
		SET @ModuleID = 0;
		SET @ImagePath = 'fa fa-arrow-circle-right';
		SET @Details = 'ROLENEW.openApplyToOtherRolesPopup()';
		SET @MenuCategory = 0;
	
		IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND MenuID = @FormID AND Typevalues = @TypeValues)
		BEGIN
			INSERT INTO CmnCodeMaster (Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, MenuID, ButtonType,
				Category, UserAccess, ImagePath, Details, MenuCategory, OrderBy, Version, IsCurrentVersion, 
				NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
			SELECT @Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @FormID, 2, @Category, @UserAccess, @ImagePath, 
				@Details, @MenuCategory, @OrderBy, 1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
		END

	SET @RoleID = ISNULL((SELECT CodemasterID FROM CmnCodeMaster WHERE Type = 'Roles' AND TypeValues = @Role), 0);
	SET @ButtonList =  ISNULL(SUBSTRING((SELECT ',' + CONVERT(VARCHAR(50), CodemasterID) FROM CmnCodeMaster WHERE Type = 'MenuButton' AND MenuID = @FormID
			 FOR XML PATH(''), ROOT('MyString'), TYPE).value('/MyString[1]','NVARCHAR(MAX)'), 2, 4000000000), '');

	UPDATE CmnRolePermission
	SET Buttons = @ButtonList, ModifiedBy = @UserID, ModifiedDate = @UTCTime
	WHERE RoleID = @RoleID AND FormID = @FormID AND ISNULL(IsDeleted, 0) = 0;

	UPDATE RBS
	SET Buttons = @ButtonList, ModifiedBy = @UserID, ModifiedDate = @UTCTime
	FROM CmnRBSPermission RBS
		JOIN CmnUserDetails UD ON UD.UserID = RBS.UserID AND ISNULL(UD.IsDeleted, 0) = 0
	WHERE PATINDEX(CONCAT('%,', CAST(@RoleID AS VARCHAR(50)), ',%'), CONCAT(',', UD.RoleID, ',')) > 0 AND RBS.FormID = @FormID AND ISNULL(RBS.IsDeleted, 0) = 0;
 
	INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
	VALUES(@ObjectName, 'RolePermission_MenuButton_Insert_18-Jun-2024', @UTCTime)
	END
GO

SET NOCOUNT ON
SET QUOTED_IDENTIFIER ON
DECLARE @UserID BIGINT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID)
DECLARE @UTCTime DATETIME = GETUTCDATE(),
  @Type NVARCHAR(500),
  @CodemasterID INT,
  @TypeValues NVARCHAR(500),
  @Code NVARCHAR(500),
  @Description NVARCHAR(500),
  @Remarks NVARCHAR(500),
  @ModuleID INT,
	@FormID INT,
	@MenuCategory INT,
  @Category NVARCHAR(500),
  @UserAccess NVARCHAR(500),
  @ImagePath NVARCHAR(500),
  @Details NVARCHAR(500),
  @OrderBy NVARCHAR(500),
  @ConditionCheck NVARCHAR(500),
	@Role NVARCHAR(200) = '',
	@RoleID INT = 0,
	@ButtonList VARCHAR(500) = '',
	@UserFormID INT = 0
DECLARE @MaxID BIGINT = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
DECLARE @ObjectName NVARCHAR(100) = 'RBSPermissionNew_MenuButton_Insert_15-Oct-2024'

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
  SET @Type = 'MenuButton';
  SET @TypeValues = 'RBS Data Variable';
  SET @CodemasterID = ISNULL((SELECT MAX(CodemasterID) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
  SET @UserAccess = 1;
  SET @ModuleID = 1;
  SET @FormID = ISNULL((SELECT TOP 1 FormID FROM CmnFormDetails WHERE Name = 'User Permission New' AND IsDeleted = 0), 0);
  SET @Role = 'Admin';
  SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
  SET @Code = 0;
  SET @Description = '';
  SET @Remarks = '';
  SET @Category = '';
  SET @ModuleID = 0;
  SET @ImagePath = 'fa-universal-access';
  SET @Details = 'USERRBS.openRbsDataVariablePopup()';
  SET @MenuCategory = 0;
	
	IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND MenuID = @FormID AND Typevalues = @TypeValues AND IsDeleted = 0)
	BEGIN
		INSERT INTO CmnCodeMaster (Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, MenuID, ButtonType,
			Category, UserAccess, ImagePath, Details, MenuCategory, OrderBy, Version, IsCurrentVersion, 
			NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
		SELECT @Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @FormID, 2, @Category, @UserAccess, @ImagePath, 
			@Details, @MenuCategory, @OrderBy, 1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
	END

	SET @RoleID = ISNULL((SELECT CodemasterID FROM CmnCodeMaster WHERE Type = 'Roles' AND TypeValues = @Role), 0);
	SET @ButtonList =  ISNULL(SUBSTRING((SELECT ',' + CONVERT(VARCHAR(50), CodemasterID) FROM CmnCodeMaster WHERE Type = 'MenuButton' AND MenuID = @FormID
			 FOR XML PATH(''), ROOT('MyString'), TYPE).value('/MyString[1]','NVARCHAR(MAX)'), 2, 4000000000), '');

  UPDATE CmnRolePermission
  SET Buttons = @ButtonList,
    ModifiedBy = @UserID,
    ModifiedDate = @UTCTime
  WHERE RoleID = @RoleID AND FormID = @FormID AND ISNULL(IsDeleted, 0) = 0;

  UPDATE RBS
  SET Buttons = @ButtonList,
    ModifiedBy = @UserID,
    ModifiedDate = @UTCTime
	FROM CmnRBSPermission RBS
    JOIN CmnUserDetails UD ON UD.UserID = RBS.UserID AND ISNULL(UD.IsDeleted, 0) = 0
  WHERE PATINDEX(CONCAT('%,', CAST(@RoleID AS VARCHAR(50)), ',%'), CONCAT(',', UD.RoleID, ',')) > 0 AND RBS.FormID = @FormID AND ISNULL(RBS.IsDeleted, 0) = 0;

	SET @Type = 'MenuButton';
  SET @TypeValues = 'RBS Data Variable';
  SET @CodemasterID = ISNULL((SELECT MAX(CodemasterID) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
  SET @UserAccess = 1;
  SET @ModuleID = 1;
  SET @FormID = ISNULL((SELECT TOP 1 FormID FROM CmnFormDetails WHERE Name = 'Role Permission New' AND IsDeleted = 0), 0);
  SET @Role = 'Admin';
  SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
  SET @Code = 0;
  SET @Description = '';
  SET @Remarks = '';
  SET @Category = '';
  SET @ModuleID = 0;
  SET @ImagePath = 'fa-universal-access';
  SET @Details = 'RBSDV.openRbsDataVariablePopup()';
  SET @MenuCategory = 0;
  SET @UserFormID = ISNULL((SELECT TOP 1 FormID FROM CmnFormDetails WHERE Name = 'User Permission New' AND IsDeleted = 0), 0);

	IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND MenuID = @FormID AND Typevalues = @TypeValues AND IsDeleted = 0)
	BEGIN
		INSERT INTO CmnCodeMaster (Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, MenuID, ButtonType,
			Category, UserAccess, ImagePath, Details, MenuCategory, OrderBy, Version, IsCurrentVersion, 
			NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
		SELECT @Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @FormID, 2, @Category, @UserAccess, @ImagePath, 
			@Details, @MenuCategory, @OrderBy, 1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
	END

	SET @RoleID = ISNULL((SELECT CodemasterID FROM CmnCodeMaster WHERE Type = 'Roles' AND TypeValues = @Role), 0);
	SET @ButtonList =  ISNULL(SUBSTRING((SELECT ',' + CONVERT(VARCHAR(50), CodemasterID) FROM CmnCodeMaster WHERE Type = 'MenuButton' AND MenuID = @FormID
			 FOR XML PATH(''), ROOT('MyString'), TYPE).value('/MyString[1]','NVARCHAR(MAX)'), 2, 4000000000), '');

  UPDATE CmnRolePermission
  SET Buttons = @ButtonList,
    ModifiedBy = @UserID,
    ModifiedDate = @UTCTime
  WHERE RoleID = @RoleID AND FormID = @FormID AND ISNULL(IsDeleted, 0) = 0;

  UPDATE RBS
  SET Buttons = @ButtonList,
    ModifiedBy = @UserID,
    ModifiedDate = @UTCTime
	FROM CmnRBSPermission RBS
    JOIN CmnUserDetails UD ON UD.UserID = RBS.UserID AND ISNULL(UD.IsDeleted, 0) = 0
  WHERE PATINDEX(CONCAT('%,', CAST(@RoleID AS VARCHAR(50)), ',%'), CONCAT(',', UD.RoleID, ',')) > 0 AND RBS.FormID = @FormID AND ISNULL(RBS.IsDeleted, 0) = 0;

	UPDATE CmnCodeMaster
	SET Details = @Details,
		ModifiedBy = @UserID,
		ModifiedDate = @UTCTime,
		ModifiedDateGMT = @GMTTime
	WHERE Type = @Type AND MenuID = @UserFormID AND Typevalues = @TypeValues;
  
  INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
  VALUES(@ObjectName, 'RBSPermissionNew_MenuButton_Insert_15-Oct-2024', @UTCTime)
END
GO

SET NOCOUNT ON
GO
SET ANSI_NULLS ON
GO
SET ANSI_PADDING ON
GO
	SET QUOTED_IDENTIFIER ON
	GO
		DECLARE @UserID BIGINT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
		DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID)
		DECLARE @UTCTime DATETIME = GETUTCDATE(),
			@Type NVARCHAR(500),
			@CodemasterID INT,
			@TypeValues NVARCHAR(500),
			@Code NVARCHAR(500),
			@Description NVARCHAR(500),
			@Remarks NVARCHAR(500),
			@ModuleID INT,
			@FormID INT,
			@MenuCategory INT,
			@Category NVARCHAR(500),
			@UserAccess NVARCHAR(500),
			@ImagePath NVARCHAR(500),
			@Details NVARCHAR(500),
			@OrderBy NVARCHAR(500),
			@ConditionCheck NVARCHAR(500),
			@Role NVARCHAR(200) = '',
			@RoleID INT = 0,
			@ButtonList VARCHAR(500) = ''
		DECLARE @MaxID BIGINT = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
		DECLARE @ObjectName NVARCHAR(100) = 'UserPermissionNew_MenuButton_Insert_18-Sep-2024'

	IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
	BEGIN
		SET @Type = 'MenuButton';
		SET @TypeValues = 'Apply To Other Users';
		SET @CodemasterID = ISNULL((SELECT MAX(CodemasterID) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
		SET @UserAccess = 1;
		SET @ModuleID = 1;
		SET @FormID =ISNULL((SELECT TOP 1 FormID FROM CmnFormDetails WHERE Name = 'User Permission New' AND IsDeleted = 0), 0);
		SET @Role = 'Admin';
		SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
		SET @Code = 0;
		SET @Description = '';
		SET @Remarks = '';
		SET @Category = '';
		SET @ModuleID = 0;
		SET @ImagePath = 'fa fa-arrow-circle-right';
		SET @Details = 'USERNEW.openApplyToOtherUsersPopup()';
		SET @MenuCategory = 0;
	
		IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND MenuID = @FormID AND Typevalues = @TypeValues)
		BEGIN
			INSERT INTO CmnCodeMaster (Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, MenuID, ButtonType,
				Category, UserAccess, ImagePath, Details, MenuCategory, OrderBy, Version, IsCurrentVersion, 
				NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
			SELECT @Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @FormID, 2, @Category, @UserAccess, @ImagePath, 
				@Details, @MenuCategory, @OrderBy, 1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
		END

	SET @RoleID = ISNULL((SELECT CodemasterID FROM CmnCodeMaster WHERE Type = 'Roles' AND TypeValues = @Role), 0);
	SET @ButtonList =  ISNULL(SUBSTRING((SELECT ',' + CONVERT(VARCHAR(50), CodemasterID) FROM CmnCodeMaster WHERE Type = 'MenuButton' AND MenuID = @FormID
			 FOR XML PATH(''), ROOT('MyString'), TYPE).value('/MyString[1]','NVARCHAR(MAX)'), 2, 4000000000), '');

	UPDATE CmnRolePermission
	SET Buttons = @ButtonList, ModifiedBy = @UserID, ModifiedDate = @UTCTime
	WHERE RoleID = @RoleID AND FormID = @FormID AND ISNULL(IsDeleted, 0) = 0;

	UPDATE RBS
	SET Buttons = @ButtonList, ModifiedBy = @UserID, ModifiedDate = @UTCTime
	FROM CmnRBSPermission RBS
		JOIN CmnUserDetails UD ON UD.UserID = RBS.UserID AND ISNULL(UD.IsDeleted, 0) = 0
	WHERE PATINDEX(CONCAT('%,', CAST(@RoleID AS VARCHAR(50)), ',%'), CONCAT(',', UD.RoleID, ',')) > 0 AND RBS.FormID = @FormID AND ISNULL(RBS.IsDeleted, 0) = 0;
 
	INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
	VALUES(@ObjectName, 'UserPermissionNew_MenuButton_Insert_18-Sep-2024', @UTCTime)
	END
GO

SET NOCOUNT ON
GO
SET ANSI_NULLS ON
GO
SET ANSI_PADDING ON
GO
	SET QUOTED_IDENTIFIER ON
	GO
		DECLARE @UserID BIGINT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
		DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID)
		DECLARE @UTCTime DATETIME = GETUTCDATE(),
			@Type NVARCHAR(500),
			@CodemasterID INT,
			@TypeValues NVARCHAR(500),
			@Code NVARCHAR(500),
			@Description NVARCHAR(500),
			@Remarks NVARCHAR(500),
			@ModuleID INT,
			@FormID INT,
			@MenuCategory INT,
			@Category NVARCHAR(500),
			@UserAccess NVARCHAR(500),
			@ImagePath NVARCHAR(500),
			@Details NVARCHAR(500),
			@OrderBy NVARCHAR(500),
			@ConditionCheck NVARCHAR(500),
			@Role NVARCHAR(200) = '',
			@RoleID INT = 0,
			@ButtonList VARCHAR(500) = ''
		DECLARE @MaxID BIGINT = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
		DECLARE @ObjectName NVARCHAR(100) = 'UserPermission_MenuButton_Insert_18-Sep-2024'

	IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
	BEGIN
		SET @Type = 'MenuButton';
		SET @TypeValues = 'Apply To Other Users';
		SET @CodemasterID = ISNULL((SELECT MAX(CodemasterID) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
		SET @UserAccess = 1;
		SET @ModuleID = 1;
		SET @FormID =ISNULL((SELECT TOP 1 FormID FROM CmnFormDetails WHERE Name = 'User Permission' AND IsDeleted = 0), 0);
		SET @Role = 'Admin';
		SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
		SET @Code = 0;
		SET @Description = '';
		SET @Remarks = '';
		SET @Category = '';
		SET @ModuleID = 0;
		SET @ImagePath = 'fa fa-arrow-circle-right';
		SET @Details = 'USERRBS.openApplyToOtherUsersPopup()';
		SET @MenuCategory = 0;
	
		IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND MenuID = @FormID AND Typevalues = @TypeValues)
		BEGIN
			INSERT INTO CmnCodeMaster (Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, MenuID, ButtonType,
				Category, UserAccess, ImagePath, Details, MenuCategory, OrderBy, Version, IsCurrentVersion, 
				NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
			SELECT @Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @FormID, 2, @Category, @UserAccess, @ImagePath, 
				@Details, @MenuCategory, @OrderBy, 1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
		END

	SET @RoleID = ISNULL((SELECT CodemasterID FROM CmnCodeMaster WHERE Type = 'Roles' AND TypeValues = @Role), 0);
	SET @ButtonList =  ISNULL(SUBSTRING((SELECT ',' + CONVERT(VARCHAR(50), CodemasterID) FROM CmnCodeMaster WHERE Type = 'MenuButton' AND MenuID = @FormID
			 FOR XML PATH(''), ROOT('MyString'), TYPE).value('/MyString[1]','NVARCHAR(MAX)'), 2, 4000000000), '');

	UPDATE CmnRolePermission
	SET Buttons = @ButtonList, ModifiedBy = @UserID, ModifiedDate = @UTCTime
	WHERE RoleID = @RoleID AND FormID = @FormID AND ISNULL(IsDeleted, 0) = 0;

	UPDATE RBS
	SET Buttons = @ButtonList, ModifiedBy = @UserID, ModifiedDate = @UTCTime
	FROM CmnRBSPermission RBS
		JOIN CmnUserDetails UD ON UD.UserID = RBS.UserID AND ISNULL(UD.IsDeleted, 0) = 0
	WHERE PATINDEX(CONCAT('%,', CAST(@RoleID AS VARCHAR(50)), ',%'), CONCAT(',', UD.RoleID, ',')) > 0 AND RBS.FormID = @FormID AND ISNULL(RBS.IsDeleted, 0) = 0;
 
	INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
	VALUES(@ObjectName, 'UserPermission_MenuButton_Insert_18-Sep-2024', @UTCTime)
	END
GO
/*=========================
15-Oct-2024 END
=========================*/
/*=========================
16-Oct-2024 START
=========================*/
SET NOCOUNT ON
SET QUOTED_IDENTIFIER ON
DECLARE @UTCTime DATETIME = GETUTCDATE(),
	@Name NVARCHAR(500),
	@FormID NVARCHAR(500),
	@ObjectName NVARCHAR(100) = 'RBSPermission_Update_16-Oct-2024';

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	SET @FormID = 101;
	SET @Name = N'User Permission';
	
	IF EXISTS (SELECT 1 FROM CmnFormDetails WHERE FormID = @FormID AND Name = @Name AND IsDeleted = 0)
	BEGIN
		UPDATE CmnFormDetails SET Name = 'User Permission Old', IsDeleted = 1 WHERE FormID = @FormID AND Name = @Name;
	END

	SET @FormID = 102;
    SET @Name = N'Role Permission';

	IF EXISTS (SELECT 1 FROM CmnFormDetails WHERE FormID = @FormID AND Name = @Name AND IsDeleted = 0)
	BEGIN
		UPDATE CmnFormDetails SET Name = 'Role Permission Old', IsDeleted = 1 WHERE FormID = @FormID AND Name = @Name;
	END

	SET @Name = N'User Permission New';

	IF EXISTS (SELECT 1 FROM CmnFormDetails WHERE Name = @Name AND IsDeleted = 0)
	BEGIN
		UPDATE CmnFormDetails SET Name = 'User Permission', DisplayName = 'User Permission' WHERE Name = @Name AND IsDeleted = 0;
	END

	SET @Name = N'Role Permission New';

	IF EXISTS (SELECT 1 FROM CmnFormDetails WHERE Name = @Name AND IsDeleted = 0)
	BEGIN
		UPDATE CmnFormDetails SET Name = 'Role Permission', DisplayName = 'Role Permission' WHERE Name = @Name AND IsDeleted = 0;
	END
  
  INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
  VALUES(@ObjectName, 'RBSPermission_Update_16-Oct-2024', @UTCTime)
END
GO
/*=========================
16-Oct-2024 END
=========================*/
/*=========================
23-Dec-2024 START
=========================*/

SET NOCOUNT ON
GO
SET ANSI_NULLS ON
GO
SET ANSI_PADDING ON
GO
	SET QUOTED_IDENTIFIER ON
	GO
		DECLARE @UserID BIGINT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
		DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID)
		DECLARE @UTCTime DATETIME = GETUTCDATE(),
			@Type NVARCHAR(500),
			@CodemasterID INT,
			@TypeValues NVARCHAR(500),
			@Code NVARCHAR(500),
			@Description NVARCHAR(500),
			@Remarks NVARCHAR(500),
			@ModuleID INT,
			@FormID INT,
			@MenuCategory INT,
			@Category NVARCHAR(500),
			@UserAccess NVARCHAR(500),
			@ImagePath NVARCHAR(500),
			@Details NVARCHAR(500),
			@OrderBy NVARCHAR(500),
			@ConditionCheck NVARCHAR(500),
			@Role NVARCHAR(200) = '',
			@RoleID INT = 0,
			@ButtonList VARCHAR(500) = ''
		DECLARE @MaxID BIGINT = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
		DECLARE @ObjectName NVARCHAR(100) = 'RolePermission_MenuButton_Insert_23-Dec-2024'

	IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
	BEGIN
		SET @Type = 'MenuButton';
		SET @TypeValues = 'Settings';
		SET @CodemasterID = ISNULL((SELECT MAX(CodemasterID) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
		SET @UserAccess = 1;
		SET @ModuleID = 1;
		SET @FormID =ISNULL((SELECT TOP 1 FormID FROM CmnFormDetails WHERE Name = 'Role Permission' AND IsDeleted = 0), 0);
		SET @Role = 'Admin';
		SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
		SET @Code = 0;
		SET @Description = '';
		SET @Remarks = '';
		SET @Category = '';
		SET @ModuleID = 0;
		SET @ImagePath = 'fa fa-cog';
		SET @Details = 'ROLENEW.openSettingsPopup()';
		SET @MenuCategory = 0;
	
		IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND MenuID = @FormID AND Typevalues = @TypeValues)
		BEGIN
			INSERT INTO CmnCodeMaster (Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, MenuID, ButtonType,
				Category, UserAccess, ImagePath, Details, MenuCategory, OrderBy, Version, IsCurrentVersion, 
				NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
			SELECT @Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @FormID, 2, @Category, @UserAccess, @ImagePath, 
				@Details, @MenuCategory, @OrderBy, 1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
		END

	SET @RoleID = ISNULL((SELECT CodemasterID FROM CmnCodeMaster WHERE Type = 'Roles' AND TypeValues = @Role), 0);
	SET @ButtonList =  ISNULL(SUBSTRING((SELECT ',' + CONVERT(VARCHAR(50), CodemasterID) FROM CmnCodeMaster WHERE Type = 'MenuButton' AND MenuID = @FormID
			 FOR XML PATH(''), ROOT('MyString'), TYPE).value('/MyString[1]','NVARCHAR(MAX)'), 2, 4000000000), '');

	UPDATE CmnRolePermission
	SET Buttons = @ButtonList, ModifiedBy = @UserID, ModifiedDate = @UTCTime
	WHERE RoleID = @RoleID AND FormID = @FormID AND ISNULL(IsDeleted, 0) = 0;

	UPDATE RBS
	SET Buttons = @ButtonList, ModifiedBy = @UserID, ModifiedDate = @UTCTime
	FROM CmnRBSPermission RBS
		JOIN CmnUserDetails UD ON UD.UserID = RBS.UserID AND ISNULL(UD.IsDeleted, 0) = 0
	WHERE UD.RoleID = @RoleID AND RBS.FormID = @FormID AND ISNULL(RBS.IsDeleted, 0) = 0;

	INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
	VALUES(@ObjectName, 'RolePermission_MenuButton_Insert_23-Dec-2024', @UTCTime)
	END
GO
/*=========================
23-Dec-2024 END
=========================*/

/*=========================
28-Jan-2025 START
=========================*/
GO
SET NOCOUNT ON
GO
SET ANSI_NULLS ON
GO
SET ANSI_PADDING ON
GO
	SET QUOTED_IDENTIFIER ON
	GO
		DECLARE @UserID BIGINT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
		DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID)
		DECLARE @UTCTime DATETIME = GETUTCDATE(),
			@Type NVARCHAR(500),
			@CodemasterID INT,
			@TypeValues NVARCHAR(500),
			@Code NVARCHAR(500),
			@Description NVARCHAR(500),
			@Remarks NVARCHAR(500),
			@ModuleID INT,
			@FormID INT,
			@MenuCategory INT,
			@Category NVARCHAR(500),
			@UserAccess NVARCHAR(500),
			@ImagePath NVARCHAR(500),
			@Details NVARCHAR(500),
			@OrderBy NVARCHAR(500),
			@ConditionCheck NVARCHAR(500),
			@Role NVARCHAR(200) = '',
			@RoleID INT = 0,
			@ButtonList VARCHAR(500) = ''
		DECLARE @MaxID BIGINT = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
		DECLARE @ObjectName NVARCHAR(100) = 'RolePermission_MenuButton_Insert_28-Jan-2025'

	IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
	BEGIN
		SET @Type = 'MenuButton';
		SET @TypeValues = 'Apply RBS Data Group';
		SET @CodemasterID = ISNULL((SELECT MAX(CodemasterID) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
		SET @UserAccess = 1;
		SET @ModuleID = 1;
		SET @FormID =ISNULL((SELECT TOP 1 FormID FROM CmnFormDetails WHERE Name = 'Role Permission' AND IsDeleted = 0), 0);
		SET @Role = 'Admin';
		SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
		SET @Code = 0;
		SET @Description = '';
		SET @Remarks = '';
		SET @Category = '';
		SET @ModuleID = 0;
		SET @ImagePath = 'fa fa-group';
		SET @Details = 'ROLENEW.openApplyRBSGroupsPopup()';
		SET @MenuCategory = 0;

		IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND MenuID = @FormID AND Typevalues = @TypeValues)
		BEGIN
			INSERT INTO CmnCodeMaster (Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, MenuID, ButtonType,
				Category, UserAccess, ImagePath, Details, MenuCategory, OrderBy, Version, IsCurrentVersion,
				NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
			SELECT @Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @FormID, 2, @Category, @UserAccess, @ImagePath,
				@Details, @MenuCategory, @OrderBy, 1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
		END

	SET @RoleID = ISNULL((SELECT CodemasterID FROM CmnCodeMaster WHERE Type = 'Roles' AND TypeValues = @Role), 0);
	SET @ButtonList =  ISNULL(SUBSTRING((SELECT ',' + CONVERT(VARCHAR(50), CodemasterID) FROM CmnCodeMaster WHERE Type = 'MenuButton' AND MenuID = @FormID
			 FOR XML PATH(''), ROOT('MyString'), TYPE).value('/MyString[1]','NVARCHAR(MAX)'), 2, 4000000000), '');

	UPDATE CmnRolePermission
	SET Buttons = @ButtonList, ModifiedBy = @UserID, ModifiedDate = @UTCTime
	WHERE RoleID = @RoleID AND FormID = @FormID AND ISNULL(IsDeleted, 0) = 0;

	UPDATE RBS
	SET Buttons = @ButtonList, ModifiedBy = @UserID, ModifiedDate = @UTCTime
	FROM CmnRBSPermission RBS
		JOIN CmnUserDetails UD ON UD.UserID = RBS.UserID AND ISNULL(UD.IsDeleted, 0) = 0
	WHERE PATINDEX(CONCAT('%,', CAST(@RoleID AS VARCHAR(50)), ',%'), CONCAT(',', UD.RoleID, ',')) > 0 AND RBS.FormID = @FormID AND ISNULL(RBS.IsDeleted, 0) = 0;

	INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
	VALUES(@ObjectName, 'RolePermission_MenuButton_Insert_28-Jan-2025', @UTCTime)
	END
GO

GO
SET NOCOUNT ON
GO
SET ANSI_NULLS ON
GO
SET ANSI_PADDING ON
GO
	SET QUOTED_IDENTIFIER ON
	GO
		DECLARE @UserID BIGINT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
		DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID)
		DECLARE @UTCTime DATETIME = GETUTCDATE(),
			@Type NVARCHAR(500),
			@CodemasterID INT,
			@TypeValues NVARCHAR(500),
			@Code NVARCHAR(500),
			@Description NVARCHAR(500),
			@Remarks NVARCHAR(500),
			@ModuleID INT,
			@FormID INT,
			@MenuCategory INT,
			@Category NVARCHAR(500),
			@UserAccess NVARCHAR(500),
			@ImagePath NVARCHAR(500),
			@Details NVARCHAR(500),
			@OrderBy NVARCHAR(500),
			@ConditionCheck NVARCHAR(500),
			@Role NVARCHAR(200) = '',
			@RoleID INT = 0,
			@ButtonList VARCHAR(500) = ''
		DECLARE @MaxID BIGINT = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
		DECLARE @ObjectName NVARCHAR(100) = 'UserPermission_MenuButton_Insert_28-Jan-2025'

	IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
	BEGIN
		SET @Type = 'MenuButton';
		SET @TypeValues = 'Apply RBS Data Group';
		SET @CodemasterID = ISNULL((SELECT MAX(CodemasterID) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
		SET @UserAccess = 1;
		SET @ModuleID = 1;
		SET @FormID =ISNULL((SELECT TOP 1 FormID FROM CmnFormDetails WHERE Name = 'User Permission' AND IsDeleted = 0), 0);
		SET @Role = 'Admin';
		SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
		SET @Code = 0;
		SET @Description = '';
		SET @Remarks = '';
		SET @Category = '';
		SET @ModuleID = 0;
		SET @ImagePath = 'fa fa-group';
		SET @Details = 'USERNEW.openApplyRBSGroupsPopup()';
		SET @MenuCategory = 0;

		IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND MenuID = @FormID AND Typevalues = @TypeValues)
		BEGIN
			INSERT INTO CmnCodeMaster (Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, MenuID, ButtonType,
				Category, UserAccess, ImagePath, Details, MenuCategory, OrderBy, Version, IsCurrentVersion,
				NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
			SELECT @Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @FormID, 2, @Category, @UserAccess, @ImagePath,
				@Details, @MenuCategory, @OrderBy, 1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
		END

	SET @RoleID = ISNULL((SELECT CodemasterID FROM CmnCodeMaster WHERE Type = 'Roles' AND TypeValues = @Role), 0);
	SET @ButtonList =  ISNULL(SUBSTRING((SELECT ',' + CONVERT(VARCHAR(50), CodemasterID) FROM CmnCodeMaster WHERE Type = 'MenuButton' AND MenuID = @FormID
			 FOR XML PATH(''), ROOT('MyString'), TYPE).value('/MyString[1]','NVARCHAR(MAX)'), 2, 4000000000), '');

	UPDATE CmnRolePermission
	SET Buttons = @ButtonList, ModifiedBy = @UserID, ModifiedDate = @UTCTime
	WHERE RoleID = @RoleID AND FormID = @FormID AND ISNULL(IsDeleted, 0) = 0;

	UPDATE RBS
	SET Buttons = @ButtonList, ModifiedBy = @UserID, ModifiedDate = @UTCTime
	FROM CmnRBSPermission RBS
		JOIN CmnUserDetails UD ON UD.UserID = RBS.UserID AND ISNULL(UD.IsDeleted, 0) = 0
	WHERE PATINDEX(CONCAT('%,', CAST(@RoleID AS VARCHAR(50)), ',%'), CONCAT(',', UD.RoleID, ',')) > 0 AND RBS.FormID = @FormID AND ISNULL(RBS.IsDeleted, 0) = 0;

	INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
	VALUES(@ObjectName, 'UserPermission_MenuButton_Insert_28-Jan-2025', @UTCTime)
	END
GO
/*=========================
28-Jan-2025 END
=========================*/
/*=========================
25-Jun-2025 START
=========================*/
SET NOCOUNT ON
SET QUOTED_IDENTIFIER ON
DECLARE @UTCTime DATETIME = GETUTCDATE(),
	@FormID NVARCHAR(500),
	@Type NVARCHAR(500),
	@TypeValues NVARCHAR(500),
	@ObjectName NVARCHAR(100) = 'RBSMenu_Update_25-Jun-2025';
	
IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	SET @FormID =ISNULL((SELECT TOP 1 FormID FROM CmnFormDetails WHERE Name = 'User Permission' AND IsDeleted = 0), 0);
	SET @Type = 'MenuButton';
	SET @TypeValues = 'Apply RBS Groups';
	
	IF EXISTS (SELECT 1 FROM CmnCodeMaster WHERE MenuID = @FormID AND Type = @Type AND Typevalues = @TypeValues)
	BEGIN
		UPDATE CmnCodeMaster SET TypeValues = 'Apply RBS Data Group' WHERE MenuID = @FormID AND Type = @Type AND TypeValues = @TypeValues AND IsDeleted = 0;
	END

	SET @FormID =ISNULL((SELECT TOP 1 FormID FROM CmnFormDetails WHERE Name = 'Role Permission' AND IsDeleted = 0), 0);  
	SET @Type = 'MenuButton';
	SET @TypeValues = 'Apply RBS Groups';

	IF EXISTS (SELECT 1 FROM CmnCodeMaster WHERE MenuID = @FormID AND Type = @Type AND Typevalues = @TypeValues)
	BEGIN
		UPDATE CmnCodeMaster SET TypeValues = 'Apply RBS Data Group' WHERE MenuID = @FormID AND Type = @Type AND TypeValues = @TypeValues AND IsDeleted = 0;
	END

  INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
  VALUES(@ObjectName, 'RBSMenu_Update_25-Jun-2025', @UTCTime)
END
GO
/*=========================
25-Jun-2025 END
=========================*/
