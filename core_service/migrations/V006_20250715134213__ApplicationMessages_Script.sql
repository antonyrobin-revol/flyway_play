/*=========================
30-Aug-2019 START
==========================*/
SET NOCOUNT ON
DECLARE @UserID INT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE
	
	@KeyCode NVARCHAR(100),
	@Message NVARCHAR(500),
	@Category INT,
	@Changeable BIT,
	@UTCTime DATETIME = GETUTCDATE(),
	@ObjectName NVARCHAR(100) = N'CmnApplicationMessages Insert_31-Aug-2019';

IF NOT EXISTS(SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	SET @Category = 1;
  	SET @Changeable = 1;
    SET @KeyCode = 'E0001';
  	SET @Message = 'Expiry Day Validation Failed';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);
    
    SET @KeyCode = 'E0002';
  	SET @Message = 'fill control response';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0003';
  	SET @Message = 'module response';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0004';
  	SET @Message = 'menu content request';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0005';
  	SET @Message = 'menu content response';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0006';
  	SET @Message = 'heart beat request';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0007';
  	SET @Message = 'heart beat response';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0008';
  	SET @Message = 'form details request';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0009';
  	SET @Message = 'form details response';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0010';
  	SET @Message = 'dml';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0011';
  	SET @Message = 'dml request';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0012';
  	SET @Message = 'dml response';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0013';
  	SET @Message = 'search request';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0014';
  	SET @Message = 'open popup';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0015';
  	SET @Message = 'fill control response';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0016';
  	SET @Message = 'search control response';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0017';
  	SET @Message = 'fill grid control response';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0018';
  	SET @Message = 'chat request';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0019';
  	SET @Message = 'chat response';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0020';
  	SET @Message = 'login load request';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0021';
  	SET @Message = 'login load response';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0022';
  	SET @Message = 'generate captcha request';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0023';
  	SET @Message = 'generate captcha response';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0024';
  	SET @Message = 'resentOTP response';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0025';
  	SET @Message = 'theme build';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0026';
  	SET @Message = 'set theme details';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0027';
  	SET @Message = 'save font type';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0028';
  	SET @Message = 'font type response';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0029';
  	SET @Message = 'change font';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0030';
  	SET @Message = 'build font details';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0031';
  	SET @Message = 'build menu';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);
    
    SET @KeyCode = 'E0032';
  	SET @Message = 'save menu type';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0033';
  	SET @Message = 'menu type change';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0034';
  	SET @Message = 'save profile';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0035';
  	SET @Message = 'build languages';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0036';
  	SET @Message = 'Please enter the valid Email Address';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0037';
  	SET @Message = 'Please enter the valid';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0038';
  	SET @Message = 'Please enter the valid Website';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0039';
  	SET @Message = 'Validation failed. Please check the data.';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0040';
  	SET @Message = 'Please enter the valid Website';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0041';
  	SET @Message = 'Please select valid time';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0042';
  	SET @Message = 'upload response';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0043';
  	SET @Message = 'File Not Found.';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0044';
  	SET @Message = 'PhotoControl Response';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0045';
  	SET @Message = 'Upload Failed';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0046';
  	SET @Message = 'Incorrect Login Credentials.';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0047';
  	SET @Message = 'Account Locked';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0048';
  	SET @Message = 'Exceeded user limit';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0049';
  	SET @Message = 'Licence expired.';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0050';
  	SET @Message = 'Password expired. Please change the password.';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0051';
  	SET @Message = 'Permission not available. Please contact admin.';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);
	
	  SET @KeyCode = 'E0052';
	  SET @Message = 'Authentication failed. Please contact admin.';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);
  	
    SET @KeyCode = 'E0053';
	  SET @Message = 'User not active. Please contact admin.';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0054';
	  SET @Message = 'login request';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0055';
	  SET @Message = 'login response';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0056';
	  SET @Message = 'logout request';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0057';
  	SET @Message = 'logout response';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);
	
	  SET @KeyCode = 'E0058';
	  SET @Message = 'changepassword request';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);
  	
    SET @KeyCode = 'E0059';
	  SET @Message = 'changepassword response';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0060';
	  SET @Message = 'forgot password request';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0061';
	  SET @Message = 'forgot password response';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0062';
	  SET @Message = 'resentOTP request';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0063';
	  SET @Message = 'resentOTP response';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0064';
	  SET @Message = '{0} sholud be Lesser than {1}';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @Category = 2;
    SET @KeyCode = 'I0001';
	  SET @Message = 'No access';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'I0002';
	  SET @Message = 'Access denied';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'I0003';
	  SET @Message = 'Your password is expired. Do you want to change it now?';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'I0004';
	  SET @Message = 'Yes';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'I0005';
	  SET @Message = 'Not now';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'I0006';
	  SET @Message = 'No';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'I0007';
	  SET @Message = 'This user name is used in another system. Do you want to proceed?';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'I0008';
	  SET @Message = 'Only Upload image file.';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @Category = 3;
    SET @KeyCode = 'S0001';
	  SET @Message = 'Deleted Successfully';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'S0002';
	  SET @Message = 'Saved Successfully';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'S0003';
	  SET @Message = 'Updated Successfully';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'S0004';
	  SET @Message = 'Password changed successfully';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'S0005';
	  SET @Message = 'Uploaded';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'S0006';
	  SET @Message = 'Expiry Day Validation Passed';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'S0007';
	  SET @Message = 'Your password has been sent to your email id successfully';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @Category = 4;
    SET @KeyCode = 'W0001';
	  SET @Message = 'Old Password Incorrect';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'W0002';
	  SET @Message = 'Deleted Successfully';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'W0003';
	  SET @Message = 'User does not exist';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'W0004';
	  SET @Message = 'Session Expired';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'W0005';
	  SET @Message = 'Session Not Expired';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'W0006';
	  SET @Message = 'Mandatory data missing';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'W0007';
	  SET @Message = 'Enter The Username';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'W0008';
	  SET @Message = 'Enter The Password';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'W0009';
	  SET @Message = 'Enter Captcha';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'W0010';
	  SET @Message = 'Enter OTP';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'W0011';
	  SET @Message = 'Enter old password';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'W0012';
	  SET @Message = 'Enter new password';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'W0013';
	  SET @Message = 'Password length should be contain minimum of {0}  and Maximum of  {1}';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'W0014';
	  SET @Message = 'Password must contain atleast one number';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'W0015';
	  SET @Message = 'Password must contain atleast one alphabet';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'W0016';
	  SET @Message = 'Password must contain atleast one special character';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'W0017';
	  SET @Message = 'Password should start with UpperCase';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'W0018';
	  SET @Message = 'Password should start with LowerCase';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'W0019';
	  SET @Message = 'Password should start with Number';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'W0020';
	  SET @Message = 'Old Password and New Password should be different';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'W0021';
	  SET @Message = 'New Password and Confirm Password should be same';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'W0022';
	  SET @Message = 'Enter username';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'W0023';
	  SET @Message = 'Blocked user';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'W0024';
	  SET @Message = 'Password length should be contain minimum of {0} and Maximum of {1}';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'W0025';
	  SET @Message = 'No permission available for the user. Please contact admin.';
	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);
	
	INSERT INTO CmnInstalledScriptHistory (ObjectName, [Description], InstalledDate) VALUES (@ObjectName, '', @UTCTime)
END
GO
/*=========================
31-Aug-2019 END
==========================*/

/*=========================
05-Sep-2019 START
==========================*/
SET NOCOUNT ON
DECLARE @UserID INT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE
	
	@KeyCode NVARCHAR(100),
	@Message NVARCHAR(500),
	@Category INT,
	@Changeable BIT,
	@UTCTime DATETIME = GETUTCDATE(),
	@ObjectName NVARCHAR(100) = N'CmnApplicationMessages Insert_05-Sep-2019';

IF NOT EXISTS(SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	SET @Category = 1;
  	SET @Changeable = 1;
    SET @KeyCode = 'E0065';
  	SET @Message = 'Unable to Connect Mail server';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);
    
    SET @KeyCode = 'E0066';
  	SET @Message = 'Wrong To Mail address';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0067';
  	SET @Message = 'File Not Found at Specific location';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0068';
  	SET @Message = 'Email has not been sent.';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

    SET @KeyCode = 'E0069';
  	SET @Message = 'Message not sent';
  	
  	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

	INSERT INTO CmnInstalledScriptHistory (ObjectName, [Description], InstalledDate) VALUES (@ObjectName, '', @UTCTime)
END
GO
/*=========================
05-Sep-2019 END
==========================*/

/*=========================
04-Oct-2019 START
==========================*/
SET NOCOUNT ON
DECLARE @UserID INT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE
	
	@KeyCode NVARCHAR(100),
	@Message NVARCHAR(500),
	@Category INT,
	@Changeable BIT,
	@UTCTime DATETIME = GETUTCDATE(),
	@ObjectName NVARCHAR(100) = N'CmnApplicationMessages Insert_04-Oct-2019';

IF NOT EXISTS(SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	SET @Category = 4;
  	SET @Changeable = 1;
    SET @KeyCode = 'W0027';
  	SET @Message = 'Mandatory data missing. Please upload the image';

	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

 INSERT INTO CmnInstalledScriptHistory (ObjectName, [Description], InstalledDate) VALUES (@ObjectName, '', @UTCTime)
END
GO
/*=========================
04-Oct-2019 END
==========================*/   

/*=========================
05-Oct-2019 START
==========================*/
SET NOCOUNT ON
DECLARE @UserID INT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE
	
	@KeyCode NVARCHAR(100),
	@Message NVARCHAR(500),
	@Category INT,
	@Changeable BIT,
	@UTCTime DATETIME = GETUTCDATE(),
	@ObjectName NVARCHAR(100) = N'CmnApplicationMessages Insert_05-Oct-2019';

IF NOT EXISTS(SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	SET @Category = 1;
  	SET @Changeable = 1;
    SET @KeyCode = '';
  	SET @Message = '';
	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);
	
	SET @Category = 1;
  	SET @Changeable = 1;
    SET @KeyCode = 'E0070';
  	SET @Message = 'Unexpected error. Please contact system admin. ';
	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

	SET @Category = 1;
  	SET @Changeable = 1;
    SET @KeyCode = 'E0071';
  	SET @Message = 'Your session is expired. So please relogin.';
	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

	SET @Category = 1;
  	SET @Changeable = 1;
    SET @KeyCode = 'E0072';
  	SET @Message = 'Need to update the parent table data.';
	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

	SET @Category = 1;
  	SET @Changeable = 1;
    SET @KeyCode = 'E0073';
  	SET @Message = 'Need to update the parent table data.';
	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

	SET @Category = 1;
  	SET @Changeable = 1;
    SET @KeyCode = 'E0074';
  	SET @Message = 'Mandatory tab missing';
	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

	SET @Category = 1;
  	SET @Changeable = 1;
    SET @KeyCode = 'E0075';
  	SET @Message = '{0} contains minimum {1} digits';
	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

	SET @Category = 1;
  	SET @Changeable = 1;
    SET @KeyCode = 'E0076';
  	SET @Message = 'Should allow only numbers';
	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

	SET @Category = 1;
  	SET @Changeable = 1;
    SET @KeyCode = 'E0077';
  	SET @Message = 'Should allow only one '+' value';
	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

	SET @Category = 1;
  	SET @Changeable = 1;
    SET @KeyCode = 'E0078';
  	SET @Message = 'Should allow only one . value';
	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);	
	
	SET @Category = 1;
  	SET @Changeable = 1;
    SET @KeyCode = 'E0079';
  	SET @Message = 'Age should be greater than 15';
	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);		
	
	SET @Category = 2;
  	SET @Changeable = 1;
    SET @KeyCode = 'I0009';
  	SET @Message = 'Are you sure want to reset the user password?';
	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);	
	
	SET @Category = 2;
  	SET @Changeable = 1;
    SET @KeyCode = 'I0010';
  	SET @Message = 'Are you sure want to lock the user?';
	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);
	
	SET @Category = 2;
  	SET @Changeable = 1;
    SET @KeyCode = 'I0011';
  	SET @Message = 'Are you sure want to unlock the user?';
	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);
	
	SET @Category = 2;
  	SET @Changeable = 1;
    SET @KeyCode = 'I0012';
  	SET @Message = 'Are you sure want to logout the user?';
	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);	
	
	SET @Category = 2;
  	SET @Changeable = 1;
    SET @KeyCode = 'I0013';
  	SET @Message = 'No changes have been made.';
	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);	
	
	SET @Category = 2;
  	SET @Changeable = 1;
    SET @KeyCode = 'I0014';
  	SET @Message = 'Please select atleast one row';
	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);
	
	SET @Category = 2;
  	SET @Changeable = 1;
    SET @KeyCode = 'I0015';
  	SET @Message = 'Age should be greater than 15';
	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);
	
	SET @Category = 4;
  	SET @Changeable = 1;
    SET @KeyCode = 'W0028';
  	SET @Message = 'Invalid type of files. Allowed only {0} files';
	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);
	
	SET @Category = 4;
  	SET @Changeable = 1;
    SET @KeyCode = 'W0029';
  	SET @Message = 'The last {0} passwords cannot be reused';
	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

	SET @Category = 4;
  	SET @Changeable = 1;
    SET @KeyCode = 'W0030';
  	SET @Message = 'Enter confirm password';
	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);	
	
	SET @Category = 3;
  	SET @Changeable = 1;
    SET @KeyCode = 'S0008';
  	SET @Message = 'User password reset successfully';
	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);	
	
	SET @Category = 3;
  	SET @Changeable = 1;
    SET @KeyCode = 'S0009';
  	SET @Message = 'User locked successfully';
	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);

	SET @Category = 3;
  	SET @Changeable = 1;
    SET @KeyCode = 'S0010';
  	SET @Message = 'User unLocked successfully';
	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);
	
	SET @Category = 3;
  	SET @Changeable = 1;
    SET @KeyCode = 'S0011';
  	SET @Message = 'User loggedout successfully';
	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE  KeyCode = @KeyCode);	
	
	INSERT INTO CmnInstalledScriptHistory (ObjectName, [Description], InstalledDate) VALUES (@ObjectName, '', @UTCTime);
END
GO
/*=========================
05-Oct-2019 END
==========================*/

/*=========================
23-Apr-2024 START
==========================*/
SET NOCOUNT ON
DECLARE @UserID INT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE	
	@KeyCode NVARCHAR(100),
	@Message NVARCHAR(500),
	@Category INT,
	@Changeable BIT,
	@UTCTime DATETIME = GETUTCDATE(),
	@ObjectName NVARCHAR(100) = N'CmnApplicationMessages Insert_23-Apr-2024';

IF NOT EXISTS(SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	SET @Category = 2;
  	SET @Changeable = 1;
    SET @KeyCode = 'I0016';
  	SET @Message = 'Are you sure you want to reset?';
	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE KeyCode = @KeyCode);

	SET @Category = 2;
  	SET @Changeable = 1;
    SET @KeyCode = 'I0017';
  	SET @Message = 'The unsaved data will be lost. Do you want to continue?';
	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE KeyCode = @KeyCode);

	SET @Category = 1;
  	SET @Changeable = 1;
    SET @KeyCode = 'E0081';
  	SET @Message = 'Password Mismatched';
	INSERT INTO CmnApplicationMessages(KeyCode, Message, Category, Changeable, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
  	SELECT @KeyCode, @Message, @Category, @Changeable, @UserID, @UTCTime, @UserID, @UTCTime, 0
  	WHERE NOT EXISTS (SELECT 1 FROM CmnApplicationMessages WHERE KeyCode = @KeyCode);

	UPDATE CmnApplicationMessages SET Changeable = 0, ModifiedBy = @UserID, ModifiedDate = @UTCTime WHERE KeyCode IN ('' ,'E0002', 'E0003', 'E0004', 'E0005', 'E0006', 'E0007', 'E0008', 'E0009', 'E0010', 'E0011',
	'E0012', 'E0013', 'E0014', 'E0015', 'E0016', 'E0017', 'E0018', 'E0019', 'E0020', 'E0021', 'E0022', 'E0023', 'E0024', 'E0025', 'E0026', 'E0027', 'E0028',
	'E0029', 'E0030', 'E0031', 'E0032', 'E0033', 'E0034', 'E0035', 'E0042', 'E0044', 'E0054', 'E0055', 'E0056', 'E0057', 'E0058', 'E0059', 'E0060', 'E0061', 'E0062',
	'E0063')

	INSERT INTO CmnInstalledScriptHistory (ObjectName, [Description], InstalledDate) VALUES (@ObjectName, '', @UTCTime);
END
GO
/*=========================
23-Apr-2024 END
==========================*/

/*=========================
25-Apr-2024 START
==========================*/
SET NOCOUNT ON
DECLARE @UserID INT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1)
DECLARE	
	@UTCTime DATETIME = GETUTCDATE(),
	@ObjectName NVARCHAR(100) = N'CmnApplicationMessages Insert_25-Apr-2024';

IF NOT EXISTS(SELECT 1 FROM CmnInstalledScriptHistory WHERE ObjectName = @ObjectName)
BEGIN
	UPDATE CmnApplicationMessages SET Changeable = 0, ModifiedBy = @UserID, ModifiedDate = @UTCTime WHERE KeyCode IN ('W0004', 'W0005');
	INSERT INTO CmnInstalledScriptHistory (ObjectName, [Description], InstalledDate) VALUES (@ObjectName, '', @UTCTime);
END
GO
/*=========================
25-Apr-2024 END
==========================*/
