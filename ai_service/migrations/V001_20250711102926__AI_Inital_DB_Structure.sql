SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Creating [dbo].[AisAnalystAssignTrain]'
GO
CREATE TABLE [dbo].[AisAnalystAssignTrain]
(
[ReferenceID] [BIGINT] NOT NULL IDENTITY(1, 1),
[CompanyID] [INT] NOT NULL,
[CreatedBy] [INT] NOT NULL,
[CreatedDate] [DATETIME] NOT NULL CONSTRAINT [DF_AisAnalystAssignTrain_CreatedDate] DEFAULT (getutcdate()),
[CreatedDateGMT] [DATETIME] NOT NULL,
[ModifiedBy] [INT] NOT NULL,
[ModifiedDate] [DATETIME] NOT NULL CONSTRAINT [DF_AisAnalystAssignTrain_ModifiedDate] DEFAULT (getutcdate()),
[ModifiedDateGMT] [DATETIME] NOT NULL,
[NotActive] [BIT] NOT NULL CONSTRAINT [DF_AisAnalystAssignTrain_NotActive] DEFAULT ((0)),
[NotActiveDate] [DATETIME] NULL,
[NotActiveDateGMT] [DATETIME] NULL,
[NotActiveReason] [NVARCHAR] (100) NULL,
[IsDeleted] [BIT] NOT NULL CONSTRAINT [DF_AisAnalystAssignTrain_IsDeleted] DEFAULT ((0)),
[DeletedBy] [INT] NULL,
[DeletedDate] [DATETIME] NULL,
[DeletedDateGMT] [DATETIME] NULL,
[DeleteReason] [NVARCHAR] (100) NULL,
[IsCurrentVersion] [BIT] NOT NULL CONSTRAINT [DF_AisAnalystAssignTrain_IsCurrentVersion] DEFAULT ((1)),
[Version] [INT] NOT NULL CONSTRAINT [DF_AisAnalystAssignTrain_Version] DEFAULT ((1)),
[VersionID] [INT] NULL,
[OrderBy] [INT] NOT NULL,
[ERPID] [VARCHAR] (25) NULL,
[Comments] [VARCHAR] (1000) NULL,
[IsActive] [BIT] NULL,
[TrainDataFileID] [BIGINT] NULL,
[UploadByID] [VARCHAR] (500) NULL,
[UploadedDate] [DATETIME] NULL
)
GO
PRINT N'Creating primary key [PK_AisAnalystAssignTrain] on [dbo].[AisAnalystAssignTrain]'
GO
ALTER TABLE [dbo].[AisAnalystAssignTrain] ADD CONSTRAINT [PK_AisAnalystAssignTrain] PRIMARY KEY CLUSTERED ([ReferenceID])
GO
PRINT N'Creating index [Idx_AisAnalystAssignTrain] on [dbo].[AisAnalystAssignTrain]'
GO
CREATE NONCLUSTERED INDEX [Idx_AisAnalystAssignTrain] ON [dbo].[AisAnalystAssignTrain] ([TrainDataFileID])
GO
PRINT N'Creating [dbo].[AisCallAssignTrain]'
GO
CREATE TABLE [dbo].[AisCallAssignTrain]
(
[ReferenceID] [BIGINT] NOT NULL IDENTITY(1, 1),
[TrainDataFileID] [BIGINT] NULL,
[UploadByID] [VARCHAR] (500) NULL,
[UploadedDate] [DATETIME] NULL,
[Comments] [VARCHAR] (1000) NULL,
[IsActive] [BIT] NULL,
[CompanyID] [INT] NOT NULL,
[CreatedBy] [INT] NOT NULL,
[CreatedDate] [DATETIME] NOT NULL CONSTRAINT [DF_AisCallAssignTrain_CreatedDate] DEFAULT (getutcdate()),
[CreatedDateGMT] [DATETIME] NOT NULL,
[ModifiedBy] [INT] NOT NULL,
[ModifiedDate] [DATETIME] NOT NULL CONSTRAINT [DF_AisCallAssignTrain_ModifiedDate] DEFAULT (getutcdate()),
[ModifiedDateGMT] [DATETIME] NOT NULL,
[NotActive] [BIT] NOT NULL CONSTRAINT [DF_AisCallAssignTrain_NotActive] DEFAULT ((0)),
[NotActiveDate] [DATETIME] NULL,
[NotActiveDateGMT] [DATETIME] NULL,
[NotActiveReason] [NVARCHAR] (100) NULL,
[IsDeleted] [BIT] NOT NULL CONSTRAINT [DF_AisCallAssignTrain_IsDeleted] DEFAULT ((0)),
[DeletedBy] [INT] NULL,
[DeletedDate] [DATETIME] NULL,
[DeletedDateGMT] [DATETIME] NULL,
[DeleteReason] [NVARCHAR] (100) NULL,
[IsCurrentVersion] [BIT] NOT NULL CONSTRAINT [DF_AisCallAssignTrain_IsCurrentVersion] DEFAULT ((1)),
[Version] [INT] NOT NULL CONSTRAINT [DF_AisCallAssignTrain_Version] DEFAULT ((1)),
[VersionID] [INT] NULL,
[OrderBy] [INT] NOT NULL,
[ERPID] [VARCHAR] (25) NULL
)
GO
PRINT N'Creating primary key [PK_AisCallAssignTrain] on [dbo].[AisCallAssignTrain]'
GO
ALTER TABLE [dbo].[AisCallAssignTrain] ADD CONSTRAINT [PK_AisCallAssignTrain] PRIMARY KEY CLUSTERED ([ReferenceID])
GO
PRINT N'Creating index [Idx_AisCallAssignTrain] on [dbo].[AisCallAssignTrain]'
GO
CREATE NONCLUSTERED INDEX [Idx_AisCallAssignTrain] ON [dbo].[AisCallAssignTrain] ([TrainDataFileID])
GO
PRINT N'Creating [dbo].[AisCallLogAgent]'
GO
CREATE TABLE [dbo].[AisCallLogAgent]
(
[ReferenceID] [BIGINT] NOT NULL IDENTITY(1, 1),
[UserId] [INT] NULL,
[SessionId] [VARCHAR] (50) NULL,
[Status] [VARCHAR] (50) NULL,
[TotalTokens] [INT] NULL,
[ClientName] [NVARCHAR] (100) NULL,
[ModelId] [INT] NULL,
[Content] [NVARCHAR] (max) NULL,
[ErrorMessage] [NVARCHAR] (max) NULL,
[EmailId] [NVARCHAR] (255) NULL,
[Subject] [NVARCHAR] (1000) NULL,
[Product] [NVARCHAR] (100) NULL,
[CallType] [NVARCHAR] (100) NULL,
[CompanyID] [INT] NOT NULL,
[CreatedBy] [INT] NOT NULL,
[CreatedDate] [DATETIME] NOT NULL CONSTRAINT [DF_AisCallLogAgent_CreatedDate] DEFAULT (getutcdate()),
[CreatedDateGMT] [DATETIME] NOT NULL,
[ModifiedBy] [INT] NOT NULL,
[ModifiedDate] [DATETIME] NOT NULL CONSTRAINT [DF_AisCallLogAgent_ModifiedDate] DEFAULT (getutcdate()),
[ModifiedDateGMT] [DATETIME] NOT NULL,
[NotActive] [BIT] NOT NULL CONSTRAINT [DF_AisCallLogAgent_NotActive] DEFAULT ((0)),
[NotActiveDate] [DATETIME] NULL,
[NotActiveDateGMT] [DATETIME] NULL,
[NotActiveReason] [NVARCHAR] (100) NULL,
[IsDeleted] [BIT] NOT NULL CONSTRAINT [DF_AisCallLogAgent_IsDeleted] DEFAULT ((0)),
[DeletedBy] [INT] NULL,
[DeletedDate] [DATETIME] NULL,
[DeletedDateGMT] [DATETIME] NULL,
[DeleteReason] [NVARCHAR] (100) NULL,
[IsCurrentVersion] [BIT] NOT NULL CONSTRAINT [DF_AisCallLogAgent_IsCurrentVersion] DEFAULT ((1)),
[Version] [INT] NOT NULL CONSTRAINT [DF_AisCallLogAgent_Version] DEFAULT ((1)),
[VersionID] [INT] NULL,
[OrderBy] [INT] NOT NULL,
[ERPID] [VARCHAR] (25) NULL
)
GO
PRINT N'Creating primary key [PK_AisCallLogAgent] on [dbo].[AisCallLogAgent]'
GO
ALTER TABLE [dbo].[AisCallLogAgent] ADD CONSTRAINT [PK_AisCallLogAgent] PRIMARY KEY CLUSTERED ([ReferenceID])
GO
PRINT N'Creating index [Idx_AisCallLogAgent_UserId_Status] on [dbo].[AisCallLogAgent]'
GO
CREATE NONCLUSTERED INDEX [Idx_AisCallLogAgent_UserId_Status] ON [dbo].[AisCallLogAgent] ([UserId], [Status])
GO
PRINT N'Creating [dbo].[AisImageProcessTracking]'
GO
CREATE TABLE [dbo].[AisImageProcessTracking]
(
[ReferenceId] [BIGINT] NOT NULL IDENTITY(1, 1),
[UserId] [INT] NULL,
[SessionId] [VARCHAR] (50) NULL,
[Result] [DECIMAL] (18, 10) NULL,
[Status] [INT] NOT NULL,
[ModelId] [INT] NOT NULL,
[InputTokenCount] [BIGINT] NULL,
[OutputTokenCount] [BIGINT] NULL,
[TotalTokenCount] [BIGINT] NULL,
[CompanyID] [INT] NOT NULL,
[CreatedBy] [INT] NOT NULL,
[CreatedDate] [DATETIME] NOT NULL CONSTRAINT [DF_AisImageProcessTracking_CreatedDate] DEFAULT (getutcdate()),
[CreatedDateGMT] [DATETIME] NOT NULL,
[ModifiedBy] [INT] NOT NULL,
[ModifiedDate] [DATETIME] NOT NULL CONSTRAINT [DF_AisImageProcessTracking_ModifiedDate] DEFAULT (getutcdate()),
[ModifiedDateGMT] [DATETIME] NOT NULL,
[NotActive] [BIT] NOT NULL CONSTRAINT [DF_AisImageProcessTracking_NotActive] DEFAULT ((0)),
[NotActiveDate] [DATETIME] NULL,
[NotActiveDateGMT] [DATETIME] NULL,
[NotActiveReason] [NVARCHAR] (100) NULL,
[IsDeleted] [BIT] NOT NULL CONSTRAINT [DF_AisImageProcessTracking_IsDeleted] DEFAULT ((0)),
[DeletedBy] [INT] NULL,
[DeletedDate] [DATETIME] NULL,
[DeletedDateGMT] [DATETIME] NULL,
[DeleteReason] [NVARCHAR] (100) NULL,
[IsCurrentVersion] [BIT] NOT NULL CONSTRAINT [DF_AisImageProcessTracking_IsCurrentVersion] DEFAULT ((1)),
[Version] [INT] NOT NULL CONSTRAINT [DF_AisImageProcessTracking_Version] DEFAULT ((1)),
[VersionID] [INT] NULL,
[OrderBy] [INT] NOT NULL,
[ERPID] [VARCHAR] (25) NULL
)
GO
PRINT N'Creating primary key [PK_AisImageProcessTracking] on [dbo].[AisImageProcessTracking]'
GO
ALTER TABLE [dbo].[AisImageProcessTracking] ADD CONSTRAINT [PK_AisImageProcessTracking] PRIMARY KEY CLUSTERED ([ReferenceId])
GO
PRINT N'Creating [dbo].[AisQueryBuilderTracking]'
GO
CREATE TABLE [dbo].[AisQueryBuilderTracking]
(
[ReferenceId] [BIGINT] NOT NULL IDENTITY(1, 1),
[TrackingId] [VARCHAR] (20) NOT NULL,
[UserId] [INT] NULL,
[SessionId] [VARCHAR] (50) NULL,
[UserQuery] [NVARCHAR] (max) NULL,
[SqlQuery] [NVARCHAR] (max) NOT NULL,
[ModifiedSqlQuery] [NVARCHAR] (max) NULL,
[Explanation] [NVARCHAR] (max) NULL,
[Response] [NVARCHAR] (max) NULL,
[SchemaPath] [VARCHAR] (max) NULL,
[Suggestion] [VARCHAR] (50) NULL,
[ModuleId] [BIGINT] NULL,
[ChatType] [TINYINT] NULL,
[ChatReference] [VARCHAR] (50) NULL,
[ModelId] [BIGINT] NULL,
[TokenCount] [BIGINT] NULL,
[IsValidated] [BIT] NULL,
[FileUris] [NVARCHAR] (max) NULL,
[CompanyID] [INT] NOT NULL,
[CreatedBy] [INT] NOT NULL,
[CreatedDate] [DATETIME] NOT NULL CONSTRAINT [DF_AisQueryBuilderTracking_CreatedDate] DEFAULT (getutcdate()),
[CreatedDateGMT] [DATETIME] NOT NULL,
[ModifiedBy] [INT] NOT NULL,
[ModifiedDate] [DATETIME] NOT NULL CONSTRAINT [DF_AisQueryBuilderTracking_ModifiedDate] DEFAULT (getutcdate()),
[ModifiedDateGMT] [DATETIME] NOT NULL,
[NotActive] [BIT] NOT NULL CONSTRAINT [DF_AisQueryBuilderTracking_NotActive] DEFAULT ((0)),
[NotActiveDate] [DATETIME] NULL,
[NotActiveDateGMT] [DATETIME] NULL,
[NotActiveReason] [NVARCHAR] (100) NULL,
[IsDeleted] [BIT] NOT NULL CONSTRAINT [DF_AisQueryBuilderTracking_IsDeleted] DEFAULT ((0)),
[DeletedBy] [INT] NULL,
[DeletedDate] [DATETIME] NULL,
[DeletedDateGMT] [DATETIME] NULL,
[DeleteReason] [NVARCHAR] (100) NULL,
[IsCurrentVersion] [BIT] NOT NULL CONSTRAINT [DF_AisQueryBuilderTracking_IsCurrentVersion] DEFAULT ((1)),
[Version] [INT] NOT NULL CONSTRAINT [DF_AisQueryBuilderTracking_Version] DEFAULT ((1)),
[VersionID] [INT] NULL,
[OrderBy] [INT] NOT NULL,
[ERPID] [VARCHAR] (25) NULL
)
GO
PRINT N'Creating primary key [PK_AisQueryBuilderTracking] on [dbo].[AisQueryBuilderTracking]'
GO
ALTER TABLE [dbo].[AisQueryBuilderTracking] ADD CONSTRAINT [PK_AisQueryBuilderTracking] PRIMARY KEY CLUSTERED ([ReferenceId])
GO
PRINT N'Creating index [Idx_AisQueryBuilderTracking] on [dbo].[AisQueryBuilderTracking]'
GO
CREATE NONCLUSTERED INDEX [Idx_AisQueryBuilderTracking] ON [dbo].[AisQueryBuilderTracking] ([TrackingId])
GO
PRINT N'Adding constraints to [dbo].[AisQueryBuilderTracking]'
GO
ALTER TABLE [dbo].[AisQueryBuilderTracking] ADD CONSTRAINT [UQ__AisQueryBuilderT__6919A42] UNIQUE NONCLUSTERED ([TrackingId])
GO
PRINT N'Creating [dbo].[AisRagDocuments]'
GO
CREATE TABLE [dbo].[AisRagDocuments]
(
[ReferenceID] [BIGINT] NOT NULL IDENTITY(1, 1),
[DocumentTypeID] [BIGINT] NULL,
[DevelopmentStudioFileID] [BIGINT] NULL,
[TechnicalReferenceFileID] [BIGINT] NULL,
[UserManualFileID] [BIGINT] NULL,
[TestSOPFileID] [BIGINT] NULL,
[UploadedByID] [VARCHAR] (500) NULL,
[UploadedDate] [DATETIME] NULL,
[CompanyID] [INT] NOT NULL,
[CreatedBy] [INT] NOT NULL,
[CreatedDate] [DATETIME] NOT NULL CONSTRAINT [DF_AisRagDocuments_CreatedDate] DEFAULT (getutcdate()),
[CreatedDateGMT] [DATETIME] NOT NULL,
[ModifiedBy] [INT] NOT NULL,
[ModifiedDate] [DATETIME] NOT NULL CONSTRAINT [DF_AisRagDocuments_ModifiedDate] DEFAULT (getutcdate()),
[ModifiedDateGMT] [DATETIME] NOT NULL,
[NotActive] [BIT] NOT NULL CONSTRAINT [DF_AisRagDocuments_NotActive] DEFAULT ((0)),
[NotActiveDate] [DATETIME] NULL,
[NotActiveDateGMT] [DATETIME] NULL,
[NotActiveReason] [NVARCHAR] (100) NULL,
[IsDeleted] [BIT] NOT NULL CONSTRAINT [DF_AisRagDocuments_IsDeleted] DEFAULT ((0)),
[DeletedBy] [INT] NULL,
[DeletedDate] [DATETIME] NULL,
[DeletedDateGMT] [DATETIME] NULL,
[DeleteReason] [NVARCHAR] (100) NULL,
[IsCurrentVersion] [BIT] NOT NULL CONSTRAINT [DF_AisRagDocuments_IsCurrentVersion] DEFAULT ((1)),
[Version] [INT] NOT NULL CONSTRAINT [DF_AisRagDocuments_Version] DEFAULT ((1)),
[VersionID] [INT] NULL,
[OrderBy] [INT] NOT NULL,
[ERPID] [VARCHAR] (25) NULL
)
GO
PRINT N'Creating primary key [PK_AisRagDocuments] on [dbo].[AisRagDocuments]'
GO
ALTER TABLE [dbo].[AisRagDocuments] ADD CONSTRAINT [PK_AisRagDocuments] PRIMARY KEY CLUSTERED ([ReferenceID])
GO
PRINT N'Creating index [Idx_AisRagDocuments] on [dbo].[AisRagDocuments]'
GO
CREATE NONCLUSTERED INDEX [Idx_AisRagDocuments] ON [dbo].[AisRagDocuments] ([DocumentTypeID])
GO
PRINT N'Creating [dbo].[AisResultPredictionTrain]'
GO
CREATE TABLE [dbo].[AisResultPredictionTrain]
(
[ReferenceID] [BIGINT] NOT NULL IDENTITY(1, 1),
[TrainDataFileID] [BIGINT] NULL,
[UploadByID] [VARCHAR] (500) NULL,
[UploadedDate] [DATETIME] NULL,
[Comments] [VARCHAR] (1000) NULL,
[IsActive] [BIT] NULL,
[CompanyID] [INT] NOT NULL,
[CreatedBy] [INT] NOT NULL,
[CreatedDate] [DATETIME] NOT NULL CONSTRAINT [DF_AisResultPredictionTrain_CreatedDate] DEFAULT (getutcdate()),
[CreatedDateGMT] [DATETIME] NOT NULL,
[ModifiedBy] [INT] NOT NULL,
[ModifiedDate] [DATETIME] NOT NULL CONSTRAINT [DF_AisResultPredictionTrain_ModifiedDate] DEFAULT (getutcdate()),
[ModifiedDateGMT] [DATETIME] NOT NULL,
[NotActive] [BIT] NOT NULL CONSTRAINT [DF_AisResultPredictionTrain_NotActive] DEFAULT ((0)),
[NotActiveDate] [DATETIME] NULL,
[NotActiveDateGMT] [DATETIME] NULL,
[NotActiveReason] [NVARCHAR] (100) NULL,
[IsDeleted] [BIT] NOT NULL CONSTRAINT [DF_AisResultPredictionTrain_IsDeleted] DEFAULT ((0)),
[DeletedBy] [INT] NULL,
[DeletedDate] [DATETIME] NULL,
[DeletedDateGMT] [DATETIME] NULL,
[DeleteReason] [NVARCHAR] (100) NULL,
[IsCurrentVersion] [BIT] NOT NULL CONSTRAINT [DF_AisResultPredictionTrain_IsCurrentVersion] DEFAULT ((1)),
[Version] [INT] NOT NULL CONSTRAINT [DF_AisResultPredictionTrain_Version] DEFAULT ((1)),
[VersionID] [INT] NULL,
[OrderBy] [INT] NOT NULL,
[ERPID] [VARCHAR] (25) NULL
)
GO
PRINT N'Creating primary key [PK_AisResultPredictionTrain] on [dbo].[AisResultPredictionTrain]'
GO
ALTER TABLE [dbo].[AisResultPredictionTrain] ADD CONSTRAINT [PK_AisResultPredictionTrain] PRIMARY KEY CLUSTERED ([ReferenceID])
GO
PRINT N'Creating index [Idx_AisResultPredictionTrain] on [dbo].[AisResultPredictionTrain]'
GO
CREATE NONCLUSTERED INDEX [Idx_AisResultPredictionTrain] ON [dbo].[AisResultPredictionTrain] ([TrainDataFileID])
GO
PRINT N'Creating [dbo].[AisSampleLogAgent]'
GO
CREATE TABLE [dbo].[AisSampleLogAgent]
(
[ReferenceID] [BIGINT] NOT NULL IDENTITY(1, 1),
[UserId] [INT] NULL,
[SessionId] [VARCHAR] (50) NULL,
[Status] [VARCHAR] (50) NULL,
[TotalTokens] [INT] NULL,
[SampleName] [NVARCHAR] (100) NULL,
[SampleCategory] [VARCHAR] (100) NULL,
[ModelId] [INT] NULL,
[ErrorMessage] [NVARCHAR] (max) NULL,
[CompanyID] [INT] NOT NULL,
[CreatedBy] [INT] NOT NULL,
[CreatedDate] [DATETIME] NOT NULL CONSTRAINT [DF_AisSampleLogAgent_CreatedDate] DEFAULT (getutcdate()),
[CreatedDateGMT] [DATETIME] NOT NULL,
[ModifiedBy] [INT] NOT NULL,
[ModifiedDate] [DATETIME] NOT NULL CONSTRAINT [DF_AisSampleLogAgent_ModifiedDate] DEFAULT (getutcdate()),
[ModifiedDateGMT] [DATETIME] NOT NULL,
[NotActive] [BIT] NOT NULL CONSTRAINT [DF_AisSampleLogAgent_NotActive] DEFAULT ((0)),
[NotActiveDate] [DATETIME] NULL,
[NotActiveDateGMT] [DATETIME] NULL,
[NotActiveReason] [NVARCHAR] (100) NULL,
[IsDeleted] [BIT] NOT NULL CONSTRAINT [DF_AisSampleLogAgent_IsDeleted] DEFAULT ((0)),
[DeletedBy] [INT] NULL,
[DeletedDate] [DATETIME] NULL,
[DeletedDateGMT] [DATETIME] NULL,
[DeleteReason] [NVARCHAR] (100) NULL,
[IsCurrentVersion] [BIT] NOT NULL CONSTRAINT [DF_AisSampleLogAgent_IsCurrentVersion] DEFAULT ((1)),
[Version] [INT] NOT NULL CONSTRAINT [DF_AisSampleLogAgent_Version] DEFAULT ((1)),
[VersionID] [INT] NULL,
[OrderBy] [INT] NOT NULL,
[ERPID] [VARCHAR] (25) NULL
)
GO
PRINT N'Creating primary key [PK_AisSampleLogAgent] on [dbo].[AisSampleLogAgent]'
GO
ALTER TABLE [dbo].[AisSampleLogAgent] ADD CONSTRAINT [PK_AisSampleLogAgent] PRIMARY KEY CLUSTERED ([ReferenceID])
GO
PRINT N'Creating index [Idx_AisSampleLogAgent] on [dbo].[AisSampleLogAgent]'
GO
CREATE NONCLUSTERED INDEX [Idx_AisSampleLogAgent] ON [dbo].[AisSampleLogAgent] ([UserId], [Status], [SampleCategory])
GO
PRINT N'Creating [dbo].[AisSchemaStructures]'
GO
CREATE TABLE [dbo].[AisSchemaStructures]
(
[ReferenceID] [BIGINT] NOT NULL IDENTITY(1, 1),
[SchemaFileID] [BIGINT] NULL,
[UploadByID] [VARCHAR] (500) NULL,
[ModuleId] [INT] NULL,
[UploadedDate] [DATETIME] NULL,
[Comments] [VARCHAR] (1000) NULL,
[IsActive] [BIT] NULL,
[CompanyID] [INT] NOT NULL,
[CreatedBy] [INT] NOT NULL,
[CreatedDate] [DATETIME] NOT NULL CONSTRAINT [DF_AisSchemaStructures_CreatedDate] DEFAULT (getutcdate()),
[CreatedDateGMT] [DATETIME] NOT NULL,
[ModifiedBy] [INT] NOT NULL,
[ModifiedDate] [DATETIME] NOT NULL CONSTRAINT [DF_AisSchemaStructures_ModifiedDate] DEFAULT (getutcdate()),
[ModifiedDateGMT] [DATETIME] NOT NULL,
[NotActive] [BIT] NOT NULL CONSTRAINT [DF_AisSchemaStructures_NotActive] DEFAULT ((0)),
[NotActiveDate] [DATETIME] NULL,
[NotActiveDateGMT] [DATETIME] NULL,
[NotActiveReason] [NVARCHAR] (100) NULL,
[IsDeleted] [BIT] NOT NULL CONSTRAINT [DF_AisSchemaStructures_IsDeleted] DEFAULT ((0)),
[DeletedBy] [INT] NULL,
[DeletedDate] [DATETIME] NULL,
[DeletedDateGMT] [DATETIME] NULL,
[DeleteReason] [NVARCHAR] (100) NULL,
[IsCurrentVersion] [BIT] NOT NULL CONSTRAINT [DF_AisSchemaStructures_IsCurrentVersion] DEFAULT ((1)),
[Version] [INT] NOT NULL CONSTRAINT [DF_AisSchemaStructures_Version] DEFAULT ((1)),
[VersionID] [INT] NULL,
[OrderBy] [INT] NOT NULL,
[ERPID] [VARCHAR] (25) NULL
)
GO
PRINT N'Creating primary key [PK_AisSchemaStructures] on [dbo].[AisSchemaStructures]'
GO
ALTER TABLE [dbo].[AisSchemaStructures] ADD CONSTRAINT [PK_AisSchemaStructures] PRIMARY KEY CLUSTERED ([ReferenceID])
GO
PRINT N'Creating index [Idx_AisSchemaStructures] on [dbo].[AisSchemaStructures]'
GO
CREATE NONCLUSTERED INDEX [Idx_AisSchemaStructures] ON [dbo].[AisSchemaStructures] ([SchemaFileID])
GO
PRINT N'Creating [dbo].[AisViewCreationTracking]'
GO
CREATE TABLE [dbo].[AisViewCreationTracking]
(
[ReferenceId] [BIGINT] NOT NULL IDENTITY(1, 1),
[UserId] [INT] NULL,
[SessionId] [VARCHAR] (50) NULL,
[ViewName] [NVARCHAR] (50) NOT NULL,
[SqlQuery] [NVARCHAR] (max) NOT NULL,
[Status] [INT] NOT NULL,
[CompanyID] [INT] NOT NULL,
[CreatedBy] [INT] NOT NULL,
[CreatedDate] [DATETIME] NOT NULL CONSTRAINT [DF_AisViewCreationTracking_CreatedDate] DEFAULT (getutcdate()),
[CreatedDateGMT] [DATETIME] NOT NULL,
[ModifiedBy] [INT] NOT NULL,
[ModifiedDate] [DATETIME] NOT NULL CONSTRAINT [DF_AisViewCreationTracking_ModifiedDate] DEFAULT (getutcdate()),
[ModifiedDateGMT] [DATETIME] NOT NULL,
[NotActive] [BIT] NOT NULL CONSTRAINT [DF_AisViewCreationTracking_NotActive] DEFAULT ((0)),
[NotActiveDate] [DATETIME] NULL,
[NotActiveDateGMT] [DATETIME] NULL,
[NotActiveReason] [NVARCHAR] (100) NULL,
[IsDeleted] [BIT] NOT NULL CONSTRAINT [DF_AisViewCreationTracking_IsDeleted] DEFAULT ((0)),
[DeletedBy] [INT] NULL,
[DeletedDate] [DATETIME] NULL,
[DeletedDateGMT] [DATETIME] NULL,
[DeleteReason] [NVARCHAR] (100) NULL,
[IsCurrentVersion] [BIT] NOT NULL CONSTRAINT [DF_AisViewCreationTracking_IsCurrentVersion] DEFAULT ((1)),
[Version] [INT] NOT NULL CONSTRAINT [DF_AisViewCreationTracking_Version] DEFAULT ((1)),
[VersionID] [INT] NULL,
[OrderBy] [INT] NOT NULL,
[ERPID] [VARCHAR] (25) NULL
)
GO
PRINT N'Creating primary key [PK_AisViewCreationTracking] on [dbo].[AisViewCreationTracking]'
GO
ALTER TABLE [dbo].[AisViewCreationTracking] ADD CONSTRAINT [PK_AisViewCreationTracking] PRIMARY KEY CLUSTERED ([ReferenceId])
GO
PRINT N'Creating [dbo].[spAisAnalystAssignTrainUpdate]'
GO

CREATE PROCEDURE [dbo].[spAisAnalystAssignTrainUpdate] (
	@IN_UserID BIGINT,
	@IN_ReferenceID BIGINT,
	@IN_DMLEvent VARCHAR(50))

AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		DECLARE @ErrorMessage NVARCHAR(2000),
				@ErrorSeverity NVARCHAR(50),
				@ErrorState NVARCHAR(50);

		UPDATE AisAnalystAssignTrain
		SET IsActive = 0
		WHERE ReferenceID <> @IN_ReferenceID AND IsActive = 1
			AND IsDeleted = 0 AND NotActive = 0 AND IsCurrentVersion = 1;


	END TRY
	BEGIN CATCH
		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE()
		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH
END
GO
PRINT N'Creating [dbo].[spAisCallAssignTrainUpdate]'
GO

CREATE PROCEDURE [dbo].[spAisCallAssignTrainUpdate] (
	@IN_UserID BIGINT,
	@IN_ReferenceID BIGINT,
	@IN_DMLEvent VARCHAR(50))

AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		DECLARE @ErrorMessage NVARCHAR(2000),
				@ErrorSeverity NVARCHAR(50),
				@ErrorState NVARCHAR(50);

		UPDATE AisCallAssignTrain
		SET IsActive = 0
		WHERE ReferenceID <> @IN_ReferenceID AND IsActive = 1
			AND IsDeleted = 0 AND NotActive = 0 AND IsCurrentVersion = 1;


	END TRY
	BEGIN CATCH
		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE()
		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH
END
GO
PRINT N'Creating [dbo].[spAisResultPredictTrainUpdate]'
GO

CREATE PROCEDURE [dbo].[spAisResultPredictTrainUpdate] (
	@IN_UserID BIGINT,
	@IN_ReferenceID BIGINT,
	@IN_DMLEvent VARCHAR(50))

AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		DECLARE @ErrorMessage NVARCHAR(2000),
				@ErrorSeverity NVARCHAR(50),
				@ErrorState NVARCHAR(50);

		UPDATE AisResultPredictionTrain
		SET IsActive = 0
		WHERE ReferenceID <> @IN_ReferenceID AND IsActive = 1
			AND IsDeleted = 0 AND NotActive = 0 AND IsCurrentVersion = 1;


	END TRY
	BEGIN CATCH
		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE()
		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH
END
GO
PRINT N'Creating [dbo].[spAisSchemaStructureUpdate]'
GO

CREATE PROCEDURE [dbo].[spAisSchemaStructureUpdate] (
    @IN_UserID BIGINT,
    @IN_ReferenceID BIGINT,
    @IN_DMLEvent VARCHAR(50)
)
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        DECLARE
            @ErrorMessage NVARCHAR(2000),
            @ErrorSeverity NVARCHAR(50),
            @ModuleID INT = 0,
            @ErrorState NVARCHAR(50);

        SELECT @ModuleID = ISNULL(ModuleID, 0)
        FROM AisSchemaStructures
        WHERE ReferenceID = @IN_ReferenceID;

        UPDATE AisSchemaStructures
        SET IsActive = 1
        WHERE ReferenceID = @IN_ReferenceID;

        UPDATE AisSchemaStructures
        SET IsActive = 0
        WHERE ReferenceID <> @IN_ReferenceID
          AND ModuleID = @ModuleID;

    END TRY
    BEGIN CATCH
        SELECT
            @ErrorMessage = ERROR_MESSAGE(),
            @ErrorSeverity = ERROR_SEVERITY(),
            @ErrorState = ERROR_STATE();

        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH
END
GO

