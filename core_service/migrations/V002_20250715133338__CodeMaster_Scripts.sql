/*=========================
18-Oct-2019 START
=========================*/
SET NOCOUNT ON
DECLARE @UserID BIGINT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID)
DECLARE @UTCTime DATETIME = GETUTCDATE(),
  @Type NVARCHAR(500),
  @CodemasterID NVARCHAR(500),
  @DisplayType NVARCHAR(500),
  @TypeValues NVARCHAR(500),
  @Code NVARCHAR(500),
  @Description NVARCHAR(500),
  @Category NVARCHAR(500),
  @Remarks NVARCHAR(500),
  @UserAccess NVARCHAR(500),
  @OrderBy NVARCHAR(500),
  @ImagePath NVARCHAR(500),
  @MenuID NVARCHAR(500),
  @ModuleID NVARCHAR(500),
  @Details NVARCHAR(500),
  @ConditionCheck NVARCHAR(500),
  @MenuCategory NVARCHAR(500)
DECLARE @MaxID BIGINT = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
DECLARE @ObjectName NVARCHAR(100) = 'CodeMasterInsert18Oct2019_164628'

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
  
  SET @Type = N'Data Type';
  SET @CodemasterID = 1;
  SET @DisplayType = N'Data Type';
  SET @TypeValues = N'BIGINT';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 1;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Data Type';
  SET @CodemasterID = 2;
  SET @DisplayType = N'Data Type';
  SET @TypeValues = N'INT';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 2;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Data Type';
  SET @CodemasterID = 3;
  SET @DisplayType = N'Data Type';
  SET @TypeValues = N'BIT';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 3;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Data Type';
  SET @CodemasterID = 4;
  SET @DisplayType = N'Data Type';
  SET @TypeValues = N'DATE';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 4;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Data Type';
  SET @CodemasterID = 5;
  SET @DisplayType = N'Data Type';
  SET @TypeValues = N'DATETIME';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 5;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Data Type';
  SET @CodemasterID = 6;
  SET @DisplayType = N'Data Type';
  SET @TypeValues = N'TIME';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 6;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Data Type';
  SET @CodemasterID = 7;
  SET @DisplayType = N'Data Type';
  SET @TypeValues = N'VARCHAR';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 7;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Data Type';
  SET @CodemasterID = 8;
  SET @DisplayType = N'Data Type';
  SET @TypeValues = N'DECIMAL';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 9;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Data Type';
  SET @CodemasterID = 9;
  SET @DisplayType = N'Data Type';
  SET @TypeValues = N'NVARCHAR';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
  SET @UserAccess = 2;
  SET @OrderBy = 8;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Control Type';
  SET @CodemasterID = 1;
  SET @DisplayType = N'Control Type';
  SET @TypeValues = N'Textbox';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 1;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Control Type';
  SET @CodemasterID = 2;
  SET @DisplayType = N'Control Type';
  SET @TypeValues = N'Combobox';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 2;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Control Type';
  SET @CodemasterID = 3;
  SET @DisplayType = N'Control Type';
  SET @TypeValues = N'Checkbox';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 3;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Control Type';
  SET @CodemasterID = 4;
  SET @DisplayType = N'Control Type';
  SET @TypeValues = N'Date';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 4;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Control Type';
  SET @CodemasterID = 5;
  SET @DisplayType = N'Control Type';
  SET @TypeValues = N'Datetime';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 5;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Control Type';
  SET @CodemasterID = 6;
  SET @DisplayType = N'Control Type';
  SET @TypeValues = N'Time';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 6;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Control Type';
  SET @CodemasterID = 7;
  SET @DisplayType = N'Control Type';
  SET @TypeValues = N'Multiline Textbox';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 7;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Control Type';
  SET @CodemasterID = 8;
  SET @DisplayType = N'Control Type';
  SET @TypeValues = N'Check Listbox';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 8;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Control Type';
  SET @CodemasterID = 9;
  SET @DisplayType = N'Control Type';
  SET @TypeValues = N'Dual Textbox';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 9;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Control Type';
  SET @CodemasterID = 10;
  SET @DisplayType = N'Control Type';
  SET @TypeValues = N'Dual Combobox';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 10;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Control Type';
  SET @CodemasterID = 11;
  SET @DisplayType = N'Control Type';
  SET @TypeValues = N'Dual Time';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 11;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Control Type';
  SET @CodemasterID = 12;
  SET @DisplayType = N'Control Type';
  SET @TypeValues = N'Checked Textbox';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 12;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Control Type';
  SET @CodemasterID = 13;
  SET @DisplayType = N'Control Type';
  SET @TypeValues = N'Checked Combobox';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 13;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Control Type';
  SET @CodemasterID = 14;
  SET @DisplayType = N'Control Type';
  SET @TypeValues = N'Checked Date';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 14;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Control Type';
  SET @CodemasterID = 15;
  SET @DisplayType = N'Control Type';
  SET @TypeValues = N'Checked Datetime';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 15;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Control Type';
  SET @CodemasterID = 16;
  SET @DisplayType = N'Control Type';
  SET @TypeValues = N'Attachment';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 16;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Control Type';
  SET @CodemasterID = 17;
  SET @DisplayType = N'Control Type';
  SET @TypeValues = N'Photo Viewer';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 17;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Control Type';
  SET @CodemasterID = 18;
  SET @DisplayType = N'Control Type';
  SET @TypeValues = N'Tree';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 18;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Control Type';
  SET @CodemasterID = 19;
  SET @DisplayType = N'Control Type';
  SET @TypeValues = N'Grid';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 19;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Control Type';
  SET @CodemasterID = 20;
  SET @DisplayType = N'Control Type';
  SET @TypeValues = N'Label';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 20;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Control Type';
  SET @CodemasterID = 21;
  SET @DisplayType = N'Control Type';
  SET @TypeValues = N'Radio Button';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 21;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Control Type';
  SET @CodemasterID = 22;
  SET @DisplayType = N'Control Type';
  SET @TypeValues = N'Number';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 22;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Control Type';
  SET @CodemasterID = 23;
  SET @DisplayType = N'Control Type';
  SET @TypeValues = N'Button';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 23;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Control Type';
  SET @CodemasterID = 24;
  SET @DisplayType = N'Control Type';
  SET @TypeValues = N'Checklist Grid';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 24;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Control Type';
  SET @CodemasterID = 25;
  SET @DisplayType = N'Control Type';
  SET @TypeValues = N'Radiolist Grid';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 25;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Control Type';
  SET @CodemasterID = 26;
  SET @DisplayType = N'Control Type';
  SET @TypeValues = N'Chart';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 26;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Control Type';
  SET @CodemasterID = 27;
  SET @DisplayType = N'Control Type';
  SET @TypeValues = N'CK Editor';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 27;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Control Type';
  SET @CodemasterID = 28;
  SET @DisplayType = N'Control Type';
  SET @TypeValues = N'Email';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 28;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Control Type';
  SET @CodemasterID = 29;
  SET @DisplayType = N'Control Type';
  SET @TypeValues = N'URL';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 29;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Control Type';
  SET @CodemasterID = 30;
  SET @DisplayType = N'Control Type';
  SET @TypeValues = N'Text Combobox';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 30;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Control Type';
  SET @CodemasterID = 31;
  SET @DisplayType = N'Control Type';
  SET @TypeValues = N'Combo Textbox';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 31;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'FKType';
  SET @CodemasterID = 1;
  SET @DisplayType = N'FKType';
  SET @TypeValues = N'CodeMaster';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 1;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'FKType';
  SET @CodemasterID = 2;
  SET @DisplayType = N'FKType';
  SET @TypeValues = N'Other Tables';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 2;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'FKType';
  SET @CodemasterID = 3;
  SET @DisplayType = N'FKType';
  SET @TypeValues = N'File Upload';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 3;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Roles';
  SET @CodemasterID = 1;
  SET @DisplayType = N'Roles';
  SET @TypeValues = N'Admin';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 1;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Module';
  SET @CodemasterID = 1;
  SET @DisplayType = N'Module';
  SET @TypeValues = N'Admin';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 1;
  SET @ImagePath = N'fa fa-user-circle-o';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Module';
  SET @CodemasterID = 2;
  SET @DisplayType = N'Module';
  SET @TypeValues = N'Master';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 2;
  SET @ImagePath = N'fa fa-globe';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END
  
  SET @Type = N'Module';
  SET @CodemasterID = 4;
  SET @DisplayType = N'Module';
  SET @TypeValues = N'Tools';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 4;
  SET @ImagePath = N'fa fa-wrench';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END


  SET @Type = N'Menu Type';
  SET @CodemasterID = NULL;
  SET @DisplayType = N'Menu Type';
  SET @TypeValues = N'Horizontal';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 6;
  SET @OrderBy = 1;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'Value';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  Typevalues = @TypeValues )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Menu Type';
  SET @CodemasterID = NULL;
  SET @DisplayType = N'Menu Type';
  SET @TypeValues = N'Vertical';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 6;
  SET @OrderBy = 2;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'Value';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  Typevalues = @TypeValues )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Languages';
  SET @CodemasterID = NULL;
  SET @DisplayType = N'Languages';
  SET @TypeValues = N'English';
  SET @Code = N'';
  SET @Description = N'EN';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 4;
  SET @OrderBy = 1;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'Value';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  Typevalues = @TypeValues )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Languages';
  SET @CodemasterID = NULL;
  SET @DisplayType = N'Languages';
  SET @TypeValues = N'Hindi';
  SET @Code = N'';
  SET @Description = N'HN';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 4;
  SET @OrderBy = 2;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'Value';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  Typevalues = @TypeValues )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Languages';
  SET @CodemasterID = NULL;
  SET @DisplayType = N'Languages';
  SET @TypeValues = N'Arabic';
  SET @Code = N'';
  SET @Description = N'AR';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 4;
  SET @OrderBy = 3;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'Value';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  Typevalues = @TypeValues )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Languages';
  SET @CodemasterID = NULL;
  SET @DisplayType = N'Languages';
  SET @TypeValues = N'French';
  SET @Code = N'';
  SET @Description = N'FR';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 4;
  SET @OrderBy = 4;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'Value';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  Typevalues = @TypeValues )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Languages';
  SET @CodemasterID = NULL;
  SET @DisplayType = N'Languages';
  SET @TypeValues = N'Tamil';
  SET @Code = N'';
  SET @Description = N'TM';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 4;
  SET @OrderBy = 5;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'Value';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  Typevalues = @TypeValues )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Languages';
  SET @CodemasterID = NULL;
  SET @DisplayType = N'Languages';
  SET @TypeValues = N'Japanese';
  SET @Code = N'';
  SET @Description = N'JP';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 4;
  SET @OrderBy = 6;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'Value';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  Typevalues = @TypeValues )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Theme Details';
  SET @CodemasterID = NULL;
  SET @DisplayType = N'Theme Details';
  SET @TypeValues = N'blue';
  SET @Code = N'';
  SET @Description = N'blue.min.css';
  SET @Category = N'';
  SET @Remarks = N'#5db2ff';
    SET @UserAccess = 6;
  SET @OrderBy = 1;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'Value';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  Typevalues = @TypeValues )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Theme Details';
  SET @CodemasterID = NULL;
  SET @DisplayType = N'Theme Details';
  SET @TypeValues = N'azure';
  SET @Code = N'';
  SET @Description = N'azure.min.css';
  SET @Category = N'';
  SET @Remarks = N'#2dc3e8';
    SET @UserAccess = 6;
  SET @OrderBy = 2;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'Value';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  Typevalues = @TypeValues )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Theme Details';
  SET @CodemasterID = NULL;
  SET @DisplayType = N'Theme Details';
  SET @TypeValues = N'teal';
  SET @Code = N'';
  SET @Description = N'teal.min.css';
  SET @Category = N'';
  SET @Remarks = N'#03b3b2';
    SET @UserAccess = 6;
  SET @OrderBy = 3;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'Value';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  Typevalues = @TypeValues )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Theme Details';
  SET @CodemasterID = NULL;
  SET @DisplayType = N'Theme Details';
  SET @TypeValues = N'green';
  SET @Code = N'';
  SET @Description = N'green.min.css';
  SET @Category = N'';
  SET @Remarks = N'#53a93f';
    SET @UserAccess = 6;
  SET @OrderBy = 4;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'Value';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  Typevalues = @TypeValues )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Theme Details';
  SET @CodemasterID = NULL;
  SET @DisplayType = N'Theme Details';
  SET @TypeValues = N'orange';
  SET @Code = N'';
  SET @Description = N'orange.min.css';
  SET @Category = N'';
  SET @Remarks = N'#ff8f32';
    SET @UserAccess = 6;
  SET @OrderBy = 5;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'Value';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  Typevalues = @TypeValues )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Theme Details';
  SET @CodemasterID = NULL;
  SET @DisplayType = N'Theme Details';
  SET @TypeValues = N'pink';
  SET @Code = N'';
  SET @Description = N'pink.min.css';
  SET @Category = N'';
  SET @Remarks = N'#cc324b';
    SET @UserAccess = 6;
  SET @OrderBy = 6;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'Value';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  Typevalues = @TypeValues )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Theme Details';
  SET @CodemasterID = NULL;
  SET @DisplayType = N'Theme Details';
  SET @TypeValues = N'darkred';
  SET @Code = N'';
  SET @Description = N'darkred.min.css';
  SET @Category = N'';
  SET @Remarks = N'#ac193d';
    SET @UserAccess = 6;
  SET @OrderBy = 7;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'Value';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  Typevalues = @TypeValues )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Theme Details';
  SET @CodemasterID = NULL;
  SET @DisplayType = N'Theme Details';
  SET @TypeValues = N'purple';
  SET @Code = N'';
  SET @Description = N'purple.min.css';
  SET @Category = N'';
  SET @Remarks = N'#8c0095';
    SET @UserAccess = 6;
  SET @OrderBy = 8;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'Value';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  Typevalues = @TypeValues )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Theme Details';
  SET @CodemasterID = NULL;
  SET @DisplayType = N'Theme Details';
  SET @TypeValues = N'darkblue';
  SET @Code = N'';
  SET @Description = N'darkblue.min.css';
  SET @Category = N'';
  SET @Remarks = N'#0072c6';
    SET @UserAccess = 6;
  SET @OrderBy = 9;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'Value';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  Typevalues = @TypeValues )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Theme Details';
  SET @CodemasterID = NULL;
  SET @DisplayType = N'Theme Details';
  SET @TypeValues = N'black';
  SET @Code = N'';
  SET @Description = N'black.min.css';
  SET @Category = N'';
  SET @Remarks = N'#474544';
    SET @UserAccess = 6;
  SET @OrderBy = 10;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'Value';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  Typevalues = @TypeValues )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Theme Details';
  SET @CodemasterID = NULL;
  SET @DisplayType = N'Theme Details';
  SET @TypeValues = N'darkblack';
  SET @Code = N'';
  SET @Description = N'black.ink.min.css';
  SET @Category = N'';
  SET @Remarks = N'#000000';
    SET @UserAccess = 6;
  SET @OrderBy = 11;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'Value';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  Typevalues = @TypeValues )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Days';
  SET @CodemasterID = 1;
  SET @DisplayType = N'Days';
  SET @TypeValues = N'Sunday';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 1;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Days';
  SET @CodemasterID = 2;
  SET @DisplayType = N'Days';
  SET @TypeValues = N'Monday';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 2;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Days';
  SET @CodemasterID = 3;
  SET @DisplayType = N'Days';
  SET @TypeValues = N'Tuesday';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 3;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Days';
  SET @CodemasterID = 4;
  SET @DisplayType = N'Days';
  SET @TypeValues = N'Wednesday';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 4;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Days';
  SET @CodemasterID = 5;
  SET @DisplayType = N'Days';
  SET @TypeValues = N'Thursday';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 5;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Days';
  SET @CodemasterID = 6;
  SET @DisplayType = N'Days';
  SET @TypeValues = N'Friday';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 6;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Days';
  SET @CodemasterID = 7;
  SET @DisplayType = N'Days';
  SET @TypeValues = N'Saturday';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 7;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Month';
  SET @CodemasterID = 1;
  SET @DisplayType = N'Month';
  SET @TypeValues = N'Jan';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 1;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Month';
  SET @CodemasterID = 2;
  SET @DisplayType = N'Month';
  SET @TypeValues = N'Feb';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 2;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Month';
  SET @CodemasterID = 3;
  SET @DisplayType = N'Month';
  SET @TypeValues = N'Mar';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 3;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Month';
  SET @CodemasterID = 4;
  SET @DisplayType = N'Month';
  SET @TypeValues = N'Apr';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 4;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Month';
  SET @CodemasterID = 5;
  SET @DisplayType = N'Month';
  SET @TypeValues = N'May';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 5;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Month';
  SET @CodemasterID = 6;
  SET @DisplayType = N'Month';
  SET @TypeValues = N'Jun';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 6;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Month';
  SET @CodemasterID = 7;
  SET @DisplayType = N'Month';
  SET @TypeValues = N'Jul';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 7;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Month';
  SET @CodemasterID = 8;
  SET @DisplayType = N'Month';
  SET @TypeValues = N'Aug';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 8;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Month';
  SET @CodemasterID = 9;
  SET @DisplayType = N'Month';
  SET @TypeValues = N'Sep';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 9;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Month';
  SET @CodemasterID = 10;
  SET @DisplayType = N'Month';
  SET @TypeValues = N'Oct';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 10;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Month';
  SET @CodemasterID = 11;
  SET @DisplayType = N'Month';
  SET @TypeValues = N'Nov';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 11;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

  SET @Type = N'Month';
  SET @CodemasterID = 12;
  SET @DisplayType = N'Month';
  SET @TypeValues = N'Dec';
  SET @Code = N'';
  SET @Description = N'';
  SET @Category = N'';
  SET @Remarks = N'';
    SET @UserAccess = 2;
  SET @OrderBy = 12;
  SET @ImagePath = N'';
  SET @MenuID = N'';
  SET @ModuleID = 0;
  SET @Details = N'';
  SET @ConditionCheck = N'';
  SET @MenuCategory = 0;
  SET @MaxID = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
  SET @OrderBy = CASE WHEN @OrderBy = '' THEN @MaxID ELSE @OrderBy END
  SET @CodemasterID = CASE WHEN ISNULL(@CodemasterID, '') = '' THEN @MaxID ELSE @CodemasterID END

  IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  CodemasterID = @CodemasterID )
  BEGIN
    INSERT INTO CmnCodeMaster (UserAccess,
      Type, CodemasterID, DisplayType, TypeValues, Code, Description, Category, Remarks, OrderBy, ImagePath, MenuID, ModuleID, Details, MenuCategory
      ,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
    SELECT @UserAccess,
    @Type, @CodemasterID, @DisplayType, @TypeValues, @Code, @Description, @Category, @Remarks, @OrderBy, @ImagePath, @MenuID, @ModuleID, @Details, @MenuCategory
      ,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
  END

	UPDATE CmnCodeMaster SET Description = 'TextBox', OrderBy = 2 WHERE Type = 'Control Type' AND CodemasterID = 1;
	UPDATE CmnCodeMaster SET Description = 'DropDownBox', OrderBy = 6 WHERE Type = 'Control Type' AND CodemasterID = 2;
	UPDATE CmnCodeMaster SET Description = 'CheckBox', OrderBy = 8 WHERE Type = 'Control Type' AND CodemasterID = 3;
	UPDATE CmnCodeMaster SET Description = 'DatePicker', OrderBy = 11 WHERE Type = 'Control Type' AND CodemasterID = 4;
	UPDATE CmnCodeMaster SET Description = 'DateTime', OrderBy = 12 WHERE Type = 'Control Type' AND CodemasterID = 5;
	UPDATE CmnCodeMaster SET Description = 'Time', OrderBy = 13 WHERE Type = 'Control Type' AND CodemasterID = 6;
	UPDATE CmnCodeMaster SET Description = 'Multiline', OrderBy = 10 WHERE Type = 'Control Type' AND CodemasterID = 7;
	UPDATE CmnCodeMaster SET Description = 'MultiSelect', OrderBy = 7 WHERE Type = 'Control Type' AND CodemasterID = 8;
	UPDATE CmnCodeMaster SET Description = 'DualTextBox', OrderBy = 19 WHERE Type = 'Control Type' AND CodemasterID = 9;
	UPDATE CmnCodeMaster SET Description = 'DualComboBox', OrderBy = 21 WHERE Type = 'Control Type' AND CodemasterID = 10;
	UPDATE CmnCodeMaster SET Description = 'DualTime', OrderBy = 14 WHERE Type = 'Control Type' AND CodemasterID = 11;
	UPDATE CmnCodeMaster SET Description = 'CheckTextBox', OrderBy = 17 WHERE Type = 'Control Type' AND CodemasterID = 12;
	UPDATE CmnCodeMaster SET Description = 'CheckComboBox', OrderBy = 18 WHERE Type = 'Control Type' AND CodemasterID = 13;
	UPDATE CmnCodeMaster SET Description = 'CheckDateBox', OrderBy = 15 WHERE Type = 'Control Type' AND CodemasterID = 14;
	UPDATE CmnCodeMaster SET Description = 'CheckDateTimeBox', OrderBy = 16 WHERE Type = 'Control Type' AND CodemasterID = 15;
	UPDATE CmnCodeMaster SET Description = 'Attachments', OrderBy = 29 WHERE Type = 'Control Type' AND CodemasterID = 16;
	UPDATE CmnCodeMaster SET Description = 'PhotoViewer', OrderBy = 28 WHERE Type = 'Control Type' AND CodemasterID = 17;
	UPDATE CmnCodeMaster SET Description = 'TREE', OrderBy = 23 WHERE Type = 'Control Type' AND CodemasterID = 18;
	UPDATE CmnCodeMaster SET Description = 'GRID', OrderBy = 24 WHERE Type = 'Control Type' AND CodemasterID = 19;
	UPDATE CmnCodeMaster SET Description = 'Label', OrderBy = 1 WHERE Type = 'Control Type' AND CodemasterID = 20;
	UPDATE CmnCodeMaster SET Description = 'RadioButton', OrderBy = 9 WHERE Type = 'Control Type' AND CodemasterID = 21;
	UPDATE CmnCodeMaster SET Description = 'NumberBox', OrderBy = 3 WHERE Type = 'Control Type' AND CodemasterID = 22;
	UPDATE CmnCodeMaster SET Description = '', OrderBy = 30 WHERE Type = 'Control Type' AND CodemasterID = 23;
	UPDATE CmnCodeMaster SET Description = 'CheckList', OrderBy = 25 WHERE Type = 'Control Type' AND CodemasterID = 24;
	UPDATE CmnCodeMaster SET Description = 'RadioList', OrderBy = 26 WHERE Type = 'Control Type' AND CodemasterID = 25;
	UPDATE CmnCodeMaster SET Description = '', OrderBy = 31 WHERE Type = 'Control Type' AND CodemasterID = 26;
	UPDATE CmnCodeMaster SET Description = 'RichTextEditor', OrderBy = 27 WHERE Type = 'Control Type' AND CodemasterID = 27;
	UPDATE CmnCodeMaster SET Description = 'Email', OrderBy = 4 WHERE Type = 'Control Type' AND CodemasterID = 28;
	UPDATE CmnCodeMaster SET Description = 'URL', OrderBy = 5 WHERE Type = 'Control Type' AND CodemasterID = 29;
	UPDATE CmnCodeMaster SET Description = 'TextComboBox', OrderBy = 20 WHERE Type = 'Control Type' AND CodemasterID = 30;
	UPDATE CmnCodeMaster SET Description = 'ComboTextBox', OrderBy = 22 WHERE Type = 'Control Type' AND CodemasterID = 31;

  INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
  VALUES(@ObjectName, 'CodeMasterInsert18Oct2019_164628', @UTCTime)
END
GO
/*=========================
18-Oct-2019 END
=========================*/

/*=========================
27-Apr-2021 START
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
DECLARE @MaxID BIGINT = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
DECLARE @ObjectName NVARCHAR(100) = 'MyPage_CodeMaster_Insert_26-Apr-2021'

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
		SET @Type = 'My Page Blocks';
    SET @TypeValues = 'My Info';
    SET @CodemasterID = ISNULL((SELECT MAX(CodemasterID) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
    SET @UserAccess = 6;
    SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
    SET @Code = 0;
    SET @Description = '';
    SET @Remarks = '';
    SET @Category = '';
    SET @ModuleID = 0;
    SET @ImagePath = '';
    SET @Details = '';
	
		IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  Typevalues = @TypeValues AND Code = @Code)
		BEGIN
			INSERT INTO CmnCodeMaster (
				Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category, UserAccess, ImagePath, Details, OrderBy
				,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
			SELECT 
				@Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath, @Details, @OrderBy
				,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
		END
  
		SET @Type = 'My Page Blocks';
    SET @TypeValues = 'My Preferences';
    SET @CodemasterID = ISNULL((SELECT MAX(CodemasterID) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
    SET @UserAccess = 6;
    SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
    SET @Code = 0;
    SET @Description = '';
    SET @Remarks = '';
    SET @Category = '';
    SET @ModuleID = 0;
    SET @ImagePath = '';
    SET @Details = '';
	
		IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  Typevalues = @TypeValues AND Code = @Code)
		BEGIN
			INSERT INTO CmnCodeMaster (
				Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category, UserAccess, ImagePath, Details, OrderBy
				,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
			SELECT 
				@Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath, @Details, @OrderBy
				,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
		END

		SET @Type = 'My Page Blocks';
    SET @TypeValues = 'Team Mates';
    SET @CodemasterID = ISNULL((SELECT MAX(CodemasterID) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
    SET @UserAccess = 6;
    SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
    SET @Code = 0;
    SET @Description = '';
    SET @Remarks = '';
    SET @Category = '';
    SET @ModuleID = 0;
    SET @ImagePath = '';
    SET @Details = '';
	
		IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  Typevalues = @TypeValues AND Code = @Code)
		BEGIN
			INSERT INTO CmnCodeMaster (
				Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category, UserAccess, ImagePath, Details, OrderBy
				,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
			SELECT 
				@Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath, @Details, @OrderBy
				,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
		END

		SET @Type = 'My Page Blocks';
    SET @TypeValues = 'Tasks';
    SET @CodemasterID = ISNULL((SELECT MAX(CodemasterID) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
    SET @UserAccess = 6;
    SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
    SET @Code = 0;
    SET @Description = '';
    SET @Remarks = '';
    SET @Category = '';
    SET @ModuleID = 0;
    SET @ImagePath = '';
    SET @Details = '';
	
		IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  Typevalues = @TypeValues AND Code = @Code)
		BEGIN
			INSERT INTO CmnCodeMaster (
				Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category, UserAccess, ImagePath, Details, OrderBy
				,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
			SELECT 
				@Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath, @Details, @OrderBy
				,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
		END

		SET @Type = 'My Page Blocks';
    SET @TypeValues = 'Review';
    SET @CodemasterID = ISNULL((SELECT MAX(CodemasterID) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
    SET @UserAccess = 6;
    SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
    SET @Code = 0;
    SET @Description = '';
    SET @Remarks = '';
    SET @Category = '';
    SET @ModuleID = 0;
    SET @ImagePath = '';
    SET @Details = '';
	
		IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  Typevalues = @TypeValues AND Code = @Code)
		BEGIN
			INSERT INTO CmnCodeMaster (
				Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category, UserAccess, ImagePath, Details, OrderBy
				,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
			SELECT 
				@Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath, @Details, @OrderBy
				,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
		END

		SET @Type = 'My Page Blocks';
    SET @TypeValues = 'Approval';
    SET @CodemasterID = ISNULL((SELECT MAX(CodemasterID) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
    SET @UserAccess = 6;
    SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
    SET @Code = 0;
    SET @Description = '';
    SET @Remarks = '';
    SET @Category = '';
    SET @ModuleID = 0;
    SET @ImagePath = '';
    SET @Details = '';
	
		IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  Typevalues = @TypeValues AND Code = @Code)
		BEGIN
			INSERT INTO CmnCodeMaster (
				Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category, UserAccess, ImagePath, Details, OrderBy
				,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
			SELECT 
				@Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath, @Details, @OrderBy
				,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
		END

		SET @Type = 'My Page Blocks';
    SET @TypeValues = 'Authorization';
    SET @CodemasterID = ISNULL((SELECT MAX(CodemasterID) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
    SET @UserAccess = 6;
    SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
    SET @Code = 0;
    SET @Description = '';
    SET @Remarks = '';
    SET @Category = '';
    SET @ModuleID = 0;
    SET @ImagePath = '';
    SET @Details = '';
	
		IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  Typevalues = @TypeValues AND Code = @Code)
		BEGIN
			INSERT INTO CmnCodeMaster (
				Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category, UserAccess, ImagePath, Details, OrderBy
				,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
			SELECT 
				@Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath, @Details, @OrderBy
				,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
		END

		SET @Type = 'My Page Blocks';
    SET @TypeValues = 'Expiry';
    SET @CodemasterID = ISNULL((SELECT MAX(CodemasterID) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
    SET @UserAccess = 6;
    SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
    SET @Code = 0;
    SET @Description = '';
    SET @Remarks = '';
    SET @Category = '';
    SET @ModuleID = 0;
    SET @ImagePath = '';
    SET @Details = '';
	
		IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  Typevalues = @TypeValues AND Code = @Code)
		BEGIN
			INSERT INTO CmnCodeMaster (
				Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category, UserAccess, ImagePath, Details, OrderBy
				,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
			SELECT 
				@Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath, @Details, @OrderBy
				,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
		END

  INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
  VALUES(@ObjectName, 'MyPage_CodeMaster_Insert_26-Apr-2021', @UTCTime)
END
GO
/*=========================
27-Apr-2021 END
=========================*/

/*=========================
24-May-2021 START
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
DECLARE @MaxID BIGINT = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
DECLARE @ObjectName NVARCHAR(100) = 'MyPage_CodeMaster_Insert_24-May-2021'

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
		SET @Type = 'My Page Blocks';
    SET @TypeValues = 'Qualification';
    SET @CodemasterID = ISNULL((SELECT MAX(CodemasterID) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
    SET @UserAccess = 6;
    SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
    SET @Code = 0;
    SET @Description = '';
    SET @Remarks = '';
    SET @Category = '';
    SET @ModuleID = 0;
    SET @ImagePath = '';
    SET @Details = '';
	
		IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND Typevalues = @TypeValues)
		BEGIN
			INSERT INTO CmnCodeMaster (
				Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category, UserAccess, ImagePath, Details, OrderBy
				,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
			SELECT 
				@Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath, @Details, @OrderBy
				,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
		END
		
  INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
  VALUES(@ObjectName, 'MyPage_CodeMaster_Insert_24-May-2021', @UTCTime)
END
GO
/*=========================
24-May-2021 END
=========================*/

/*=========================
29-Jul-2021 START
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
DECLARE @MaxID BIGINT = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
DECLARE @ObjectName NVARCHAR(100) = 'MainPage_CodeMaster_Insert_29-Jul-2021'

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
		SET @Type = 'Main Page';
    SET @TypeValues = 'Module';
    SET @CodemasterID = ISNULL((SELECT MAX(CodemasterID) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
    SET @UserAccess = 6;
    SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
    SET @Code = 0;
    SET @Description = 'Module';
    SET @Remarks = '';
    SET @Category = '';
    SET @ModuleID = 0;
    SET @ImagePath = '';
    SET @Details = '';
	
		IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND Typevalues = @TypeValues)
		BEGIN
			INSERT INTO CmnCodeMaster (
				Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category, UserAccess, ImagePath, Details, OrderBy
				,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
			SELECT 
				@Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath, @Details, @OrderBy
				,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
		END

		SET @Type = 'Main Page';
    SET @TypeValues = 'My Page';
    SET @CodemasterID = ISNULL((SELECT MAX(CodemasterID) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
    SET @UserAccess = 6;
    SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
    SET @Code = 0;
    SET @Description = 'MyPage';
    SET @Remarks = '';
    SET @Category = '';
    SET @ModuleID = 0;
    SET @ImagePath = '';
    SET @Details = '';
	
		IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND Typevalues = @TypeValues)
		BEGIN
			INSERT INTO CmnCodeMaster (
				Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category, UserAccess, ImagePath, Details, OrderBy
				,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
			SELECT 
				@Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath, @Details, @OrderBy
				,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
		END

		SET @Type = 'Main Page';
    SET @TypeValues = 'Sample Manager';
    SET @CodemasterID = ISNULL((SELECT MAX(CodemasterID) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
    SET @UserAccess = 6;
    SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
    SET @Code = 0;
    SET @Description = 'SampleManager';
    SET @Remarks = '';
    SET @Category = '';
    SET @ModuleID = 0;
    SET @ImagePath = '';
    SET @Details = '';
	
		IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND Typevalues = @TypeValues)
		BEGIN
			INSERT INTO CmnCodeMaster (
				Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category, UserAccess, ImagePath, Details, OrderBy
				,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
			SELECT 
				@Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath, @Details, @OrderBy
				,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
		END
		
  INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
  VALUES(@ObjectName, 'MainPage_CodeMaster_Insert_29-Jul-2021', @UTCTime)
END
GO
/*=========================
29-Jul-2021 END
=========================*/

/*=========================
11-Nov-2021 START
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
DECLARE @MaxID BIGINT = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
DECLARE @ObjectName NVARCHAR(100) = 'EmailCategory_CodeMaster_Insert_11-Nov-2021'

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
		SET @Type = 'Email Category';
    SET @TypeValues = 'Process';
    SET @CodemasterID = 1;
    SET @UserAccess = 1;
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
			INSERT INTO CmnCodeMaster (
				Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category, UserAccess, ImagePath, Details, OrderBy
				,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
			SELECT 
				@Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath, @Details, @OrderBy
				,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
		END

		SET @Type = 'Email Category';
    SET @TypeValues = 'Event';
    SET @CodemasterID = 2;
    SET @UserAccess = 1;
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
			INSERT INTO CmnCodeMaster (
				Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category, UserAccess, ImagePath, Details, OrderBy
				,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
			SELECT 
				@Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath, @Details, @OrderBy
				,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
		END

		SET @Type = 'Email Category';
    SET @TypeValues = 'Schedule';
    SET @CodemasterID = 3;
    SET @UserAccess = 1;
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
			INSERT INTO CmnCodeMaster (
				Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category, UserAccess, ImagePath, Details, OrderBy
				,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
			SELECT 
				@Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath, @Details, @OrderBy
				,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
		END

		SET @Type = 'Email Category';
    SET @TypeValues = 'Bulk Email';
    SET @CodemasterID = 4;
    SET @UserAccess = 1;
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
			INSERT INTO CmnCodeMaster (
				Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category, UserAccess, ImagePath, Details, OrderBy
				,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
			SELECT 
				@Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath, @Details, @OrderBy
				,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
		END
		
  INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
  VALUES(@ObjectName, 'EmailCategory_CodeMaster_Insert_11-Nov-2021', @UTCTime)
END
GO
/*=========================
11-Nov-2021 END
=========================*/

/*=========================
29-Sep-2022 START
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
DECLARE @MaxID BIGINT = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
DECLARE @ObjectName NVARCHAR(100) = 'MenuType_CodeMaster_Insert_27-Sep-2022'

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	SET @Type = 'Menu Type';
    SET @TypeValues = 'Fixed Vertical';
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
			INSERT INTO CmnCodeMaster (
				Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category, UserAccess, ImagePath, Details, OrderBy
				,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
			SELECT 
				@Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath, @Details, @OrderBy
				,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
		END

  INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
  VALUES(@ObjectName, 'MenuType_CodeMaster_Insert_27-Sep-2022', @UTCTime)
END
GO
/*=========================
29-Sep-2022 END
=========================*/

/*=========================
23-Mar-2023 START
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
DECLARE @MaxID BIGINT = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
DECLARE @ObjectName NVARCHAR(100) = 'MyPage_CodeMaster_Insert_10-Mar-2023'

IF NOT EXISTS (SELECT * FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	SET @Type = 'My Page Blocks';
    SET @TypeValues = 'Upcoming Birthdays';
    SET @CodemasterID = ISNULL((SELECT MAX(CodemasterID) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
    SET @UserAccess = 6;
    SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
    SET @Code = 0;
    SET @Description = '';
    SET @Remarks = '';
    SET @Category = '';
    SET @ModuleID = 0;
    SET @ImagePath = '';
    SET @Details = '';
	
	IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  Typevalues = @TypeValues AND Code = @Code)
	BEGIN
		INSERT INTO CmnCodeMaster (
			Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category, UserAccess, ImagePath, Details, OrderBy
			,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
		SELECT 
			@Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath, @Details, @OrderBy
			,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
	END
  
	SET @Type = 'My Page Blocks';
    SET @TypeValues = 'Upcoming Events';
    SET @CodemasterID = ISNULL((SELECT MAX(CodemasterID) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
    SET @UserAccess = 6;
    SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
    SET @Code = 0;
    SET @Description = '';
    SET @Remarks = '';
    SET @Category = '';
    SET @ModuleID = 0;
    SET @ImagePath = '';
    SET @Details = '';
	
	IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  Typevalues = @TypeValues AND Code = @Code)
	BEGIN
		INSERT INTO CmnCodeMaster (
			Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category, UserAccess, ImagePath, Details, OrderBy
			,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
		SELECT 
			@Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath, @Details, @OrderBy
			,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
	END

	SET @Type = 'My Page Blocks';
    SET @TypeValues = 'Upcoming Announcements';
    SET @CodemasterID = ISNULL((SELECT MAX(CodemasterID) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
    SET @UserAccess = 6;
    SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
    SET @Code = 0;
    SET @Description = '';
    SET @Remarks = '';
    SET @Category = '';
    SET @ModuleID = 0;
    SET @ImagePath = '';
    SET @Details = '';
	
	IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  Typevalues = @TypeValues AND Code = @Code)
	BEGIN
		INSERT INTO CmnCodeMaster (
			Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category, UserAccess, ImagePath, Details, OrderBy
			,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
		SELECT 
			@Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath, @Details, @OrderBy
			,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
	END


  INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
  VALUES(@ObjectName, 'MyPage_CodeMaster_Insert_10-Mar-2023', @UTCTime)
END
GO
/*=========================
23-Mar-2023 END
=========================*/


/*=========================
03-May-2023 START
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
DECLARE @MaxID BIGINT = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
DECLARE @ObjectName NVARCHAR(100) = 'Mypage_CodeMaster_Insert_03-May-2023'

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	SET @Type = 'My Page Blocks';
    SET @TypeValues = 'My Performance';
    SET @CodemasterID = ISNULL((SELECT MAX(CodemasterID) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
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
			INSERT INTO CmnCodeMaster (
				Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category, UserAccess, ImagePath, Details, OrderBy
				,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
			SELECT 
				@Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath, @Details, @OrderBy
				,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
		END

  INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
  VALUES(@ObjectName, 'Mypage_CodeMaster_Insert_03-May-2023', @UTCTime)
END
GO
/*=========================
03-May-2023 END
=========================*/

/*=========================
03-Aug-2023 START
=========================*/
GO
SET NOCOUNT ON
DECLARE @UserID INT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID)
DECLARE @UTCTime DATETIME = GETUTCDATE()
DECLARE @Type NVARCHAR(500)
DECLARE @MaxID BIGINT = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
DECLARE @ObjectName NVARCHAR(100) = 'Page Orientation_CodeMaster_Update_03-Aug-2023'

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	SET @Type = 'Page Orientation';

	IF EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type)
	BEGIN
		UPDATE CmnCodeMaster SET TypeValues = 'Vertical & Tabs' WHERE Type = @Type AND CodemasterID = 2;
		UPDATE CmnCodeMaster SET TypeValues = 'Vertical' WHERE Type = @Type AND CodemasterID = 3;
	END

	INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
	VALUES(@ObjectName, 'Page Orientation_CodeMaster_Update_03-Aug-2023', @UTCTime)
END
GO
/*=========================
03-Aug-2023 END
=========================*/

/*=========================
01-Sep-2023 START
=========================*/
GO
SET NOCOUNT ON
DECLARE @UserID INT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
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
DECLARE @MaxID BIGINT = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
DECLARE @ObjectName NVARCHAR(100) = 'AutoCode_FieldType_CodeMaster_Insert_01-Sep-2023'

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	SET @Type = 'Auto Code Field Type';
	SET @TypeValues = 'Financial Year';
    SET @CodemasterID = ISNULL((SELECT MAX(CodemasterID) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
    SET @UserAccess = 6;
    SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
    SET @Code = '';
    SET @Description = '';
    SET @Remarks = '';
    SET @Category = '';
    SET @ModuleID = 0;
    SET @ImagePath = '';
    SET @Details = '';

	IF EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type)
	BEGIN
		INSERT INTO CmnCodeMaster (
			Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category, UserAccess, ImagePath, Details, OrderBy,
			Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
		SELECT 
			@Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath, @Details, @OrderBy,
			1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
	END

	INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
	VALUES(@ObjectName, 'AutoCode_FieldType_CodeMaster_Insert_01-Sep-2023', @UTCTime)
END
GO
/*=========================
01-Sep-2023 END
=========================*/

/*=========================
11-Nov-2023 START
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
DECLARE @ObjectName NVARCHAR(100) = 'CodeMaster_Insert_AccAnalytics_11-Nov-2023'

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	SET @Type = 'Accounts Receivable/Payable Type';
	SET @TypeValues = 'Receivable';
	SET @CodemasterID = 1;
	SET @UserAccess = 1;
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
  
  SET @Type = 'Accounts Receivable/Payable Type';
	SET @TypeValues = 'Payable';
	SET @CodemasterID = 2;
	SET @UserAccess = 1;
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
11-Nov-2023 END
=========================*/

/*=========================
29-Nov-2023 START
=========================*/
GO
SET NOCOUNT ON
DECLARE @UserID INT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID)
DECLARE @UTCTime DATETIME = GETUTCDATE()
DECLARE @Type NVARCHAR(500)
DECLARE @ObjectName NVARCHAR(100) = 'Menu Type_CodeMaster_Update_29-Nov-2023'

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	SET @Type = 'Menu Type';

	IF EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type)
	BEGIN
		UPDATE CmnCodeMaster SET TypeValues = 'Floating' WHERE Type = @Type AND CodemasterID = 2;
		UPDATE CmnCodeMaster SET TypeValues = 'Vertical' WHERE Type = @Type AND CodemasterID = 3;
	END

	INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
	VALUES(@ObjectName, 'Menu Type_CodeMaster_Update_29-Nov-2023', @UTCTime)
END
GO
/*=========================
29-Nov-2023 END
=========================*/

/*=========================
13-Dec-2023 START
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
DECLARE @MaxID BIGINT = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
DECLARE @ObjectName NVARCHAR(100) = 'MyPage_CodeMaster_Insert_13-Dec-2023'

IF NOT EXISTS (SELECT * FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	SET @Type = 'My Page Blocks';
    SET @TypeValues = 'TimeSheet';
    SET @CodemasterID = ISNULL((SELECT MAX(CodemasterID) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
    SET @UserAccess = 6;
    SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
    SET @Code = 0;
    SET @Description = '';
    SET @Remarks = '';
    SET @Category = '';
    SET @ModuleID = 0;
    SET @ImagePath = '';
    SET @Details = '';
	
	IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  Typevalues = @TypeValues AND Code = @Code)
	BEGIN
		INSERT INTO CmnCodeMaster (
			Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category, UserAccess, ImagePath, Details, OrderBy
			,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
		SELECT 
			@Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath, @Details, @OrderBy
			,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
	END
  
	SET @Type = 'My Page Blocks';
    SET @TypeValues = 'Payslip';
    SET @CodemasterID = ISNULL((SELECT MAX(CodemasterID) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
    SET @UserAccess = 6;
    SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
    SET @Code = 0;
    SET @Description = '';
    SET @Remarks = '';
    SET @Category = '';
    SET @ModuleID = 0;
    SET @ImagePath = '';
    SET @Details = '';
	
	IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND  Typevalues = @TypeValues AND Code = @Code)
	BEGIN
		INSERT INTO CmnCodeMaster (
			Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category, UserAccess, ImagePath, Details, OrderBy
			,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
		SELECT 
			@Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath, @Details, @OrderBy
			,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
	END

  INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
  VALUES(@ObjectName, 'MyPage_CodeMaster_Insert_13-Dec-2023', @UTCTime)
END
GO
/*=========================
13-Dec-2023 END
=========================*/

/*=========================
21-Dec-2023 START
=========================*/
SET NOCOUNT ON

DECLARE @ObjectName NVARCHAR(100) = 'Lab_Workflow_KPI_Process_update_21-Dec-2023'
DECLARE @UTCTime DATETIME = GETUTCDATE()

IF NOT EXISTS (SELECT * FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN

  UPDATE cmnCodeMaster SET TypeValues = 'Deviation Register' WHERE Type = 'Lab Workflow KPI Process' AND CodeMasterID = 8;
	
  INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
  VALUES(@ObjectName, @ObjectName, @UTCTime)
END
GO
/*=========================
21-Dec-2023 END
=========================*/

/*=========================
10-Oct-2024 START
=========================*/
SET NOCOUNT ON

DECLARE @ObjectName NVARCHAR(100) = 'License_Type_CodeMaster_Update_10-Oct-2024'
DECLARE @UTCTime DATETIME = GETUTCDATE()

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN

	UPDATE CmnCodeMaster SET TypeValues = 'Report' WHERE Type = 'License Type' AND CodemasterID = 3;
	
  INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
  VALUES(@ObjectName, @ObjectName, @UTCTime)
END
GO
/*=========================
10-Oct-2024 END
=========================*/

/*=========================
20-Nov-2024 START
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
DECLARE @MaxID BIGINT = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
DECLARE @ObjectName NVARCHAR(100) = 'Mypage_CodeMaster_Insert_03-May-2023'

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	SET @Type = 'My Page Blocks';
    SET @TypeValues = 'My Samples';
    SET @CodemasterID = ISNULL((SELECT MAX(CodemasterID) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
    SET @UserAccess = 6;
    SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
    SET @Code = 0;
    SET @Description = '';
    SET @Remarks = '';
    SET @Category = '';
    SET @ModuleID = 0;
    SET @ImagePath = '';
    SET @Details = '';
	
		IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND Typevalues = @TypeValues AND Code = @Code)
		BEGIN
			INSERT INTO CmnCodeMaster (
				Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category, UserAccess, ImagePath, Details, OrderBy
				,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
			SELECT 
				@Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath, @Details, @OrderBy
				,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
		END

  INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
  VALUES(@ObjectName, 'Mypage_CodeMaster_Insert_20-Nov-2024', @UTCTime)
END
GO

/*=========================
20-Nov-2024 END
=========================*/

/*=========================
22-Nov-2024 START
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
DECLARE @MaxID BIGINT = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
DECLARE @ObjectName NVARCHAR(100) = 'MainPage_CodeMaster_Insert_22-Nov-2024'

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN

		SET @Type = 'Main Page';
    SET @TypeValues = 'Favorites';
    SET @CodemasterID = ISNULL((SELECT MAX(CodemasterID) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
    SET @UserAccess = 6;
    SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
    SET @Code = 0;
    SET @Description = 'Favorites';
    SET @Remarks = '';
    SET @Category = '';
    SET @ModuleID = 0;
    SET @ImagePath = '';
    SET @Details = '';
	
		IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND Typevalues = @TypeValues)
		BEGIN
			INSERT INTO CmnCodeMaster (
				Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category, UserAccess, ImagePath, Details, OrderBy
				,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
			SELECT 
				@Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath, @Details, @OrderBy
				,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
		END
		
  INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
  VALUES(@ObjectName, 'MainPage_CodeMaster_Insert_22-Nov-2024', @UTCTime)
END
GO
/*=========================
22-Nov-2024 END
=========================*/

/*=========================
08-Jan-2025 START
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
DECLARE @ObjectName NVARCHAR(100) = 'CodeMaster_Insert_APITypes_08-Jan-2025'

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	SET @Type = 'API Types';
	SET @TypeValues = 'Email Service';
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
	INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
	VALUES(@ObjectName, @ObjectName, @UTCTime)
END
GO
/*=========================
08-Jan-2025 END
=========================*/

/*=========================
12-Feb-2025 START
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
DECLARE @ObjectName NVARCHAR(100) = 'CodeMaster_Update_APITypes_12-Feb-2025'

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	SET @Type = 'API Types';
	SET @TypeValues = 'SMS Service';
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
DECLARE @ObjectName NVARCHAR(100) = 'CodeMaster_Insert_APIContentType_12-Feb-2025'

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	SET @Type = 'API Content Type';
	SET @TypeValues = 'Json';
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

	SET @Type = 'API Content Type';
	SET @TypeValues = 'Form Data';
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
12-Feb-2025 END
=========================*/

/*=========================
19-Feb-2025 START
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
DECLARE @ObjectName NVARCHAR(100) = 'CodeMaster_Insert_APITypes_19-Feb-2025'

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	SET @Type = 'API Types';
	SET @TypeValues = 'Image Process Service';
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
	INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
	VALUES(@ObjectName, @ObjectName, @UTCTime)
END
GO
/*=========================
19-Feb-2025 END
=========================*/

/*=========================
04-Mar-2025 START
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
DECLARE @ObjectName NVARCHAR(100) = 'CodeMaster_Insert_SummaryTypes_04-Mar-2025'

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	SET @Type = 'Summary Types';
	SET @TypeValues = 'SUM';
	SET @CodemasterID = 1;
	SET @UserAccess = 1;
	SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
	SET @Code = '';
	SET @Description = 'sum';
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

	SET @TypeValues = 'AVG';
	SET @CodemasterID = 2;
	SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
	SET @Description = 'avg';

	IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND CodemasterID = @CodemasterID)
	BEGIN
		INSERT INTO CmnCodeMaster (Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category,
			UserAccess, ImagePath, Details, OrderBy, Version, IsCurrentVersion, NotActive, IsDeleted,
			CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
		SELECT @Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath,
			@Details, @OrderBy , 1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
	END

	SET @TypeValues = 'COUNT';
	SET @CodemasterID = 3;
	SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
	SET @Description = 'count';

	IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND CodemasterID = @CodemasterID)
	BEGIN
		INSERT INTO CmnCodeMaster (Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category,
			UserAccess, ImagePath, Details, OrderBy, Version, IsCurrentVersion, NotActive, IsDeleted,
			CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
		SELECT @Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath,
			@Details, @OrderBy , 1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
	END

	SET @TypeValues = 'Min';
	SET @CodemasterID = 4;
	SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
	SET @Description = 'min';

	IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND CodemasterID = @CodemasterID)
	BEGIN
		INSERT INTO CmnCodeMaster (Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category,
			UserAccess, ImagePath, Details, OrderBy, Version, IsCurrentVersion, NotActive, IsDeleted,
			CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
		SELECT @Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath,
			@Details, @OrderBy , 1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
	END

	SET @TypeValues = 'Max';
	SET @CodemasterID = 5;
	SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
	SET @Description = 'max';

	IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND CodemasterID = @CodemasterID)
	BEGIN
		INSERT INTO CmnCodeMaster (Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category,
			UserAccess, ImagePath, Details, OrderBy, Version, IsCurrentVersion, NotActive, IsDeleted,
			CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
		SELECT @Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath,
			@Details, @OrderBy , 1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
	END

	SET @TypeValues = 'FIRST';
	SET @CodemasterID = 6;
	SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
	SET @Description = 'first';

	IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND CodemasterID = @CodemasterID)
	BEGIN
		INSERT INTO CmnCodeMaster (Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category,
			UserAccess, ImagePath, Details, OrderBy, Version, IsCurrentVersion, NotActive, IsDeleted,
			CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
		SELECT @Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath,
			@Details, @OrderBy , 1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
	END

	SET @TypeValues = 'LAST';
	SET @CodemasterID = 7;
	SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
	SET @Description = 'last';

	IF NOT EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type AND CodemasterID = @CodemasterID)
	BEGIN
		INSERT INTO CmnCodeMaster (Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category,
			UserAccess, ImagePath, Details, OrderBy, Version, IsCurrentVersion, NotActive, IsDeleted,
			CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
		SELECT @Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath,
			@Details, @OrderBy , 1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
	END

	SET @TypeValues = 'Percentage';
	SET @CodemasterID = 8;
	SET @Orderby = ISNULL((SELECT MAX(OrderBy) + 1 FROM CmnCodeMaster WHERE Type = @Type), 1);
	SET @Description = '%';

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
04-Mar-2025 END
=========================*/

/*=========================
10-Mar-2025 START
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
DECLARE @ObjectName NVARCHAR(100) = 'CodeMaster_Insert_APITypes_6-Mar-2025'

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	SET @Type = 'API Types';
	SET @TypeValues = 'Embedding Service';
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
DECLARE @ObjectName NVARCHAR(100) = 'CodeMaster_Insert_APITypes_VectorDB'

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	SET @Type = 'API Types';
	SET @TypeValues = 'VectorDB Service';
	SET @CodemasterID = 5;
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
10-Mar-2025 END
=========================*/

/*=========================
25-Mar-2025 START
=========================*/
SET NOCOUNT ON

DECLARE @ObjectName NVARCHAR(100) = 'Language_List_Category_Update_25-Mar-2025'
DECLARE @UTCTime DATETIME = GETUTCDATE()

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
  UPDATE CmnCodeMaster SET Category = 'RTL' WHERE Type = 'Languages' AND TypeValues = 'Arabic';
	
  INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
  VALUES(@ObjectName, @ObjectName, @UTCTime)
END
GO
/*=========================
25-Mar-2025 END
=========================*/

/*=========================
01-Apr-2025 START
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
DECLARE @ObjectName NVARCHAR(100) = 'CodeMaster_Insert_AutoGenerateResetPeriod_01-Apr-2025'

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	SET @Type = 'Auto Generate Reset Period';
	SET @TypeValues = 'Daily';
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
	INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
	VALUES(@ObjectName, @ObjectName, @UTCTime)
END
GO
/*=========================
01-Apr-2025 END
=========================*/

/*=========================
02-Apr-2025 START
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
DECLARE @ObjectName NVARCHAR(100) = 'CodeMaster_Insert_APITypes_02-Apr-2025'

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	SET @Type = 'API Types';
	SET @TypeValues = 'LLM Services';
	SET @CodemasterID = 6;
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
02-Apr-2025 END
=========================*/

/*=========================
02-May-2025 START
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
DECLARE @MaxID BIGINT = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
DECLARE @ObjectName NVARCHAR(100) = 'LicenseValidationBasis_CodeMaster_Insert_02-May-2025'

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	SET @Type = 'License Validation Basis';
    SET @TypeValues = 'Branch';
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
			INSERT INTO CmnCodeMaster (
				Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category, UserAccess, ImagePath, Details, OrderBy
				,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
			SELECT
				@Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath, @Details, @OrderBy
				,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
		END

	SET @Type = 'License Validation Basis';
    SET @TypeValues = 'Company';
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
			INSERT INTO CmnCodeMaster (
				Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category, UserAccess, ImagePath, Details, OrderBy
				,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
			SELECT
				@Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath, @Details, @OrderBy
				,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
		END

	SET @Type = 'License Validation Basis';
    SET @TypeValues = 'Lab';
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
			INSERT INTO CmnCodeMaster (
				Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category, UserAccess, ImagePath, Details, OrderBy
				,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
			SELECT
				@Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath, @Details, @OrderBy
				,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
		END

	INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
      VALUES(@ObjectName, 'LicenseValidationBasis_CodeMaster_Insert_02-May-2025', @UTCTime)
END
GO
/*=========================
02-May-2025 END
=========================*/

/*=========================
07-May-2025 START
=========================*/
SET NOCOUNT ON
DECLARE @UserID BIGINT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID)
DECLARE @UTCTime DATETIME = GETUTCDATE(),
  @Type NVARCHAR(500),
  @CodemasterID BIGINT,
  @TypeValues NVARCHAR(500),
  @Code NVARCHAR(500),
  @Description NVARCHAR(500),
  @Remarks NVARCHAR(500),
  @ModuleID NVARCHAR(500),
  @Category NVARCHAR(500),
  @UserAccess NVARCHAR(500),
  @ImagePath NVARCHAR(500),
  @Details NVARCHAR(500),
  @OrderBy NVARCHAR(500)

DECLARE @MaxID BIGINT = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
DECLARE @ObjectName NVARCHAR(100) = 'FormType_CodeMaster_Insert_14-Mar-2025'

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	SET @Type = 'Form Type';
    SET @TypeValues = 'Sub-Tree';
    SET @CodemasterID = 13;
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
			INSERT INTO CmnCodeMaster (
				Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category, UserAccess, ImagePath, Details, OrderBy
				,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
			SELECT
				@Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath, @Details, @OrderBy
				,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
		END

			INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
      VALUES(@ObjectName, 'FormType_CodeMaster_Insert_14-Mar-2025', @UTCTime)
END
GO
/*=========================
07-May-2025 END
=========================*/

/*=========================
16-May-2025 START
=========================*/
SET NOCOUNT ON
DECLARE @UserID BIGINT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID)
DECLARE @UTCTime DATETIME = GETUTCDATE(),
  @Type NVARCHAR(500),
  @CodemasterID BIGINT,
  @TypeValues NVARCHAR(500),
  @Code NVARCHAR(500),
  @Description NVARCHAR(500),
  @Remarks NVARCHAR(500),
  @ModuleID NVARCHAR(500),
  @Category NVARCHAR(500),
  @UserAccess NVARCHAR(500),
  @ImagePath NVARCHAR(500),
  @Details NVARCHAR(500),
  @OrderBy NVARCHAR(500)

DECLARE @MaxID BIGINT = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
DECLARE @ObjectName NVARCHAR(100) = 'SearchType_CodeMaster_Insert_16-Mar-2025'

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	SET @Type = 'Search Type';
    SET @TypeValues = 'Vertical Search';
    SET @CodemasterID = 1;
    SET @UserAccess = 1;
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
		INSERT INTO CmnCodeMaster (
			Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category, UserAccess, ImagePath, Details, OrderBy
			,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
		SELECT
			@Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath, @Details, @OrderBy
			,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
	END

	SET @Type = 'Search Type';
    SET @TypeValues = 'Horizontal Search';
    SET @CodemasterID = 2;
    SET @UserAccess = 1;
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
		INSERT INTO CmnCodeMaster (
			Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category, UserAccess, ImagePath, Details, OrderBy
			,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
		SELECT
			@Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath, @Details, @OrderBy
			,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
	END

	INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
    VALUES(@ObjectName, 'SearchType_CodeMaster_Insert_16-Mar-2025', @UTCTime)
END
GO
/*=========================
16-May-2025 END
=========================*/

/*=========================
12-Jun-2025 START
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
DECLARE @MaxID BIGINT = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
DECLARE @ObjectName NVARCHAR(100) = 'ErrorType_CodeMaster_Insert_12-Jun-2025'

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	SET @Type = 'Error Type';
    SET @TypeValues = 'Application Error';
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
			INSERT INTO CmnCodeMaster (
				Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category, UserAccess, ImagePath, Details, OrderBy
				,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
			SELECT
				@Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath, @Details, @OrderBy
				,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
		END

	SET @Type = 'Error Type';
    SET @TypeValues = 'Form Error';
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
			INSERT INTO CmnCodeMaster (
				Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category, UserAccess, ImagePath, Details, OrderBy
				,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
			SELECT
				@Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath, @Details, @OrderBy
				,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
		END

	INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
      VALUES(@ObjectName, 'ErrorType_CodeMaster_Insert_12-Jun-2025', @UTCTime)
END
GO
/*=========================
12-Jun-2025 END
=========================*/

/*=========================
23-Jun-2025 START
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
DECLARE @MaxID BIGINT = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
DECLARE @ObjectName NVARCHAR(100) = 'FileTransferMode_CodeMaster_Insert_23-Jun-2025'

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	SET @Type = 'File Transfer Mode';
    SET @TypeValues = 'Move';
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
			INSERT INTO CmnCodeMaster (
				Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category, UserAccess, ImagePath, Details, OrderBy
				,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
			SELECT
				@Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath, @Details, @OrderBy
				,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
		END

	SET @Type = 'File Transfer Mode';
    SET @TypeValues = 'Copy';
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
			INSERT INTO CmnCodeMaster (
				Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category, UserAccess, ImagePath, Details, OrderBy
				,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
			SELECT
				@Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath, @Details, @OrderBy
				,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
		END

	SET @Type = 'File Transfer Mode';
    SET @TypeValues = 'Delete';
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
			INSERT INTO CmnCodeMaster (
				Type, CodemasterID, DisplayType, TypeValues, Code, Description, Remarks, ModuleID, Category, UserAccess, ImagePath, Details, OrderBy
				,Version, IsCurrentVersion, NotActive, IsDeleted, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
			SELECT
				@Type, @CodemasterID, @Type, @TypeValues, @Code, @Description, @Remarks, @ModuleID, @Category, @UserAccess, @ImagePath, @Details, @OrderBy
				,1, 1, 0, 0, @UserID, @UTCTime, @GMTTime, @UserID, @UTCTime, @GMTTime
		END

	INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
      VALUES(@ObjectName, 'FileTransferMode_CodeMaster_Insert_23-Jun-2025', @UTCTime)
END
GO
/*=========================
23-Jun-2025 END
=========================*/

/*=========================
25-Jun-2025 START
=========================*/
GO
SET NOCOUNT ON
DECLARE @UserID INT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE @GMTTime DATETIME = dbo.fn_GMTCalculation(@UserID)
DECLARE @UTCTime DATETIME = GETUTCDATE()
DECLARE @Type NVARCHAR(500)
DECLARE @MaxID BIGINT = ISNULL((SELECT (MAX(CodemasterID) + 1) FROM CmnCodeMaster WHERE Type = @Type), 1)
DECLARE @ObjectName NVARCHAR(100) = 'Page Orientation_CodeMaster_Update_25-Jun-2025'

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	SET @Type = 'Page Orientation';

	IF EXISTS (SELECT 1 FROM CmnCodeMaster WHERE Type = @Type)
	BEGIN
		UPDATE CmnCodeMaster SET TypeValues = 'Vertical & Tabs' WHERE Type = @Type AND CodemasterID = 2;
	END

	INSERT INTO CmnInstalledScriptHistory (ObjectName, Description, InstalledDate)
	VALUES(@ObjectName, 'Page Orientation_CodeMaster_Update_25-Jun-2025', @UTCTime)
END
GO

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
DECLARE @ObjectName NVARCHAR(100) = 'SearchType_CodeMaster_Insert_25-Jun-2025'

IF NOT EXISTS (SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	SET @Type = 'Search Type';
	SET @TypeValues = 'Horizontal Search Expand';
	SET @CodemasterID = 3;
	SET @UserAccess = 1;
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
	VALUES(@ObjectName,'SearchType_CodeMaster_Insert_25-Jun-2025', @UTCTime)
END
GO
/*=========================
25-Jun-2025 END
=========================*/