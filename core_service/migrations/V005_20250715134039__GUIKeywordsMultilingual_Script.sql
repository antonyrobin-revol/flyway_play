/*=========================
07-Jul-2019 START
==========================*/
SET NOCOUNT ON
DECLARE @UserID INT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE @UTCTime DATETIME = GETUTCDATE(),
		@ObjectName NVARCHAR(100) = N'GUIMultilingual Common_07-Jul-2019',
		@Key NVARCHAR(100) = '',
		@Value NVARCHAR(100) = '',
		@LanguageID INT = 0
 
IF NOT EXISTS(SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	SET @LanguageID = 1;
	SET @Key = N'username';
	SET @Value = N'Username';

	INSERT INTO CmnGUIMultiLingual(LanguageID,KeyCode, KeyValue,CreatedBy, CreatedDate, IsDeleted, ModifiedBy, ModifiedDate)
	SELECT @LanguageID, @Key, @Value, @UserID, @UTCTime, 0, @UserID, @UTCTime
	WHERE  NOT EXISTS (SELECT 1 FROM CmnGUIMultiLingual WHERE  KeyCode = @Key);

	SET @Key = N'password';
	SET @Value = N'Password';

	INSERT INTO CmnGUIMultiLingual(LanguageID,KeyCode, KeyValue,CreatedBy, CreatedDate, IsDeleted, ModifiedBy, ModifiedDate)
	SELECT @LanguageID, @Key, @Value, @UserID, @UTCTime, 0, @UserID, @UTCTime
	WHERE  NOT EXISTS (SELECT 1 FROM CmnGUIMultiLingual WHERE  KeyCode = @Key);

	SET @Key = N'forgorPassword';
	SET @Value = N'Forgot Password?';

	INSERT INTO CmnGUIMultiLingual(LanguageID,KeyCode, KeyValue,CreatedBy, CreatedDate, IsDeleted, ModifiedBy, ModifiedDate)
	SELECT @LanguageID, @Key, @Value, @UserID, @UTCTime, 0, @UserID, @UTCTime
	WHERE  NOT EXISTS (SELECT 1 FROM CmnGUIMultiLingual WHERE  KeyCode = @Key);

	SET @Key = N'rememberMe';
	SET @Value = N'Remember Me';

	INSERT INTO CmnGUIMultiLingual(LanguageID,KeyCode, KeyValue,CreatedBy, CreatedDate, IsDeleted, ModifiedBy, ModifiedDate)
	SELECT @LanguageID, @Key, @Value, @UserID, @UTCTime, 0, @UserID, @UTCTime
	WHERE  NOT EXISTS (SELECT 1 FROM CmnGUIMultiLingual WHERE  KeyCode = @Key);

	SET @Key = N'changePassword';
	SET @Value = N'Change Password';

	INSERT INTO CmnGUIMultiLingual(LanguageID,KeyCode, KeyValue,CreatedBy, CreatedDate, IsDeleted, ModifiedBy, ModifiedDate)
	SELECT @LanguageID, @Key, @Value, @UserID, @UTCTime, 0, @UserID, @UTCTime
	WHERE  NOT EXISTS (SELECT 1 FROM CmnGUIMultiLingual WHERE  KeyCode = @Key);

	SET @Key = N'oldPassword';
	SET @Value = N'Old Password';

	INSERT INTO CmnGUIMultiLingual(LanguageID,KeyCode, KeyValue,CreatedBy, CreatedDate, IsDeleted, ModifiedBy, ModifiedDate)
	SELECT @LanguageID, @Key, @Value, @UserID, @UTCTime, 0, @UserID, @UTCTime
	WHERE  NOT EXISTS (SELECT 1 FROM CmnGUIMultiLingual WHERE  KeyCode = @Key);

	SET @Key = N'newPassword';
	SET @Value = N'New Password';

	INSERT INTO CmnGUIMultiLingual(LanguageID,KeyCode, KeyValue,CreatedBy, CreatedDate, IsDeleted, ModifiedBy, ModifiedDate)
	SELECT @LanguageID, @Key, @Value, @UserID, @UTCTime, 0, @UserID, @UTCTime
	WHERE  NOT EXISTS (SELECT 1 FROM CmnGUIMultiLingual WHERE  KeyCode = @Key);

	SET @Key = N'confirmPassword';
	SET @Value = N'Confirm Password';

	INSERT INTO CmnGUIMultiLingual(LanguageID,KeyCode, KeyValue,CreatedBy, CreatedDate, IsDeleted, ModifiedBy, ModifiedDate)
	SELECT @LanguageID, @Key, @Value, @UserID, @UTCTime, 0, @UserID, @UTCTime
	WHERE  NOT EXISTS (SELECT 1 FROM CmnGUIMultiLingual WHERE  KeyCode = @Key);

	SET @Key = N'save';
	SET @Value = N'Save';

	INSERT INTO CmnGUIMultiLingual(LanguageID,KeyCode, KeyValue,CreatedBy, CreatedDate, IsDeleted, ModifiedBy, ModifiedDate)
	SELECT @LanguageID, @Key, @Value, @UserID, @UTCTime, 0, @UserID, @UTCTime
	WHERE  NOT EXISTS (SELECT 1 FROM CmnGUIMultiLingual WHERE  KeyCode = @Key);

	SET @Key = N'otp';
	SET @Value = N'OTP';

	INSERT INTO CmnGUIMultiLingual(LanguageID,KeyCode, KeyValue,CreatedBy, CreatedDate, IsDeleted, ModifiedBy, ModifiedDate)
	SELECT @LanguageID, @Key, @Value, @UserID, @UTCTime, 0, @UserID, @UTCTime
	WHERE  NOT EXISTS (SELECT 1 FROM CmnGUIMultiLingual WHERE  KeyCode = @Key);

	SET @Key = N'resendOTP';
	SET @Value = N'Resend OTP';

	INSERT INTO CmnGUIMultiLingual(LanguageID,KeyCode, KeyValue,CreatedBy, CreatedDate, IsDeleted, ModifiedBy, ModifiedDate)
	SELECT @LanguageID, @Key, @Value, @UserID, @UTCTime, 0, @UserID, @UTCTime
	WHERE  NOT EXISTS (SELECT 1 FROM CmnGUIMultiLingual WHERE  KeyCode = @Key);

	SET @Key = N'backToLogin';
	SET @Value = N'Back To Login';

	INSERT INTO CmnGUIMultiLingual(LanguageID,KeyCode, KeyValue,CreatedBy, CreatedDate, IsDeleted, ModifiedBy, ModifiedDate)
	SELECT @LanguageID, @Key, @Value, @UserID, @UTCTime, 0, @UserID, @UTCTime
	WHERE  NOT EXISTS (SELECT 1 FROM CmnGUIMultiLingual WHERE  KeyCode = @Key);

	SET @Key = N'module';
	SET @Value = N'Module';

	INSERT INTO CmnGUIMultiLingual(LanguageID,KeyCode, KeyValue,CreatedBy, CreatedDate, IsDeleted, ModifiedBy, ModifiedDate)
	SELECT @LanguageID, @Key, @Value, @UserID, @UTCTime, 0, @UserID, @UTCTime
	WHERE  NOT EXISTS (SELECT 1 FROM CmnGUIMultiLingual WHERE  KeyCode = @Key);

	SET @Key = N'tasks';
	SET @Value = N'Tasks';

	INSERT INTO CmnGUIMultiLingual(LanguageID,KeyCode, KeyValue,CreatedBy, CreatedDate, IsDeleted, ModifiedBy, ModifiedDate)
	SELECT @LanguageID, @Key, @Value, @UserID, @UTCTime, 0, @UserID, @UTCTime
	WHERE  NOT EXISTS (SELECT 1 FROM CmnGUIMultiLingual WHERE  KeyCode = @Key);

	SET @Key = N'chat';
	SET @Value = N'Chat';

	INSERT INTO CmnGUIMultiLingual(LanguageID,KeyCode, KeyValue,CreatedBy, CreatedDate, IsDeleted, ModifiedBy, ModifiedDate)
	SELECT @LanguageID, @Key, @Value, @UserID, @UTCTime, 0, @UserID, @UTCTime
	WHERE  NOT EXISTS (SELECT 1 FROM CmnGUIMultiLingual WHERE  KeyCode = @Key);

	SET @Key = N'viewProfile';
	SET @Value = N'Profile';

	INSERT INTO CmnGUIMultiLingual(LanguageID,KeyCode, KeyValue,CreatedBy, CreatedDate, IsDeleted, ModifiedBy, ModifiedDate)
	SELECT @LanguageID, @Key, @Value, @UserID, @UTCTime, 0, @UserID, @UTCTime
	WHERE  NOT EXISTS (SELECT 1 FROM CmnGUIMultiLingual WHERE  KeyCode = @Key);

	SET @Key = N'refresh';
	SET @Value = N'Refresh';

	INSERT INTO CmnGUIMultiLingual(LanguageID,KeyCode, KeyValue,CreatedBy, CreatedDate, IsDeleted, ModifiedBy, ModifiedDate)
	SELECT @LanguageID, @Key, @Value, @UserID, @UTCTime, 0, @UserID, @UTCTime
	WHERE  NOT EXISTS (SELECT 1 FROM CmnGUIMultiLingual WHERE  KeyCode = @Key);

	SET @Key = N'fullScreen';
	SET @Value = N'Full Screen';

	INSERT INTO CmnGUIMultiLingual(LanguageID,KeyCode, KeyValue,CreatedBy, CreatedDate, IsDeleted, ModifiedBy, ModifiedDate)
	SELECT @LanguageID, @Key, @Value, @UserID, @UTCTime, 0, @UserID, @UTCTime
	WHERE  NOT EXISTS (SELECT 1 FROM CmnGUIMultiLingual WHERE  KeyCode = @Key);

	SET @Key = N'exitFullScreen';
	SET @Value = N'Exit Full Screen';

	INSERT INTO CmnGUIMultiLingual(LanguageID,KeyCode, KeyValue,CreatedBy, CreatedDate, IsDeleted, ModifiedBy, ModifiedDate)
	SELECT @LanguageID, @Key, @Value, @UserID, @UTCTime, 0, @UserID, @UTCTime
	WHERE  NOT EXISTS (SELECT 1 FROM CmnGUIMultiLingual WHERE  KeyCode = @Key);

	SET @Key = N'print';
	SET @Value = N'Print';

	INSERT INTO CmnGUIMultiLingual(LanguageID,KeyCode, KeyValue,CreatedBy, CreatedDate, IsDeleted, ModifiedBy, ModifiedDate)
	SELECT @LanguageID, @Key, @Value, @UserID, @UTCTime, 0, @UserID, @UTCTime
	WHERE  NOT EXISTS (SELECT 1 FROM CmnGUIMultiLingual WHERE  KeyCode = @Key);

	SET @Key = N'help';
	SET @Value = N'Help';

	INSERT INTO CmnGUIMultiLingual(LanguageID,KeyCode, KeyValue,CreatedBy, CreatedDate, IsDeleted, ModifiedBy, ModifiedDate)
	SELECT @LanguageID, @Key, @Value, @UserID, @UTCTime, 0, @UserID, @UTCTime
	WHERE  NOT EXISTS (SELECT 1 FROM CmnGUIMultiLingual WHERE  KeyCode = @Key);

	SET @Key = N'search';
	SET @Value = N'Search';

	INSERT INTO CmnGUIMultiLingual(LanguageID,KeyCode, KeyValue,CreatedBy, CreatedDate, IsDeleted, ModifiedBy, ModifiedDate)
	SELECT @LanguageID, @Key, @Value, @UserID, @UTCTime, 0, @UserID, @UTCTime
	WHERE  NOT EXISTS (SELECT 1 FROM CmnGUIMultiLingual WHERE  KeyCode = @Key);
	
	INSERT INTO CmnInstalledScriptHistory (ObjectName, [Description], InstalledDate) VALUES (@ObjectName, '', @UTCTime)
END
GO
/*=========================
07-Jul-2019 END
==========================*/

/*=========================
06-Dec-2019 START
==========================*/
SET NOCOUNT ON
DECLARE @UserID INT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE @UTCTime DATETIME = GETUTCDATE(),
		@ObjectName NVARCHAR(100) = N'GUIMultilingual Common_06-Dec-2019',
		@Key NVARCHAR(100) = '',
		@Value NVARCHAR(100) = '',
		@LanguageID INT = 0
 
IF NOT EXISTS(SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	SET @LanguageID = 1;
	SET @Key = N'lastModifiedBy';
	SET @Value = N'Last Modified By:';

	INSERT INTO CmnGUIMultiLingual(LanguageID,KeyCode, KeyValue,CreatedBy, CreatedDate, IsDeleted, ModifiedBy, ModifiedDate)
	SELECT @LanguageID, @Key, @Value, @UserID, @UTCTime, 0, @UserID, @UTCTime
	WHERE  NOT EXISTS (SELECT 1 FROM CmnGUIMultiLingual WHERE  KeyCode = @Key);

	SET @Key = N'lastModifiedDate';
	SET @Value = N'Last Modified Date:';

	INSERT INTO CmnGUIMultiLingual(LanguageID,KeyCode, KeyValue,CreatedBy, CreatedDate, IsDeleted, ModifiedBy, ModifiedDate)
	SELECT @LanguageID, @Key, @Value, @UserID, @UTCTime, 0, @UserID, @UTCTime
	WHERE  NOT EXISTS (SELECT 1 FROM CmnGUIMultiLingual WHERE  KeyCode = @Key);

INSERT INTO CmnInstalledScriptHistory (ObjectName, [Description], InstalledDate) VALUES (@ObjectName, '', @UTCTime)
END
GO
/*=========================
06-Dec-2019 END
==========================*/

/*=========================
20-Mar-2025 START
==========================*/
SET NOCOUNT ON
DECLARE @UserID INT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE @UTCTime DATETIME = GETUTCDATE(),
		@ObjectName NVARCHAR(100) = N'GUIMultilingual Update_20-Mar-2025',
		@Key NVARCHAR(100) = '',
		@Value NVARCHAR(100) = '',
		@LanguageID INT = 0

IF NOT EXISTS(SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	IF EXISTS (SELECT 1 FROM CmnGUIMultiLingual WHERE KeyCode = 'viewProfile' AND IsDeleted = 0)
	BEGIN
		UPDATE CmnGUIMultiLingual  
		SET KeyValue = 'Profile'  
		WHERE KeyCode = 'viewProfile' AND IsDeleted = 0;
	END;
INSERT INTO CmnInstalledScriptHistory (ObjectName, [Description], InstalledDate) VALUES (@ObjectName, '', @UTCTime)
END
GO

/*=========================
20-Mar-2025 END
==========================*/
